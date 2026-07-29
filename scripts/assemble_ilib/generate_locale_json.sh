#!/usr/bin/env bash
#
# generate_locale_json.sh
#
# Generates the hierarchical JSON locale files that flutter_ilib ships under
# `assets/locale/` using iLib's `assembleData/assemble.mjs` with the
# `splitByLocale` option.
#
# The assembler reads the iLib JS files listed in `ilib-inc.js` (via their
# `// !data` comments) to discover which data types are needed, then reads the
# per-locale JSON source files from the iLib data directory and writes one
# output file per locale level:
#
#   root.json           - base/root locale data
#   {lang}.json         - language-level data  (e.g. en.json)
#   und-{region}.json   - region-only fallback  (e.g. und-US.json)
#   {lang}-{region}.json - locale-specific data  (e.g. en-US.json)
#   {lang}-{script}.json - script-level data     (e.g. zh-Hans.json)
#   ... etc.
#
# These files are deep-merged at runtime by ILibLoader in the order described
# in CLAUDE.md's "JSON Data Keys" section.
#
# Usage:
#   ./generate_locale_json.sh [options]
#
# Options (see --help for the full list):
#   --ilib-path DIR      (Required) path to the iLib source tree with assembleData/assemble.mjs
#   -o, --out-dir DIR    write output to DIR instead of assets/locale/
#   --dry-run            write to a temp dir; leave assets/ untouched
#   --keep-build         keep the intermediate build/ directory for inspection
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

INC_FILE="$SCRIPT_DIR/ilib-inc.js"
LOCALES_FILE="$SCRIPT_DIR/locales.json"
BUILD_DIR="$SCRIPT_DIR/build"
BUILD_OUT_DIR="$BUILD_DIR/out"

ASSETS_LOCALE_DIR="$PROJECT_ROOT/assets/locale"

ILIB_ASSEMBLE_VERSION="latest"

log() { printf '\033[1;34m[assemble]\033[0m %s\n' "$1"; }
err() { printf '\033[1;31m[assemble] error:\033[0m %s\n' "$1" >&2; }

usage() {
  cat <<EOF
generate_locale_json.sh - regenerate the hierarchical JSON locale data under assets/locale/

Assembles iLib locale JSON files using iLib's assembleData/assemble.mjs with
splitByLocale=true, producing one file per locale level (root, language,
region, script). These files are loaded and deep-merged at runtime by
ILibLoader.

NOTE: --ilib-path is required. The assembleData/assemble.mjs with splitByLocale
support exists only in the local iLib source tree, not in any published npm package.

Usage:
  ./generate_locale_json.sh --ilib-path DIR [options]

Options:
  -h, --help                     Show this help and exit.
      --ilib-path DIR            (Required) Path to the iLib source tree or
                                 installed package that contains
                                 assembleData/assemble.mjs with splitByLocale
                                 support (e.g. /path/to/iLib).
  -o, --out-dir DIR              Write the generated .json files into DIR
                                 instead of assets/locale/. Use this to inspect
                                 or diff before committing.
      --dry-run                  Like --out-dir but writes to a fresh temp
                                 directory and prints its path. Never touches
                                 assets/locale/.
      --keep-build               Keep the intermediate build/ dir for
                                 inspection.                   (default: removed)

Inputs (edit these to change what is generated):
  ilib-inc.js    legacy !depends list of iLib modules to include (determines
                 which data types are assembled)
  locales.json   { "locales": [...] } list of BCP-47 locales to generate

Examples:
  ./generate_locale_json.sh --ilib-path /path/to/iLib
  ./generate_locale_json.sh --ilib-path /path/to/iLib --dry-run
  ./generate_locale_json.sh --ilib-path /path/to/iLib --out-dir /tmp/locale-preview
  ./generate_locale_json.sh --ilib-path /path/to/iLib --keep-build
EOF
}

# --- argument parsing --------------------------------------------------------
DEST_DIR=""      # empty => write to assets/locale/
ILIB_PATH_ARG=""
DRY_RUN=0
KEEP_BUILD=0

require_value() {
  case "${2-}" in
    ""|-*) err "$1 requires a $3 argument"; exit 2 ;;
  esac
}

while [ $# -gt 0 ]; do
  case "$1" in
    -h|--help) usage; exit 0 ;;
    --ilib-path)
      require_value "$1" "${2-}" "directory"
      ILIB_PATH_ARG="$2"; shift 2 ;;
    -o|--out-dir)
      require_value "$1" "${2-}" "directory"
      DEST_DIR="$2"; shift 2 ;;
    --dry-run) DRY_RUN=1; shift ;;
    --keep-build) KEEP_BUILD=1; shift ;;
    *) err "unknown argument: $1"; echo; usage >&2; exit 2 ;;
  esac
