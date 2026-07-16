# assemble_ilib

Regenerates the iLib JavaScript that `flutter_ilib` ships under `assets/`:

| Output | Description |
| --- | --- |
| `assets/js/ilib-init.js` | The assembled, minified iLib JS runtime. |
| `assets/locales/<lang>.js` | Per-language CLDR/locale data bundles. |

These are produced by the [`ilib-assemble`](https://www.npmjs.com/package/ilib-assemble)
tool run against the legacy monolithic [`ilib`](https://www.npmjs.com/package/ilib)
package (v14).

## Usage

```bash
cd scripts/assemble_ilib
./generate_assets.sh
```

The script downloads the required npm packages into a throwaway `build/`
directory (git-ignored), runs the assembler, copies the results into
`assets/`, then removes `build/`. It does **not** require a global npm install.

### Previewing without touching `assets/`

To generate the output somewhere else and diff it before committing:

```bash
./generate_assets.sh --dry-run                 # writes to a temp dir, prints its path
./generate_assets.sh --out-dir /tmp/ilib-preview
```

Both write the same `js/ilib-init.js` + `locales/<lang>.js` layout into the
target directory and leave `assets/` untouched. Compare, then copy over if it
looks right:

```bash
./generate_assets.sh --out-dir /tmp/ilib-preview
diff -r /tmp/ilib-preview/locales assets/locales
cp -r /tmp/ilib-preview/js/. assets/js/ && cp -r /tmp/ilib-preview/locales/. assets/locales/
```

Run `./generate_assets.sh --help` for the full option list.

### Inputs

| File | Purpose |
| --- | --- |
| `ilib-inc.js` | The legacy `!depends` list — which iLib modules to bundle into `ilib-init.js`. Edit this to add/remove iLib classes. |
| `locales.json` | The set of BCP-47 locales to generate data for (`{ "locales": [...] }`). Edit this to change locale coverage. |

Locale bundles are emitted per **language** (e.g. `en.js` covers `en-US`,
`en-GB`, … listed in `locales.json`).

### Options

Pass as command-line arguments (`./generate_assets.sh --help` for the full list):

| Option | Default | Effect |
| --- | --- | --- |
| `--ilib-version VER` | `latest` | Pin a specific `ilib` npm version (any npm version/tag). |
| `--ilib-path DIR` | — | Use an existing ilib install at `DIR` instead of downloading it. Overrides `--ilib-version`. |
| `-o, --out-dir DIR` | `assets/` | Write output to `DIR` instead of `assets/`. |
| `--dry-run` | — | Write output to a temp dir; leave `assets/` untouched. |
| `--keep-build` | — | Keep the intermediate `build/` dir for inspection. |

`ilib-assemble` always installs the latest release. `--ilib-version` defaults to
the latest release when omitted.

`--ilib-version` and `--ilib-path` select where `ilib` comes from and are
mutually exclusive in effect. If both are given, `--ilib-path` wins: the local
install is used, `--ilib-version` is ignored, and the script prints a note
saying so.

Example — pin the ilib version and keep the build dir:

```bash
./generate_assets.sh --ilib-version 14.22.0 --keep-build
```

## After regenerating

Review the diff (`git diff assets/`) and run the test suite before committing —
the generated JS is consumed at runtime by the Dart bindings.
