#!/usr/bin/env bash
#
# execute_unit_test.sh
#
# Run tests for flutter_ilib.
# This script must be executed from the project root directory.
#
# Usage:
#   ./execute_unit_test.sh          # Run all tests (default)
#   ./execute_unit_test.sh unit      # Run library API tests only
#   ./execute_unit_test.sh integration      # Run example app tests only
#
# Test structure:
#   - test/ (excluding test/integration/) : Unit tests (datefmt, numfmt, durfmt, etc.)
#   - test/integration/                   : API-level integration tests
#   - example/integration_test/           : Widget-based integration tests (requires Linux device)
#

set -e

PROJECT_ROOT="${PWD}"

test_log() {
  echo "[flutter_ilib] $1"
}

run_linux_flutter_test() {
  local test_file="$1"
  shift

  if [[ -z "${DISPLAY:-}" ]] && command -v xvfb-run > /dev/null; then
    xvfb-run -a flutter test "$test_file" "$@"
    return
  fi

  flutter test "$test_file" "$@"
}

# --- Common setup ---
test_log "Set LIBQUICKJSC_TEST_PATH"
export LIBQUICKJSC_TEST_PATH="${PROJECT_ROOT}/test/linux/libquickjs_c_bridge_plugin.so"

FAILED_TESTS=()
# Suppress info-level logs during test execution
FLUTTER_OPTIONS="--dart-define=TEST_MODE=true"

# --- Test functions ---

run_unit_tests() {
  test_log "Execute unit tests (test/)..."
  echo ""
  for test_file in $(find test/ -path 'test/integration' -prune -o -name '*_test.dart' -print); do
    if ! flutter test "$test_file" $FLUTTER_OPTIONS; then
      FAILED_TESTS+=("$test_file")
    fi
  done
}

run_integration_tests() {
  # API-level integration tests
  test_log "Execute API-level integration tests (test/integration/)..."
  echo ""
  for test_file in $(find test/integration/ -name '*_test.dart'); do
    if ! flutter test "$test_file" $FLUTTER_OPTIONS; then
      FAILED_TESTS+=("$test_file")
    fi
  done

  # Widget-based integration tests (must run from example/ directory)
  test_log "Execute widget-based integration tests (example/integration_test/)..."
  echo ""
  local previous_libquickjsc_path="${LIBQUICKJSC_PATH:-}"
  pushd example > /dev/null
  export LIBQUICKJSC_PATH="${PROJECT_ROOT}/test/linux/libquickjs_c_bridge_plugin.so"
  for test_file in $(find integration_test/ -name '*_test.dart'); do
    if ! run_linux_flutter_test "$test_file" $FLUTTER_OPTIONS -d linux; then
      FAILED_TESTS+=("example/$test_file")
    fi
  done
  popd > /dev/null

  if [[ -n "$previous_libquickjsc_path" ]]; then
    export LIBQUICKJSC_PATH="$previous_libquickjsc_path"
  else
    unset LIBQUICKJSC_PATH
  fi
}

# --- Option handling ---

MODE="${1:-all}"

case "$MODE" in
  unit)
    run_unit_tests
    ;;
  integration)
    run_integration_tests
    ;;
  all)
    run_unit_tests
    run_integration_tests
    ;;
  *)
    echo "Usage: $0 [unit|integration|all]"
    exit 1
    ;;
esac

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