done

# --- sanity checks -----------------------------------------------------------
command -v npm  >/dev/null 2>&1 || { err "npm is required but not found in PATH.";  exit 1; }
command -v node >/dev/null 2>&1 || { err "node is required but not found in PATH."; exit 1; }
[ -f "$INC_FILE" ]     || { err "missing $INC_FILE";     exit 1; }
[ -f "$LOCALES_FILE" ] || { err "missing $LOCALES_FILE"; exit 1; }

# assembleData/assemble.mjs with splitByLocale support is not part of any
# published ilib npm release — it lives only in the local iLib source tree.
# --ilib-path is therefore required.
if [ -z "$ILIB_PATH_ARG" ]; then
  err "--ilib-path is required: the npm ilib package does not include assembleData/assemble.mjs."
  err "Point --ilib-path at the local iLib source tree (e.g. /path/to/iLib)."
  exit 1
fi

# --- 1. prepare isolated build directory -------------------------------------
log "Preparing build directory: $BUILD_DIR"
rm -rf "$BUILD_OUT_DIR"
mkdir -p "$BUILD_DIR" "$BUILD_OUT_DIR"
if [ ! -f "$BUILD_DIR/package.json" ]; then
  cat > "$BUILD_DIR/package.json" <<'JSON'
{
  "name": "flutter-ilib-locale-json-build",
  "version": "1.0.0",
  "private": true,
  "type": "module",
  "description": "Throwaway install dir for regenerating flutter_ilib assets/locale/ JSON."
}
JSON
fi

# --- 2. resolve ilib path ----------------------------------------------------
ILIB_PATH="$(cd "$ILIB_PATH_ARG" 2>/dev/null && pwd)" \
  || { err "--ilib-path directory does not exist: $ILIB_PATH_ARG"; exit 1; }
[ -f "$ILIB_PATH/package.json" ] \
  || { err "--ilib-path is not an ilib package (no package.json): $ILIB_PATH"; exit 1; }
log "Using ilib at: $ILIB_PATH"

# Install ilib-assemble for its ilib-common / ilib-locale dependencies.
# These are needed by assemble.mjs at runtime.
log "Installing ilib-assemble@${ILIB_ASSEMBLE_VERSION} (for ilib-common deps)..."
(cd "$BUILD_DIR" && npm install --no-audit --no-fund \
  "ilib-assemble@${ILIB_ASSEMBLE_VERSION}")

# Locate assemble.mjs within the ilib tree (source tree vs. published package)
ASSEMBLE_MJS=""
if [ -f "$ILIB_PATH/js/assembleData/assemble.mjs" ]; then
  ASSEMBLE_MJS="$ILIB_PATH/js/assembleData/assemble.mjs"
  ASSEMBLE_ZONE_MJS="$ILIB_PATH/js/assembleData/assembleZoneinfoData.mjs"
elif [ -f "$ILIB_PATH/assembleData/assemble.mjs" ]; then
  ASSEMBLE_MJS="$ILIB_PATH/assembleData/assemble.mjs"
  ASSEMBLE_ZONE_MJS="$ILIB_PATH/assembleData/assembleZoneinfoData.mjs"
fi

[ -n "$ASSEMBLE_MJS" ] || {
  err "assemble.mjs not found in $ILIB_PATH (checked js/assembleData/ and assembleData/)"
  err "The ilib version at this path may not support the splitByLocale option."
  exit 1
}

INSTALLED_ILIB="$(node -p "JSON.parse(require('fs').readFileSync('$ILIB_PATH/package.json','utf-8')).version")"
INSTALLED_ASSEMBLE="$(node -p "JSON.parse(require('fs').readFileSync('$BUILD_DIR/node_modules/ilib-assemble/package.json','utf-8')).version")"
log "Resolved versions: ilib ${INSTALLED_ILIB}, ilib-assemble ${INSTALLED_ASSEMBLE}"

# --- 3. copy assemble.mjs into the build dir ---------------------------------
# The runner imports these files from ./  so that `import from 'ilib-common'`
# resolves against build/node_modules/ where ilib-assemble installed it.
log "Copying assemble modules to build dir..."
cp "$ASSEMBLE_MJS" "$BUILD_DIR/assemble.mjs"
[ -f "$ASSEMBLE_ZONE_MJS" ] && cp "$ASSEMBLE_ZONE_MJS" "$BUILD_DIR/assembleZoneinfoData.mjs"

