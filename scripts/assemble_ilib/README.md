# assemble_ilib

Two scripts manage the iLib-derived assets that `flutter_ilib` ships:

| Script | Output | When to use |
| --- | --- | --- |
| `generate_assets.sh` | `assets/js/ilib-init.js`, `assets/locales/<lang>.js` | (Legacy) Rebuilding the JS runtime + JS locale bundles. |
| `generate_locale_json.sh` | `assets/locale/*.json` | Rebuilding the hierarchical JSON locale files used by the pure-Dart implementation. |

---

## `generate_locale_json.sh` — hierarchical JSON locale data

Regenerates `assets/locale/*.json` using iLib's `assembleData/assemble.mjs`
with `splitByLocale=true`. Each output file covers one locale level and is
deep-merged at runtime by `ILibLoader` in the order described in
[CLAUDE.md › Key Infrastructure](../../CLAUDE.md):

| File pattern | Example | Level |
| --- | --- | --- |
| `root.json` | `root.json` | base/root |
| `{lang}.json` | `ar.json` | language |
| `und-{region}.json` | `und-US.json` | region-only fallback |
| `{lang}-{region}.json` | `ar-SA.json` | locale-specific |
| `{lang}-{script}.json` | `zh-Hans.json` | script-level |
| `{lang}-{script}-{region}.json` | `zh-Hans-CN.json` | full locale |

### Usage

```bash
cd scripts/assemble_ilib
./generate_locale_json.sh --ilib-path /path/to/iLib
```

`--ilib-path` is **required** and must point to an iLib source tree that
contains `assembleData/assemble.mjs` with `splitByLocale` support. This file
is not part of any published npm `ilib` release. The script installs
`ilib-assemble` into a throwaway `build/` directory (git-ignored) for its
`ilib-common` / `ilib-locale` dependencies, then removes `build/` on
completion.

### Previewing without touching `assets/locale/`

```bash
./generate_locale_json.sh --dry-run --ilib-path /path/to/iLib
./generate_locale_json.sh --out-dir /tmp/locale-preview --ilib-path /path/to/iLib
```

Compare then copy over:

```bash
./generate_locale_json.sh --out-dir /tmp/locale-preview --ilib-path /path/to/iLib
diff -r /tmp/locale-preview assets/locale
cp /tmp/locale-preview/*.json assets/locale/
```

### Options

| Option | Default | Effect |
| --- | --- | --- |
| `--ilib-path DIR` | **(required)** | Path to the iLib source tree that contains `assembleData/assemble.mjs` with `splitByLocale` support. The published npm `ilib` package does not include this file, so `--ilib-path` is always required. |
| `-o, --out-dir DIR` | `assets/locale/` | Write output to `DIR` instead of `assets/locale/`. |
| `--dry-run` | — | Write output to a temp dir; leave `assets/locale/` untouched. |
| `--keep-build` | — | Keep the intermediate `build/` dir for inspection. |

---

## `generate_assets.sh` — JS runtime + JS locale bundles (legacy)

Regenerates the legacy JS assets (used by the old `flutter_js` interop, now
superseded by the pure-Dart implementation):

| Output | Description |
| --- | --- |
| `assets/js/ilib-init.js` | The assembled, minified iLib JS runtime. |
| `assets/locales/<lang>.js` | Per-language CLDR/locale data bundles. |

These are produced by the [`ilib-assemble`](https://www.npmjs.com/package/ilib-assemble)
tool run against the legacy monolithic [`ilib`](https://www.npmjs.com/package/ilib)
package (v14).

### Usage

```bash
cd scripts/assemble_ilib
./generate_assets.sh
```

### Previewing without touching `assets/`

```bash
./generate_assets.sh --dry-run
./generate_assets.sh --out-dir /tmp/ilib-preview
```

Run `./generate_assets.sh --help` for the full option list.

### Options

| Option | Default | Effect |
| --- | --- | --- |
| `--ilib-version VER` | `latest` | Pin a specific `ilib` npm version. |
| `--ilib-path DIR` | — | Use an existing ilib install at `DIR`. Overrides `--ilib-version`. |
| `-o, --out-dir DIR` | `assets/` | Write output to `DIR` instead of `assets/`. |
| `--dry-run` | — | Write output to a temp dir; leave `assets/` untouched. |
| `--keep-build` | — | Keep the intermediate `build/` dir for inspection. |

---

## Shared inputs

| File | Purpose |
| --- | --- |
| `ilib-inc.js` | The legacy `!depends` list — which iLib modules to include (determines which data types are assembled). |
| `locales.json` | The set of BCP-47 locales to generate data for (`{ "locales": [...] }`). |

## After regenerating

Review the diff (`git diff assets/`) and run the test suite before committing.
