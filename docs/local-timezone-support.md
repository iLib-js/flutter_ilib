# Supporting JS `timezone: 'local'` in Dart

Status: **deferred / design notes**. This documents how Dart currently handles
`'local'`, why it diverges from JS, and what it would take to implement JS-faithful
system-timezone behavior. Nothing here is implemented yet — it is the analysis captured
so the work can be picked up later.

## 1. Current behavior (the divergence)

In JS/iLib, omitting `timezone` defaults to `"local"`, which resolves against the
intrinsic `Date` — i.e. the **system timezone**, DST-aware and machine-dependent.
`"Etc/UTC"` (always offset 0) and `"local"` therefore differ on any non-UTC machine.

Dart does **not** implement the system-local path. Three short-circuits collapse
`'local'` (and `null`) to UTC offset 0:

| Location | Code | Effect |
|----------|------|--------|
| `lib/calendar/ilib_date.dart` `adjustRdForTimezone()` | `if (tz == null \|\| tz == 'local') return rd;` | components → instant uses offset 0 |
| `lib/calendar/ilib_date.dart` `calcTimezoneOffset()` | `if (tz == null \|\| tz == 'local') return;` | instant → components uses offset 0 |
| `lib/ilib_timezone.dart` ctor | unknown id → falls back to `Etc/UTC` zone data (keeps `getId() == 'local'`) | `getOffsetMinutes()` always 0 |

**Consequence:** in Dart, `timezone: 'Etc/UTC'`, `timezone: 'local'`, and omitting
`timezone` are all behaviorally identical (offset 0, same instant, same wall-clock
components). See also CLAUDE.md Pitfall #7. A Dart test that sets `'local'` is NOT
exercising a system-timezone path — it collapses to UTC. Tests still set the JS-original
value for 1:1 construction fidelity, but the two are indistinguishable at runtime.

The key capability missing is: **"the local offset (DST-aware) at a given instant."**

## 2. Two implementation strategies

### Strategy A — delegate to Dart core `DateTime` (no dependency)

Dart's `DateTime` local mode already knows the system zone's DST-aware offset (via
`libc`; respects the `TZ` env var). It bypasses our zoneinfo table and asks the platform.

- instant → offset (`calcTimezoneOffset`, from-UTC):
  ```dart
  final DateTime local =
      DateTime.fromMillisecondsSinceEpoch(utcMillis, isUtc: true).toLocal();
  tzOffsetDays = local.timeZoneOffset.inMinutes / 1440.0;
  ```
- wall-clock → offset (`adjustRdForTimezone`, from-components):
  ```dart
  final DateTime wall =
      DateTime(year, month, day, hour, minute, second, millisecond); // local by default
  tzOffsetDays = wall.timeZoneOffset.inMinutes / 1440.0;
  return rd - tzOffsetDays;
  ```

- **Pros:** zero dependencies; OS handles DST + overlap.
- **Cons:** bypasses our JS-faithful `inDaylightTime` / `dst` overlap logic (uses OS
  rules instead → may differ subtly from JS). Dart core does not expose the IANA zone
  *name* (`timeZoneName` is an unreliable abbreviation like `"KST"`), so `getId()` can't
  return the real zone.

### Strategy B — resolve the system IANA id, reuse the existing engine (JS-faithful)

Resolve `'local'` to a system IANA name (e.g. `Asia/Seoul`), then run it through the
already-validated `ILibTimeZone` zoneinfo + `inDaylightTime` + `dst` overlap path.

```dart
// ILibTimeZone constructor
if (_id == 'local') {
  final String sys = resolveSystemIanaId();        // 'Asia/Seoul'
  final Object? entry = allZoneData[sys];
  _zone = entry is String ? allZoneData[entry] : entry as Map<String, dynamic>?;
  // keep _id == 'local'  → getId() == 'local' (matches JS)
}
```

And drop only the `'local'` half of the two short-circuits (keep `null` → UTC):

