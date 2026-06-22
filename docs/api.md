---
title: flutter_ilib API Reference
description: Complete API reference for flutter_ilib classes and methods
keywords: [flutter, ilib, api, reference, documentation]
version: 2.0.0
---

# flutter_ilib API Reference

## Overview

| Class | File | Purpose |
|-------|------|---------|
| `ILibLocale` | `lib/ilib_locale.dart` | Locale parsing & validation |
| `ILibLocaleInfo` | `lib/ilib_localeinfo.dart` | Locale information lookup |
| `ILibDate` / `ILibDateOptions` | `lib/ilib_date_accessor.dart`, `lib/ilib_date.dart` | Date object (calendar-aware accessors + instant) |
| `ILibDateFmt` | `lib/ilib_datefmt.dart` | Date/time formatting |
| `ILibCalendar` | `lib/ilib_calendar.dart` + `lib/calendar/` | Calendar rules (months, leap year) & factory |
| `ILibTimeZone` | `lib/ilib_timezone.dart` | Timezone offset & DST calculation |
| `ILibCaseMapper` | `lib/ilib_casemapper.dart` | Case conversion |

---

## ILibLocale API

### Purpose
Parse, validate, and manipulate locale strings according to BCP-47 standard.

### Constructors

```dart
/// Parse from locale string
final locale = ILibLocale('en-US');
final locale = ILibLocale('zh-Hans-CN');
final locale = ILibLocale('MK');  // Region-only

/// Construct from components
final locale = ILibLocale('en', 'US');
final locale = ILibLocale('zh', null, 'CN', 'Hans');
final locale = ILibLocale(null, 'MK');  // Region-only
```

### Properties

```dart
// Read-only
locale.language      // String? → ISO 639 code (e.g., 'en', 'ko')
locale.region        // String? → ISO 3166 code (e.g., 'US', 'KR')
locale.script        // String? → ISO 15924 code (e.g., 'Hans', 'Arab')
locale.variant       // String? → Variant identifier
locale.spec          // String  → Full normalized spec (e.g., 'en-US')
```

### Key Methods

```dart
String? getLanguage()           // ISO 639 code
String? getLanguageAlpha3()     // ISO 639-3 code (e.g., 'eng')

String? getRegion()             // ISO 3166-2 code
String? getRegionAlpha3()       // ISO 3166-3 code (e.g., 'USA')

String? getScript()             // ISO 15924 code
String? getVariant()            // Variant

String getSpec()                // Normalized locale spec
String getLangSpec()            // Language + script spec

String toString()               // Same as getSpec()

// Static utility methods
static String? regionAlpha2ToAlpha3(String? alpha2)
static String? languageAlpha1ToAlpha3(String? alpha1)

// Static validation
static bool _isLanguageCode(String? str)
static bool _isRegionCode(String? str)
static bool _isScriptCode(String? str)
```

### Examples

```dart
// Parsing
final loc1 = ILibLocale('ko-KR');
print(loc1.language);     // 'ko'
print(loc1.region);       // 'KR'
print(loc1.getSpec());    // 'ko-KR'

// Script support
final loc2 = ILibLocale('zh-Hans-CN');
print(loc2.language);     // 'zh'
print(loc2.script);       // 'Hans'
print(loc2.region);       // 'CN'

// Region-only (new in v2.0)
final loc3 = ILibLocale('MK');
print(loc3.language);     // null
print(loc3.region);       // 'MK'
print(loc3.getSpec());    // 'MK'

// Code conversion
final code = ILibLocale.languageAlpha1ToAlpha3('en');
print(code);              // 'eng'
```

---

## ILibLocaleInfo API

### Purpose
Retrieve locale-specific information (region name, timezone, currency, etc.).

### Constructor

```dart
// Create with locale
final info = ILibLocaleInfo('ko-KR');
final info = ILibLocaleInfo('en-US');
final info = ILibLocaleInfo('MK');  // Region-only
final info = ILibLocaleInfo();      // Current system locale
```

### Methods

#### Region & Language

```dart
String? getRegionName()      // e.g., 'South Korea', 'North Macedonia'
String getLanguageName()     // e.g., 'Korean', 'English'
```

#### Time

```dart
String getClock()            // '12' or '24'
String getTimeZone()         // e.g., 'Asia/Seoul', 'America/New_York'
int getFirstDayOfWeek()      // 0 (Sun) to 6 (Sat)
int getWeekEndStart()        // 0 (Sun) to 6 (Sat)
int getWeekEndEnd()          // 0 (Sun) to 6 (Sat)
```

#### Numbers & Formatting

