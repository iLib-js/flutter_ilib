# flutter_ilib_benchmark

Performance / memory benchmark app for **flutter_ilib**, kept as a sibling of
`example/` (it depends on the parent plugin via `path: ../`).

Two entry points:

- `lib/benchmark.dart` — flutter_ilib workload (format / construct+format /
  LocaleInfo) with staged + sustained RSS tracking. Designed to also run
  unmodified on the v1.3.0 JS-interop release for an A/B comparison.
- `lib/benchmark_pure.dart` — a bare Flutter app with **no flutter_ilib**, to
  measure the Flutter engine's own memory/startup floor (baseline).

## Run (profile mode — debug numbers are not representative)

```bash
cd benchmark
flutter run --profile -d linux -t lib/benchmark.dart        # flutter_ilib
flutter run --profile -d linux -t lib/benchmark_pure.dart   # empty-app baseline
```

Results show on screen and print to the console (look for `[BENCH]`). Press `q`
to quit when the run reaches `RSS peak`.

## Compare against v1.3.0 (JS interop)

```bash
# 1) Linked working tree at the v1.3.0 tag (run `git fetch --tags` if it's missing).
git worktree add ../flutter_ilib-v1.3.0 v1.3.0

# 2) Copy this benchmark in (v1.3.0's example uses the flat lib/ layout).
cp lib/benchmark.dart ../flutter_ilib-v1.3.0/example/lib/benchmark.dart

# 3) Fetch deps and run. No manual QuickJS build needed — `flutter pub get` makes
#    flutter_js bundle its prebuilt libquickjs_c_bridge_plugin.so.
#    (LIBQUICKJSC_TEST_PATH / execute_test.sh are only for `flutter test`.)
cd ../flutter_ilib-v1.3.0/example
flutter pub get
flutter run --profile -d linux -t lib/benchmark.dart

# When done: git worktree remove ../flutter_ilib-v1.3.0
```

Full results and methodology: [`doc/benchmark.md`](../doc/benchmark.md).
