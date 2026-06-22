# JS → Dart Conversion Guide

Guide for converting flutter_ilib's JavaScript interop dependencies to pure Dart.

## Background

- **develop branch**: Uses `flutter_js` package's `JavascriptRuntime` to evaluate iLib JS library at runtime
- **convertToDart branch**: Removes JS runtime → loads JSON locale data directly and processes in pure Dart

## Conversion Status

### Completed

| Class | File | Approach |
|-------|------|----------|
| `ILibLocaleInfo` | `lib/ilib_localeinfo.dart` | JSON data lookup |
| `ILibLocale` | `lib/ilib_locale.dart` | Pure Dart parsing |
| `ILibCaseMapper` | `lib/ilib_casemapper.dart` | Dart Map-based mapping |
| `ILibLoader` | `lib/ilib_init.dart` | JSON load via `rootBundle` (replaces `ILibJS`) |
| `ILibDate` | `lib/ilib_date.dart` | No JS dependency |
| `ILibDateFmt` | `lib/ilib_datefmt.dart` | Pure Dart formatting engine |
| `ILibTimeZone` | `lib/ilib_timezone.dart` | DST calculation from zoneinfo JSON |
| `ILibCalendar` | `lib/ilib_calendar.dart` + `lib/calendar/` | Calendar factory + all calendar types |

### Remaining

| Class | File | JS Calls | Suggested Priority |
|-------|------|----------|-------------------|
| `ILibCountry` | `lib/ilib_country.dart` | 5 | 1st — simple structure |
| `ILibScriptInfo` | `lib/ilib_scriptinfo.dart` | 7 | 2nd — simple structure |
| `ILibDurationFmt` | `lib/ilib_durationfmt.dart` | 5 | 3rd |
| `ILibNumFmt` | `lib/ilib_numfmt.dart` | 14 | 4th — most complex |

## Conversion Pattern

### Before (JS interop)

```dart
// develop branch — executes JS code via ILibJS.evaluate()
String getClock() {
  final String jscode = 'new LocaleInfo("$locale").getClock()';
  final String result = ILibJS.instance.evaluate(jscode).stringResult;
  return result;
}
```

### After (Pure Dart)

```dart
// convertToDart branch — direct lookup from JSON data
String getClock() {
  return (_info['clock'] as String?) ?? (_defaultInfo['clock'] as String);
}
```

## Step-by-Step Checklist

### 1. Data Analysis

- [ ] Identify data keys used by the class from `ilib_js/{ClassName}.js`
- [ ] Verify JSON key in `assets/locale/root.json` (e.g., `ilib.data.localeinfo`)
- [ ] Confirm required data already exists in JSON files

### 2. Data Preparation (if needed)

- [ ] If data is missing, regenerate JSON files using iLib data generation tools
- [ ] Add files to `assets/locale/`
- [ ] Verify assets path in `pubspec.yaml`

### 3. Dart Code Implementation

- [ ] Use `ILibLoader.instance.getLocaleData(locale)` in class constructor
- [ ] Access data by key: `getLocaleData(locale)?['ilib.data.{classKey}']`
- [ ] Define defaults as `_defaultInfo` static const Map
- [ ] Convert each getter to `(_info['key'] as Type?) ?? fallback` pattern
- [ ] Change `import 'ilib_init.dart'` reference from `ILibJS` to `ILibLoader`

### 4. Test Conversion

- [ ] Convert tests from `js/test/calendar/test{class}.js` to Dart
- [ ] **NEVER modify test expected values** — if a test fails, the Dart implementation has a bug, not the test data
- [ ] Test data (e.g., `testDatesCoptic` reference arrays) must match JS source exactly
- [ ] If a JS test cannot be converted due to missing Dart features (setters, timezone offset), document it in `docs/test-mapping.md` under "Not Converted" with the reason
- [ ] **Do NOT convert JS tests that use a locale not bundled under `assets/locale/`** (the 218 iLib v14.21.0 locales). The data is absent, so `ILibLocaleInfo`/`ILibTimeZone.fromLocale` fall back to defaults (e.g. `Etc/UTC`) and the JS expected value (e.g. `Asia/Ashgabat`) cannot be reproduced — N/A (e.g. `testTZGetDefaultFor_tk_TM`/`_tg_TJ`/`_wo_SN`/`_zu_ZA`/`_mt_MT`)
- [ ] Dart-specific additional tests (getDayOfYear, getEra, etc.) go in a separate `*_extra_test.dart` file

### 5. Cleanup

- [ ] Verify exports in `flutter_ilib.dart`
- [ ] Run existing tests to confirm identical results
- [ ] Remove JS interop imports (`flutter_js`, `dart:ffi`, etc.)

## Core Infrastructure

### ILibLoader (lib/ilib_init.dart)

The core component of the conversion. Replaces `ILibJS` from the develop branch.

```dart
// Singleton access
ILibLoader.instance

// Locale data lookup (returns already-merged Map)
Map<String, dynamic>? data = ILibLoader.instance.getLocaleData('ko-KR');

// Access class-specific data
Map<String, dynamic>? localeInfo = data?['ilib.data.localeinfo'];
```

### Data Load Flow

```
App start → ILibLoader.loadJSON()
         → getJSONDataPaths(locale) generates file list to load
         → Load in order: root.json → {lang}.json → und-{region}.json → {lang}-{region}.json
         → Hierarchical merge via deepMerge
         → Cache in _localeDataMap
```

### JSON Data Structure

```json
{
  "ilib.data.localeinfo": { "clock": "24", "timezone": "Asia/Seoul", ... },
  "ilib.data.scriptinfo": { ... },
  "ilib.data.numfmt": { ... }
}
```

Each JSON file may contain multiple `ilib.data.*` keys. After loading, they are deep-merged to compose the final data.

## Reference

- Original JS source: https://github.com/iLib-js/iLib → `js/lib/`
- Original JS tests: https://github.com/iLib-js/iLib → `js/test/`
- Local `ilib_js/` — JS source copy (for quick reference only)
- `assets/locale/` — hierarchical JSON locale data covering the supported locales (root → lang → und-script → lang-script → und-region → lang-region → lang-script-region; ~251 files), generated from iLib v14.21.0
- `docs/architecture.md` — full architecture documentation
- `test/` — existing tests (for post-conversion verification)
