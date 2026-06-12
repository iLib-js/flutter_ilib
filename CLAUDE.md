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
  await ILibLoader.instance.loadILibLocaleData('en-US');
});
```
Note: `initILib()` is called internally by `loadJSON()` — no separate call needed.
Pure calculation classes (Calendar, RataDie) can be tested without locale loading.

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
├── ilib_date.dart              # ILibDateOptions (date options/calculation)
├── ilib_date_accessor.dart     # ILibDate interface (year/month/day accessors)
├── ilib_datefmt.dart           # date formatting engine
├── ilib_timezone.dart          # timezone/DST
├── ilib_calendar.dart          # Calendar factory + abstract base
├── ilib_casemapper.dart        # case conversion
├── ilib_country.dart           # [unconverted] country info
├── ilib_durationfmt.dart       # [unconverted] duration format
├── ilib_numfmt.dart            # [unconverted] number format
├── ilib_scriptinfo.dart        # [unconverted] script info
├── calendar/
│   ├── rata_die.dart           # ILibRataDie abstract base (shared static methods)
│   ├── ilib_date.dart          # ILibCalendarDate abstract base
│   ├── calendar_utils.dart     # mod(), floorDiv() helpers
│   ├── ilib_astro.dart         # astronomical calculation utility
│   ├── julian_day.dart         # Julian Day helper
│   ├── gregorian_cal.dart      # + gregorian_date.dart + greg_rata_die.dart
│   ├── thaisolar_cal.dart      # + thaisolar_date.dart + thaisolar_rata_die.dart
│   ├── julian_cal.dart         # + julian_date.dart + julian_rata_die.dart
│   ├── islamic_cal.dart        # + islamic_date.dart + islamic_rata_die.dart
│   ├── hebrew_cal.dart         # + hebrew_date.dart + hebrew_rata_die.dart
│   ├── ethiopic_cal.dart       # + ethiopic_date.dart + ethiopic_rata_die.dart
│   ├── coptic_cal.dart         # + coptic_date.dart + coptic_rata_die.dart
│   ├── persian_cal.dart        # + persian_date.dart + persian_rata_die.dart (astronomical)
│   └── persian_algo_cal.dart   # + persian_algo_date.dart + persian_algo_rata_die.dart (algorithmic)
└── internal/
    ├── ilib_utils.dart         # getLocale(), getJSONDataPaths(), etc.
    └── logger/
```

## Conventions

### Code Style
- Must pass `flutter analyze`
- **Formatting — do NOT run `dart format` tree-wide.** The repo was formatted with an older
  Dart (short style, ~100-col width) that the **Dart 3.7+ formatter cannot reproduce**, and the
  files are mixed (some at width 80, some at 100). On Dart 3.8 neither `dart format` (defaults to
  width 80) nor `dart format --line-length 100` (the deprecated flag silently switches to the new
  "tall" style) reproduces the committed style — both reformat large swaths of untouched code into
  huge noise diffs. **Match the surrounding style of the file you edit by hand** (short style,
  ≤100 cols); leave other files untouched. A repo-wide reformat (pick tall or short + pin the
  Dart SDK) should be its own separate commit, not mixed into feature work.
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
- Use exact `expect(value, expected)` for integer dates, JD round-trips, and epoch
  subtraction (these produce exact results). Reserve `closeTo` for calculations with
  genuine floating-point division (e.g. `unixtime / 86400000`) — using it on exact
  values hides precision bugs and weakens the test
- **Tests converted 1:1 from an iLib JS test go in the main `*_test.dart`. Tests with no
  JS counterpart (Dart-specific: extra accessors like getDayOfYear/getEra, `'local'`/
  system-tz, offset variants) go in a sibling `*_extra_test.dart`** — never add Dart-only
  cases to the JS-mirrored file (see docs/conversion-guide.md, docs/test-mapping.md)

### Public API Export
- All public classes exported from `lib/flutter_ilib.dart`
- Add export line when creating new files

