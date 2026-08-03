#!/usr/bin/env bash
#
# generate_locale_json.sh
#
# Generates the hierarchical JSON locale files that flutter_ilib ships under
# `assets/locale/`, using the `ilib-assemble` CLI with --mergeJson and
# --splitByLocale.
#
# The assembler parses the require statements and `!data` comments in the iLib
# modules listed in `ilib-inc.js` to discover which data types are needed, then
# reads the per-locale JSON source files from the iLib data directory and writes
# one output file per locale level:
#
#   root.json            - base/root locale data
#   {lang}.json          - language-level data   (e.g. en.json)
#   und-{region}.json    - region-only fallback  (e.g. und-US.json)
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
#   --ilib-version VER   pin a specific `ilib` npm version (default: latest)
#   --ilib-path DIR      use an existing ilib install/source tree instead of downloading
#   --compressed         write minified JSON (default is pretty-printed)
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

# `ilib` defaults to the latest npm release (override with --ilib-version, or
# use --ilib-path to point at an existing install/source tree). `ilib-assemble`
# is the CLI that drives the assembly.
ILIB_VERSION="latest"
ILIB_ASSEMBLE_VERSION="latest"

log() { printf '\033[1;34m[assemble]\033[0m %s\n' "$1"; }
err() { printf '\033[1;31m[assemble] error:\033[0m %s\n' "$1" >&2; }

usage() {
  cat <<EOF
generate_locale_json.sh - regenerate the hierarchical JSON locale data under assets/locale/

Runs the ilib-assemble CLI with --mergeJson --splitByLocale, producing one
file per locale level (root, language, region, script). These files are loaded
and deep-merged at runtime by ILibLoader.

By default the ilib npm package (latest) is downloaded. Use --ilib-version to
pin a version, or --ilib-path to use an existing install / source tree.

Usage:
  ./generate_locale_json.sh [options]

Run with no arguments to regenerate assets/locale/ using the latest npm ilib.

Options:
  -h, --help                     Show this help and exit.
      --ilib-version VER         Version of the ilib npm package to install.
                                 Accepts any npm version/tag (e.g. 15.0.0,
                                 ^15, latest).                (default: latest)
      --ilib-path DIR            Use an existing ilib package/source tree at DIR
                                 instead of downloading. Overrides
                                 --ilib-version.
      --compressed               Write minified JSON (no whitespace). The
                                 default is pretty-printed (4-space).
  -o, --out-dir DIR              Write the generated .json files into DIR
                                 instead of assets/locale/. Use this to inspect
                                 or diff before committing.
      --dry-run                  Like --out-dir but writes to a fresh temp
                                 directory and prints its path. Never touches
                                 assets/locale/.
      --keep-build               Keep the intermediate build/ dir for
                                 inspection.                   (default: removed)

Inputs (edit these to change what is generated):
  ilib-inc.js    list of iLib JS modules whose require statements and !data
                 comments determine which data types are assembled
  locales.json   { "locales": [...] } list of BCP-47 locales to generate

Examples:
  ./generate_locale_json.sh
  ./generate_locale_json.sh --compressed
  ./generate_locale_json.sh --ilib-version 15.0.0
  ./generate_locale_json.sh --dry-run
  ./generate_locale_json.sh --ilib-path /path/to/iLib
  ./generate_locale_json.sh --ilib-path /path/to/iLib --keep-build
EOF
}

# --- argument parsing --------------------------------------------------------
DEST_DIR=""        # empty => write to assets/locale/
ILIB_PATH_ARG=""   # empty => download ilib; else use this existing install
ILIB_VERSION_SET=0 # whether --ilib-version was passed explicitly
DRY_RUN=0
KEEP_BUILD=0
COMPRESSED=0       # 1 => minified JSON; 0 (default) => pretty-printed

require_value() {
  case "${2-}" in
    ""|-*) err "$1 requires a $3 argument"; exit 2 ;;
  esac
}

while [ $# -gt 0 ]; do
  case "$1" in
    -h|--help) usage; exit 0 ;;
    --ilib-version)
      require_value "$1" "${2-}" "version"
      ILIB_VERSION="$2"; ILIB_VERSION_SET=1; shift 2 ;;
    --ilib-path)
      require_value "$1" "${2-}" "directory"
      ILIB_PATH_ARG="$2"; shift 2 ;;
    -o|--out-dir)
      require_value "$1" "${2-}" "directory"
      DEST_DIR="$2"; shift 2 ;;
    --compressed) COMPRESSED=1; shift ;;
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

