---
title: flutter_ilib Development Guide
description: Setup, testing, coding guidelines, and contribution guide for flutter_ilib
keywords: [flutter, ilib, development, testing, contribution, setup]
version: 2.0.0
---

# flutter_ilib Development Guide

## Quick Start

### Prerequisites
- Flutter SDK: 3.3.0+
- Dart SDK: 3.1.5+
- Git

### Initial Setup

```bash
# Clone repository
git clone https://github.com/iLib-js/flutter_ilib.git
cd flutter_ilib

# Install dependencies
flutter pub get

# Run analysis
flutter analyze

# Run all tests
flutter test
```

---

## Development Environment

### IDE Setup

#### VS Code
```bash
# Install Flutter extension
# Install Dart extension
# Install Dart: Code Metrics (optional)

# In .vscode/settings.json:
{
  "[dart]": {
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "Dart-Code.dart-code"
  }
}
```

### Code Style & Formatting

```bash
# Format all Dart files
dart format lib/ test/

# Format specific file
dart format lib/ilib_locale.dart

# Check formatting without changing
dart format --output=none lib/
```

### Static Analysis

```bash
# Run full analysis
flutter analyze

# Analyze specific file
flutter analyze lib/ilib_locale.dart

# Get detailed output
flutter analyze --verbose
```

### Linting

```bash
# Run custom linter rules
flutter pub run custom_lint

# Update linter configuration
# Edit: analysis_options.yaml
```

---

## Testing

### Running Tests

```bash
# Run all tests
flutter test

# Run with verbose output
flutter test --verbose

# Run specific test file
flutter test test/basic/flutter_ilib_utils_test.dart

# Run specific test by name
flutter test -k "testLocaleInfoGetRegionName4"

# Run multiple tests by pattern
flutter test -k "getRegionName"

# Stop on first failure
flutter test --bail

# Run with coverage
flutter test --coverage
code coverage/lcov.info  # View coverage report
```

### Test Organization

```
test/
├── basic/
│   └── flutter_ilib_utils_test.dart
│       ├── getJSONDataPath tests
│       ├── getJSONDataPaths tests
│       ├── isValidLocale tests
│       └── setLocale/getLocale tests
│
├── casemapper/
│   └── case_mapper tests (by locale)
│
├── localeinfo/
│   ├── localeinfo_test.dart
│   │   ├── getRegionName tests
│   │   ├── getLanguageName tests
│   │   ├── getClock tests
│   │   ├── getTimeZone tests
│   │   ├── Number formatting tests
│   │   └── Other locale info tests
│   │
│   └── localeinfo_dayofweek_test.dart
│       ├── getFirstDayOfWeek tests
│       ├── getWeekEndStart tests
│       └── getWeekEndEnd tests
│
└── linux/
    └── (Linux-specific tests)
```

### Writing Tests

#### Test Template

```dart
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MyFeature', () {
    test('description of what it tests', () {
      // Arrange
      final input = 'test-data';
      
      // Act
      final result = someFunction(input);
      
      // Assert
      expect(result, expectedValue);
    });

    test('another test description', () {
      expect(anotherFunction(), isNotNull);
      expect(anotherFunction(), equals(value));
    });
  });
}
```

#### Common Assertions

```dart
expect(value, isNotNull)              // Not null
expect(value, isNull)                 // Is null
expect(value, equals('expected'))     // Equality
expect(value, isEmpty)                // Empty collection
expect(value, contains(item))         // Contains item
expect(value, isA<String>())          // Type check
expect(value, throwsException)        // Throws error
```

---

## Building & Compilation

### Dart Only

```bash
# Check syntax
dart analyze lib/

# Format and check
dart format lib/ --output=none

# Compile snapshot (if needed)
dart compile exe lib/flutter_ilib.dart -o output
```

## Code Conventions

### Naming

