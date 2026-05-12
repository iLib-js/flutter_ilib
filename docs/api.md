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
| `ILibDate` | `lib/ilib_date.dart` | Date/time formatting |
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

## ILibDate API

### Purpose
Format dates according to locale conventions.

### Constructor

```dart
final date = ILibDate(DateTime.now());
final date = ILibDate(DateTime.parse('2026-05-06'));
```

### Key Methods

```dart
String format(ILibDateFmtOptions? options)  // Format with options
```

### ILibDateFmtOptions

```dart
ILibDateFmtOptions(
  locale: 'ko-KR',              // Locale for formatting
  length: 'short',              // 'short', 'medium', 'long', 'full'
  useNative: false,             // Use native numerals?
  // ... additional options
)
```

### Examples

```dart
final date = ILibDate(DateTime(2026, 5, 6, 14, 30));

// English (US)
var fmt1 = date.format(ILibDateFmtOptions(
  locale: 'en-US',
  length: 'short'
));
// Result: "5/6/2026" or similar

// Korean
var fmt2 = date.format(ILibDateFmtOptions(
  locale: 'ko-KR',
  length: 'long'
));
// Result: "2026년 5월 6일" or similar

// Japanese with native numerals
var fmt3 = date.format(ILibDateFmtOptions(
  locale: 'ja-JP',
  length: 'full',
  useNative: true
));
// Result uses Japanese numerals
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
  String? length;        // 'short', 'medium', 'long', 'full'
  bool? useNative;       // Use native numerals?
  // ... other properties
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
  final date = ILibDate(DateTime.now());
  print(date.format(...));
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
// - ILibDate
// - ILibCaseMapper
// - ILibLocaleInfo (listener methods)
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

*Last Updated: May 2026*
