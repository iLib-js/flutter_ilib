---
title: flutter_ilib Quick Reference
description: Quick reference and project summary for flutter_ilib
keywords: [flutter, ilib, i18n, locale, dart, quick-reference]
version: 2.0.0
maintained: true
---

# flutter_ilib Quick Reference

**flutter_ilib** is a Flutter plugin wrapper that conveniently enables [iLib](https://github.com/iLib-js/iLib) library for internationalization (i18n) in Flutter apps.

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

| Class | Purpose | Import |
|-------|---------|--------|
| `ILibLocale` | Parse/validate locales | `flutter_ilib.dart` |
| `ILibLocaleInfo` | Get locale information | `flutter_ilib.dart` |
| `ILibDate` | Format dates by locale | `flutter_ilib.dart` |
| `ILibCaseMapper` | Case conversion by locale | `flutter_ilib.dart` |

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
final date = ILibDate(DateTime.now());
final formatted = date.format(ILibDateFmtOptions(
  locale: 'ko-KR',
  length: 'long'
));
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
├── ilib_date.dart           (Date formatting)
├── ilib_casemapper.dart     (Case conversion)
└── internal/
    └── ilib_utils.dart      (Utilities)

assets/locale/
├── root.json                (Base defaults)
├── {language}.json          (Language files)
├── und-{REGION}.json        (Region files)
└── {language}-{REGION}.json (Full locale)
```

## Quick Commands

```bash
# Install & run tests
flutter pub get
flutter test

# Format & analyze
dart format lib/ test/
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

### ILibDate
```dart
ILibDate(DateTime)
date.format(ILibDateFmtOptions(...))
```

### ILibCaseMapper
```dart
ILibCaseMapper('en-US')
mapper.toLowerCase(str)
mapper.toUpperCase(str)
```

## Recent Changes (v2.0.0)

✅ Region-only locales: `MK`, `TR` now valid  
✅ Path normalization: Regions use `und-MK.json` (hyphen)  
✅ Tests updated: All 5 tests now match implementation  

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

*Last Updated: May 2026*
