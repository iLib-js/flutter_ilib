# flutter_ilib — JS-to-Dart Conversion Project

## Project Goal
Remove iLib JavaScript interop (`flutter_js`) entirely and replace with pure Dart implementation.
Reads JSON locale data directly and performs formatting/calculation in Dart.

## Architecture

### Before (JS Interop)
```dart
String getClock() {
  final String jscode = 'new LocaleInfo("$locale").getClock()';
  return ILibJS.instance.evaluate(jscode).stringResult;
}
```

### After (Pure Dart)
```dart
String getClock() {
  return (_info['clock'] as String?) ?? (_defaultInfo['clock'] as String);
}
```

### Data Flow
```
Options → ILibLocaleInfo (determines locale, calendar, clock, meridiems)
        → ILibLoader.getLocaleData(locale) → merged JSON Map
        → extract data via 'ilib.data.{dataType}' key
        → pure Dart calculation
```

## Conversion Status

### Completed (Pure Dart)
| Class | File | Core Data |
|-------|------|-----------|
| ILibLoader | `lib/ilib_init.dart` | JSON load/merge infrastructure |
| ILibLocale | `lib/ilib_locale.dart` | BCP-47 parsing |
| ILibLocaleInfo | `lib/ilib_localeinfo.dart` | `ilib.data.localeinfo` |
| ILibCaseMapper | `lib/ilib_casemapper.dart` | Dart Map lookups |
| ILibDate | `lib/ilib_date.dart` | Date calculation |
| ILibDateFmt | `lib/ilib_datefmt.dart` | `ilib.data.dateformats` + `sysres` + `zoneinfo` |
| ILibTimeZone | `lib/ilib_timezone.dart` | `ilib.data.zoneinfo` DST calculation |
| ILibCalendar | `lib/ilib_calendar.dart` + `lib/calendar/` | Calendar factory + abstract base |
| GregorianDate | `lib/calendar/gregorian_date.dart` | Gregorian date |
| GregRataDie | `lib/calendar/greg_rata_die.dart` | Gregorian RD calculation |
| ThaiSolarDate | `lib/calendar/thaisolar_date.dart` | Thai Solar date |
| ThaiSolarRataDie | `lib/calendar/thaisolar_rata_die.dart` | Thai Solar RD calculation |
| JulianDate | `lib/calendar/julian_date.dart` | Julian date |
| JulianRataDie | `lib/calendar/julian_rata_die.dart` | Julian RD calculation |
| IslamicDate | `lib/calendar/islamic_date.dart` | Islamic date |
| IslamicRataDie | `lib/calendar/islamic_rata_die.dart` | Islamic RD calculation |
| HebrewDate | `lib/calendar/hebrew_date.dart` | Hebrew date |
| HebrewRataDie | `lib/calendar/hebrew_rata_die.dart` | Hebrew RD calculation |
| EthiopicDate | `lib/calendar/ethiopic_date.dart` | Ethiopic date |
| EthiopicRataDie | `lib/calendar/ethiopic_rata_die.dart` | Ethiopic RD calculation |
| CopticDate | `lib/calendar/coptic_date.dart` | Coptic date |
| CopticRataDie | `lib/calendar/coptic_rata_die.dart` | Coptic RD calculation |
| PersianAlgoDate | `lib/calendar/persian_algo_date.dart` | Algorithmic (2820-year cycle) |
| PersianAlgoRataDie | `lib/calendar/persian_algo_rata_die.dart` | Algorithmic RD calculation |
| PersianDate | `lib/calendar/persian_date.dart` | Astronomical (equinox-based) |
| PersianRataDie | `lib/calendar/persian_rata_die.dart` | Astronomical RD calculation |
| ILibAstro | `lib/calendar/ilib_astro.dart` | Astronomical calculation (`ilib.data.astro`) |
| ILibDateOptions | `lib/ilib_date.dart` | `_toCalendarDate()` delegates per calendar |

### Remaining (Still uses ILibJS)
| Class | File | ILibJS Calls | Difficulty |
|-------|------|--------------|------------|
| ILibCountry | `lib/ilib_country.dart` | 5 | Low |
| ILibScriptInfo | `lib/ilib_scriptinfo.dart` | 7 | Low |
| ILibDurationFmt | `lib/ilib_durationfmt.dart` | 4 | Medium |
| ILibNumFmt | `lib/ilib_numfmt.dart` | 12 | High |

## Conversion Pattern (How to Convert a Class)

### Step 1: Analyze JS Source
- Original JS source: https://github.com/iLib-js/iLib → `js/lib/`
- Original JS tests: https://github.com/iLib-js/iLib → `js/test/`
- Local `ilib_js/` is a quick-reference copy (not the authoritative source)
- Check `require()` dependencies

### Step 2: Verify JSON Data
- Check data key in `assets/locale/root.json` (e.g., `ilib.data.numfmt`)
- Examine actual data structure in locale-specific files