```dart
String getDecimalSeparator()         // e.g., '.', ','
String getNativeDecimalSeparator()   // Native script variant
String getGroupingSeparator()        // e.g., ',', ' '
String getNativeGroupingSeparator()  // Native script variant

int getPrimaryGroupingDigits()       // e.g., 3 (millions)
int getSecondaryGroupingDigits()     // e.g., 3 (further grouping)

String getRoundingMode()             // 'halfup', 'halfdown', etc.
String getNativeDigits()             // e.g., 'Western', 'Latin'
```

#### Calendars & Units

```dart
String getCalendar()         // e.g., 'gregorian', 'islamic'
String getUnits()            // 'metric', 'imperial', etc.

List<String>? getScripts()   // Scripts commonly used (e.g., ['Cyrl'])
```

#### Locale

```dart
ILibLocale getLocale()       // Return ILibLocale instance
String? get locale           // Locale spec string
```

### Examples

```dart
final info = ILibLocaleInfo('ko-KR');

// Region information
print(info.getRegionName());        // 'South Korea'
print(info.getLanguageName());      // 'Korean'

// Time settings
print(info.getClock());              // '24'
print(info.getTimeZone());           // 'Asia/Seoul'
print(info.getFirstDayOfWeek());     // 0 (Sunday)

// Number formatting
print(info.getDecimalSeparator());   // '.'
print(info.getGroupingSeparator());  // ','

// Calendar
print(info.getCalendar());           // 'gregorian'
print(info.getUnits());              // 'metric'
```

---

## ILibDate & ILibDateFmt API

### Purpose
`ILibDate` is the date interface (calendar-aware component accessors + the underlying instant);
`ILibDateOptions` is its concrete implementation — construct a date from calendar components or a
Unix time. `ILibDateFmt` formats an `ILibDate` according to locale conventions.

> Note: `ILibDate` is an abstract interface — you do **not** construct it from a `DateTime`. Build a
> date with `ILibDateOptions(...)` and format it with `ILibDateFmt(...).format(date)`.

### Constructing a date — `ILibDateOptions`

```dart
// From calendar components
final date = ILibDateOptions(
  year: 2011, month: 9, day: 29,
  hour: 13, minute: 45, second: 0,
  timezone: 'America/New_York',  // omitted ⇒ 'local' (system tz), unless a locale is set (its zone wins)
  calendar: 'gregorian',         // omitted ⇒ locale default / gregorian
  locale: 'en-US',
);

// From a Unix time in ms (e.g. a Flutter DateTime)
final date2 = ILibDateOptions(unixtime: DateTime(2011, 9, 29).millisecondsSinceEpoch);
```

`ILibDateOptions(...)` parameters: `locale`, `year`, `month`, `week`, `day`, `hour`, `minute`,
`second`, `millisecond`, `unixtime`, `timezone`, `calendar`, `dateTime`, `type`, `dst`.

### `ILibDate` accessors (implemented by `ILibDateOptions`)

```dart
int? get year / month / day / hour / minute / second / millisecond
String? get timezone        // or getTimeZone()
bool?   get dst             // DST-overlap disambiguation (null = unspecified)

int getDayOfWeek()          // 0=Sun .. 6=Sat
int getWeekOfYear()         // ISO 8601 week
int getDayOfYear()          // 1..366
int getWeekOfMonth(String? locale)
int getEra()                // 0=BCE, 1=CE

// Underlying instant (mirrors JS IDate)
double getRataDie()
double getJulianDay()
int    getTime()            // ms since Unix epoch
int    getTimeExtended()
String getCalendar()
```

### Formatting — `ILibDateFmt`

```dart
final fmt = ILibDateFmt(ILibDateFmtOptions(
  locale: 'en-US',
  length: 'short',      // 'short' | 'medium' | 'long' | 'full'
  type: 'date',         // 'date' | 'time' | 'datetime'
));
String out = fmt.format(date);   // ILibDate → String

// Other methods
int    getClock();                  // 12 or 24
String getTemplate();               // the resolved format template
String getDateComponentOrder();     // e.g. '{date} {time}'
List<MeridiemsInfo> getMeridiemsRange();
```

`ILibDateFmtOptions(...)` parameters: `locale`, `length`, `type`, `calendar`, `timezone`,
`useNative`, `date`, `time`, `clock`, `template`, `meridiems`.

### Examples

```dart
final date = ILibDateOptions(year: 2011, month: 9, day: 29);

// Short date
print(ILibDateFmt(ILibDateFmtOptions(length: 'short')).format(date));   // '9/29/11'

// Long date
print(ILibDateFmt(ILibDateFmtOptions(locale: 'en-US', length: 'long')).format(date));
// 'September 29, 2011'

// Time only
final t = ILibDateOptions(year: 2011, month: 9, day: 29, hour: 13, minute: 45);
print(ILibDateFmt(ILibDateFmtOptions(length: 'short', type: 'time')).format(t));  // '1:45 PM'
```

