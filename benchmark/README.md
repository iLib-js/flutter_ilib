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
git worktree add ../flutter_ilib-v1.3.0 v1.3.0
cp lib/benchmark.dart ../flutter_ilib-v1.3.0/example/lib/benchmark.dart
cd ../flutter_ilib-v1.3.0/example && flutter run --profile -d linux -t lib/benchmark.dart
```

Full results and methodology: [`docs/benchmark.md`](../docs/benchmark.md).