### Step 3: Dart Implementation
```dart
class ILibXxx {
  ILibXxx(String locale) {
    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(locale);
    _data = (localeData?['ilib.data.xxx'] as Map<String, dynamic>?) ??
        <String, dynamic>{};
  }

  late Map<String, dynamic> _data;

  // fallback defaults
  static const Map<String, dynamic> _defaultData = <String, dynamic>{...};

  String getSomething() {
    return (_data['key'] as String?) ?? (_defaultData['key'] as String);
  }
}
```

### Step 4: Update Tests
Change setUpAll from `ILibJS` to `ILibLoader`:
```dart
setUpAll(() async {
  await ILibLoader.instance.loadJSON();
  ILibLoader.instance.initILib();
  await ILibLoader.instance.loadILibLocaleData('en-US');
});
```

### Step 5: Verify
```bash
flutter test test/{test_file}
flutter analyze lib/{source_file}
```

## Key Infrastructure

### ILibLoader (`lib/ilib_init.dart`)
- Singleton: `ILibLoader.instance`
- `loadJSON()` — loads current system locale data
- `getLocaleData(locale)` — returns merged locale data
- `loadILibLocaleData(locale)` — loads additional locale
- JSON load order: `root.json` → `{lang}.json` → `und-{region}.json` → `{lang}-{region}.json`

### JSON Data Keys
- `ilib.data.astro` — astronomical coefficients (equinox, delta-T, nutation, etc. for Persian astronomical)
- `ilib.data.localeinfo` — locale metadata (clock, calendar, timezone, digits, etc.)
- `ilib.data.dateformats` — date/time format templates (per calendar)
- `ilib.data.sysres` — translated strings (month/day names, AM/PM, etc.)
- `ilib.data.zoneinfo` — timezone + DST rules
- `ilib.data.numfmt` — number format patterns
- `ilib.data.scriptinfo` — script metadata
- `ilib.data.durationfmt` — duration format

### Locale Data
- 218 JSON files under `assets/locale/`
- Based on iLib v14.21.0, CLDR 46.0

## File Structure
```
lib/
├── flutter_ilib.dart           # export hub
├── ilib_init.dart              # ILibLoader
├── ilib_locale.dart            # BCP-47 locale
├── ilib_localeinfo.dart        # locale metadata
├── ilib_date.dart              # date options/calculation
├── ilib_datefmt.dart           # date formatting engine
├── ilib_timezone.dart          # timezone/DST
├── ilib_calendar.dart          # Calendar factory + abstract base
├── ilib_casemapper.dart        # case conversion
├── ilib_country.dart           # [unconverted] country info
├── ilib_durationfmt.dart       # [unconverted] duration format
├── ilib_numfmt.dart            # [unconverted] number format
├── ilib_scriptinfo.dart        # [unconverted] script info
├── calendar/                   # individual calendar implementations
│   ├── calendar_utils.dart     # mod() helper
│   ├── ilib_astro.dart         # astronomical calculation utility
│   ├── gregorian_cal.dart
│   ├── thaisolar_cal.dart
│   ├── julian_cal.dart
│   ├── islamic_cal.dart
│   ├── persian_algo_cal.dart   # Algorithmic (2820-year cycle)
│   ├── persian_cal.dart        # Astronomical (equinox-based)
│   ├── persian_date.dart       # Astronomical Persian date
│   ├── persian_rata_die.dart   # Astronomical Persian RD
│   ├── ethiopic_cal.dart
│   ├── coptic_cal.dart
│   └── hebrew_cal.dart
└── internal/
    ├── ilib_utils.dart         # getLocale(), getJSONDataPaths(), etc.
    └── logger/
```

## Conventions

### Code Style
- Must pass `flutter analyze`
- Must pass `dart format --line-length 100 .` (100-char line length)
- Explicit type declarations (`always_specify_types`)
- Single quotes, `@override` annotation
- No unnecessary comments

### Naming
- Public classes: `ILib` prefix (e.g., `ILibDateFmt`)
- Calendar implementations: suffix `Cal` (e.g., `GregorianCal`)
- Options classes: suffix `Options` (e.g., `ILibDateFmtOptions`)

### Testing
- Test file location: feature-specific folders under `test/`
- `TestWidgetsFlutterBinding.ensureInitialized()` required (for asset loading)
- Pure calculation classes (Calendar, etc.) can be tested without locale loading

### Public API Export
- All public classes exported from `lib/flutter_ilib.dart`
- Add export line when creating new files

## Calendar Type Mapping

