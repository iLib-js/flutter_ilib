# flutter_ilib — JS-to-Dart Conversion Project

## Project Goal
Remove iLib JavaScript interop (`flutter_js`) entirely and replace with pure Dart implementation.
Reads JSON locale data directly and performs formatting/calculation in Dart.

## Source Versions (read before any upstream update)
**This section is the single source of truth for the upstream versions.** Other docs reference it
instead of repeating the numbers, so a version bump only changes the values here (plus the two
point-in-time/public spots listed below).

- **iLib JS source**: **v14.21.0** — all `lib/` Dart code and `test/` cases were converted
  from the iLib JS at this tag (`js/lib/` and `js/test/` of github.com/iLib-js/iLib;
  `git checkout v14.21.0`).
- **CLDR data**: **46** — the bundled `assets/locale/` JSON (218 locales) was generated from
  iLib v14.21.0, which incorporates CLDR 46.
- When updating to a newer iLib/CLDR: bump the JS source and the generated locale data
  **together** (a JS-only or data-only bump will diverge), then re-run the converted tests
  against the new JS expectations.
- **On a version bump, also update these two spots that intentionally state the version
  independently** (everything else references this section):
  - `README.md` — the public version note in the intro.
  - `CHANGELOG.md` — add a new entry (the existing entries are frozen history; do not edit them).

## Architecture
Pure Dart: each class reads JSON locale data and computes natively (the old `flutter_js` interop is
gone — see [docs/conversion-guide.md](docs/conversion-guide.md) for the before/after pattern).

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
| 9 calendars | `lib/calendar/{name}_date.dart` + `{name}_rata_die.dart` | gregorian, thaisolar, julian, islamic, hebrew, ethiopic, coptic, persian (astronomical), persian-algo (algorithmic) — see [docs/date-calendar-architecture.md](docs/date-calendar-architecture.md) |
| ILibAstro | `lib/calendar/ilib_astro.dart` | Astronomical calculation (`ilib.data.astro`) |
| ILibDateOptions | `lib/ilib_date.dart` | `_toCalendarDate()` delegates per calendar |

### Not yet ported (currently non-functional)
The `ILibJS` interop bridge was removed in v2.0, but these classes were never converted to pure
Dart — they still contain `ILibJS.instance.evaluate()` calls that no longer resolve, so they **do
not compile and are not exported** from `flutter_ilib.dart`. Porting them is the remaining work
(the count is the number of `evaluate()` calls to replace).

| Class | File | `evaluate()` calls to port |
|-------|------|----------------------------|
| ILibCountry | `lib/ilib_country.dart` | 5 |
| ILibScriptInfo | `lib/ilib_scriptinfo.dart` | 7 |
| ILibDurationFmt | `lib/ilib_durationfmt.dart` | 4 |
| ILibNumFmt | `lib/ilib_numfmt.dart` | 12 |

## Conversion Pattern (How to Convert a Class)
See [docs/conversion-guide.md](docs/conversion-guide.md) for the full checklist (analyze JS source →
verify JSON data → Dart implementation → convert tests → verify), the before/after example, and the
`getLocaleData()` / `_defaultData` template. Test setup: `setUpAll` calls
`ILibLoader.instance.loadJSON()` (which runs `initILib()` internally) + `loadILibLocaleData('en-US')`;
pure-calculation classes need no locale loading (see Conventions › Testing).

## Key Infrastructure

