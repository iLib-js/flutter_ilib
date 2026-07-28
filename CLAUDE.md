# flutter_ilib — JS-to-Dart Conversion Project

## Project Goal
Remove iLib JavaScript interop (`flutter_js`) entirely and replace with pure Dart implementation.
Reads JSON locale data directly and performs formatting/calculation in Dart.

## Source Versions (read before any upstream update)
**This section is the single source of truth for the upstream versions.** Other docs reference it
instead of repeating the numbers, so a version bump only changes the values here (plus the two
point-in-time/public spots listed below).

- **iLib JS source**: **v14.22.0** — all `lib/` Dart code and `test/` cases were converted
  from the iLib JS at this tag (`js/lib/` and `js/test/` of github.com/iLib-js/iLib;
  `git checkout v14.22.0`).
- **CLDR data**: **48.2** — the bundled `assets/locale/` JSON (144 locales) was generated from
  iLib v14.22.0, which incorporates CLDR 46.
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
| ILibCurrency | `lib/ilib_currency.dart` | Currency metadata lookup (`ilib.data.currency`) |
| ILibNumFmt | `lib/ilib_numfmt.dart` | `ilib.data.localeinfo.numfmt` + `ilib.data.currency` |
| ILibScriptInfo | `lib/ilib_scriptinfo.dart` | `ilib.data.scripts` (root-only, locale-independent) |
| ILibCountry | `lib/ilib_country.dart` | `ilib.data.ctryreverse` (code↔name, per-locale) |
| ILibDurationFmt | `lib/ilib_durationfmt.dart` | `ilib.data.sysres` + `ilib.data.plurals` + `ilib.data.dateformats` (clock style) — see [docs/durationfmt-conversion-plan.md](docs/durationfmt-conversion-plan.md) |

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
- `ilib.data.dateformats` — date/time format templates (per calendar)
- `ilib.data.localeinfo` — locale metadata (clock, calendar, timezone, digits, etc.)
- `ilib.data.localeinfo.numfmt` — number format patterns (nested under localeinfo)
- `ilib.data.plurals` — CLDR plural rule tree (used by `ILibDurationFmt` plural selection)
- `ilib.data.scripts` — script metadata
- `ilib.data.sysres` — translated strings (month/day names, AM/PM, etc.)
- `ilib.data.zoneinfo` — timezone + DST rules

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
├── ilib_country.dart           # country info (ilib.data.ctryreverse)
├── ilib_numfmt.dart            # number format
├── ilib_durationfmt.dart       # duration format (sysres + plurals + clock via datefmt)
├── ilib_scriptinfo.dart        # script info (ilib.data.scripts)
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
    ├── plural_utils.dart       # getPluralCategory() — CLDR plural-rule eval (used by ILibDurationFmt)
    ├── math_utils.dart         # rounding helpers (used by ILibNumFmt)
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
- `flutter analyze` must pass for the converted code.
- **Formatting — run `dart format`.** The repo is formatted with the **short style at
  `page_width: 80`** (set in `analysis_options.yaml`; short because the package SDK floor is
  < 3.7). Format-on-save is fine; run `dart format .` before committing — a committed pre-commit
  hook enforces this (install once with `scripts/install-git-hooks.sh`; see
  [docs/development.md](docs/development.md) › Code Style & Formatting). Switching to the modern
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
- **Do NOT convert JS tests for a locale that flutter_ilib does not support.** The authoritative
  list of supported locales is `scripts/assemble_ilib/locales.json` (the seed used to generate
  `assets/locale/` — the 144 bundled iLib locales, see Source Versions); a per-locale test is in
  scope only if its locale is in that list. When the data is fully absent,
  `ILibLocaleInfo`/`ILibTimeZone.fromLocale` fall back to defaults (e.g. `Etc/UTC`), so the
  test cannot reproduce the JS expected value — these are N/A.
  **Do not decide by "the value happens to reproduce":** an unsupported locale can still yield the
  JS value by language fallback, yet it is out of scope — only convert the variant that is in
  `locales.json`. See [docs/conversion-guide.md](docs/conversion-guide.md) › Test Conversion.
- **Script-explicit 3-part locale** (e.g. `pa-Guru-IN`): in scope if its 2-part form (`pa-IN`)
  is in `locales.json` — same asset files, identical data. N/A if neither form is bundled.
- **Language-only locale** (e.g. `az`, `pa`): in scope if at least one `{lang}-*` locale is in
  `locales.json` (meaning `{lang}.json` exists). N/A if no `{lang}-*` is bundled (e.g. `ig`, `lb`).

### Public API Export
- All public classes exported from `lib/flutter_ilib.dart`
- Add export line when creating new files

## Detailed Documentation

For in-depth explanations, see `docs/`:
- [docs/calendar-conversion.md](docs/calendar-conversion.md) — Cross-calendar conversion logic, JS vs Dart differences
- [docs/datefmt-conversion-plan.md](docs/datefmt-conversion-plan.md) — DateFmt implementation details (tokens, templates, DST)
- [docs/durationfmt-conversion-plan.md](docs/durationfmt-conversion-plan.md) — DurationFmt implementation details (plural-choice engine, clock style, RTL)
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

## Running Tests
```bash
flutter test                 # all tests
flutter test test/calendar/  # one suite (also: date/, root/, number/, basic/)
flutter analyze              # static analysis
```
See [docs/development.md](docs/development.md) › Testing for single-test / `-k` filter / coverage.
