# assemble_ilib

Regenerates the iLib locale data that `flutter_ilib` ships under `assets/locale/`.

## generate_locale_json.sh

Runs the [`ilib-assemble`](https://www.npmjs.com/package/ilib-assemble) CLI
with `--mergeJson --splitByLocale`, producing one JSON file per locale level
(root, language, region, script). These files are loaded and deep-merged at
runtime by `ILibLoader`.

By default the latest `ilib` npm package is downloaded; **ilib >= 15** is
required (that is when the package started shipping `assemble.mjs`). Use
`--ilib-version` to pin a version or `--ilib-path` to point at an existing
install / source tree.

| Output example | Description |
| --- | --- |
| `assets/locale/root.json` | Base/root locale data |
| `assets/locale/en.json` | Language-level data |
| `assets/locale/und-US.json` | Region-only fallback |
| `assets/locale/en-US.json` | Locale-specific data |
| `assets/locale/zh-Hans.json` | Script-level data |

### Usage

```bash
cd scripts/assemble_ilib
./generate_locale_json.sh --compressed
```

The script downloads the required npm packages into a throwaway `build/`
directory (git-ignored), runs the assembler, copies the results into
`assets/locale/`, then removes `build/`. It does **not** require a global npm
install.

The output is **pretty-printed (4-space) by default**. The committed
`assets/locale/` files are **minified**, so regenerate them with
`--compressed` to keep the diff clean. Use the default (pretty) only for
inspecting or diffing the data.

### Previewing without touching `assets/`

```bash
./generate_locale_json.sh --compressed --dry-run                 # writes to a temp dir, prints its path
./generate_locale_json.sh --compressed --out-dir /tmp/ilib-preview
```

Both write the same `*.json` layout into the target directory and leave
`assets/locale/` untouched. Use `--compressed` to match the committed
(minified) assets, then compare and copy over if it looks right:

```bash
./generate_locale_json.sh --compressed --out-dir /tmp/ilib-preview
diff -r /tmp/ilib-preview assets/locale
cp /tmp/ilib-preview/*.json assets/locale/
```

Run `./generate_locale_json.sh --help` for the full option list.

### Options

| Option | Default | Effect |
| --- | --- | --- |
| `--ilib-version VER` | `latest` | Pin a specific `ilib` npm version (any npm version/tag). Requires ilib >= 15 (ships `assemble.mjs`). |
| `--ilib-path DIR` | — | Use an existing ilib package/source tree instead of downloading. Overrides `--ilib-version`. |
| `--compressed` | off | Write minified JSON. Use this when regenerating the committed `assets/locale/` (default output is pretty-printed 4-space). |
| `-o, --out-dir DIR` | `assets/locale/` | Write output to `DIR` instead of `assets/locale/`. |
| `--dry-run` | — | Write output to a temp dir; leave `assets/locale/` untouched. |
| `--keep-build` | — | Keep the intermediate `build/` dir for inspection. |

Example — use a local ilib source tree and keep the build dir:

```bash
./generate_locale_json.sh --ilib-path /path/to/iLib --keep-build
```

## Inputs

| File | Purpose |
| --- | --- |
| `ilib-inc.js` | List of iLib JS modules whose `require()` statements and `// !data` comments determine which data types are assembled. |
| `locales.json` | The set of BCP-47 locales to generate data for (`{ "locales": [...] }`). Edit this to change locale coverage. |

## After regenerating

Review the diff (`git diff assets/`) and run the test suite before committing:

```bash
flutter test
```
