---
title: flutter_ilib Architecture
description: Detailed architecture, design patterns, and data flow for flutter_ilib
keywords: [flutter, ilib, architecture, design, locale-data]
version: 2.0.0
---

# flutter_ilib Architecture

## System Architecture

### Overall Structure

```
flutter_ilib (Dart/Flutter Plugin)
    ├── Public API (lib/*.dart, exported from flutter_ilib.dart)
    │   ├── ILibLocale
    │   ├── ILibLocaleInfo
    │   ├── ILibCaseMapper
    │   ├── ILibDate / ILibDateOptions
    │   ├── ILibDateFmt
    │   ├── ILibCalendar (+ lib/calendar/: 9 calendars, Rata Die, Astro)
    │   ├── ILibTimeZone
    │   └── ILibLoader (data loading)
    │   (still on JS interop, not yet ported: ILibDurationFmt)
    │
    ├── Internal (lib/internal/)
    │   ├── ilib_utils.dart (locale path generation, validation)
    │   └── logger/ (logging)
    │
    └── Assets (assets/)
        └── locale/ (hierarchical locale JSON, ~251 files)
            ├── root.json
            ├── {language}.json
            ├── und-{script}.json        (e.g. und-Hans)
            ├── {language}-{script}.json
            ├── und-{region}.json
            ├── {language}-{region}.json
            └── {language}-{script}-{region}.json   (e.g. zh-Hans-CN)
```

## Data Loading Flow

### Step-by-Step Process

```
1. App Initialization
   ↓
2. System Locale Detection
   ↓
3. ILibLoader.loadJSON() invoked
   ↓
4. getJSONDataPaths(locale) generates load sequence
   ↓
5. Load JSON files in priority order (root → lang → script → region)
   ↓
6. Deep merge all loaded data
   ↓
7. Cache merged result in ILibLoader._localeDataMap
   ↓
8. API calls access merged data (ILibLocaleInfo, ILibDate, etc.)
```

### Locale Path Generation

**Algorithm** (`lib/internal/ilib_utils.dart`)

```
Input: locale string (e.g., "en-US", "MK", "zh-Hans-CN")
  ↓
Parse with ILibLocale → extract language, script, region
  ↓
Apply path generation rules:
  • root.json (always first)
  • {language}.json (if language exists)
  • und-{script}.json (if script exists)
  • {language}-{script}.json (if both exist)
  • und-{region}.json (if region exists)
  • {language}-{region}.json (if both exist)
  • {language}-{script}-{region}.json (if all exist)
  ↓
Output: Array of file paths in priority order
```

### Examples

| Input | Output Paths |
|-------|--------------|
| `"ko"` | `[root.json, ko.json]` |
| `"en-US"` | `[root.json, en.json, und-US.json, en-US.json]` |
| `"MK"` (region) | `[root.json, und-MK.json]` |
| `"zh-Hans-CN"` | `[root.json, zh.json, und-Hans.json, zh-Hans.json, und-CN.json, zh-CN.json, zh-Hans-CN.json]` |

### Deep Merge Strategy

```dart
// Pseudo-code
function deepMerge(base, override):
  result = copy(base)
  for each key in override.keys:
    if result[key] is Map AND override[key] is Map:
      result[key] = deepMerge(result[key], override[key])
    else:
      result[key] = override[key]
  return result
```

**Order**: `root → language → script → language-script → region → language-region → full-locale`

More specific locales override less specific ones.

---

## Core Components

### 1. ILibLocale Module (`lib/ilib_locale.dart`)

**Responsibility**: Parse, validate, and normalize locale strings per BCP-47 standard

**Key Methods**:
```dart
// Parsing
ILibLocale(string)          // Parse from string
ILibLocale(lang, region)    // Construct from parts

// Getters
getLanguage() → String?     // ISO 639 code
getRegion() → String?       // ISO 3166 code
getScript() → String?       // ISO 15924 code
getVariant() → String?      // Variant identifier
getSpec() → String          // Full normalized spec
```

**Validation Rules**:
- Language: `[a-z]{2,3}` (2-3 lowercase letters)
- Script: `[A-Z][a-z]{3}` (1 uppercase + 3 lowercase)
- Region: `[A-Z]{2}` or `[0-9]{3}` (2 uppercase or 3 digits)

### 2. ILibLocaleInfo Module (`lib/ilib_localeinfo.dart`)

**Responsibility**: Retrieve and serve localization data by locale

**Key Methods**:
```dart
ILibLocaleInfo(locale)          // Create with locale
getRegionName() → String?       // e.g., "South Korea"
getLanguageName() → String      // e.g., "Korean"
getClock() → String             // "12" or "24"
getTimeZone() → String          // e.g., "Asia/Seoul"
getDecimalSeparator() → String  // e.g., "."
getGroupingSeparator() → String // e.g., ","
getFirstDayOfWeek() → int       // 0 (Sunday) to 6 (Saturday)
getWeekEndStart() → int
getWeekEndEnd() → int
```

