# flutter_ilib Benchmark: v1.3.0 (JS interop) vs v2.0 (pure Dart)

Performance and memory comparison of the last JS-interop release (v1.3.0, `flutter_js`)
against the pure-Dart implementation (v2.0+), plus an empty-app baseline to isolate the
Flutter engine's own footprint.

## Conclusion

| | v1.3.0 (JS interop) | v2.0 (pure Dart) |
|---|---|---|
| Startup | 227 ms | **124 ms (−45%)** |
| Compute | baseline | **85–221× faster (≈ −99% time)** |
| Peak memory | 215 MB | **179 MB (−17%)** |
| Memory under load | growing (+15 MB) | **flat (+1 MB)** |

- ✅ **Memory: improved** — peak **−17%**, and (more valuable) **long-run stability**
  (flat vs. growing). This is the direct effect of removing `flutter_js` (the JS engine).
- v1.3.0 keeps climbing because every `evaluate()` piles objects onto the JS heap that
  are not reclaimed (leak-like / OOM risk under long runs); v2.0 lets Dart's GC work
  normally, so it stays flat. The key difference is **stable vs. ever-growing**, not just
  "uses less".
- ✅ **Speed: improved** — removing the JS-bridge round-trip makes formatting 85–88×
  faster and a plain `LocaleInfo` lookup 221× faster; startup ~half.
- The similar *ready* memory is the **Flutter engine floor (139–143 MB)** dominating the
  footprint — on embedded targets like webOS where that floor is smaller, the gap stands
  out more.
- **Both speed (85–221×) and memory (stable, −17%) are confirmed improvements, with
  numbers.**

---

## Setup

- **Command** (from `benchmark/`): `flutter run --profile -d linux -t lib/benchmark.dart`
  (profile mode — debug numbers are not representative).
- **Same machine, same `benchmark.dart`** for both versions (the file uses only the
  public API shared by v1.3.0 and the current branch).
- **Three variants** (tables order them v1.3.0 → v2.0 → empty app):
  1. **v1.3.0** — `flutter_js` / QuickJS interop (`git worktree` at the `v1.3.0` tag).
  2. **v2.0** — current branch (pure Dart).
  3. **Empty app** — a bare Flutter app with no `flutter_ilib` (`benchmark/lib/benchmark_pure.dart`); the framework floor.
- **Workload** (5 locales: en-US, en-GB, ko-KR, fa-IR, am-ET):
  `format()` reused ×5,000 · construct + `format()` ×5,000 · `LocaleInfo` lookup
  ×20,000 · then a sustained phase of 6 rounds × 5,000 ops (each round = format +
  LocaleInfo lookup), tracking RSS per round.

> Reproduce: see the header of `benchmark/lib/benchmark.dart`
> (and `benchmark/lib/benchmark_pure.dart` for the
> baseline). Measurements below are from one representative run; per-op figures vary
> ±10–20% run to run.

---

## 1. Memory (RSS)

### Staged RSS

| Stage | v1.3.0 | v2.0 | Empty app |
|---|---:|---:|---:|
| after ready | 154 MB | 150 MB | 139 MB |
| after locale load | 155 MB | 163 MB | — |
| after workload | 193 MB | 178 MB | — |
| **peak** | **215 MB** | **179 MB** | **143 MB** |

### Sustained workload, per round (Δ = vs previous round)

| Round | v1.3.0 | v2.0 |
|---|---:|---:|
| r1 | 200 MB | 178 MB |
| r2 | 203 (+3) | 178 (+0) |
| r3 | 206 (+3) | 178 (+0) |
| r4 | 208 (+2) | 179 (+1) |
| r5 | 212 (+4) | 179 (+0) |
| r6 | 215 (+3) | 179 (+0) |
| **r1 → r6** | **+15 MB (monotonic)** | **+1 MB (flat)** |

### Interpretation
- The similar *ready* memory comes from the **Flutter desktop engine dominating the
  footprint**: the empty-app baseline is **139–143 MB**, so ~140 MB of each version's
  ready RSS is the framework floor — the JS-engine footprint is buried inside it.
- **iLib's marginal cost** (peak − 143 MB baseline): **v1.3.0 +72 MB (growing)** vs
  **v2.0 +36 MB (flat)** → v2.0 is roughly half.
