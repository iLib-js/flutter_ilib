# Supporting JS `timezone: 'local'` in Dart

Status: **IMPLEMENTED via Strategy A**. `ILibTimeZone('local')` now samples the OS
DST-aware offset via Dart core `DateTime` (synchronous, no plugin), so `'local'` and
no-timezone/no-locale dates behave as the system timezone — matching JS. **For the `'local'`
path, Strategy A (not B) is the JS-faithful mechanism**, because JS iLib also delegates `'local'`
to the intrinsic `Date` rather than loading zoneinfo. Strategy B (`flutter_timezone` → IANA name →
zoneinfo engine) remains optional future work, needed only if `getId()` must return the real zone
name instead of `'local'` (see the last section).

Implementation summary:
- `lib/ilib_timezone.dart`: `_isLocal`, `_offsetJan1`/`_offsetJun1` sampled in the
  constructor; `isLocal` branches in `getOffsetMinutes`/`inDaylightTime`/`_useDaylightTime`;
  injectable static hooks `sysWallOffsetMinutes`/`sysOffsetMinutesForInstant`/`sampleYear` (for
  hermetic tests).
- `lib/calendar/ilib_date.dart`: `adjustRdForTimezone`/`calcTimezoneOffset` only short-circuit
  on a `null` raw `_timezone`; `'local'` flows to `ILibTimeZone('local')`.
- `lib/ilib_date.dart`: `ILibDateOptions._toCalendarDate()` forwards `locale`.
- `newDateFromRd` (all 9 calendar date classes) propagates the source `_timezone` to results.
- Tests: ported `*Local*` tests in `test/timezone/timezone_test.dart`; Dart-only ones in
  `timezone_extra_test.dart`; both emulate `America/Los_Angeles` via the injectable hooks.

## Implemented behavior (Strategy A — detail)

Strategy A is implemented. `ILibTimeZone('local')` samples the OS offsets via Dart core
`DateTime` (`offsetJan1`/`offsetJun1`, `_offset = min`, `_dstSavings = abs(diff)`; `getId()`
stays `'local'`). Details of the resolved calendar/timezone DST behavior (moved here from
CLAUDE.md to keep that file lean):

### `'local'` = system timezone
- Omitting `timezone` defaults to `"local"` → the DST-aware **system** timezone (machine/`TZ`
  dependent). `adjustRdForTimezone()`/`calcTimezoneOffset()` only short-circuit when the raw
  `_timezone` field is `null` (no timezone **and** no locale → UTC); a `'local'` value flows
  through to the system offset.
- Consequences:
  - `timezone: 'local'` and `timezone: 'Etc/UTC'` **diverge** on any non-UTC host (system offset
    vs 0) — no longer interchangeable; the offset source is the OS, so results depend on `TZ`.
  - A no-timezone **and** no-locale date is interpreted in the system zone (matches JS). Tests
    that need deterministic output set `timezone: 'Etc/UTC'` explicitly (the ~600 calendar
    constructions do, mirroring the JS originals). Do NOT rely on omitted-tz meaning UTC.
  - `locale` IS forwarded through `ILibDateOptions._toCalendarDate()`, so a locale-only date uses
    the locale's zone (`ILibLocaleInfo(locale).getTimeZone()`) for its instant.
  - Spring-forward gap (a non-existent wall time) uses the JS `GregorianDate._init` `hBefore`
    rule (if the wall hour's offset grew vs the hour before, the time is in the missing hour → use
    the pre-transition/standard offset). Dart applies this in `getOffsetMinutes`'s `isLocal`
    wall-time branch to **all** calendars — deliberately, unlike JS which only has the `hBefore`
    block in `GregorianDate` (that JS inconsistency is not replicated).
  - `'local'`-dependent tests stay host-independent via the injectable hooks
    `ILibTimeZone.sysWallOffsetMinutes` / `sysOffsetMinutesForInstant` / `sampleYear` (overridden
    in `setUp`, restored in `tearDown`) — they emulate `America/Los_Angeles`; no `TZ` pinning.

### DST offset / instant
- `ILibDate` exposes the instant for JS `IDate` parity: `getRataDie()`, `getJulianDay()`,
  `getTime()`, `getTimeExtended()`, `getCalendar()`, `getTimeZone()`. `ILibDateOptions` delegates
  to `_toCalendarDate()`, forwarding `unixtime`/`timezone`/`locale` (a Flutter `DateTime` maps to
  `unixtime`).
- `inDaylightTime` is **instant-based** (mirrors JS): derives the Gregorian RD/year from the
  instant (`rd = getJulianDay() - GregRataDie.epoch`, `year = GregRataDie.calcYear(rd)`), so any
  calendar is handled without a separate Gregorian view. The `wallTime` flag matches JS —
  `false` (from-instant, UTC): `startRd -= offset/1440`, `endRd -= (offset+dstSavings)/1440`;
  `true` (from-components, wall): `startRd += dstSavings/1440`. `calcTimezoneOffset()` passes
  `wallTime=false`; `adjustRdForTimezone()` passes `wallTime=true`. A date passed to
  `getOffset()`/`inDaylightTime()` must carry the timezone it should be interpreted in.
- DST-end overlap (`dst` flag): the same wall time occurs twice; `ILibDate` carries `bool? dst`
  threaded through every constructor and `_toCalendarDate()`. `inDaylightTime()` has the JS
  magic-overlap rule `if (dst != null && rd < endRd && endRd - rd <= dstSavings/1440) return dst;`
  — selecting the right offset at construction and driving `getDisplayName` (PDT vs PST). Gated on
  `dst != null`, so dates without it are unaffected.
- `ILibRataDie.snapToMillis()` rounds an rd to millisecond resolution (mirrors iLib storing
  `halfup((jd - epoch) * 86400000) / 86400000`), applied in every `*RataDie` `julianDay`/`unixtime`
  branch so a `getTime()` round-trip lands on an exact instant (not `...999999999`).

## Optional future work — Strategy B (only for a real IANA `getId()`)

The system-tz *behavior* is already implemented via Strategy A (see above). Strategy B is the
blueprint for the one remaining optional piece: making `getId()` return the real zone name
(e.g. `Asia/Seoul`) instead of `'local'`. It is not needed for correctness — only if a caller
needs the IANA name.

> **A and B coexistence:** the *offset engine* is A xor B (don't run both for the same instant —
> OS rules vs the bundled zoneinfo/JS engine can disagree). But B's **name resolution**
> (`flutter_timezone`) is orthogonal and composes with A: keep A for the offset and use
> `flutter_timezone` only to make `getId()` return the real IANA name. Full JS-faithful DST-overlap
> *and* a real name requires full B (which replaces A's offset engine).

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

- **Pros:** reuses the existing DST/overlap logic → 1:1 with JS; `getId() == 'local'` preserved.
- **Cons:** needs a way to get the system IANA id (Dart core can't); the zone must exist in our
  bundled zoneinfo.
- **Which plugin:** only the system IANA *name* is missing → **`flutter_timezone` alone**
  (the `timezone` package's TZDB would be redundant; `flutter_native_timezone` is the older
  predecessor — use `flutter_timezone`).
- **Async resolution:** `flutter_timezone.getLocalTimezone()` is async but the `ILibTimeZone`
  constructor is sync — resolve once during `ILibLoader.loadJSON()` and cache it (same lifecycle as
  zoneinfo); make the resolver injectable for tests.
- **Raw offset:** `getRawOffset()`/`getRawOffsetMinutes()` for `'local'` would then return the
  system standard offset instead of the current `_offset`.