## Rata Die (RD)

Rata Die ("fixed date") is a continuous day numbering system with epoch at Gregorian 0001-01-01 (RD = 1).
Used as a common intermediate representation for converting between calendar systems.

- Each calendar date class converts its components to RD via its `RataDie` class
- Cross-calendar conversion: Date → RD → Julian Day → target calendar's RD → Date
- `getDayOfWeek()` is computed from the wall-clock RD: `mod(floor(rd + tzOffsetDays), 7)`.
  Date classes pass `offset: tzOffsetDays` so the day reflects local time for tz-aware
  dates (mirrors JS `mod(floor(rd + this.offset), 7)`); without a timezone the offset is 0.
- Julian Day = RD + calendar-specific epoch offset

### Base Class: `ILibRataDie` (`lib/calendar/rata_die.dart`)
Common logic for all 9 RataDie subclasses lives in the base class. The subclasses
**`extends ILibRataDie`** (not `implements`) so they inherit its concrete instance
methods. When adding new shared logic, add it to `ILibRataDie` instead of duplicating
across subclasses.

Shared static methods:
- `unixTimeToRd(millis)` — convert Unix timestamp to Gregorian RD
- `nowToRd(epoch)` — convert `DateTime.now()` to calendar-specific RD
- `hasDateComponents(...)` — check if any date parameter is non-null
- `timeToRd(h, m, s, ms)` — convert time components to fractional RD
- `dayOfWeekFromRd(rd, offset)` — compute day of week from RD
- `snapToMillis(rd)` — round an rd to millisecond resolution

Shared concrete instance methods (mirror JS `RataDie`; all 9 provide `getJulianDay()`):
- `getTime()` / `getTimeExtended()` — unix time of the instant from the Julian Day

### Calendar Date Class Common Pattern
All 9 calendar date classes (`lib/calendar/*_date.dart`) follow the same constructor pattern:
- Parameters: `year?, month?, day?, hour?, minute?, second?, millisecond?, julianDay?, rd?, unixtime?, locale?, timezone?, dst?`
- `locale` derives timezone via `ILibLocaleInfo(locale).getTimeZone()` (explicit `timezone` takes precedence)
- No-arg construction uses `DateTime.now()` as fallback (matches JS `RataDie.js:109-112`)

**Principle**: When the same change applies to all 9 classes, add a shared method to the base
(`ILibRataDie` or `ILibCalendarDate`) and call it from subclasses — do not duplicate.

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
   Note: `ILibDateOptions`'s instant accessors (`getRataDie`/`getJulianDay`/`getTime`/
   `getTimeExtended`) intentionally go through `_toCalendarDate()` and therefore normalize.
   That is correct — an instant is well-defined even for an invalid date (Feb 29 → Mar 1
   yields the right rd). The no-normalize rule applies only to the *display* year/month/day
   used while formatting, never to the computed instant.

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

6. **No-arg construction uses current time**:
   `CopticDate()` (no parameters) creates a date for `DateTime.now()`, not
   year=1/month=1/day=1. This matches JS `RataDie.js:109-112`. The fallback
   triggers only when ALL parameters (year, month, day, hour, minute, second,
   millisecond, julianDay, rd, unixtime) are null. If any single date component
   is provided, the others default to their calendar-specific defaults (usually 1/1/1).