- Under sustained (real) use the JS bridge keeps accumulating memory, so the gap widens.
- On **embedded targets like webOS**, where the Flutter baseline is much smaller, this
  "−36 MB + growth" gap is a larger share of the total — the improvement stands out more.

### Measurement caveats — trust the trend, not absolute RSS

RSS is the only metric available to both versions, but it is **coarse**: it lumps the
Flutter engine floor + both heaps + both runtimes' transients + allocator behavior into
one number. Two reasons the *absolute* values can't be compared apples-to-apples.

**(a) RSS measures the whole process — the runtimes can't be separated.**
- v2.0 process = Flutter engine + Dart heap (locale data) + Dart transients.
- v1.3.0 process = Flutter engine + Dart heap (bridge) + QuickJS (JS) heap (iLib JS +
  JS-side locale data) + Dart & JS transients.
- RSS is the sum of all of that → it cannot tell resident from transient, or Dart from JS.
  (*transient* = short-lived objects created during work and reclaimed by GC once done.)
- The same data lives in different heaps (v2.0 Dart vs v1.3.0 JS), with different
  GC/representation/overhead — so equal "data" costs a different number of bytes.
- GC timing is **asymmetric**: at the snapshot moment one runtime may have just collected
  (low) while the other has not (high). There is no way to force both GCs in sync to make
  the snapshot fair — removing only one side's transients biases that side.
- 🔑 **Tooling exists on only one side**: the Dart heap has an exact live snapshot
  (DevTools / `vm_service`); the embedded QuickJS heap has no equivalent in Flutter. So
  v2.0's resident footprint is precisely measurable but v1.3.0's JS heap is not → no
  apples-to-apples.
- Allocators also differ (release / fragmentation behavior), so an RSS gap may reflect
  allocator habits rather than data size.

→ A single absolute value (e.g. 165 vs 156 MB) is therefore fragile. But RSS measured the
**same way on both** makes the **trend** (v2.0 flat vs v1.3.0 growing) robust to this
asymmetry — that is the trustworthy signal. **We base the verdict on the trend (stable vs.
growing), not on absolute values.**

**(b) "v2.0 is higher right after locale load" is a timing artifact, not a regression.**
- v2.0 parses each locale JSON into the Dart heap immediately on load
  (`_fileDataCache` + merged Map); loading 5 locales shows up at once as ~+14 MB.
- v1.3.0 preloads the assembled iLib JS into the JS heap at startup, so that cost is
  *already in the ~155 MB baseline* — the extra `loadLocaleData` then looks like ~0 (156 MB).
- RSS also includes parse-time transients not yet GC'd, inflating v2.0 at that instant (a
  forced GC just before the snapshot would lower the 165).
- It is a difference in *who holds the data when*: v2.0 = just-in-time parse (visible) /
  v1.3.0 = preload (hidden in baseline). Under load it reverses:

  | Point in time | Lower (better) |
  |---|---|
  | after locale load (that one point) | v1.3.0 (156 < 165) — eager parse + transients |
  | sustained peak | **v2.0 (179 < 215)** |
  | long-run stability | **v2.0 (flat vs growing)** |

→ "It grew to 165" is a transient post-load effect; on the metrics that matter (peak,
stability) v2.0 wins. Reading that single point as "memory got worse" is a misreading.

---

## 2. Speed

### Startup (init → ready)

| v1.3.0 | v2.0 | Empty app |
|---:|---:|---:|
| 227 ms | 124 ms | 68 ms |

Marginal over the empty-app baseline: v1.3.0 **+159 ms** vs v2.0 **+56 ms** — the JS
engine boot is about 3× more expensive.

### Per-operation (measured values)

| Metric | v1.3.0 | v2.0 | Speedup |
|---|---:|---:|---:|
| `format()` reused | 4615.535 µs/op | 52.289 µs/op | **88×** |
| construct + `format()` | 5098.505 µs/op | 59.632 µs/op | **85×** |
| `LocaleInfo` lookup | 237.893 µs/op | 1.075 µs/op | **221×** |

Removing the JS-bridge `evaluate()` round-trip makes formatting 85–88× faster and a
plain `LocaleInfo` lookup 221× faster.

> The empty app does no i18n, so it is a memory baseline only — not part of the speed
> comparison.
