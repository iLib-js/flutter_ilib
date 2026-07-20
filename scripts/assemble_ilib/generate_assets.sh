#!/usr/bin/env bash
#
# generate_assets.sh
#
# Downloads the latest `ilib` and `ilib-assemble` npm packages and regenerates
# the iLib JavaScript that flutter_ilib ships under `assets/`:
#
#   assets/js/ilib-init.js      - the assembled (minified) iLib JS runtime
#   assets/locales/<lang>.js    - per-language CLDR/locale data bundles
#
# The set of iLib modules to include is driven by `ilib-inc.js` (the legacy
# `!depends` list) and the set of locales by `locales.json`.
#
# Usage:
#   ./generate_assets.sh [options]
#
# Options (see --help for the full list):
#   --ilib-version VER            pin a specific `ilib` npm version (default: latest)
#   --ilib-path DIR               use an existing ilib install instead of downloading
#   -o, --out-dir DIR             write output to DIR instead of assets/
#   --dry-run                     write output to a temp dir; leave assets/ untouched
#   --keep-build                  keep the intermediate build/ directory for inspection
#
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"

INC_FILE="$SCRIPT_DIR/ilib-inc.js"
LOCALES_FILE="$SCRIPT_DIR/locales.json"
BUILD_DIR="$SCRIPT_DIR/build"
OUT_DIR="$BUILD_DIR/out"

ASSETS_JS_DIR="$PROJECT_ROOT/assets/js"
ASSETS_LOCALES_DIR="$PROJECT_ROOT/assets/locales"
OUT_JS_NAME="ilib-init.js"

# Versions to install (npm dist-tags or explicit versions). `ilib` is the
# legacy monolithic package (v14 line); `ilib-assemble` is the standalone
# assembler that supports it via --legacyilib. `ilib` defaults to the latest
# release (override with --ilib-version); `ilib-assemble` always uses latest.
ILIB_VERSION="latest"
ILIB_ASSEMBLE_VERSION="latest"

log() { printf '\033[1;34m[assemble]\033[0m %s\n' "$1"; }
err() { printf '\033[1;31m[assemble] error:\033[0m %s\n' "$1" >&2; }

usage() {
  cat <<EOF
generate_assets.sh - regenerate the iLib JS bundled under assets/

Downloads ilib + ilib-assemble and rebuilds:
  assets/js/ilib-init.js     assembled (minified) iLib JS runtime
  assets/locales/<lang>.js   per-language locale data bundles

Usage:
  ./generate_assets.sh [options]

Run with no arguments to regenerate everything under assets/ using the default
(latest) versions.

Options:
  -h, --help                     Show this help and exit.
      --ilib-version VER         Version of the ilib npm package to install.
                                 Accepts any npm version/tag (e.g. 14.22.0,
                                 ^14, latest).                (default: latest)
      --ilib-path DIR            Use an existing ilib package at DIR instead of
                                 downloading it (skips the ilib install).
                                 Overrides --ilib-version.
  -o, --out-dir DIR              Write the generated files into DIR (as DIR/js
                                 and DIR/locales) instead of the project's
                                 assets/. Use this to inspect/diff before
                                 committing.
      --dry-run                  Like --out-dir but writes to a fresh temp
                                 directory and prints its path. Never touches
                                 assets/.
      --keep-build               Keep the intermediate build/ dir for
                                 inspection.                   (default: removed)

Inputs (edit these to change what is generated):
  ilib-inc.js    legacy !depends list of iLib modules to bundle
  locales.json   { "locales": [...] } list of BCP-47 locales

Examples:
  ./generate_assets.sh
  ./generate_assets.sh --dry-run
  ./generate_assets.sh --out-dir /tmp/ilib-preview
  ./generate_assets.sh --ilib-version 14.22.0
  ./generate_assets.sh --ilib-path ./node_modules/ilib
EOF
}

# --- argument parsing ------------------------------------------------------
DEST_ROOT=""       # empty => write to the project's assets/
ILIB_PATH_ARG=""   # empty => download ilib; else use this existing install
ILIB_VERSION_SET=0 # whether --ilib-version was passed explicitly
DRY_RUN=0
KEEP_BUILD=0
# Ensure the option in $1 was given a real value in $2 (present, and not another
# option starting with '-'). Exits with an error otherwise.
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
      DEST_ROOT="$2"; shift 2 ;;
    --dry-run) DRY_RUN=1; shift ;;
    --keep-build) KEEP_BUILD=1; shift ;;
    *) err "unknown argument: $1"; echo; usage >&2; exit 2 ;;
  esac
