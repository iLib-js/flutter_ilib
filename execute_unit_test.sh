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

# Resolve dependencies once up front so the per-file loop below can skip the
# implicit `pub get` (via --no-pub) and not reprint the resolution summary
# for every test file.
flutter pub get

for test_file in $(find test/ -name '*_test.dart' | sort); do
  if ! flutter test "$test_file" $FLUTTER_OPTIONS --no-pub; then
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