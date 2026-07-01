#!/usr/bin/env bash
set -e

test_log() {
  echo "[flutter_ilib] $1"
}

test_log "Execute unit tests..."
echo ""
FAILED_TESTS=()
# Ignore info-level logs during test
FLUTTER_OPTIONS="--dart-define=TEST_MODE=true"

for test_file in $(find test/ \( -path 'test/durfmt' -o -path 'test/country' -o -path 'test/scriptinfo' \) -prune -o -name '*_test.dart' -print
); do
  if ! flutter test "$test_file" $FLUTTER_OPTIONS; then
    FAILED_TESTS+=("$test_file")
  fi
done

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