# Calendar Conversion in DateFmt

## Overview

When `ILibDateFmt.format()` receives a date in a different calendar system than the formatter's,
it must convert the date before formatting. For example, an Islamic date (1439/8/22) passed to a
Gregorian formatter should output "May 8, 2018".

This document explains how the conversion works and the key differences between the JS and Dart
implementations.

## JS Original Logic (DateFmt.js:1537-1566)

```javascript
format: function (dateLike) {
    var thisZoneName = this.tz && this.tz.getId() || "local";

    // Step 1: Always convert input to a concrete IDate instance
    var date = DateFactory._dateToIlib(dateLike, thisZoneName, this.locale);

    // Step 2: If calendar or timezone differs, convert via Julian Day
    if (dateZoneName !== thisZoneName || date.getCalendar() !== this.calName) {
        var newDate = DateFactory({
            type: this.calName,
            timezone: thisZoneName,
            julianday: date.getJulianDay()
        });
        date = newDate;
    }

    // Step 3: Format with the converted date
    return this._formatTemplate(date, this.templateArr);
}
```

Key points:
1. `DateFactory._dateToIlib()` always produces a concrete `IDate` with an explicit calendar type
2. When calendars differ, Julian Day serves as the universal intermediate representation
3. JS `GregorianDate` does NOT normalize date components — raw values (year, month, day) are
   preserved even if invalid (e.g., Feb 29 in a non-leap year)

## Dart Implementation

### Method: `_convertToFormatterCalendar()` in `lib/ilib_datefmt.dart`

```dart
ILibDate _convertToFormatterCalendar(ILibDate date) {
    // Determine the input date's calendar
    String dateCalendar = _calName;
    if (date is ILibDateOptions) {
      dateCalendar = date.type ?? date.calendar ?? _calName;
    } else if (date is ILibCalendarDate) {
      dateCalendar = date.getCalendar();
    }

    // Same calendar: return as-is (no normalization)
    if (dateCalendar == _calName) {
      return date;
    }

    // Different calendar: convert via Julian Day
    final ILibCalendarDate calDate = (date is ILibDateOptions)
        ? _createCalendarDate(dateCalendar, year: ..., month: ..., ...)
        : date as ILibCalendarDate;
    final double jd = calDate.getJulianDay();
    return _createCalendarDate(_calName, julianDay: jd);
}
```

### Why Not Always Convert to ILibCalendarDate?

In JS, `GregorianDate._init()` stores raw component values without calling `_calcDateComponents()`:

```javascript
// JS: raw values preserved
this.year = parseInt(params.year, 10) || 0;
this.month = parseInt(params.month, 10) || 1;
this.day = parseInt(params.day, 10) || 1;
// _calcDateComponents() is NOT called when components are provided
```

In Dart, `GregorianDate` now follows the same pattern (JS-identical):

```dart
// Dart: fromComponents path preserves raw values (matches JS)
GregorianDate({int? year, int? month, int? day, ...}) {
    if (fromComponents) {
        _year = year ?? 0;  // raw values stored directly
        _month = month ?? 1;
        _day = day ?? 1;
        // ...
        _rataDie = GregRataDie(year: year, ...);
        _rataDie = GregRataDie(rataDie: adjustRdForTimezone(...)); // UTC RD
        // _calcDateComponents() NOT called — raw components preserved
    } else {
        _rataDie = GregRataDie(julianDay/rd/unixtime);
        _calcDateComponents(); // decomposes UTC RD → wall-clock components
    }
}
```

This means both JS and Dart now preserve raw components for `fromComponents` path.
However, when used via `ILibDateFmt.format()`, `ILibDateOptions` is still returned as-is
for same-calendar formatting to avoid any normalization edge cases.

**Note**: The `_calcDateComponents()` path (unixtime/jd/rd) decomposes UTC RD into
wall-clock components by adding back the timezone offset (`calcTimezoneOffset()`).

### Day-of-Week Problem and Solution

