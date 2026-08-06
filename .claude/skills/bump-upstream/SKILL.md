---
name: bump-upstream
description: >-
  Update flutter_ilib to a newer iLib JS / CLDR upstream. Use when bumping the
  iLib source version, the CLDR data version, or regenerating assets/locale/.
  Regenerates the bundled locale JSON, updates every version-string touch point,
  and re-verifies the converted tests. Triggers: "update to iLib vNN", "bump
  CLDR", "regenerate locale data", "upgrade upstream".
---

# Bump upstream (iLib JS + CLDR)

Updating flutter_ilib to a newer iLib/CLDR release. The core rule from
[CLAUDE.md](../../../CLAUDE.md) "Source Versions": **bump the JS source and the
generated locale data together** — a JS-only or data-only bump diverges, because
all `lib/` code and `test/` expectations were converted from a specific iLib JS
tag, and the bundled `assets/locale/` JSON was generated from that same tag.

## Ask first

Before touching anything, confirm the target versions with the user:

- **iLib JS version** (npm tag / git tag, e.g. `v15.1.0`). Must be **>= 15**
  (that is when the package started shipping `assemble.mjs`).
- **CLDR version** it incorporates (e.g. `49`). Usually determined by the iLib
  release, not chosen independently — confirm which CLDR the target iLib bundles.
- **flutter_ilib package version** (pubspec semver). This is *independent* of
  upstream — decide with the user (major/minor/patch) based on API impact.

## Procedure

Work in order; do not skip the diff review or the test re-verification.

### 1. Regenerate the bundled locale data

The committed `assets/locale/` files are **minified**, so always use
`--compressed` to keep the diff clean. Preview first, then copy over:

```bash
cd scripts/assemble_ilib
# Pin the target iLib version. Preview into a temp dir, do NOT touch assets/ yet.
./generate_locale_json.sh --compressed --ilib-version <VER> --out-dir /tmp/ilib-preview
diff -r /tmp/ilib-preview ../../assets/locale     # inspect what changed
cp /tmp/ilib-preview/*.json ../../assets/locale/  # commit the new data
```

- Locale coverage is driven by `scripts/assemble_ilib/locales.json` — the
  authoritative supported-locale list. Only change it if the user wants
  different locale coverage (that is a separate decision from a version bump).
- If a new iLib data type is needed, it comes from the `require()`/`// !data`
  comments in `scripts/assemble_ilib/ilib-inc.js`.
- See `scripts/assemble_ilib/README.md` for `--ilib-path` (local source tree),
  `--dry-run`, and the full option list.

### 2. Update every version-string touch point

Grep first so nothing is missed:

```bash
grep -rn "15\.0\.0\|48\.2" CLAUDE.md README.md lib/flutter_ilib.dart
```

Update **all** of these (substitute the OLD iLib/CLDR numbers for the target):

| Location | What to change |
| --- | --- |
| [CLAUDE.md](../../../CLAUDE.md) "Source Versions" | iLib JS version + CLDR version. **Single source of truth** — most docs reference it, so this is the primary edit. |
| [README.md](../../../README.md) intro | The public version note (states iLib/CLDR independently). |
| [CHANGELOG.md](../../../CHANGELOG.md) | **Add a NEW entry** for the new package version. Never edit existing entries — they are frozen history. |
| [lib/flutter_ilib.dart](../../../lib/flutter_ilib.dart) | `getILibVersion` (iLib) and `getCLDRVersion` (CLDR) getters. If package version changes, also `getVersion`. |
| [pubspec.yaml](../../../pubspec.yaml) | `version:` (package semver — independent of upstream). |

CLAUDE.md's own guidance: CLAUDE.md is the single source of truth for upstream
version numbers; the README public note and CHANGELOG entry are the two spots
that intentionally state the version independently. `lib/flutter_ilib.dart`
getters and `pubspec.yaml` are the code/package touch points.

### 3. Re-verify the converted tests

Tests were converted 1:1 from iLib JS at the old tag, so a CLDR bump will change
some expected formatting output. Run the suite and reconcile failures against
the **new** iLib JS expectations (see [docs/conversion-guide.md](../../../docs/conversion-guide.md)
and [docs/test-mapping.md](../../../docs/test-mapping.md)):

```bash
./execute_unit_test.sh          # or: flutter test
flutter analyze
```

- A test failure after a CLDR bump usually means the *expected value* legitimately
  changed upstream — verify against the new iLib JS source at the target tag
  (see the iLib JS source memory / CLAUDE.md for where that lives) before editing
  an expectation.
- Do **not** weaken assertions or add coverage the JS original lacks. Update the
  expected value to match the new upstream, nothing more.

### 4. Review and commit

```bash
git diff --stat        # expect: assets/locale/*.json + the 5 version touch points
dart format .          # short style, page_width 80 (enforced by pre-commit hook)
```

Commit the data regeneration and the version-string updates together (they must
move as a unit). Suggest the message; commit only when the user asks.

## Checklist

- [ ] Target iLib + CLDR + package versions confirmed with user
- [ ] `assets/locale/` regenerated with `--compressed`, diff reviewed
- [ ] CLAUDE.md "Source Versions" updated
- [ ] README.md public version note updated
- [ ] CHANGELOG.md — new entry added (existing entries untouched)
- [ ] lib/flutter_ilib.dart `getILibVersion` / `getCLDRVersion` (+ `getVersion` if bumped)
- [ ] pubspec.yaml `version:`
- [ ] `flutter test` + `flutter analyze` pass; failures reconciled vs new iLib JS
- [ ] `dart format .` run
