---
name: convert-js-test
description: >-
  Convert iLib JS test cases to Dart for flutter_ilib. Use when porting test
  files from the iLib JS source to Dart without implementing a new class.
  Triggers: "convert JS tests", "port test file", "add tests from JS",
  "convert testXxx.js".
---

# Convert iLib JS test to Dart

Port iLib JavaScript test cases to Dart test files.
Full rules: [docs/conversion-guide.md](../../../docs/conversion-guide.md) § Test Conversion.
File mapping: [docs/test-mapping.md](../../../docs/test-mapping.md).

## Ask first

- **Which JS test file** (e.g. `js/test/testdatefmt_ar_EG.js`)
- **Locale in scope?** — must be in `scripts/assemble_ilib/locales.json`

## Procedure

1. **Scope check** — locale must be in `locales.json`
2. **Convert** — JS test functions → Dart `test()` blocks
3. **Separate** — JS-mirrored → `*_test.dart`; Dart-only → `*_extra_test.dart`
4. **Document** — update `docs/test-mapping.md`
5. **Verify** — `flutter test <file>` + `flutter analyze`

## Agent-specific rules

- **NEVER modify expected values** — failed test = implementation bug
- Use `import 'package:flutter/foundation.dart'` (not `material.dart`)
- Every test `main()` starts with `debugPrint('Testing [{filename}] file.')`
- Commit only when the user asks

## Checklist

- [ ] Locale in `locales.json` confirmed
- [ ] Tests converted with expected values unchanged
- [ ] Correct file placement and `*_extra_test.dart` separation
- [ ] `docs/test-mapping.md` updated
- [ ] `flutter test <file>` + `flutter analyze` pass