done

# --- sanity checks ---------------------------------------------------------
command -v npm  >/dev/null 2>&1 || { err "npm is required but not found in PATH.";  exit 1; }
command -v node >/dev/null 2>&1 || { err "node is required but not found in PATH."; exit 1; }
[ -f "$INC_FILE" ]     || { err "missing $INC_FILE";     exit 1; }
[ -f "$LOCALES_FILE" ] || { err "missing $LOCALES_FILE"; exit 1; }

# --- 1. prepare an isolated build directory --------------------------------
# Everything npm-related lives under build/ so the source tree stays clean.
log "Preparing build directory: $BUILD_DIR"
rm -rf "$OUT_DIR"
mkdir -p "$BUILD_DIR" "$OUT_DIR"
if [ ! -f "$BUILD_DIR/package.json" ]; then
  cat > "$BUILD_DIR/package.json" <<'JSON'
{
  "name": "flutter-ilib-assemble-build",
  "version": "1.0.0",
  "private": true,
  "description": "Throwaway install dir for regenerating flutter_ilib assets."
}
JSON
fi

# --- 2. install ilib + ilib-assemble ---------------------------------------
# ilib-assemble is always installed into build/. ilib is downloaded too unless
# --ilib-path points at an existing install to use as-is.
if [ -n "$ILIB_PATH_ARG" ]; then
  # Resolve to an absolute path so the assembler can be run from anywhere.
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

# --- 3. run the legacy-ilib assembler --------------------------------------
# Produces OUT_DIR/ilib-init.js (runtime) plus one <lang>.js per language.
log "Assembling iLib runtime + locale data..."
"$ASSEMBLE_BIN" \
  --legacyilib \
  --ilibPath "$ILIB_PATH" \
  --ilibincPath "$INC_FILE" \
  --localefile "$LOCALES_FILE" \
  --outjsFileName "$OUT_JS_NAME" \
  --compressed \
  "$OUT_DIR"

[ -f "$OUT_DIR/$OUT_JS_NAME" ] || { err "assembler did not produce $OUT_JS_NAME"; exit 1; }

# --- 4. sync outputs into the destination ----------------------------------
# Default destination is the project's assets/. --out-dir / --dry-run redirect
# it elsewhere so the output can be inspected before touching assets/.
if [ "$DRY_RUN" = "1" ] && [ -z "$DEST_ROOT" ]; then
  DEST_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/ilib-assets.XXXXXX")"
fi

if [ -n "$DEST_ROOT" ]; then
  DEST_JS_DIR="$DEST_ROOT/js"
  DEST_LOCALES_DIR="$DEST_ROOT/locales"
  log "Writing to output directory (assets/ left untouched): $DEST_ROOT"
else
  DEST_JS_DIR="$ASSETS_JS_DIR"
  DEST_LOCALES_DIR="$ASSETS_LOCALES_DIR"
fi

log "Updating $DEST_JS_DIR/$OUT_JS_NAME"
mkdir -p "$DEST_JS_DIR"
cp "$OUT_DIR/$OUT_JS_NAME" "$DEST_JS_DIR/$OUT_JS_NAME"

log "Refreshing $DEST_LOCALES_DIR/*.js"
mkdir -p "$DEST_LOCALES_DIR"
# Remove stale language bundles so dropped locales don't linger.
rm -f "$DEST_LOCALES_DIR"/*.js
locale_count=0
for f in "$OUT_DIR"/*.js; do
  base="$(basename "$f")"
  [ "$base" = "$OUT_JS_NAME" ] && continue
  cp "$f" "$DEST_LOCALES_DIR/$base"
  locale_count=$((locale_count + 1))
done
log "Wrote 1 runtime file and ${locale_count} locale bundles."

# --- 5. cleanup ------------------------------------------------------------
if [ "$KEEP_BUILD" = "1" ]; then
  log "--keep-build set; leaving $BUILD_DIR in place."
else
  log "Cleaning up build directory."
  rm -rf "$BUILD_DIR"
fi

log "Done (ilib ${INSTALLED_ILIB} / ilib-assemble ${INSTALLED_ASSEMBLE})."
if [ -n "$DEST_ROOT" ]; then
  log "Output written to: $DEST_ROOT"
  log "assets/ was NOT modified. Review, then copy over if it looks correct."
fi
