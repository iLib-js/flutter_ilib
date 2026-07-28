---
title: flutter_ilib API Reference
description: Class overview, usage flows, and combined examples for flutter_ilib
keywords: [flutter, ilib, api, reference, documentation]
version: 2.0.0
---

# flutter_ilib API Reference

> For individual method signatures and parameters, see the dartdoc comments in
> each source file. This document covers the class overview, how classes relate
> to each other, and combined usage examples.

## Overview

| Class | File | Purpose |
|-------|------|---------|
| `ILibLocale` | `lib/ilib_locale.dart` | BCP-47 locale parsing & validation |
| `ILibLocaleInfo` | `lib/ilib_localeinfo.dart` | Locale metadata (clock, calendar, currency, …) |
| `ILibDate` / `ILibDateOptions` | `lib/ilib_date.dart` | Date object — calendar components + instant accessors |
| `ILibDateFmt` | `lib/ilib_datefmt.dart` | Date/time formatting |
| `ILibDurationFmt` | `lib/ilib_durationfmt.dart` | Duration formatting |
| `ILibNumFmt` | `lib/ilib_numfmt.dart` | Number & currency formatting |
| `ILibCalendar` | `lib/ilib_calendar.dart` + `lib/calendar/` | Calendar rules (month count, month length, leap year) |
| `ILibTimeZone` | `lib/ilib_timezone.dart` | Timezone offset & DST calculation |
| `ILibCaseMapper` | `lib/ilib_casemapper.dart` | Locale-aware case conversion |
| `ILibScriptInfo` | `lib/ilib_scriptinfo.dart` | Script metadata (direction, IME, casing) |
| `ILibCountry` | `lib/ilib_country.dart` | Country code ↔ name lookup |
| `ILibCurrency` | `lib/ilib_currency.dart` | Currency metadata |
| `ILibLoader` | `lib/ilib_init.dart` | Locale data loading & readiness |

---

## Class Relationships & Usage Flows

### 1. Locale → Locale Metadata

`ILibLocale` parses a BCP-47 string into components. `ILibLocaleInfo` takes a
locale (string or `ILibLocale`) and returns regional conventions.

```
ILibLocale('ko-KR')
  └─ .getLanguage()  → 'ko'
  └─ .getRegion()    → 'KR'

ILibLocaleInfo('ko-KR')
  └─ .getClock()          → '24'
  └─ .getCalendar()       → 'gregorian'
  └─ .getFirstDayOfWeek() → 0  (Sunday)
  └─ .getCurrency()        → 'KRW'
  └─ .getLocale()          → ILibLocale
```

### 2. Date Object → Formatter

`ILibDateOptions` holds calendar components (or a Unix time / Flutter
`DateTime`). `ILibDateFmt` formats it as a locale string. The two are always
used together.

```
ILibDateOptions(year, month, day, …)   ← build the date
  └─ ILibDateFmt(ILibDateFmtOptions(locale, length, …)).format(date)
       └─ String result
```

`ILibDateOptions` also exposes accessors (`getYears()`, `getMonths()`,
`getDayOfWeek()`, `getCalendar()`, …) for reading back calendar components.

The `calendar` / `type` field on `ILibDateOptions` selects which calendar system
the components are interpreted in (`'gregorian'` by default; `fa-IR` defaults to
`'persian'`, `am-ET` to `'ethiopic'`, etc.).

### 3. Calendar Rules

`ILibCalendar` answers calendar-level questions independently of any date
object — useful for building pickers or validating input.

```
ILibCalendar('gregorian')
  └─ .isLeapYear(2024)        → true
  └─ .getMonLength(2, 2024)   → 29
  └─ .getNumMonths(2024)      → 12

ILibCalendar.fromLocale('fa-IR')  → persian calendar
```

### 4. Timezone

`ILibTimeZone` provides raw offsets and DST rules. It is used directly or via
`ILibDateFmt` (pass `timezone:` to `ILibDateFmtOptions`).

```
ILibTimeZone('America/New_York')
  └─ .getRawOffsetStr()               → '-05:00'
  └─ .inDaylightTime(date)            → true/false
  └─ .getDisplayName(date)            → 'EST' / 'EDT'
  └─ .getOffsetMinutes(date)          → effective offset incl. DST
```

### 5. Number & Currency Formatting

`ILibNumFmt` uses `ILibNumFmtOptions` and formats numbers according to locale
conventions. Currency formatting requires the `type: 'currency'` option.

```
ILibNumFmt(ILibNumFmtOptions(locale, type, currency, …)).format(number)
  └─ String result  (e.g. '$1,234.56', '1.234,56 €')
```

### 6. Duration Formatting

`ILibDurationFmt` formats a duration expressed as calendar components (years,
months, weeks, days, hours, minutes, seconds). The `style: 'clock'` option
renders hours/minutes as `HH:MM`.

```
ILibDurationFmt(ILibDurationFmtOptions(locale, length, style)).format(dateOptions)
  └─ String result  (e.g. '1 year, 2 months', '01:30')
```

---

## Combined Examples

### Date formatting with timezone

```dart
final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(
    locale: 'ko-KR',
    length: 'full',
    type: 'datetime',
    useNative: false,
    timezone: 'Asia/Seoul'));
fmt.format(ILibDateOptions(
    year: 2024, month: 6, day: 27, hour: 10, minute: 42));
// '2024년 6월 27일 오전 10:42'
```

### Non-Gregorian calendar formatting

```dart
// Persian calendar — fa-IR defaults to 'persian'
ILibDateFmt(ILibDateFmtOptions(locale: 'fa-IR', length: 'long', useNative: false))
    .format(ILibDateOptions(locale: 'fa-IR', year: 1392, month: 9, day: 21));
// '‏21 آذر 1392'

// Ethiopic calendar — am-ET defaults to 'ethiopic'
ILibDateFmt(ILibDateFmtOptions(locale: 'am-ET', length: 'medium'))
    .format(ILibDateOptions(locale: 'am-ET', year: 2011, month: 9, day: 29));
// '29 ግንቦት 2011'
```

### Locale metadata → number formatting

```dart
final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
// info.getDecimalSeparator()  → ','
// info.getGroupingSeparator() → '.'

ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE')).format(1234567.89);
// '1.234.567,89'
```

### Country code lookup

```dart
final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
ctry.getName('TR');   // '튀르키예'
ctry.getCode('튀르키예');  // 'TR'
```

---

## Public API

```dart
import 'package:flutter_ilib/flutter_ilib.dart';

// Available classes:
// - FlutterILib, ILibLoader
// - ILibLocale, ILibLocaleInfo
// - ILibDate / ILibDateOptions
// - ILibDateFmt (+ ILibDateFmtOptions, MeridiemsInfo)
// - ILibDurationFmt (+ ILibDurationFmtOptions)
// - ILibNumFmt (+ ILibNumFmtOptions)
// - ILibCalendar (+ per-calendar classes: GregorianDate, ThaiSolarDate, …)
// - ILibTimeZone
// - ILibCaseMapper
// - ILibScriptInfo, ILibCountry, ILibCurrency
```

---

*See CHANGELOG.md for version history.*