| Type String | Date Class | RataDie Class | Cal Class |
|-------------|------------|---------------|-----------|
| `'gregorian'` | `GregorianDate` | `GregRataDie` | `GregorianCal` |
| `'thaisolar'` | `ThaiSolarDate` | `ThaiSolarRataDie` | `ThaiSolarCal` |
| `'julian'` | `JulianDate` | `JulianRataDie` | `JulianCal` |
| `'islamic'` | `IslamicDate` | `IslamicRataDie` | `IslamicCal` |
| `'hebrew'` | `HebrewDate` | `HebrewRataDie` | `HebrewCal` |
| `'ethiopic'` | `EthiopicDate` | `EthiopicRataDie` | `EthiopicCal` |
| `'coptic'` | `CopticDate` | `CopticRataDie` | `CopticCal` |
| `'persian'` | `PersianDate` | `PersianRataDie` | `PersianCal` |
| `'persian-algo'` | `PersianAlgoDate` | `PersianAlgoRataDie` | `PersianAlgoCal` |

- `'persian'`: Astronomical — uses equinox calculation via `ILibAstro`
- `'persian-algo'`: Algorithmic — uses 2820-year leap cycle formula

`ILibDateOptions._toCalendarDate()` checks the `type`/`calendar` field to create
the appropriate `ILibCalendarDate` instance and delegates all date calculation
methods like `getDayOfWeek()`.

## DateFmt Calendar Conversion Logic

`ILibDateFmt.format()` internally uses `_convertToFormatterCalendar()` which mirrors
the JS `DateFmt.format()` logic (DateFmt.js:1537-1566):

### Rules
1. **Different calendar** (e.g., Islamic date → Gregorian formatter):
   - Create `ILibCalendarDate` from input → extract Julian Day → recreate in formatter's calendar
2. **Same calendar** (e.g., ThaiSolar date → ThaiSolar formatter):
   - Return `ILibDateOptions` as-is (preserve raw values, no normalization)
   - Only compute calendar-dependent tokens (day-of-week, week-of-year, etc.) via lazy `_getCalendarDate()` in `_formatTemplate`

### Key Difference from JS
- JS `GregorianDate` does NOT normalize raw year/month/day when created from components
  (invalid dates like 2011/2/29 are preserved as-is)
- Dart `GregorianDate` always calls `_calcDateComponents()` which normalizes
- Therefore, when calendars match, do NOT convert `ILibDateOptions` → `ILibCalendarDate`
  (normalization would alter raw values and break tests)

### Related Methods (`lib/ilib_datefmt.dart`)
- `_convertToFormatterCalendar()` — decides whether conversion is needed and performs it
- `_createCalendarDate()` — factory for `ILibCalendarDate` by calendar type
- `_getCalendarDate()` — lazy calendar computation within `_formatTemplate`

## Known Pitfalls

1. **Dart normalizes dates, JS does not**:
   Dart `GregorianDate(year: 2011, month: 2, day: 29)` normalizes to Mar 1.
   JS keeps raw values. Never convert `ILibDateOptions` → `ILibCalendarDate` when
   calendars match — use raw values for formatting, `_getCalendarDate()` only for
   calendar-dependent calculations.

2. **`ILibDateOptions._toCalendarDate()` defaults to `'gregorian'`**:
   When `type` and `calendar` are both null, it assumes Gregorian. This breaks
   getDayOfWeek for non-Gregorian calendars (e.g., ThaiSolar year 2554 interpreted
   as Gregorian year 2554). The fix is in `_formatTemplate` which uses
   `_getCalendarDate()` with the formatter's `_calName`.

3. **Calendar fallback in `_convertToFormatterCalendar()`**:
   When `ILibDateOptions` has no explicit calendar, assume it matches the formatter's
   calendar (`_calName`), not `'gregorian'`. This matches JS behavior where
   `DateFactory` uses the locale's default calendar.

4. **ThaiSolar year offset**:
   ThaiSolar year = Gregorian year + 543. `ThaiSolarRataDie` subtracts 543 from the
   input year before delegating to `GregRataDie`. Julian Day and getDayOfWeek are
   computed via the underlying Gregorian RD.

5. **`_calcDateComponents()` in calendar date classes**:
   All Dart calendar date classes call this unconditionally in the constructor.
   This is correct for julianDay/rd-based construction but causes normalization
   when created from raw components. This is by design — the workaround is to
   not create `ILibCalendarDate` from raw user input when formatting.

## Detailed Documentation

For in-depth explanations, see `docs/`:
- [docs/calendar-conversion.md](docs/calendar-conversion.md) — Cross-calendar conversion logic, JS vs Dart differences
- [docs/datefmt-conversion-plan.md](docs/datefmt-conversion-plan.md) — DateFmt implementation details (tokens, templates, DST)
- [docs/conversion-guide.md](docs/conversion-guide.md) — General JS→Dart conversion checklist
- [docs/architecture.md](docs/architecture.md) — System architecture and data loading
- [docs/api.md](docs/api.md) — Public API reference

## Deferred Work
- **Han Calendar**: needs lunar calculations (`_lunarLongitude`, `_newMoonTime`, etc.). Planned as extension to `ILibAstro`.

## Running Tests
```bash
# Specific test file
flutter test test/calendar/calendar_test.dart

# Basic test suite
flutter test test/basic/

# All datefmt tests
flutter test test/datefmt/

# Static analysis
flutter analyze
```
