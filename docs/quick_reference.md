---
title: flutter_ilib Quick Reference
description: Quick reference and project summary for flutter_ilib
keywords: [flutter, ilib, i18n, locale, dart, quick-reference]
version: 2.0.0
maintained: true
---

# flutter_ilib Quick Reference

**flutter_ilib** is a Flutter internationalization (i18n) plugin based on [iLib](https://github.com/iLib-js/iLib) — implemented in pure Dart (v2.0+), reading iLib's CLDR locale data directly with no JavaScript runtime.

## Key Facts

| Aspect | Details |
|--------|---------|
| **Purpose** | Internationalization & localization |
| **Version** | 2.0.0 |
| **Repository** | https://github.com/iLib-js/flutter_ilib |
| **Min Requirements** | Flutter 3.3.0+, Dart 3.1.5+ |
| **Main Language** | Dart |
| **Platforms** | Linux, WebOS (extensible) |

## Core Classes

All exported from `flutter_ilib.dart`.

| Class | Purpose |
|-------|---------|
| `ILibLocale` | Parse/validate locales |
| `ILibLocaleInfo` | Get locale information |
| `ILibDate` / `ILibDateFmt` | Format dates by locale |
| `ILibCalendar` (+ 9 calendars) | Calendar rules (month length, leap year) & date conversion |
| `ILibTimeZone` | Timezone / DST |
| `ILibCaseMapper` | Case conversion by locale |

## Common Usage

### Locale Information
```dart
final info = ILibLocaleInfo('ko-KR');
print(info.getRegionName());        // 'South Korea'
print(info.getLanguageName());      // 'Korean'
print(info.getTimeZone());          // 'Asia/Seoul'
print(info.getDecimalSeparator());  // '.'
```

### Date Formatting
```dart
final date = ILibDateOptions(year: 2026, month: 5, day: 6);
final formatted = ILibDateFmt(ILibDateFmtOptions(
  locale: 'ko-KR',
  length: 'long',
)).format(date);
```

### Locale Parsing
```dart
final locale = ILibLocale('en-US');
print(locale.language);  // 'en'
print(locale.region);    // 'US'
```

### Case Conversion
```dart
final mapper = ILibCaseMapper('tr-TR');  // Turkish
print(mapper.toLowerCase('İ'));  // 'i̇'
```

## Locale Format

Valid patterns:
- Language only: `en`, `ko`, `ja`
- Language-Region: `en-US`, `ko-KR`, `ja-JP`
- Language-Script-Region: `zh-Hans-CN`, `ku-Arab-IQ`
- Region only: `MK`, `TR` (new in v2.0)

## Key Directory

```
lib/
├── ilib_locale.dart         (Locale parsing)
├── ilib_localeinfo.dart     (Locale info)
├── ilib_date.dart           (Date options/calculation)
├── ilib_datefmt.dart        (Date/time formatting)
├── ilib_timezone.dart       (Timezone / DST)
├── ilib_calendar.dart       (Calendar factory; + calendar/ for the 9 calendars)
├── ilib_casemapper.dart     (Case conversion)
├── ilib_init.dart           (ILibLoader: data load/merge)
└── internal/
    └── ilib_utils.dart      (Utilities)

assets/locale/
├── root.json                       (Base defaults)
├── {language}.json                 (Language files)
├── und-{script}.json               (Script fallback, e.g. und-Hans)
├── und-{region}.json               (Region fallback, e.g. und-US)
└── {language}-{script}-{region}.json  (e.g. zh-Hans-CN)
```

## Quick Commands

```bash
# Install & run tests
flutter pub get
flutter test

# Format & analyze
dart format .
flutter analyze

# Run specific test
flutter test -k "testName"
```

## Main Classes Summary

### ILibLocale
```dart
ILibLocale('en-US')          // Parse string
ILibLocale('en', 'US')       // Components
locale.language              // 'en'
locale.region                // 'US'
locale.getSpec()             // 'en-US'
```

### ILibLocaleInfo
```dart
ILibLocaleInfo('en-US')
info.getRegionName()
info.getLanguageName()
info.getTimeZone()
info.getClock()              // '12' or '24'
info.getDecimalSeparator()   // '.'
```

### ILibDate / ILibDateFmt
```dart
final date = ILibDateOptions(year: ..., month: ..., day: ...);
ILibDateFmt(ILibDateFmtOptions(...)).format(date)
```

### ILibCaseMapper
```dart
ILibCaseMapper('en-US')
mapper.toLowerCase(str)
mapper.toUpperCase(str)
```

## Recent Changes (v2.0.0)

✅ Pure Dart: the locale / date / calendar / timezone path no longer uses JS interop —
`ILibLocale`, `ILibLocaleInfo`, `ILibCaseMapper`, `ILibDate`/`ILibDateFmt`, the 9 calendars,
`ILibTimeZone`, `ILibAstro` are all native Dart (reads `assets/locale/` JSON directly).
Still on JS interop: `ILibCountry`, `ILibScriptInfo`, `ILibDurationFmt`, `ILibNumFmt`.  
✅ Region-only locales (`MK`, `TR`); region files use `und-MK.json` (hyphen).  
✅ Based on iLib v14.21.0 / CLDR 46.  

## Documentation

| Document | Purpose |
|----------|---------|
| [quick_reference.md](./quick_reference.md) | This file (Quick Reference) |
| [architecture.md](./architecture.md) | System design & data flow |
| [api.md](./api.md) | Complete API reference |
| [development.md](./development.md) | Development & testing guide |
| [README.md](../README.md) | User guide & examples |

## Support

- **Issues**: https://github.com/iLib-js/flutter_ilib/issues
- **Docs**: See `Docs.md` for detailed information
- **Tips**: See `Tips.md` for troubleshooting

---

*See CHANGELOG.md for version history.*