### ILibLoader (`lib/ilib_init.dart`)
- Singleton: `ILibLoader.instance`
- `loadJSON()` — loads current system locale data
- `getLocaleData(locale)` — returns merged locale data
- `loadILibLocaleData(locale)` — loads additional locale
- JSON load order (least → most specific, deep-merged; **missing files are skipped**):
  `root.json` → `{lang}.json`
  → *(if script)* `und-{script}.json` → `{lang}-{script}.json`
  → *(if region)* `und-{region}.json` → `{lang}-{region}.json`
  → *(if script **and** region)* `{lang}-{script}-{region}.json`
  - All `und-*` fallbacks use a hyphen (`und-Hans.json`, `und-CN.json`), matching the bundled
    file naming.
  - e.g. `en-US`: `root` → `en` → `und-US` → `en-US`
  - e.g. `zh-Hans-CN`: `root` → `zh` → `und-Hans` → `zh-Hans` → `und-CN` → `zh-CN` → `zh-Hans-CN`
  - (Implemented in `getJSONDataPaths()` in `lib/internal/ilib_utils.dart`.)

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
- `assets/locale/` holds the JSON data files for the full set of supported locales,
  organized hierarchically and merged at load time. Most-general → most-specific:
  `root.json` → `{lang}.json` → *(if script)* `und-{script}.json` → `{lang}-{script}.json`
  → `und-{region}.json` → `{lang}-{region}.json` → *(script + region)* `{lang}-{script}-{region}.json`
  (e.g. `zh-Hans-CN`). All `und-*` fallbacks use a hyphen. Multiple files combine to resolve one
  locale, so the file count (~251) is larger than the locale count. Full order: see
  [Key Infrastructure](#json-data-keys) / `getJSONDataPaths()`.
- Version: see [Source Versions](#source-versions-read-before-any-upstream-update)

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
    └── logger/                 # internal logging (LogAdapter + package:logging); not part of the conversion
```

## Conventions

> **Editing calendar/date/timezone code?** It has feature-specific must-follow rules (pass
> `offset: tzOffsetDays` to weekday/onOrBefore calls; format calendar-dependent tokens with the
> formatter's calendar, not `_toCalendarDate`'s gregorian default; `'local'` = the system timezone;
> add shared logic to the base class, not the 9 subclasses)
> — read [docs/date-calendar-architecture.md](docs/date-calendar-architecture.md) §Critical rules
> (+ `calendar-conversion.md`, `local-timezone-support.md`) **before** changing it.

### Code Style
- `flutter analyze` must pass for the converted code (`lib/` minus the 4 unported classes and
  their tests — those still reference the removed `ILibJS` and report errors until ported).
- **Formatting — run `dart format`.** The repo is formatted with the **short style at
  `page_width: 80`** (set in `analysis_options.yaml`; short because the package SDK floor is
  < 3.7). Format-on-save is fine; run `dart format .` before committing. Switching to the modern
  "tall" style would require raising the SDK floor to ≥ 3.7 and a one-time repo-wide reformat in
  its own commit.
- Explicit type declarations (`always_specify_types`)
- Single quotes, `@override` annotation
- No unnecessary comments

### Naming
- Public classes: `ILib` prefix (e.g., `ILibDateFmt`)
- Calendar implementations: suffix `Cal` (e.g., `GregorianCal`)
- Options classes: suffix `Options` (e.g., `ILibDateFmtOptions`)

### Testing
- Test file location: feature-specific folders under `test/`
- `TestWidgetsFlutterBinding.ensureInitialized()` is required only when a test loads assets
  (`loadJSON`/`loadILibLocaleData`). Pure calculation classes with no data dependency can be
  tested without locale loading or the binding (which classes / the calendar-specific exceptions:
  [docs/date-calendar-architecture.md](docs/date-calendar-architecture.md)).
- Use exact `expect(value, expected)` for integer dates, JD round-trips, and epoch
  subtraction (these produce exact results). Reserve `closeTo` for calculations with
  genuine floating-point division (e.g. `unixtime / 86400000`) — using it on exact
  values hides precision bugs and weakens the test
- **Tests converted 1:1 from an iLib JS test go in the main `*_test.dart`. Tests with no
  JS counterpart (Dart-specific: extra accessors like getDayOfYear/getEra, `'local'`/
  system-tz, offset variants) go in a sibling `*_extra_test.dart`** — never add Dart-only
  cases to the JS-mirrored file (see docs/conversion-guide.md, docs/test-mapping.md)
- **Do NOT convert JS tests that exercise a locale not in the bundled set under
  `assets/locale/`** (the 218 bundled iLib locales — see Source Versions). Without the locale data,
  `ILibLocaleInfo`/`ILibTimeZone.fromLocale` fall back to defaults (e.g. `Etc/UTC`), so the
  test cannot reproduce the JS expected value — these are N/A. (e.g. JS
  `testTZGetDefaultFor_tk_TM`/`_tg_TJ`/`_wo_SN`/`_zu_ZA`/`_mt_MT` — tk/tg/wo/zu/mt and their
  regions are not bundled.)

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

7. **No timezone / `'local'` means UTC (offset 0), NOT the system timezone**:
   In JS, omitting `timezone` defaults to `"local"`, and iLib resolves that against the
   intrinsic `Date` (the *system* timezone) — so a no-timezone JS date is machine-dependent.
   Dart does NOT implement the system-local path: both `adjustRdForTimezone()` and
   `calcTimezoneOffset()` short-circuit on `tz == null || tz == 'local'` and apply **no
   offset** (`tzOffsetDays = 0`), i.e. the wall-clock components are treated as the UTC
   instant. (`ILibTimeZone('local')` likewise falls back to the Etc/UTC offset of 0 while
   keeping `getId() == 'local'`.)
   Consequences:
   - **In Dart, `timezone: 'Etc/UTC'`, `timezone: 'local'`, and omitting `timezone` are all
     behaviorally identical** — every one resolves to offset 0 (UTC), so they produce the same
     instant and the same wall-clock components. This is a **deliberate divergence from JS**,
     where `'Etc/UTC'` (always offset 0) and `'local'` (the *system* timezone) differ on any
     non-UTC machine and yield different instants. So a Dart test that sets `'local'` is NOT
     exercising a system-timezone path the way the JS original does — it collapses to UTC.
     Tests still set the JS-original value (`'Etc/UTC'` or `'local'`) for 1:1 construction
     fidelity, but the reader must know the two are indistinguishable at runtime in Dart.
   - **A no-timezone Dart date == an `Etc/UTC` date.** It is NOT equal to the JS no-timezone
     (local) result on a non-UTC machine. The JS calendar tests avoid this by setting
     `timezone: "Etc/UTC"` explicitly for deterministic UTC output; the Dart conversions
     should mirror that (set `timezone: 'Etc/UTC'` wherever the JS test does) so construction
     is 1:1. Omitting it happens to pass only because Dart's no-tz already behaves as UTC.
   - JS `*Local*` tests (`testTZInDaylightTimeLocalTrue/False`, `testTZConstructUsingLocalID`,
     `testTZGetRawOffsetMillisLocal`, …) and no-arg-vs-system-`Date` checks
     (`testXxxDateConstructorEmpty`, `testGregDateGetTimeWithUnixTime`) depend on the system
     timezone, so they are **N/A** in Dart or ported as deterministic round-trips.
   - Supporting a real `'local'` would mean removing the short-circuit and wiring in the
     platform's local offset (e.g. `DateTime` local / a tz plugin); it would also make those
     `*Local*` tests portable, at the cost of machine-dependent results.

## Detailed Documentation

For in-depth explanations, see `docs/`:
- [docs/calendar-conversion.md](docs/calendar-conversion.md) — Cross-calendar conversion logic, JS vs Dart differences
- [docs/datefmt-conversion-plan.md](docs/datefmt-conversion-plan.md) — DateFmt implementation details (tokens, templates, DST)
- [docs/conversion-guide.md](docs/conversion-guide.md) — General JS→Dart conversion checklist
- [docs/architecture.md](docs/architecture.md) — System architecture and data loading
- [docs/api.md](docs/api.md) — Public API reference
- [docs/local-timezone-support.md](docs/local-timezone-support.md) — system `'local'` timezone (Strategy A, implemented): the resolved DST/offset behavior, the `dst` overlap & spring-forward rules, and the injectable test hooks
- [docs/date-calendar-architecture.md](docs/date-calendar-architecture.md) — calendar/date layer architecture: Rata Die, the calendar type mapping table, constructor pattern, class relationships

## Deferred Work
- **Han Calendar**: needs lunar calculations (`_lunarLongitude`, `_newMoonTime`, etc.). Planned as
  an extension to `ILibAstro`.
- **`'local'` IANA zone name** (optional): the system-tz *behavior* is implemented (Strategy A);
  Strategy B (`flutter_timezone`) is only needed if `getId()` must return the real zone name
  (e.g. `Asia/Seoul`) instead of `'local'`. See
  [docs/local-timezone-support.md](docs/local-timezone-support.md).
- The 4 unported classes (`ILibCountry`, `ILibScriptInfo`, `ILibDurationFmt`, `ILibNumFmt`) — they
  still call the now-removed `ILibJS`, so they don't compile / aren't exported; see Conversion
  Status.

## Running Tests
```bash
flutter test                 # all tests
flutter test test/calendar/  # one suite (also: timezone/, basic/, datefmt/)
flutter analyze              # static analysis
```
See [docs/development.md](docs/development.md) › Testing for single-test / `-k` filter / coverage.