```dart
// Variables & functions: camelCase
int dayOfWeek = 0;
String getLocaleData() { }

// Classes & types: PascalCase
class ILibLocale { }
typedef LocaleCallback = void Function(String);

// Constants: camelCase (private) or UPPER_SNAKE_CASE (public)
const int _defaultTimeoutMs = 5000;
const String API_VERSION = '2.0.0';

// Private members: prefix with underscore
String _privateField;
void _privateMethod() { }
```

### File Organization

Each Dart file should follow:
```dart
// 1. Imports
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'relative/path.dart';

// 2. Part declarations (if used)
part 'subfile.dart';

// 3. Constants
const String DEFAULT_LOCALE = 'en-US';

// 4. Types/Typedefs
typedef LocaleCallback = void Function(String);
enum DateLength { short, medium, long, full }

// 5. Main class
class MyClass { }

// 6. Standalone functions (if any)
void helperFunction() { }
```

### Documentation

```dart
/// Brief description of what this class does.
///
/// More detailed explanation if needed.
/// 
/// Example:
/// ```dart
/// final locale = ILibLocale('en-US');
/// ```
class ILibLocale {
  /// Description of what this method returns.
  ///
  /// Parameter [input]: Description of parameter
  /// Returns: Description of return value
  String? getRegionName() { }
}

/// Single-line comment for simple properties
final String apiVersion = '2.0.0';

// Internal comment for implementation details
int _calculateDayOfWeek(DateTime date) { }
```

### Error Handling

```dart
// Throw with meaningful messages
if (locale.isEmpty) {
  throw ArgumentError('Locale cannot be empty');
}

// Use specific exception types
try {
  final data = loadLocaleData(locale);
} catch (e) {
  logger.warning('Failed to load locale: $locale', e);
  // Fallback to default
  return _defaultData;
}

// Nullable returns for expected failures
String? getRegionName() {
  // Returns null if not found
  return _info['region.name'] as String?;
}
```

---

## Adding Locale Data

### Step 1: Create Data File

Create `assets/locale_data/und-XX.json` for region-only:
```json
{
  "ilib.data.localeinfo": {
    "region.name": "Country Name",
    "timezone": "Zone/Name",
    "currency": "CUR",
    ...
  }
}
```

Or `assets/locale_data/xx-XX.json` for full locale:
```json
{
  "ilib.data.localeinfo": {
    "language.name": "Language Name",
    "region.name": "Region Name",
    ...
  }
}
```

### Step 2: Update Assets in pubspec.yaml

```yaml
flutter:
  assets:
    - assets/locale_data/und-XX.json
    - assets/locale_data/xx-XX.json
```

### Step 3: Add Tests

Add to `test/basic/flutter_ilib_utils_test.dart`:
```dart
test('region only (XX)', () {
  expect(getJSONDataPaths('XX'), <String>[
    '$_base/root.json',
    '$_base/und-XX.json',
  ]);
});
```

### Step 4: Verify

```bash
# Check locale is recognized
flutter test test/basic/flutter_ilib_utils_test.dart

# Verify data loading
final info = ILibLocaleInfo('XX');
assert(info.getRegionName() != null);
```

---

## Modifying Core Logic

### Changing Locale Validation

File: `lib/internal/ilib_utils.dart`

```dart
bool isValidLocale(String lo) {
  // Regex patterns define valid formats
  // Test with flutter test before committing
  // Update related tests!
}
```

**After Change**:
1. Run `flutter test test/basic/`
2. Update failing tests if needed
3. Add new tests for new patterns

### Changing Path Generation

File: `lib/internal/ilib_utils.dart`

```dart
List<String> getJSONDataPaths(String? locale) {
  // Order matters - more specific paths come later
  // They override earlier values via deepMerge
}
```

**After Change**:
1. Update expected paths in tests
2. Run `flutter test test/basic/`
3. Test with real locales to verify fallback chain

---

## Git Workflow

### Before Committing

```bash
# 1. Format code
dart format lib/ test/

# 2. Run analysis
flutter analyze

# 3. Run tests
flutter test

# 4. Create PR description
# Include:
# - What changed and why
# - Test results
# - Any new locale data added
```

### Commit Message Format

```
type(scope): description

body (optional)
- Detail 1
- Detail 2