Returning `ILibDateOptions` as-is creates another problem: `ILibDateOptions.getDayOfWeek()`
internally calls `_toCalendarDate()` which defaults to `'gregorian'`:

```dart
ILibCalendarDate _toCalendarDate() {
    final String cal = type ?? calendar ?? 'gregorian'; // defaults to gregorian!
    ...
}
```

For ThaiSolar year 2554 (= Gregorian 2011), calling `getDayOfWeek()` on an `ILibDateOptions`
without an explicit calendar would create `GregorianDate(2554, 9, 29)` — a completely wrong date.

**Solution**: `_formatTemplate` uses `_getCalendarDate()` for calendar-dependent tokens only:

```dart
ILibCalendarDate _getCalendarDate(ILibDate date) {
    if (date is ILibCalendarDate) {
      return date;
    }
    final ILibDateOptions opts = date as ILibDateOptions;
    return _createCalendarDate(_calName,
        year: opts.year, month: opts.month, day: opts.day,
        hour: opts.hour, minute: opts.minute, second: opts.second,
        millisecond: opts.millisecond);
}
```

This is only invoked for tokens that need calendar calculation:
- `E/EE/EEE/EEEE/c/cc/ccc/cccc` — day of week
- `G` — era
- `w/ww` — week of year
- `D/DD/DDD` — day of year
- `W` — week of month

All other tokens (`d`, `M`, `yyyy`, `h`, `mm`, etc.) use raw values from `ILibDateOptions` directly.

## Conversion Flow Diagram

```
ILibDateFmt.format(date)
│
├── _resolveDateOptions(date)     // handle DateTime + timezone
│
├── _convertToFormatterCalendar(date)
│   │
│   ├── Same calendar?
│   │   └── YES → return date as-is (ILibDateOptions with raw values)
│   │
│   └── NO → convert via Julian Day
│       ├── Create ILibCalendarDate from input calendar
│       ├── Get Julian Day number
│       └── Create new ILibCalendarDate in formatter's calendar
│
└── _formatTemplate(date, templateArr)
    │
    ├── Simple tokens (d, M, yyyy, h, mm, ss, ...)
    │   └── Use date.year, date.month, etc. directly (raw values)
    │
    └── Calendar-dependent tokens (E, G, w, D, W)
        └── calDate ??= _getCalendarDate(date)  // lazy, only when needed
            └── Use calDate.getDayOfWeek(), etc.
```

## Test Cases Covering This Logic

| Test | Scenario | Validates |
|------|----------|-----------|
| `testDateFmtNativeDateTimeSimpleFullIslamic_ar_EG` | Islamic → Gregorian | Cross-calendar conversion |
| `PersSimpleMedium_fa_IR` | Persian date, Persian formatter | Same calendar, no conversion |
| `testDateFmtShortDateComponentsWDM_th_TH` | ThaiSolar, day-of-week token | Lazy calDate for getDayOfWeek |
| `testDateFmtSimpleLong_af_ZA_Feb` | Invalid date (Feb 29, non-leap) | Raw value preservation |

## Calendar Types Supported

| Calendar String | Date Class | RataDie Class |
|-----------------|------------|---------------|
| `'gregorian'` | `GregorianDate` | `GregRataDie` |
| `'thaisolar'` | `ThaiSolarDate` | `ThaiSolarRataDie` |
| `'julian'` | `JulianDate` | `JulianRataDie` |
| `'islamic'` | `IslamicDate` | `IslamicRataDie` |
| `'hebrew'` | `HebrewDate` | `HebrewRataDie` |
| `'ethiopic'` | `EthiopicDate` | `EthiopicRataDie` |
| `'coptic'` | `CopticDate` | `CopticRataDie` |
| `'persian'` | `PersianDate` | `PersianRataDie` |
| `'persian-algo'` | `PersianAlgoDate` | `PersianAlgoRataDie` |

All calendar date classes accept both component-based (`year`, `month`, `day`, ...) and
Julian Day-based (`julianDay`) construction, enabling seamless conversion between any two
calendar systems.
