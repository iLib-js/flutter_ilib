#!/usr/bin/env bash
#
# execute_test.sh
#
# Run tests for flutter_ilib.
# This script must be executed from the project root directory.
#
# Usage:
#   ./execute_test.sh          # Run all tests (default)
#   ./execute_test.sh unit      # Run library API tests only
#   ./execute_test.sh integration      # Run integration tests only
#   ./execute_test.sh all       # Run all tests
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

usage() {
  cat <<EOF
execute_test.sh - Run tests for flutter_ilib

Usage:
  ./execute_test.sh [option]

Options:
  unit          Run unit tests only (test/, excluding test/integration/)
  integration   Run integration tests only:
                  - API-level:    test/integration/
                  - Widget-based: example/integration_test/ (requires Linux device)
  all           Run all tests (default)
  -h, --help    Show this help and exit

Test structure:
  test/ (excluding test/integration/)   Unit tests (datefmt, numfmt, durfmt, etc.)
  test/integration/                     API-level integration tests
  example/integration_test/             Widget-based integration tests (requires Linux device)

Notes:
  - Logs at info level are suppressed via --dart-define=TEST_MODE=true.
  - Dependencies are resolved once (flutter pub get) before running tests.
  - Widget-based integration tests use xvfb-run if DISPLAY is unset.

Examples:
  ./execute_test.sh              # Run all tests
  ./execute_test.sh unit         # Run unit tests only
  ./execute_test.sh integration  # Run integration tests only
  ./execute_test.sh --help       # Show this help
EOF
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

# Suppress info-level logs during test execution.
# --no-pub: skip the implicit `pub get` on every `flutter test` (run once below).
FLUTTER_OPTIONS="--dart-define=TEST_MODE=true --no-pub"

# --- Option handling (early, before pub get) ---

MODE="${1:-all}"

case "$MODE" in
  -h|--help)
    usage
    exit 0
    ;;
  unit|integration|all)
    ;;
  *)
    echo "Unknown option: $MODE"
    echo ""
    usage
    exit 1
    ;;
esac

# Resolve dependencies once up front.
test_log "Resolve dependencies (flutter pub get)..."
flutter pub get

FAILED_UNIT_TESTS=()
FAILED_INTEGRATION_TESTS=()
RUN_UNIT_TESTS=false
RUN_INTEGRATION_TESTS=false

# --- Test functions ---

run_unit_tests() {
  RUN_UNIT_TESTS=true
  test_log "Execute unit tests (test/)..."
  echo ""
  for test_file in $(find test/ -path 'test/integration' -prune -o -name '*_test.dart' -print | sort); do
    if ! flutter test "$test_file" $FLUTTER_OPTIONS; then
      FAILED_UNIT_TESTS+=("$test_file")
    fi
  done
}

run_integration_tests() {
  RUN_INTEGRATION_TESTS=true
  # API-level integration tests
  test_log "Execute API-level integration tests (test/integration/)..."
  echo ""
  for test_file in $(find test/integration/ -name '*_test.dart' | sort); do
    if ! flutter test "$test_file" $FLUTTER_OPTIONS; then
      FAILED_INTEGRATION_TESTS+=("$test_file")
    fi
  done

  # Widget-based integration tests (must run from example/ directory)
  test_log "Execute widget-based integration tests (example/integration_test/)..."
  echo ""
  pushd example > /dev/null
  # example/ has its own pubspec; resolve it once, then run each test --no-pub.
  test_log "Resolve example dependencies (flutter pub get)..."
  flutter pub get
  for test_file in $(find integration_test/ -name '*_test.dart' | sort); do
    if ! run_linux_flutter_test "$test_file" $FLUTTER_OPTIONS -d linux; then
      FAILED_INTEGRATION_TESTS+=("example/$test_file")
    fi
  done
  popd > /dev/null
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
esac

echo ""
echo "-------------------------------------"
# --- Report results ---
if [[ "$RUN_UNIT_TESTS" == true ]]; then
  echo ""
  test_log "[unit] result"
  if [[ ${#FAILED_UNIT_TESTS[@]} -gt 0 ]]; then
    echo " ❌ failed"
    for failed in "${FAILED_UNIT_TESTS[@]}"; do
      echo "   - $failed"
    done
  else
    echo " ✅ passed"
  fi
fi

if [[ "$RUN_INTEGRATION_TESTS" == true ]]; then
  echo ""
  test_log "[integration] result"
  if [[ ${#FAILED_INTEGRATION_TESTS[@]} -gt 0 ]]; then
    echo " ❌ failed"
    for failed in "${FAILED_INTEGRATION_TESTS[@]}"; do
      echo "   - $failed"
    done
  else
    echo " ✅ passed"
  fi
fi

if [[ ${#FAILED_UNIT_TESTS[@]} -gt 0 || ${#FAILED_INTEGRATION_TESTS[@]} -gt 0 ]]; then
  exit 1
else
  echo ""
  test_log "✅ All tests passed!"
  exit 0
fi