# --- 4. generate the runner script -------------------------------------------
OUT_DIR_ESC="$(printf '%s' "$BUILD_OUT_DIR" | sed "s/'/'\\\\''/g")"
ILIB_PATH_ESC="$(printf '%s' "$ILIB_PATH" | sed "s/'/'\\\\''/g")"
INC_FILE_ESC="$(printf '%s' "$INC_FILE" | sed "s/'/'\\\\''/g")"
LOCALES_FILE_ESC="$(printf '%s' "$LOCALES_FILE" | sed "s/'/'\\\\''/g")"

cat > "$BUILD_DIR/runner.mjs" <<RUNNER
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';
import { join } from 'node:path';
import { assemble } from './assemble.mjs';

const ILIB_PATH    = '${ILIB_PATH_ESC}';
const INC_FILE     = '${INC_FILE_ESC}';
const LOCALES_FILE = '${LOCALES_FILE_ESC}';
const OUT_DIR      = '${OUT_DIR_ESC}';

// Read the locale list from locales.json
const { locales } = JSON.parse(readFileSync(LOCALES_FILE, 'utf-8'));

// Parse ilib-inc.js: extract bare JS filenames from the !depends block.
// Lines that are just a filename (e.g. "ilib.js", "DateFmt.js") are kept;
// comment lines and blank lines are skipped.
const incLines = readFileSync(INC_FILE, 'utf-8').split('\\n');
const ilibFiles = incLines
    .map(l => l.trim())
    .filter(l => /^[\\w.-]+\\.js\$/.test(l));

// Assemble with splitByLocale=true so each locale level (root, lang, region,
// script) is kept as a separate entry — matching assets/locale/ structure.
const result = assemble(ilibFiles, {
    opt: {
        locales,
        splitByLocale: true,
        ilibPath: ILIB_PATH
    }
});

// Write one JSON file per locale level.
// Key format from assemble.mjs is directory-style ("en/US", "und/US");
// assets/locale/ uses BCP-47 hyphens ("en-US", "und-US").
mkdirSync(OUT_DIR, { recursive: true });
let count = 0;
for (const [key, data] of Object.entries(result)) {
    const basename = key === 'root' ? 'root' : key.replace(/\\//g, '-');
    writeFileSync(join(OUT_DIR, basename + '.json'), JSON.stringify(data, null, 2), 'utf-8');
    count++;
}
console.log(\`Wrote \${count} locale JSON files.\`);
RUNNER

# --- 5. run the assembler ----------------------------------------------------
log "Assembling locale JSON files (splitByLocale=true)..."
node "$BUILD_DIR/runner.mjs"

JSON_COUNT=$(find "$BUILD_OUT_DIR" -name "*.json" | wc -l)
[ "$JSON_COUNT" -gt 0 ] || { err "assembler produced no output files"; exit 1; }
log "Generated ${JSON_COUNT} JSON files."

# --- 6. sync outputs into the destination ------------------------------------
if [ "$DRY_RUN" = "1" ] && [ -z "$DEST_DIR" ]; then
  DEST_DIR="$(mktemp -d "${TMPDIR:-/tmp}/ilib-locale-json.XXXXXX")"
fi

if [ -n "$DEST_DIR" ]; then
  log "Writing to output directory (assets/locale/ left untouched): $DEST_DIR"
  mkdir -p "$DEST_DIR"
else
  DEST_DIR="$ASSETS_LOCALE_DIR"
fi

log "Refreshing $DEST_DIR/*.json"
mkdir -p "$DEST_DIR"
# Remove stale files so dropped locales do not linger.
rm -f "$DEST_DIR"/*.json
file_count=0
for f in "$BUILD_OUT_DIR"/*.json; do
  cp "$f" "$DEST_DIR/$(basename "$f")"
  file_count=$((file_count + 1))
done
log "Wrote ${file_count} locale JSON files."

# --- 7. cleanup --------------------------------------------------------------
if [ "$KEEP_BUILD" = "1" ]; then
  log "--keep-build set; leaving $BUILD_DIR in place."
else
  log "Cleaning up build directory."
  rm -rf "$BUILD_DIR"
fi

log "Done (ilib ${INSTALLED_ILIB} / ilib-assemble ${INSTALLED_ASSEMBLE})."
if [ "$DRY_RUN" = "1" ] || [ "${DEST_DIR}" != "${ASSETS_LOCALE_DIR}" ]; then
  log "Output written to: $DEST_DIR"
  log "assets/locale/ was NOT modified. Review, then copy over if it looks correct."
fi