fixes: #issue_number
```

**Types**: feat, fix, refactor, test, docs, chore

**Examples**:
```
feat(locale): add region-only locale support

- Support for "MK", "TR" without language code
- Updated isValidLocale() regex
- Added path generation for und-REGION.json
- Updated 3 tests

fixes: #123
```

---

## Troubleshooting

### Common Issues

#### Tests Fail Randomly
```bash
# Clear build cache
flutter clean

# Rebuild and test
flutter pub get
flutter test --verbose
```

#### Analysis Issues
```bash
# Update analysis_options.yaml
# Remove deprecated rules
# Re-run analysis

flutter analyze --no-pub
```

#### Locale Data Not Loading
```dart
// Debug steps:
if (!isValidLocale(myLocale)) {
  print('Invalid locale: $myLocale');
}

final paths = getJSONDataPaths(myLocale);
print('Paths: $paths');  // Check file paths

final data = ILibLoader.instance.getLocaleData(myLocale);
print('Data: $data');    // Check if loaded
```

#### Plugin Not Building (Linux/WebOS)
```bash
# Check CMake version
cmake --version  # Need 3.10+

# Clean build
cd linux
rm -rf build
cmake -Bbuild -GNinja
cmake --build build
```

---

## Performance Tips

### Optimization

```dart
// ❌ Bad: Create new ILibLocaleInfo repeatedly
for (int i = 0; i < 1000; i++) {
  final info = ILibLocaleInfo('en-US');  // Repeated!
  print(info.getRegionName());
}

// ✅ Good: Reuse instances
final info = ILibLocaleInfo('en-US');
for (int i = 0; i < 1000; i++) {
  print(info.getRegionName());  // Reuse
}

// ❌ Bad: Multiple parsing
for (var loc in locales) {
  final parsed = ILibLocale(loc);
}

// ✅ Good: Parse once, store
final locales = myLocaleList.map(ILibLocale.new).toList();
```

### Profiling

```bash
# Run with timeline profiling
flutter test --verbose --profile

# Check memory usage
flutter test --coverage
dart --enable-asserts analyze ...

# Monitor performance events
DevTools → Performance tab
```

---

## Documentation

### Updating Docs

1. **API Changes**:
   - Update `flutter_ilib_api.md`
   - Add example if behavior changed
   - Update CHANGELOG.md

2. **Architecture Changes**:
   - Update `flutter_ilib_architecture.md`
   - Add diagrams if helpful
   - Document new patterns

3. **Developer Changes**:
   - Update this file
   - Document new test patterns
   - Add troubleshooting section

### Building Doc Site (if applicable)

```bash
# Generate docs from code comments
dart doc

# View generated docs
open doc/api/index.html
```

---

## Release Checklist

Before releasing version X.Y.Z:

- [ ] All tests passing (`flutter test`)
- [ ] No analysis warnings (`flutter analyze`)
- [ ] Code formatted (`dart format lib/ test/`)
- [ ] CHANGELOG.md updated
- [ ] Version bumped in `pubspec.yaml`
- [ ] Notable features documented in `Docs.md`
- [ ] README examples work
- [ ] No breaking changes (or clearly documented)
- [ ] Git tag created: `vX.Y.Z`
- [ ] Publish to pub.dev: `flutter pub publish`

---

## Resources

- **Dart Docs**: https://dart.dev/guides
- **Flutter Testing**: https://flutter.dev/docs/testing
- **BCP-47 Spec**: https://tools.ietf.org/html/bcp47
- **iLib Docs**: https://github.com/iLib-js/iLib
- **CMake Guide**: https://cmake.org/cmake/help/latest/

---

## Getting Help

### Questions?
- Check `README.md` and `Docs.md`
- Review existing issues: GitHub Issues
- Review test examples in `test/`

### Found a Bug?
- Create minimal reproduction
- Check existing issues first
- File issue with template

### Want to Contribute?
- Fork repository
- Follow this guide
- Submit PR with description
- Respond to review feedback

---

*Last Updated: May 2026*