7. **`'local'` is the system timezone (JS-faithful, Strategy A); only an absent `_timezone`
   field stays UTC**:
   Like JS, omitting `timezone` defaults to `"local"` and resolves against the platform — the
   *system* timezone, DST-aware and machine-dependent. `ILibTimeZone('local')` samples the OS
   offsets via Dart core `DateTime` (`offsetJan1`/`offsetJun1`, `_offset = min`,
   `_dstSavings = abs(diff)`; `getId()` stays `'local'`). `adjustRdForTimezone()` /
   `calcTimezoneOffset()` only short-circuit when the raw `_timezone` field is `null`
   (no timezone *and* no locale → UTC); a `'local'` value flows through to the system offset.
   This is **Strategy A** (delegate to the OS, synchronous, no plugin) — see
   [docs/local-timezone-support.md](docs/local-timezone-support.md).
   Consequences:
   - **`timezone: 'local'` and `timezone: 'Etc/UTC'` now DIVERGE on any non-UTC host** (system
     offset vs 0). They are no longer interchangeable. The `getTimezoneOffset` source is the OS,
     so results depend on the host's `TZ`.
   - **A Dart no-timezone *and* no-locale date is interpreted in the system zone** (matches JS).
     Calendar tests that need deterministic output therefore set `timezone: 'Etc/UTC'` explicitly
     (the ~600 calendar constructions do this, mirroring the JS originals); a few Dart-only
     smoke tests pin `'Etc/UTC'` too. Do NOT rely on omitted-tz meaning UTC.
   - **`locale` IS forwarded** through `ILibDateOptions._toCalendarDate()`, so a locale-only date
     uses the locale's zone for its instant (JS step ②) — see point 1 below, now reversed.
   - The DST-end overlap (`dst` flag) and the from-components vs from-instant split are handled in
     `ILibTimeZone`'s `isLocal` branches (`getOffsetMinutes`/`inDaylightTime`), mirroring
     `TimeZone.js` `getOffsetMillis`/`inDaylightTime`.
   - **Spring-forward gap** (a non-existent wall time) uses the JS `GregorianDate._init` `hBefore`
     rule (compare the wall hour's offset to the hour before; if it grew, the time is in the
     missing hour → use the pre-transition/standard offset). Dart applies this in
     `getOffsetMinutes`'s `isLocal` wall-time branch to **all calendars** — deliberately, unlike
     JS which only has the `hBefore` block in `GregorianDate` (non-Gregorian JS calendars skip
     gap correction; that inconsistency is an unintended JS artifact and is NOT replicated).
   - **Test determinism**: `'local'`-dependent tests must be deterministic regardless of host.
     The ported JS `*Local*` tests (`testTZInDaylightTimeLocalTrue/False`,
     `testTZConstructUsingLocalID`, `testTZGetRawOffsetMillisLocal`) and the Dart-only ones
     (`timezone_extra_test.dart`) emulate `America/Los_Angeles` via the injectable hooks
     `ILibTimeZone.sysWallOffsetMinutes` / `sysOffsetMinutesForInstant` / `sampleYear` (overridden
     in `setUp`, restored in `tearDown`) — no `TZ` pinning required.

## Detailed Documentation

For in-depth explanations, see `docs/`:
- [docs/calendar-conversion.md](docs/calendar-conversion.md) — Cross-calendar conversion logic, JS vs Dart differences
- [docs/datefmt-conversion-plan.md](docs/datefmt-conversion-plan.md) — DateFmt implementation details (tokens, templates, DST)
- [docs/conversion-guide.md](docs/conversion-guide.md) — General JS→Dart conversion checklist
- [docs/architecture.md](docs/architecture.md) — System architecture and data loading
- [docs/api.md](docs/api.md) — Public API reference
- [docs/local-timezone-support.md](docs/local-timezone-support.md) — How JS `timezone: 'local'` (system tz) could be implemented in Dart; current divergence + two strategies + Flutter-recommended approach

## Deferred Work
- **Han Calendar**: needs lunar calculations (`_lunarLongitude`, `_newMoonTime`, etc.). Planned as extension to `ILibAstro`.
- **System `'local'` timezone**: DONE (Strategy A — `ILibTimeZone('local')` samples the OS offset
  via Dart core `DateTime`, synchronous, no plugin; `'local'` and no-tz dates are now the
  DST-aware system timezone, matching JS). See Pitfall #7 and
  [docs/local-timezone-support.md](docs/local-timezone-support.md). Optional future work
  (Strategy B / `flutter_timezone`) is only needed if `getId()` must return the real IANA zone
  name instead of `'local'`.