# --- 1. prepare isolated build directory -------------------------------------
# All npm-related state lives under build/ so the source tree stays clean.
log "Preparing build directory: $BUILD_DIR"
rm -rf "$BUILD_OUT_DIR"
mkdir -p "$BUILD_DIR" "$BUILD_OUT_DIR"
if [ ! -f "$BUILD_DIR/package.json" ]; then
  cat > "$BUILD_DIR/package.json" <<'JSON'
{
  "name": "flutter-ilib-locale-json-build",
  "version": "1.0.0",
  "private": true,
  "description": "Throwaway install dir for regenerating flutter_ilib assets/locale/ JSON."
}
JSON
fi

# --- 2. install ilib + ilib-assemble -----------------------------------------
# ilib-assemble (the CLI) is always installed. ilib is downloaded too unless
# --ilib-path points at an existing install/source tree to use as-is.
if [ -n "$ILIB_PATH_ARG" ]; then
  ILIB_PATH="$(cd "$ILIB_PATH_ARG" 2>/dev/null && pwd)" \
    || { err "--ilib-path directory does not exist: $ILIB_PATH_ARG"; exit 1; }
  [ -f "$ILIB_PATH/package.json" ] \
    || { err "--ilib-path is not an ilib package (no package.json): $ILIB_PATH"; exit 1; }
  if [ "$ILIB_VERSION_SET" = "1" ]; then
    log "Note: --ilib-version is ignored because --ilib-path was given."
  fi
  log "Using existing ilib at: $ILIB_PATH"
  log "Installing ilib-assemble@${ILIB_ASSEMBLE_VERSION}..."
  (cd "$BUILD_DIR" && npm install --no-audit --no-fund \
    "ilib-assemble@${ILIB_ASSEMBLE_VERSION}")
else
  log "Installing ilib@${ILIB_VERSION} and ilib-assemble@${ILIB_ASSEMBLE_VERSION}..."
  (cd "$BUILD_DIR" && npm install --no-audit --no-fund \
    "ilib@${ILIB_VERSION}" "ilib-assemble@${ILIB_ASSEMBLE_VERSION}")
  ILIB_PATH="$BUILD_DIR/node_modules/ilib"
fi

ASSEMBLE_BIN="$BUILD_DIR/node_modules/.bin/ilib-assemble"
[ -d "$ILIB_PATH" ]    || { err "ilib package not found at $ILIB_PATH"; exit 1; }
[ -x "$ASSEMBLE_BIN" ] || { err "ilib-assemble binary not found at $ASSEMBLE_BIN"; exit 1; }

INSTALLED_ILIB="$(node -p "require('$ILIB_PATH/package.json').version")"
INSTALLED_ASSEMBLE="$(node -p "require('$BUILD_DIR/node_modules/ilib-assemble/package.json').version")"
log "Resolved versions: ilib ${INSTALLED_ILIB}, ilib-assemble ${INSTALLED_ASSEMBLE}"

# --- 3. run the assembler ----------------------------------------------------
# --mergeJson + --splitByLocale writes one .json per locale level into
# BUILD_OUT_DIR. The CLI outputs pretty-printed (4-space) by default; pass
# --compressed through to get minified output.
COMPRESSED_ARG=()
if [ "$COMPRESSED" = "1" ]; then
  COMPRESSED_ARG=(--compressed)
  log "Assembling locale JSON files (splitByLocale, minified)..."
else
  log "Assembling locale JSON files (splitByLocale, pretty-printed)..."
fi
"$ASSEMBLE_BIN" \
  --mergeJson \
  --splitByLocale \
  --ilibPath "$ILIB_PATH" \
  --ilibincPath "$INC_FILE" \
  --localefile "$LOCALES_FILE" \
  "${COMPRESSED_ARG[@]}" \
  "$BUILD_OUT_DIR"

JSON_COUNT=$(find "$BUILD_OUT_DIR" -name "*.json" | wc -l)
[ "$JSON_COUNT" -gt 0 ] || { err "assembler produced no output files"; exit 1; }
log "Generated ${JSON_COUNT} JSON files."

# --- 4. sync outputs into the destination ------------------------------------
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

# --- 5. cleanup --------------------------------------------------------------
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