**Data Source**: Downloaded locale JSON files in `assets/locale/`

### 3. ILibDate / ILibDateFmt Modules (`lib/ilib_date.dart`, `lib/ilib_datefmt.dart`)

**Responsibility**: Represent a date (`ILibDate` interface; `ILibDateOptions` implementation) and
format it per locale (`ILibDateFmt`). `ILibDate` is an interface — build a date with
`ILibDateOptions(...)`, then format with `ILibDateFmt(...).format(date)`.

**Key Methods**:
```dart
final date = ILibDateOptions(year: 2011, month: 9, day: 29);
final fmt = ILibDateFmt(ILibDateFmtOptions(
  locale: 'ko-KR',
  length: 'short'|'medium'|'long'|'full',
  type: 'date'|'time'|'datetime',
));
fmt.format(date) → String
```

### 4. ILibCalendar Module (`lib/ilib_calendar.dart` + `lib/calendar/`)

**Responsibility**: Calendar rules and the calendar factory; per-calendar date/Rata-Die classes.

**Key Methods**:
```dart
ILibCalendar([type])            // factory; default gregorian
ILibCalendar.fromLocale(locale)
getType() → String
getNumMonths(int year) → int
getMonLength(int month, int year) → int
isLeapYear(int year) → bool
```
9 calendars: gregorian, thaisolar, julian, islamic, hebrew, ethiopic, coptic, persian
(astronomical), persian-algo (algorithmic). See `docs/date-calendar-architecture.md`.

### 5. ILibTimeZone Module (`lib/ilib_timezone.dart`)

**Responsibility**: Timezone offset and DST calculation from bundled `zoneinfo`; `'local'` =
DST-aware system timezone.

**Key Methods**:
```dart
ILibTimeZone(id) / .fromOffset(min) / .fromLocale(locale) / .defaultZone()
getId() → String
getOffsetMinutes(ILibDate date, {wallTime}) → double
inDaylightTime(ILibDate date) → bool
getDisplayName(ILibDate date, [style]) → String   // 'PST'/'PDT', 'rfc822', 'long'
```

### 6. ILibCaseMapper Module (`lib/ilib_casemapper.dart`)

**Responsibility**: Perform locale-aware case conversion

**Key Methods**:
```dart
final mapper = ILibCaseMapper(locale);
mapper.toLowerCase(String) → String
mapper.toUpperCase(String) → String
mapper.toLocaleString(String) → String
```

**Example**: Turkish `İ` (capital dotted I) → `i̇` (lowercase dotted i)

### 7. ILibLoader Module (`lib/ilib_init.dart`)

**Responsibility**: Manage locale data loading and caching

**Pattern**: Singleton

**Key Methods**:
```dart
ILibLoader.instance                  // Global access
getLocaleData(locale) → Map?         // Cached data
_mergeFromCache(locale)              // Build from file cache
_deepMerge(base, override) → Map    // Merge strategy
loadJSON()                           // Initialize with current locale
initILib()                           // Mark ready (validates data loaded)
loadILibLocaleData(locale)           // Load additional locale
loadILibLocaleDataAll()              // Load all supported locales
```

**Caching Strategy**:
- `_localeDataMap`: Merged data by locale (fast lookup)
- `_fileDataCache`: Individual JSON files (reusable)

---

## Directory Structure

```
flutter_ilib/
├── lib/
│   ├── flutter_ilib.dart        (export hub)
│   ├── ilib_locale.dart         (locale parsing & validation)
│   ├── ilib_localeinfo.dart     (locale information lookup)
│   ├── ilib_date.dart           (ILibDateOptions: date options/calculation)
│   ├── ilib_date_accessor.dart  (ILibDate interface)
│   ├── ilib_datefmt.dart        (date/time formatting engine)
│   ├── ilib_timezone.dart       (timezone / DST)
│   ├── ilib_calendar.dart       (calendar factory + abstract base)
│   ├── ilib_casemapper.dart     (case conversion)
│   ├── ilib_init.dart           (ILibLoader: data load/merge/cache)
│   ├── calendar/                (9 calendars: {name}_cal/_date/_rata_die.dart,
│   │                             rata_die.dart, ilib_astro.dart, julian_day.dart)
│   └── internal/
│       ├── ilib_utils.dart      (getJSONDataPaths, getJSONDataPath,
│       │                         isValidLocale, getSupportedLocales)
│       └── logger/              (logging)
│
├── assets/
│   └── locale/                  (hierarchical JSON, ~251 files; merged at load)
│       ├── root.json            (base defaults)
│       ├── {lang}.json          (language files)
│       ├── und-{script}.json    (script fallback, e.g. und-Hans)
│       ├── und-{region}.json    (region fallback, e.g. und-US)
│       └── {lang}-{...}.json    ({lang}-{script}, {lang}-{region}, {lang}-{script}-{region})
│
├── test/                        (basic, internal, localeinfo, casemapper,
│                                 calendar, timezone, datefmt, country,
│                                 scriptinfo, numfmt, durfmt)
├── linux/                       (C++ plugin implementation)
├── webos/                       (C++ plugin implementation)
└── scripts/                     (build/publish helpers)
```

