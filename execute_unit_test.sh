#!/usr/bin/env bash
#
# execute_unit_test.sh
#
# Run all unit tests and integration tests for flutter_ilib.
# This script must be executed from the project root directory.
#
# Usage:
#   ./execute_unit_test.sh
#
# Test structure:
#   - test/                          : Unit tests (datefmt, numfmt, durfmt, etc.)
#   - test/integration/              : Integration tests (example app logic verification)
#   - example/integration_test/      : Widget-based integration tests (requires Linux device)
#

set -e

test_log() {
  echo "[flutter_ilib] $1"
}

# Set path to the QuickJS shared library required for JS evaluation in tests
test_log "Set LIBQUICKJSC_TEST_PATH"
export LIBQUICKJSC_TEST_PATH="${PWD}/test/linux/libquickjs_c_bridge_plugin.so"

FAILED_TESTS=()
# Suppress info-level logs during test execution
FLUTTER_OPTIONS="--dart-define=TEST_MODE=true"

# --- Phase 1: Unit tests & integration tests under test/ ---
test_log "Execute unit tests..."
echo ""
for test_file in $(find test/ -name '*_test.dart'); do
  if ! flutter test "$test_file" $FLUTTER_OPTIONS; then
    FAILED_TESTS+=("$test_file")
  fi
done

# --- Phase 2: Widget-based integration tests under example/ ---
# These tests launch the actual example app on a Linux desktop device
# and verify UI behavior (version display, locale switching, etc.)
test_log "Execute integration tests (example app)..."
echo ""
for test_file in $(find example/integration_test/ -name '*_test.dart'); do
  if ! flutter test "$test_file" $FLUTTER_OPTIONS -d linux; then
    FAILED_TESTS+=("$test_file")
  fi
done

# --- Report results ---
if [[ ${#FAILED_TESTS[@]} -gt 0 ]]; then
  echo ""
  test_log "** Failed tests **"
  for failed in "${FAILED_TESTS[@]}"; do
    echo " ❌ $failed"
  done
  exit 1
else
  echo ""
  test_log "✅ All tests passed!"
  exit 0
fi

