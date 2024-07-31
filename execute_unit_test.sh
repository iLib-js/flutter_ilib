#!/usr/bin/env bash
echo "set the LIBQUICKJSC_TEST_PATH"
export LIBQUICKJSC_TEST_PATH="${PWD}/test/linux/libquickjs_c_bridge_plugin.so"

echo "execute the unit tests..."
find test/ -name '*_test.dart' | xargs -n 1 flutter test