---

## ILibCaseMapper API

### Purpose
Perform locale-aware case conversion.

### Constructor

```dart
final mapper = ILibCaseMapper('tr-TR');  // Turkish
final mapper = ILibCaseMapper('en-US');  // English (US)
final mapper = ILibCaseMapper();         // Current locale
```

### Key Methods

```dart
String toLowerCase(String str)    // Locale-aware lowercase
String toUpperCase(String str)    // Locale-aware uppercase
String toLocaleCase(String str)   // Mixed case per locale
```

### Examples

```dart
// Standard case conversion
final mapper1 = ILibCaseMapper('en-US');
print(mapper1.toLowerCase('HELLO'));      // 'hello'
print(mapper1.toUpperCase('hello'));      // 'HELLO'

// Locale-specific handling
final mapper2 = ILibCaseMapper('tr-TR');  // Turkish
print(mapper2.toLowerCase('İ'));          // 'i̇' (Turkish dotless-i)
print(mapper2.toUpperCase('i'));          // 'İ' (Turkish dotted-I)

// German ß handling
final mapper3 = ILibCaseMapper('de-DE');
print(mapper3.toUpperCase('straße'));     // 'STRASSE' (German-specific)
```

---

## ILibCalendar API

### Purpose
Calendar rules — month count, month length, and leap-year — plus the calendar factory. (Date
*objects* are built with `ILibDateOptions`; this class answers calendar-level questions.)

### Construction

```dart
final cal = ILibCalendar();                    // default: gregorian
final cal = ILibCalendar('islamic');           // by type
final cal = ILibCalendar.fromLocale('ar-SA');  // calendar used by the locale
```

Supported types: `gregorian`, `thaisolar`, `julian`, `islamic`, `persian` (astronomical),
`persian-algo` (algorithmic), `ethiopic`, `coptic`, `hebrew`.
(`'han'` throws `UnimplementedError`; an unknown type throws `ArgumentError`.)

### Methods

```dart
String getType()                          // e.g. 'gregorian'
int    getNumMonths(int year)             // months in the given year
int    getMonLength(int month, int year)  // days in month (1-based month)
bool   isLeapYear(int year)

static List<String> getCalendars()        // all supported type names
```

### Examples

```dart
final greg = ILibCalendar('gregorian');
print(greg.getMonLength(2, 2012));   // 29 (leap year)
print(greg.isLeapYear(2011));        // false

final hijri = ILibCalendar('islamic');
print(hijri.getNumMonths(1432));     // 12
```

---

## ILibTimeZone API

### Purpose
Timezone offset and DST calculation from the bundled `zoneinfo` data. `'local'` resolves to the
DST-aware system timezone (see [local-timezone-support.md](./local-timezone-support.md)).

### Constructors

```dart
final tz = ILibTimeZone('America/New_York');
final tz = ILibTimeZone('local');              // system timezone
final tz = ILibTimeZone.fromOffset(-480);      // fixed offset in minutes
final tz = ILibTimeZone.fromLocale('ko-KR');   // 'Asia/Seoul'
final tz = ILibTimeZone.defaultZone();         // current system locale's zone
```

### Methods

```dart
String getId()                      // e.g. 'America/New_York' ('local' stays 'local')

// Standard (raw) offset — excludes DST
Map<String,int> getRawOffset()      // {'h': -8, 'm': 0}
double getRawOffsetMinutes()
String getRawOffsetStr()            // e.g. '-08:00'
int    getRawOffsetMillis()

// DST
bool   useDaylightTime()
Map<String,int> getDSTSavings()
double getDSTSavingsMinutes()
String getDSTSavingsStr()
bool   inDaylightTime(ILibDate date, {bool wallTime = false})

// Effective offset for a date (includes DST when applicable)
double getOffsetMinutes(ILibDate date, {bool wallTime = false})
int    getOffsetMillis(ILibDate date)

// Display name: default → abbreviation ('PST'/'PDT'); 'long' → full name; 'rfc822' → offset
String getDisplayName(ILibDate date, [String style = ''])

static List<String> getAvailableIds([String? country])
```

### Examples

