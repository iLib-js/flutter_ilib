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
```jsonc
// Install the Flutter and Dart extensions.
// In .vscode/settings.json — format-on-save is fine:
{
  "[dart]": {
    "editor.formatOnSave": true,
    "editor.defaultFormatter": "Dart-Code.dart-code"
  }
}
```

### Code Style & Formatting

**Run `dart format`.** The repo is formatted with the **short style at `page_width: 80`**, set in
`analysis_options.yaml` (short because the package SDK floor is < 3.7). Format-on-save is fine; run
`dart format .` before committing, and enforce it in CI with:

```bash
dart format --output=none --set-exit-if-changed .
```

Switching to the modern "tall" style would mean raising the SDK floor to ≥ 3.7 and doing a one-time
repo-wide reformat in its own commit. See CLAUDE.md › Conventions › Code Style.

#### Enforce it with the pre-commit hook

To guarantee formatting is never forgotten, install the committed git hook once per clone:

```bash
scripts/install-git-hooks.sh   # sets core.hooksPath -> scripts/git-hooks
```

After this, `scripts/git-hooks/pre-commit` runs `dart format --output=none
--set-exit-if-changed` on the staged `.dart` files at every commit and **aborts the commit** if any
file is not formatted, printing how to fix it. To bypass once: `git commit --no-verify`. To disable:
`git config --unset core.hooksPath`.

#### Troubleshooting: `dart format` gives a different result

If a file reformats differently on two runs (short style vs. the "tall" style that splits every
parameter and **adds trailing commas**), it is **not** a Dart/Flutter version difference. The style
comes from the file's resolved **language version**: `< 3.7` → short, `≥ 3.7` → tall. Check
`.dart_tool/package_config.json` — this package's `languageVersion` should be `3.1` (derived from the
`pubspec.yaml` SDK floor):

```bash
grep -A2 '"flutter_ilib"' .dart_tool/package_config.json   # expect "languageVersion": "3.1"
```

A tall result means the package default was overridden: the file was formatted **outside the package**
(no pubspec → SDK latest), or a `--language-version` flag / `// @dart=` comment forced it. Fix: always
run `dart format .` from the repo root. Never commit `package_config.json` — it is a `.gitignore`d
cache regenerated from `pubspec.yaml` by `pub get`.

### Static Analysis

```bash
# Run full analysis
flutter analyze

# Analyze specific file
flutter analyze lib/ilib_locale.dart

# Get detailed output
flutter analyze --verbose
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
flutter test test/internal/utils_test.dart

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
├── basic/        # getJSONDataPath(s), isValidLocale, setLocale/getLocale
├── localeinfo/   # ILibLocaleInfo (region/language/clock/timezone, day-of-week)
├── casemapper/   # ILibCaseMapper (upper/lower, by locale)
├── country/      # ILibCountry
├── scriptinfo/   # ILibScriptInfo
├── numfmt/       # ILibNumFmt
├── durfmt/       # ILibDurationFmt
├── calendar/     # 9 calendars: test{type}_test (Cal), test{type}date_test (Date),
│                 #   *_extra_test (Dart-only), testastro, testcalendar, testjulianday, ...
├── timezone/     # ILibTimeZone (timezone_test, timezone_extra_test)
└── datefmt/      # ILibDateFmt per-locale (datefmt_{locale}_test, ~88 files)
```

JS↔Dart test file mapping and not-converted cases: `doc/test-mapping.md`.

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
# Check syntax / static analysis
dart analyze lib/
flutter analyze
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

// Constants: lowerCamelCase (Dart `constant_identifier_names` lint; analyze must pass)
const int _defaultTimeoutMs = 5000;
const String apiVersion = '2.0.0';

// Private members: prefix with underscore
String _privateField;
void _privateMethod() { }
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

Create `assets/locale/und-XX.json` for region-only:
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

Or `assets/locale/xx-XX.json` for full locale:
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
    - assets/locale/und-XX.json
    - assets/locale/xx-XX.json
```

### Step 3: Add Tests

Add to `test/internal/utils_test.dart`:
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
flutter test test/internal/utils_test.dart

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
1. Run `flutter test test/internal/`
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
2. Run `flutter test test/internal/`
3. Test with real locales to verify fallback chain

---

## Git Workflow

### Before Committing

> One-time setup: `scripts/install-git-hooks.sh` installs a pre-commit hook that runs the
> `dart format` check automatically (step 1 below) and blocks the commit if anything is unformatted.
> See Code Style & Formatting › *Enforce it with the pre-commit hook*.

```bash
# 1. Format  (also enforced by the pre-commit hook once installed)
dart format .

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

flutter_ilib is a pure-calculation library, so performance work means measuring calculation
speed, not widget frames:

```bash
# Dedicated benchmark package (sibling of example/) — startup / per-op / memory,
# incl. an A/B comparison vs the v1.3.0 JS-interop release. Profile mode only.
cd benchmark
flutter run --profile -d linux -t lib/benchmark.dart        # flutter_ilib workload
flutter run --profile -d linux -t lib/benchmark_pure.dart   # empty-app baseline (engine floor)

# App-level: run the example in profile mode and use DevTools (Performance / CPU / Memory)
cd example && flutter run --profile      # not `flutter test`
```

See [benchmark.md](./benchmark.md) for results and methodology.

---

## Documentation

### Updating Docs

1. **API Changes**:
   - Update `doc/api.md`
   - Add example if behavior changed
   - Update CHANGELOG.md

2. **Architecture Changes**:
   - Update `doc/architecture.md` (or `doc/date-calendar-architecture.md`)
   - Add diagrams if helpful
   - Document new patterns

3. **Test conversion / not-converted cases**:
   - Update `doc/test-mapping.md`
   - Calendar/date/timezone rules: `doc/date-calendar-architecture.md`

4. **Developer Changes**:
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
- [ ] Code formatted (`dart format .`)
- [ ] CHANGELOG.md updated
- [ ] Version bumped in `pubspec.yaml`
- [ ] Notable features documented in `doc/`
- [ ] README examples work
- [ ] No breaking changes (or clearly documented)
- [ ] Git tag created: `vX.Y.Z`
- [ ] Publish to pub.dev: `flutter pub publish`

---

## Resources

- **Dart Docs**: https://dart.dev/guides
- **Flutter Testing**: https://flutter.dev/doc/testing
- **BCP-47 Spec**: https://tools.ietf.org/html/bcp47
- **iLib Docs**: https://github.com/iLib-js/iLib
- **CMake Guide**: https://cmake.org/cmake/help/latest/

---

## Getting Help

### Questions?
- Check `README.md` and `doc/`
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

*See CHANGELOG.md for version history.*
