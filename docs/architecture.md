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
    ├── Public API (lib/*.dart)
    │   ├── ILibDate
    │   ├── ILibLocaleInfo
    │   ├── ILibCaseMapper
    │   └── ILibLocale
    │
    ├── Internal (lib/internal/)
    │   ├── ilib_utils.dart (locale path generation, validation)
    │   └── logger/ (logging)
    │
    └── Assets (assets/)
        └── locale/ (100+ locale JSON files)
            ├── root.json
            ├── {language}.json
            ├── und-{REGION}.json
            └── {language}-{REGION}.json
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
  • und_{script}.json (if script exists)
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
| `"zh-Hans-CN"` | `[root.json, zh.json, und_Hans.json, zh-Hans.json, und-CN.json, zh-CN.json, zh-Hans-CN.json]` |

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

### 3. ILibDate Module (`lib/ilib_date.dart`)

**Responsibility**: Format dates according to locale conventions

**Key Methods**:
```dart
final date = ILibDate(DateTime);
date.format(ILibDateFmtOptions) → String

// Options
ILibDateFmtOptions(
  locale: 'ko-KR',
  length: 'short'|'medium'|'long'|'full',
  useNative: true|false
)
```

### 4. ILibCaseMapper Module (`lib/ilib_casemapper.dart`)

**Responsibility**: Perform locale-aware case conversion

**Key Methods**:
```dart
final mapper = ILibCaseMapper(locale);
mapper.toLowerCase(String) → String
mapper.toUpperCase(String) → String
mapper.toLocaleString(String) → String
```

**Example**: Turkish `İ` (capital dotted I) → `i̇` (lowercase dotted i)

### 5. ILibLoader Module (`lib/ilib_init.dart`)

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
│   ├── flutter_ilib.dart
│   │   └── exports all public APIs
│   │
│   ├── ilib_locale.dart         (1000+ lines)
│   │   └── Locale parsing & validation
│   │
│   ├── ilib_localeinfo.dart
│   │   └── Locale information lookup
│   │
│   ├── ilib_date.dart
│   │   └── Date/time formatting
│   │
│   ├── ilib_casemapper.dart
│   │   └── Case conversion
│   │
│   ├── ilib_init.dart
│   │   ├── ILibLoader singleton
│   │   ├── Data loading
│   │   └── Caching
│   │
│   └── internal/
│       ├── ilib_utils.dart
│       │   ├── getJSONDataPaths()      - Generates file load sequence
│       │   ├── getJSONDataPath()       - Single file path
│       │   ├── isValidLocale()         - BCP-47 + region-only validation
│       │   └── getSupportedLocales()   - Full list
│       │
│       └── logger/
│           ├── log_adapter.dart
│           └── logger_selector.dart
│
├── assets/
│   └── locale/
│       ├── root.json                  (Base data)
│       ├── en.json, ko.json, ...      (100+ language files)
│       ├── und-US.json, und-MK.json   (100+ region files)
│       └── en-US.json, ko-KR.json     (200+ full locale files)
│
├── test/
│   ├── basic/
│   │   └── flutter_ilib_utils_test.dart
│   │       (Path generation, locale validation tests)
│   │
│   ├── casemapper/
│   │   └── (Case conversion tests by locale)
│   │
│   └── localeinfo/
│       ├── localeinfo_test.dart
│       │   (getRegionName, getClock, timezone, etc.)
│       │
│       └── localeinfo_dayofweek_test.dart
│           (Week information tests)
│
├── linux/                       (C++ plugin implementation)
├── webos/                       (C++ plugin implementation)
└── scripts/                     (Build/publish helpers)
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

**Regions**: Use hyphens `und-{REGION}.json` (not underscore)  
**Scripts**: Keep underscore `und_{SCRIPT}.json`

**Rationale**: Consistency with existing file naming conventions

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
`ILibJS` is a singleton for global locale data access.

### Factory Pattern
`ILibLocale` uses factory constructors for flexible construction.

### Strategy Pattern
`getJSONDataPaths()` implements merge strategy for locale data.

### Caching Pattern
Two-level cache in `ILibJS`:
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
- `assets/locale/*.json` - iLib locale data files (100+ files)

---

*Last Updated: May 2026*
