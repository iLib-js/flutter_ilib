# Date & Calendar System Architecture

## Overview

All calendar systems use **Rata Die** (continuous day count) as a common intermediate, and convert between each other via **Julian Day**.

## Layer Diagram

```
+-------------------------------------------------------------------------+
|                          User API Layer                                  |
+-------------------------------------------------------------------------+
|                                                                         |
|  ILibDateFmt                         ILibDateOptions                    |
|  +-------------------+               +----------------------+          |
|  | format(ILibDate)  |---receives--->| year, month, day,    |          |
|  | getCalendar()     |               | hour, minute, second |          |
|  | getClock()        |               | locale, timezone,    |          |
|  | getTemplate()     |               | calendar/type        |          |
|  | getMeridiemsRange |               |                      |          |
|  +--------+----------+               | _toCalendarDate() ---+--+       |
|           |                           +----------------------+  |       |
|           | uses                                                |       |
|           v                                                     |       |
|  +----------------+   +--------------+                          |       |
|  | ILibTimeZone   |   | ILibCalendar |<-- factory               |       |
|  |                |   |  (abstract)  |    ILibCalendar('type')  |       |
|  | getOffset()    |   +--------------+                          |       |
|  | inDaylightTime |   | GregorianCal |                          |       |
|  | getDisplayName |   | IslamicCal   |                          |       |
|  +----------------+   | HebrewCal    |                          |       |
|                        | PersianCal   |                          |       |
|                        | ...          |                          |       |
|                        +--------------+                          |       |
+------------------------------------------------------------------+-------+
                                                                   |
                                                                   v
+-------------------------------------------------------------------------+
|                       Calendar Date Layer                                |
+-------------------------------------------------------------------------+
|                                                                         |
|              ILibCalendarDate (abstract base)                            |
|              +---------------------------------+                        |
|              | getYears(), getMonths(), ...     |                        |
|              | getRataDie()                     |                        |
|              | getJulianDay()                   |                        |
|              | getDayOfWeek()                   |                        |
|              | getDayOfYear()                   |                        |
|              +---------------+-----------------+                        |
|                              | extends                                   |
|         +----------+---------+--------+----------+----------+           |
|         v          v         v        v          v          v           |
|  +----------+ +--------+ +------+ +--------+ +--------+ +--------+    |
|  |Gregorian | |Islamic | |Hebrew| |Persian | |Ethiopic| |Coptic  |    |
|  |Date      | |Date    | |Date  | |Date    | |Date    | |Date    |    |
|  +----+-----+ +---+----+ +--+---+ +---+----+ +---+----+ +---+----+    |
|       |            |        |         |          |          |           |
|       | holds      |        |         |          |          |           |
|       v            v        v         v          v          v           |
+-------+------------+--------+---------+----------+----------+-----------+
        |            |        |         |          |          |
+-------+------------+--------+---------+----------+----------+-----------+
|       v            v        v         v          v          v           |
|              ILibRataDie (abstract base)                                |
|              +---------------------------------+                        |
|              | getRataDie() -> double           |                        |
|              | getJulianDay() -> double         |                        |
|              | getDayOfWeek() -> int            |                        |
|              +---------------+-----------------+                        |
|                              | extends                                   |
|         +----------+---------+--------+----------+----------+           |
|         v          v         v        v          v          v           |
|  +----------+ +--------+ +------+ +--------+ +--------+ +--------+    |
|  |Greg      | |Islamic | |Hebrew| |Persian | |Ethiopic| |Coptic  |    |
|  |RataDie   | |RataDie | |RD    | |RataDie | |RataDie | |RataDie |    |
|  +----------+ +--------+ +------+ +--------+ +--------+ +--------+    |
|                                                                         |
|                        Rata Die Calculation Layer                        |
+-------------------------------------------------------------------------+
```

## Cross-Calendar Conversion

```
   Islamic Date --> IslamicRataDie --> RD --> Julian Day
                                                 |
                                                 v
   Gregorian Date <-- GregRataDie <-- RD <-- Julian Day
```

All calendars share this path:
**Source Date -> Source RataDie -> RD value -> Julian Day -> Target RataDie -> Target Date**

## DateFmt.format() Internal Flow

```
   ILibDateOptions
        |
        v
   Same calendar? --YES--> Use raw values (no normalization)
        |
        NO
        |
        v
   _convertToFormatterCalendar()
        |
        v
   Source -> Julian Day -> Target Calendar RataDie -> Converted Date
        |
        v
   _formatTemplate() -> Apply format template -> Final string
```

### Key Rule