```dart
final tz = ILibTimeZone('America/Los_Angeles');
print(tz.getId());                // 'America/Los_Angeles'
print(tz.getRawOffsetStr());      // '-08:00'
print(tz.useDaylightTime());      // true

final summer = ILibDateOptions(
  year: 2011, month: 7, day: 1, timezone: 'America/Los_Angeles');
print(tz.inDaylightTime(summer));              // true
print(tz.getDisplayName(summer));              // 'PDT'
print(tz.getDisplayName(summer, 'rfc822'));    // 'UTC-0700' (DST)
```

---

## ILibLoader (Internal) API

### Purpose
Manage locale data loading and caching.

### Access

```dart
// Global singleton
final loader = ILibLoader.instance;

// Check readiness
if (loader.isILibReady) {
  // Safe to use
}
```

### Key Methods

```dart
/// Get cached locale data
Map<String, dynamic>? getLocaleData(String locale)

/// Load current locale data and notify listeners
Future<void> loadJSON()

/// Mark as prepared (validates data is loaded)
void initILib()

/// Load additional locale data
Future<void> loadILibLocaleData(String? locale)

/// Load all supported locales
Future<void> loadILibLocaleDataAll()

/// Listen for readiness
void addListener(VoidCallback callback)
void removeListener(VoidCallback callback)
```

### Examples

```dart
final loader = ILibLoader.instance;

// Listen for initialization
loader.addListener(() {
  print('iLib is ready!');
  // Now safe to use ILibLocaleInfo, etc.
});

// Check if ready
if (loader.isILibReady) {
  final info = ILibLocaleInfo('en-US');
  print(info.getRegionName());
}
```

---

## Global Utilities

### ilib_utils Functions

```dart
/// Get paths for loading locale data
List<String> getJSONDataPaths(String? locale)

/// Get single path for locale
String getJSONDataPath(String? locale)

/// Validate locale format
bool isValidLocale(String lo)

/// Get all supported locales
List<String> getSupportedLocales()

/// Get/set current system locale
String getLocale()
void setLocale(String loc)
```

### Examples

```dart
import 'package:flutter_ilib/internal/ilib_utils.dart';

// Check if locale is valid
if (isValidLocale('ko-KR')) {
  print('Valid!');
}

// Get load paths
final paths = getJSONDataPaths('en-US');
// ['root.json', 'en.json', 'und-US.json', 'en-US.json']

// Get all supported locales
final all = getSupportedLocales();
// ['af-ZA', 'en-US', 'ko-KR', ...]

// Manage system locale
final current = getLocale();  // 'en-US'
setLocale('ko-KR');
```

---

## Type Definitions

### ILibDateFmtOptions

```dart
class ILibDateFmtOptions {
  String? locale;        // BCP-47 locale code
  String? length;        // 'short' | 'medium' | 'long' | 'full'
  String? type;          // 'date' | 'time' | 'datetime'
  String? calendar;      // e.g. 'gregorian', 'islamic'
  String? timezone;      // e.g. 'Etc/UTC', 'local'
  String? date;          // date-component subset (e.g. 'dmy', 'dm')
  String? time;          // time-component subset (e.g. 'ahm', 'hms')
  String? clock;         // '12' or '24'
  String? template;      // custom format template
  String? meridiems;     // meridiems style
  bool?   useNative;     // use native numerals?
}
```

---

## Error Handling

### Common Issues & Solutions

```dart
// Issue: getRegionName() returns null
if (info.getRegionName() == null) {
  // Locale data not loaded yet - wait for ILibLoader.isILibReady
}

// Issue: Locale not recognized
if (!isValidLocale(userInput)) {
  // Use default locale instead
  final info = ILibLocaleInfo('en-US');
}

// Issue: Date formatting produces unexpected output
// Ensure locale is loaded before formatting
if (ILibLoader.instance.isILibReady) {
  final date = ILibDateOptions(year: 2026, month: 5, day: 6, timezone: 'Etc/UTC');
  print(ILibDateFmt(ILibDateFmtOptions(locale: 'en-US', length: 'short')).format(date));
}
```

---

## Export & Imports

### Full Public API

```dart
import 'package:flutter_ilib/flutter_ilib.dart';

// Now available:
// - ILibLocale
// - ILibLocaleInfo
// - ILibDate / ILibDateOptions
// - ILibDateFmt (+ ILibDateFmtOptions, MeridiemsInfo)
// - ILibCalendar (+ per-calendar date classes: GregorianDate, IslamicDate, ...)
// - ILibTimeZone
// - ILibCaseMapper
// - ILibLoader
```

### Internal Utilities

```dart
import 'package:flutter_ilib/internal/ilib_utils.dart';

// Now available:
// - isValidLocale()
// - getJSONDataPaths()
// - getLocale()
// - setLocale()
// - getSupportedLocales()
```

---

*See CHANGELOG.md for version history.*
