---
name: convert-js-class
description: >-
  Convert an iLib JS class to pure Dart in flutter_ilib. Use when porting a new
  iLib class from JavaScript interop to native Dart implementation. Covers data
  analysis, Dart implementation, test conversion, and export registration.
  Triggers: "convert ILibXxx to Dart", "port JS class", "implement in pure Dart",
  "remove JS interop for".
---

# Convert iLib JS class to Dart

Port an iLib JavaScript class to a pure Dart implementation in flutter_ilib.
See [docs/conversion-guide.md](../../../docs/conversion-guide.md) for the full
pattern, before/after code templates, and detailed checklist.

## Ask first

Before starting, confirm with the user:

- **Which JS class** to convert (e.g. `HanCal`, `AddressFmt`)
- **JS source location**: `js/lib/` at the pinned iLib tag (CLAUDE.md › Source Versions)
- **Which JSON data keys** it needs
- **Whether the data already exists** in `assets/locale/` or needs regeneration

## Procedure

Follow this order. Details for each step are in `docs/conversion-guide.md`.

1. **Data analysis** — identify JSON keys from JS source (`// !data`, `loadData`)
2. **Dart implementation** — `ILibLoader.getLocaleData()` + `_defaultInfo` pattern
3. **Test conversion** — from `js/test/` (locale-scope rules critical)
4. **Register exports** — add to `lib/flutter_ilib.dart`
5. **Verify** — `flutter test` + `flutter analyze` + `dart format .`
6. **Update docs** — `docs/conversion-guide.md`, `docs/test-mapping.md`, `CLAUDE.md`

## Critical rules (not in docs — agent-specific)

- For calendar classes: read [docs/date-calendar-architecture.md](../../../docs/date-calendar-architecture.md) before implementing
- Every test file must have `debugPrint('Testing [{filename}] file.')` in `main()`
- Use `import 'package:flutter/foundation.dart'` (not `material.dart`) for `debugPrint`
- Commit only when the user asks

## Checklist

- [ ] JS source analyzed — data keys identified
- [ ] Required JSON data present in `assets/locale/`
- [ ] Dart implementation complete
- [ ] Export added to `lib/flutter_ilib.dart`
- [ ] Tests converted (locale-scope + file separation rules followed)
- [ ] Unconvertible tests documented in `docs/test-mapping.md`
- [ ] `flutter test` + `flutter analyze` + `dart format .` pass
- [ ] Docs updated (conversion-guide, test-mapping, CLAUDE.md)