- **Same calendar**: Use `ILibDateOptions` raw values directly (Dart normalizes dates, JS does not)
- **Different calendar**: Convert via Julian Day using `_convertToFormatterCalendar()`

## ILibAstro (Astronomical Calculation - Persian only)

```
   PersianDate --> PersianRataDie --> ILibAstro
                                        |
                                        +-- equinoxAfterJd()   (vernal equinox)
                                        +-- equinoxJDE()       (approximation)
                                        +-- ilib.data.astro    (coefficients JSON)
```

- `persian`: Astronomical - uses equinox calculation via `ILibAstro`
- `persian-algo`: Algorithmic - uses 2820-year leap cycle formula (no ILibAstro)

## Calendar Date Constructor Pattern (JS-identical)

All 9 calendar date classes follow the same two-path constructor:

```
Constructor(year?, month?, ..., julianDay?, rd?, unixtime?, locale?, timezone?)
    |
    +-- locale? --> ILibLocaleInfo(locale).getTimeZone() --> timezone
    |
    +-- fromComponents? (julianDay/rd/unixtime all null, date component exists)
    |       |
    |       +-- Store raw wall-clock components (_year, _month, ...)
    |       +-- Calculate wall-clock RD
    |       +-- adjustRdForTimezone(rd) --> UTC RD (rd - offset)
    |       +-- DO NOT call _calcDateComponents()
    |
    +-- else (unixtime/julianDay/rd/no-args)
            |
            +-- RataDie from params (UTC RD)
            +-- _calcDateComponents():
            |     1. _decomposeRd(UTC RD)     --> temp components
            |     2. calcTimezoneOffset()      --> tzOffsetDays
            |     3. _decomposeRd(wallClockRd) --> final wall-clock components
            +-- Components are wall-clock, RD is UTC
```

Matches JS `_init()` / `_init2()` / `_calcDateComponents()` pattern.

## Class Relationships

| Layer | Class | Role |
|-------|-------|------|
| API | `ILibDateOptions` | User-facing date options, implements `ILibDate` |
| API | `ILibDateFmt` | Formats dates with locale/timezone/calendar support |
| API | `ILibTimeZone` | Timezone offset and DST calculation |
| API | `ILibCalendar` | Abstract factory for calendar rules (leap year, month length) |
| Date | `ILibCalendarDate` | Abstract base: `getTime()`, `adjustRdForTimezone()`, `getWallClockRd()`, `calcTimezoneOffset()`, `tzOffsetDays` |
| Date | `GregorianDate`, `IslamicDate`, ... | Concrete: two-path constructor, `_decomposeRd()` |
| RD | `ILibRataDie` | Abstract base: `nowToRd(epoch)`, `hasDateComponents()`, `unixTimeToRd()` |
| RD | `GregRataDie`, `IslamicRataDie`, ... | Concrete RD: `DateTime.now()` fallback when no params |
| Util | `JulianDay` | Helper for Julian Day arithmetic |
| Util | `ILibAstro` | Astronomical calculations (equinox, nutation) |

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

## File Structure

```
lib/
+-- ilib_date.dart              # ILibDateOptions (user API)
+-- ilib_datefmt.dart           # ILibDateFmt (formatting engine)
+-- ilib_timezone.dart          # ILibTimeZone (DST calculation)
+-- ilib_calendar.dart          # ILibCalendar (factory + abstract)
+-- calendar/
    +-- ilib_date.dart          # ILibCalendarDate (abstract base)
    +-- rata_die.dart           # ILibRataDie (abstract base)
    +-- julian_day.dart         # JulianDay helper
    +-- calendar_utils.dart     # mod() helper
    +-- ilib_astro.dart         # Astronomical calculations
    +-- gregorian_cal.dart      # Calendar rules
    +-- gregorian_date.dart     # Date implementation
    +-- greg_rata_die.dart      # RD calculation
    +-- islamic_cal.dart / islamic_date.dart / islamic_rata_die.dart
    +-- hebrew_cal.dart / hebrew_date.dart / hebrew_rata_die.dart
    +-- persian_cal.dart / persian_date.dart / persian_rata_die.dart
    +-- persian_algo_cal.dart / persian_algo_date.dart / persian_algo_rata_die.dart
    +-- ethiopic_cal.dart / ethiopic_date.dart / ethiopic_rata_die.dart
    +-- coptic_cal.dart / coptic_date.dart / coptic_rata_die.dart
    +-- julian_cal.dart / julian_date.dart / julian_rata_die.dart
    +-- thaisolar_cal.dart / thaisolar_date.dart / thaisolar_rata_die.dart
```
