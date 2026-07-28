---
title: flutter_ilib Architecture
description: System architecture, data flow, and design patterns for flutter_ilib
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
    │   ├── ILibDate / ILibDateOptions
    │   ├── ILibDateFmt
    │   ├── ILibDurationFmt
    │   ├── ILibNumFmt
    │   ├── ILibCalendar (+ lib/calendar/: 9 calendars, Rata Die, Astro)
    │   ├── ILibTimeZone
    │   ├── ILibCaseMapper
    │   ├── ILibScriptInfo
    │   ├── ILibCountry
    │   ├── ILibCurrency
    │   └── ILibLoader (data loading)
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

---

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
8. API calls access merged data (ILibLocaleInfo, ILibDateFmt, etc.)
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
| `"MK"` (region-only) | `[root.json, und-MK.json]` |
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
│   ├── ilib_durationfmt.dart    (duration formatting)
│   ├── ilib_numfmt.dart         (number & currency formatting)
│   ├── ilib_timezone.dart       (timezone / DST)
│   ├── ilib_calendar.dart       (calendar factory + abstract base)
│   ├── ilib_casemapper.dart     (locale-aware case conversion)
│   ├── ilib_scriptinfo.dart     (script metadata)
│   ├── ilib_country.dart        (country code ↔ name lookup)
│   ├── ilib_currency.dart       (currency metadata)
│   ├── ilib_init.dart           (ILibLoader: data load/merge/cache)
│   ├── calendar/                (9 calendars: {name}_cal/_date/_rata_die.dart,
│   │                             rata_die.dart, ilib_astro.dart, julian_day.dart)
│   └── internal/
│       ├── ilib_utils.dart      (getJSONDataPaths, isValidLocale, getSupportedLocales)
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
      "groupChar": ","
    }
  }
}
```

### Merging Example

For locale `"ko-KR"`, load order:
1. `root.json` — base defaults
2. `ko.json` — Korean language specifics
3. `und-KR.json` — South Korea region specifics
4. `ko-KR.json` — full ko-KR locale specifics

Each level overrides previous levels.

---

## Design Patterns

### Singleton
`ILibLoader` is a singleton for global locale data loading and caching.

### Factory
`ILibLocale` and `ILibCalendar` use factory constructors for flexible construction.

### Two-Level Cache (`ILibLoader`)
- **File cache** (`_fileDataCache`): raw JSON from disk — avoids redundant I/O
- **Locale cache** (`_localeDataMap`): merged data by locale — avoids re-merging on repeated access

---

## Performance Considerations

### Loading
- Lazy loading: only the current locale + its fallback chain are loaded at startup
- File cache prevents redundant disk reads when multiple locales share the same fallback files

### Optimization Tips
- Load locale data early in app startup (`ILibLoader.instance.loadJSON()`)
- Load additional locales ahead of time with `loadILibLocaleData(locale)`
- Reuse `ILibDateFmt` / `ILibNumFmt` instances across multiple format calls

---

## Dependencies & Integration

### Internal Dependencies
- `lib/ilib_locale.dart` ← used by `ilib_utils.dart` and all other modules
- `lib/ilib_init.dart` ← used by all modules for data loading

### External Dependencies
- `flutter: sdk` — Flutter framework
- `logging: ^1.2.0` — logging utilities
- `plugin_platform_interface: ^2.0.2` — multi-platform support

### Asset Dependencies
- `assets/locale/*.json` — iLib locale data files (~251 files)

---

*See CHANGELOG.md for version history.*