## Timezone DST Offset (resolved)
All `testXxxDateRoundTripConstruction2` tests (with timezone) pass for every calendar, and
`ILibTimeZone` now mirrors the JS `TimeZone`/`IDate` structure.

1. **`ILibDate` exposes the instant (JS `IDate` parity)**: `getRataDie()`, `getJulianDay()`,
   `getTime()`, `getTimeExtended()`, `getCalendar()` are on the `ILibDate` interface.
   `ILibCalendarDate` already implements them; `ILibDateOptions` delegates to `_toCalendarDate()`,
   which now also forwards `unixtime`/`timezone`/`locale` (and maps a Flutter `DateTime` to
   `unixtime`) so the instant honours those fields. `locale` IS forwarded (JS-faithful, reversed
   from the earlier UTC-only design): a locale-only date derives its zone from the locale
   (`ILibLocaleInfo(locale).getTimeZone()`), shifting the instant accordingly. With no `timezone`
   and no `locale`, the date defaults to `'local'` (system tz). See Pitfall #7.

2. **`inDaylightTime` is instant-based** (mirrors JS): it derives the Gregorian RD and year from the
   date's instant — `rd = date.getJulianDay() - GregRataDie.epoch`, `year = GregRataDie.calcYear(rd)` —
   so any calendar (and the calendar-year bug) is handled without a separate Gregorian view
   (`_gregorianViewForOffset()` was removed). The `wallTime` flag matches JS:
   `false` (default, UTC): convert boundaries to UTC — `startRd -= offset/1440`,
   `endRd -= (offset + dstSavings)/1440`; `true` (wall): `startRd += dstSavings/1440`.
   `calcTimezoneOffset()` (from-unixtime/JD) passes `this` with `wallTime=false`;
   `adjustRdForTimezone()` (from-components) passes `this` with `wallTime=true`. This fixes the
   off-by-one-hour offset on DST-transition days (e.g. Julian 2014/10/20 → Gregorian 2014/11/2,
   the LA fall-back day).

3. **Float precision at day boundaries**: `ILibRataDie.snapToMillis()` rounds an rd to millisecond
   resolution (mirrors iLib `RataDie` storing `halfup((jd - epoch) * 86400000) / 86400000`). Applied
   in every `*RataDie` constructor's `julianDay`/`unixtime` branches so a `getTime()` round-trip lands
   on an exact instant instead of `...999999999` (which would decompose to the previous day / hour 24).

Because `inDaylightTime` reads the instant, a date passed to `getOffset()`/`inDaylightTime()` must
carry the timezone it should be interpreted in (matching the JS tests, which build
`GregorianDate({timezone: ..., ...})`). The `testTZInDaylightTime*` / `testTZGetOffset*` DST-boundary
tests therefore set `timezone:` on their `ILibDateOptions`.

4. **DST overlap disambiguation (`dst` flag)**: at the end of DST the same local wall time occurs
   twice (e.g. 2014-11-02 01:30 in LA is both 08:30 UTC in PDT and 09:30 UTC in PST). `ILibDate`
   carries an optional `bool? dst` (on the interface, `ILibCalendarDate`, and `ILibDateOptions`,
   threaded through every calendar date constructor and `_toCalendarDate()`). `inDaylightTime()` has
   the JS magic-overlap rule — `if (dst != null && rd < endRd && endRd - rd <= dstSavings/1440)
   return dst;` — so the flag both selects the right offset at construction (shifting the stored
   instant: `dst:true` → 08:30 UTC, `dst:false` → 09:30 UTC) and drives `getDisplayName` (PDT vs PST).
   The block is gated on `dst != null`, so dates without it are unaffected.

## Running Tests
```bash
# All calendar tests
flutter test test/calendar/

# All timezone tests
flutter test test/timezone/

# Basic test suite
flutter test test/basic/

# All datefmt tests
flutter test test/datefmt/

# Specific test file
flutter test test/calendar/testcopticdate_test.dart

# Static analysis
flutter analyze
```
