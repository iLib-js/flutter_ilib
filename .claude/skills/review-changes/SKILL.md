---
name: review-changes
description: >-
  Review changed code in flutter_ilib against the JS-to-Dart conversion rules —
  expected-value integrity, test placement, locale scope, calendar base-class
  discipline, test hygiene, exports, and docs. Use to self-review a diff before a
  PR, or whenever asked to review conversion changes. Complements the generic
  `/code-review` and `security-review` with project-specific gates. Triggers:
  "review my changes", "code review", "review this conversion", "check before PR".
---

# Review changes

Project-specific review pass for flutter_ilib. This covers the rules unique to the
JS-to-Dart conversion — for generic correctness/security depth, also run
`/code-review` or the `security-review` skill; for a failing test, use
`diagnose-failing-test`.

## Ask first

- **What to review** — the branch diff vs its base, a specific set of files, or
  the working-tree changes. Default: the diff against the base branch.

## Procedure

### 1. Scope the diff

```bash
git fetch origin
git status
BASE=origin/<base-branch>              # detect base; do not hardcode a branch name
git diff $(git merge-base HEAD "$BASE")..HEAD
```

Read the actual hunks, not just the file list — know what each change does.

### 2. Check the conversion-specific rules

- **Expected values are ground truth** — no test assertion was weakened or edited
  to pass; a red test means `lib/` is wrong, not the test (see
  [[feedback-no-tests-beyond-js-original]], [[feedback-test-closeto]]). If a case
  fails, use the `diagnose-failing-test` skill.
- **Test placement** — JS-mirrored cases in `*_test.dart`, Dart-only cases in
  `*_extra_test.dart`; no Dart-only assertions added to the JS-mirrored file.
- **Locale scope** — any new per-locale test's locale is in
  `scripts/assemble_ilib/locales.json` (CLAUDE.md › Testing). No tests for
  unsupported locales, including ones that pass only by language fallback.
- **Commented-out JS** — tests inside JS `/* */` or `//` blocks were not converted
  ([[feedback-skip-commented-js-tests]]).
- **Calendar/date/tz changes** — shared logic lives in the base class, not
  duplicated across the 9 subclasses; offset/`'local'`/calendar-token rules from
  [docs/date-calendar-architecture.md](../../../docs/date-calendar-architecture.md)
  § Critical rules are respected.
- **Test file hygiene** — each test `main()` opens with
  `debugPrint('Testing [{filename}] file.')` and imports
  `package:flutter/foundation.dart` (not `material.dart`).
- **Exports** — any new public class is exported from `lib/flutter_ilib.dart`.
- **Docs** — CLAUDE.md, `docs/test-mapping.md`, and the relevant conversion doc
  updated when behavior/coverage changed.

### 3. Report findings

List issues grouped by rule, each with `file:line` and a concrete fix. Separate
must-fix (breaks a conversion rule) from nice-to-have. If everything passes, say so
plainly — do not invent findings.

## Critical rules

- Expected values from iLib JS are authoritative — flag any assertion change as a
  must-fix unless it was reconciled against the JS source during a version bump.
- Review only; apply fixes when the user asks. Commit only when the user asks.

## Checklist

- [ ] Diff scoped and hunks read
- [ ] Expected-value integrity verified (no weakened/edited assertions)
- [ ] Test placement (`*_test` vs `*_extra_test`) correct
- [ ] Locale scope confirmed against `locales.json`
- [ ] Calendar/date/tz base-class + offset/`'local'` rules respected
- [ ] Test hygiene (`debugPrint`, `foundation.dart`) present
- [ ] New public classes exported
- [ ] Docs updated for behavior/coverage changes
- [ ] Findings reported with `file:line` + fixes