---

## Locale Data Format

### File Structure

Each JSON file contains:
```json
{
  "ilib.data.localeinfo": {
    "region.name": "South Korea",
    "language.name": "Korean",
    "clock": "24",
    "timezone": "Asia/Seoul",
    "numfmt": {
      "decimalChar": ".",
      "groupChar": ",",
      ...
    },
    ...
  }
}
```

### Merging Example

For locale `"ko-KR"`, load order:
1. `root.json` - Base defaults
2. `ko.json` - Korean language specifics
3. `und-KR.json` - South Korea region specifics
4. `ko-KR.json` - Full ko-KR locale specifics

Each level **overrides** previous levels.

---

## Validation Logic

### isValidLocale() Function

```dart
bool isValidLocale(String lo) {
  const String bcp47Pattern =
      r'(^|[^a-z])([a-z][a-z][a-z]?)(-([A-Z][a-z][a-z][a-z]))?(-([A-Z][A-Z]))?$';
  const String regionOnlyPattern = r'^[A-Z][A-Z]$';

  if (RegExp(bcp47Pattern).hasMatch(lo)) {
    return true;  // Standard BCP-47: en, en-US, zh-Hans-CN
  }

  return RegExp(regionOnlyPattern).hasMatch(lo);  // Region-only: MK, TR
}
```

**Regex Breakdown (BCP-47)**:
- `(^|[^a-z])` - Start or non-lowercase char
- `([a-z][a-z][a-z]?)` - Language: 2-3 lowercase letters
- `(-([A-Z][a-z][a-z][a-z]))?` - Optional script: hyphen + titlecase 4 chars
- `(-([A-Z][A-Z]))?` - Optional region: hyphen + 2 uppercase letters
- `$` - End of string

---

## Recent Improvements (v2.0.0)

### 1. Region-Only Locale Support

**Before**: `'MK'` → Invalid, no data loaded  
**After**: `'MK'` → Valid, loads `und-MK.json`

**Implementation**:
- Added `regionOnlyPattern` regex to `isValidLocale()`
- Updated `getJSONDataPaths()` to handle `language == null && region != null`

### 2. Path Normalization

Both region and script `und-*` fallbacks use a **hyphen**: `und-{REGION}.json`, `und-{SCRIPT}.json`.

**Rationale**: Consistency with the bundled file naming (all `und-*` files use a hyphen).

### 3. Test Coverage Updates

Updated 5 tests to match implementation:
- `language-region (ko-KR)`: Now expects `und-KR.json` (hyphen)
- `language-region (en-US)`: Now expects `und-US.json` (hyphen)
- `language-script-region (zh-Hans-CN)`: Added intermediate `zh-CN.json`
- `language-script-region (ku-Arab-IQ)`: Added intermediate `ku-IQ.json`
- `path order` test: Updated expected path count from 6 to 7

---

## Design Patterns

### Singleton Pattern
`ILibLoader` is a singleton for global locale data loading/caching.

### Factory Pattern
`ILibLocale` and `ILibCalendar` use factory constructors for flexible construction.

### Strategy Pattern
`getJSONDataPaths()` implements the merge strategy for locale data.

### Caching Pattern
Two-level cache in `ILibLoader`:
- File cache: Raw JSON from disk
- Locale cache: Merged data ready for use

---

## Performance Considerations

### Loading Time
- Lazy loading: Load only the current locale + fallbacks
- File caching prevents redundant I/O

### Memory Usage
- Merged data cached in memory per locale
- Avoids re-merging on repeated access

### Optimization Tips
- Load locale data early in app startup
- Cache locale-specific objects (`ILibLocaleInfo`)
- Reuse `ILibLocale` instances when possible

---

## Dependencies & Integration

### Internal Dependencies
- `lib/ilib_locale.dart` ← used by `ilib_utils.dart`, all other modules
- `lib/ilib_init.dart` ← used by all modules for data loading

### External Dependencies
- `flutter: sdk` - Flutter framework
- `logging: ^1.2.0` - Logging utilities
- `plugin_platform_interface: ^2.0.2` - Multi-platform support

### Asset Dependencies
- `assets/locale/*.json` - iLib locale data files (~251 files)

---

*See CHANGELOG.md for version history.*
