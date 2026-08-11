---
name: diagnose-failing-test
description: >-
  Diagnose a failing converted test in flutter_ilib and decide whether it is an
  implementation bug or a legitimately-changed expected value. Use when a
  `flutter test` case fails and you must reconcile it against the iLib JS source
  before touching anything. Triggers: "this test fails", "debug failing test",
  "why does testXxx fail", "reconcile expected value vs JS", "test regression".
---

# Diagnose a failing test

A converted test failed. The job is to find the true cause — **not** to make the
bar go green. Tests were converted 1:1 from the iLib JS source at the pinned tag
(CLAUDE.md › Source Versions), so the expected values encode upstream behavior.

## Default assumption

**A failing converted test means the Dart implementation is wrong** — the expected
value came from iLib JS and is presumed correct. Only after proving otherwise
against the JS source may an expected value change.

Never edit an expected value to silence a failure. Never weaken an assertion
(`expect` → `closeTo`, tightening bounds, deleting a case).

## Procedure

1. **Reproduce narrowly** — run just the failing case, read the actual-vs-expected.
   Use `flutter test` directly here for the file / `-n` filter (`execute_test.sh`
   runs whole suites, not a single case):

   ```bash
   flutter test test/<suite>/<file>_test.dart -n "<test name substring>"
   ```

2. **Locate the JS original** — find the matching case in the iLib JS source
   (`js/test/` at the pinned tag). Confirm the Dart expected
   value matches the JS expected value exactly. If they differ, the *conversion*
   was wrong — fix the Dart expected value to match JS, not the other way around.

3. **Check scope** — is the locale actually supported? An out-of-scope locale can
   fall back to defaults (e.g. `Etc/UTC`) and produce a wrong value that is not a
   bug but an N/A test. Authoritative list: `scripts/assemble_ilib/locales.json`
   (CLAUDE.md › Testing for the language-only / 3-part / fallback rules).

4. **Classify the cause** — one of:
   - **Implementation bug** → fix `lib/` code; the expected value stays.
   - **Bad conversion** (expected value never matched JS) → correct the expected
     value to the JS original.
   - **Out-of-scope locale** → the test should not exist; move it or mark N/A per
     `docs/test-mapping.md`.
   - **Exact-vs-float** → if it uses `closeTo` on an exact value, that hid a real
     precision bug; switch to exact `expect` and investigate.
   - **Upstream change** → only valid during a version bump; use the `bump-upstream`
     skill, which reconciles against the *new* JS tag.

5. **Fix at the root** — for calendar/date/timezone failures, the cause is often a
   base-class rule (offset passthrough, calendar-specific token formatting, `'local'`
   tz). Read [docs/date-calendar-architecture.md](../../../docs/date-calendar-architecture.md)
   § Critical rules before editing.

6. **Re-verify the whole suite** — a fix in `lib/` can shift other locales:

   ```bash
   flutter test          # full suite, not just the one file
   flutter analyze
   dart format .
   ```

## Critical rules

- Expected values are ground truth from iLib JS — change `lib/`, not the assertion.
- If a JS test was inside a `/* */` or `//` comment, it should not have been
  converted at all.
- Watch for a fix that turns one red test green while turning others red — run the
  full suite before declaring success.
- Commit only when the user asks.

## Checklist

- [ ] Failing case reproduced in isolation (actual vs expected read)
- [ ] JS original located; expected value confirmed against it
- [ ] Locale scope verified against `locales.json`
- [ ] Cause classified (impl bug / bad conversion / out-of-scope / float / upstream)
- [ ] Fixed at the root (base class for calendar/date/tz)
- [ ] Full `flutter test` + `flutter analyze` + `dart format .` pass