```dart
if (tz == null) return rd;              // no-tz stays UTC
final ILibTimeZone tzObj = ILibTimeZone(tz);   // 'local' now flows here too
```

- **Pros:** reuses the existing DST/overlap logic → 1:1 with JS; `getId() == 'local'`
  preserved.
- **Cons:** needs a way to get the system IANA id (Dart core can't); the zone must exist
  in our bundled zoneinfo (verify coverage across the 218 locale files).

## 3. What Flutter usually recommends

The Flutter-idiomatic choice depends on what you need:

| Need | Recommended | Deps |
|------|-------------|------|
| just the current offset (DST-aware) | core `DateTime` (`.timeZoneOffset`, `.toLocal()`) | none |
| the IANA zone **name** (`Asia/Seoul`) | `flutter_timezone` plugin | 1 |
| arbitrary-zone DST conversions | `timezone` package + `flutter_timezone` | 2 |

The canonical general-purpose combo is **`timezone` + `flutter_timezone`** (the
`timezone` package has the TZDB but cannot auto-detect the local zone, so it is paired
with `flutter_timezone` to inject the local name). `flutter_native_timezone` is the older,
less-maintained predecessor — use `flutter_timezone`.

**For this project specifically:** flutter_ilib already has its own zoneinfo + DST engine,
so the `timezone` package's TZDB is redundant (and would split the data source). The only
missing piece is the system IANA name → **`flutter_timezone` alone**, feeding Strategy B,
is the right fit.

## 4. Common follow-up work (either strategy)

1. **Split `tz == null` (UTC) from `tz == 'local'` (system).** They are currently bundled.
   Keeping `null` → UTC avoids machine-dependent instants for the many locale-bearing
   `ILibDateOptions` (the existing timezone design intent; CLAUDE.md Pitfall #1 / #7).
2. **Determinism breaks.** Once `'local'` is machine-dependent, `'Etc/UTC' == 'local'` no
   longer holds. Tests that set `'local'` (`testPersDateAlgoRoundTripConstruction`,
   `testJulianDateRoundTripConstruction`) stay green only because they are self-consistent
   round-trips; absolute-value assertions would shift. Pin `TZ` in CI (e.g.
   `TZ=America/Los_Angeles`) to match JS expected values.
3. **Async resolution (Strategy B).** `flutter_timezone.getLocalTimezone()` is async but the
   `ILibTimeZone` constructor is sync. Resolve once during `ILibLoader.loadJSON()` and cache
   it (same lifecycle as zoneinfo loading); the constructor reads the cached value
   synchronously. Make the resolver injectable so tests can override it with a fixed `TZ`.
4. **`ILibTimeZone('local')` raw offset.** `getRawOffset()` / `getRawOffsetMinutes()` return
   `_offset` (currently 0) — update to the system standard offset.
5. **Tests that become portable.** Currently-N/A `*Local*` tests
   (`testTZInDaylightTimeLocalTrue/False`, `testTZConstructUsingLocalID`,
   `testTZGetRawOffsetMillisLocal`) and no-arg-vs-system-`Date` checks
   (`testXxxDateConstructorEmpty`, `testGregDateGetTimeWithUnixTime`) could then be ported —
   given a pinned `TZ`.
6. **Docs to revert.** CLAUDE.md Pitfall #7's "behaviorally identical" statement must be
   updated once `'local'` and `'Etc/UTC'` diverge.

## 5. Recommendation

- **JS fidelity is the goal → Strategy B** (reuse the existing DST/overlap engine, preserve
  `getId() == 'local'`), with `flutter_timezone` as the single IANA-name resolver.
- **Minimal dependencies → Strategy A** (core `DateTime`, OS rules), accepting that the
  JS-faithful `inDaylightTime` / `dst` overlap path is not exercised.
- Either way, the prerequisites are: **split `null` (UTC) from `'local'` (system)** and
  **pin `TZ` in CI** for deterministic tests.
