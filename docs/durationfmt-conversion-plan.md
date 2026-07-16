# ILibDurationFmt Implementation Plan

## Overview

This document describes the pure-Dart implementation of ILib duration formatting.
It documents data inputs, architecture, the plural-choice engine, the clock-style
integration with `ILibDateFmt`, native digits, and RTL handling. The file mirrors
the structure used in the datefmt/numfmt conversion plans and is intended as a
developer reference for maintenance and future conversions.

### Data used
- `ilib.data.sysres` — localized duration template strings (year/month/week/day/
  hour/minute/second/millisecond) and separators
- `ilib.data.plurals` — CLDR plural rule tree for the locale (used to select the
  correct plural form of each template)
- `ilib.data.localeinfo` — locale defaults (script, clock, digits style, native digits)
- `ilib.data.dateformats` — gregorian time templates, used only for `style: 'clock'`
- `ilib.data.scripts` — script direction (read via `ILibScriptInfo`) for RTL marker

### Scope
- Text style: format a duration as text (e.g. `1 year, 2 months`)
- Clock style: format hours/minutes/seconds as a clock (e.g. `1y 1m 1w 1d 1:01:01`)
- Length variants: `short`, `medium`, `long`, `full`
- Plural selection driven by the locale's CLDR plural rules
- Native digits substitution and RTL marker insertion

> History: This replaced the JS interop calls in `lib/ilib_durationfmt.dart`
> (`ILibJS.instance.evaluate('new DurationFmt(...).format(...)')`) with a pure-Dart
> implementation. The unported `ILibCountry` remains the only class still on JS interop.

---

## Architecture

### Data flow

```
ILibDurationFmt constructor
  ├── ILibLocaleInfo → script, clock, digitsStyle, native digits
  ├── medium→short downgrade unless script ∈ {Latn, Grek, Cyrl}
  ├── ILibLoader.getLocaleData(locale)
  │     ├── ['ilib.data.sysres']    → template strings + separators
  │     ├── ['ilib.data.plurals']   → CLDR plural rule tree
  │     └── ['ilib.data.dateformats'] → gregorian time templates (clock style)
  ├── _buildComponents(sysres, length) → per-length template set
  ├── ILibScriptInfo(script) → scriptDirection (ltr/rtl)
  └── style == 'clock'? build 3 ILibDateFmt instances (HM, HMS, MS)

format(components)   // components is an ILibDateOptions
  ├── iterate component list (reverse: smallest → largest)
  ├── skip null / 0 values
  ├── _formatChoice(template, n, mappedNum) → plural pick + {num} substitution
  ├── join with separator (finalSeparator before last item at 'full' length)
  ├── clock style: append ILibDateFmt output (HMS / HM / MS)
  └── prepend U+200F if scriptDirection == 'rtl'
```

### File structure

```
lib/
├── ilib_durationfmt.dart      ← formatter + options
├── internal/ilib_plural.dart  ← CLDR plural-rule evaluation (getPluralCategory)
├── ilib_datefmt.dart          ← reused for clock-style time rendering
├── ilib_scriptinfo.dart       ← script direction lookup
├── ilib_localeinfo.dart       ← script/clock/digits defaults
└── flutter_ilib.dart          ← export
```

---

## Implementation (by layer)

### Step 1: Template selection (`_buildComponents`)

Purpose: pick the correct duration template string for each time unit at the
chosen length.

`getSysres(defaultKey, [namedKey])` mirrors the JS `sysres.getString(str, key)`:
- if `namedKey` given and present in sysres → use it
- else if `defaultKey` present in sysres → use it
- else → return `defaultKey` literally (JS fallback to the source string)

The four length tables (`short`/`medium`/`long`/`full`) and their named-key
overrides (e.g. `durationShortMonths`, `durationMediumYears`, `durationLongDays`)
are copied verbatim from `DurationFmt.js`. `finalSeparator` is only non-empty at
`full` length.

**medium downgrade**: JS forces `medium → short` when the locale script is not
Latin, Greek, or Cyrillic. Same check applied in the constructor.

### Step 2: Plural-choice engine (`_formatChoice` + `internal/ilib_plural.dart`)

Plural-rule evaluation lives in `lib/internal/ilib_plural.dart` as stateless
top-level functions (no class — the only input is the rule map). The formatter
calls `getPluralCategory(rules, n)`; the template-choice logic (`_formatChoice`)
stays in `ilib_durationfmt.dart`.

Duration templates are choice strings: `"limit1#string1|limit2#string2|..."`.
- `|` splits choices; the first `#` splits `limit` from `string`.
- `limit` is one of: an exact number (`1`), a range (`2-4`), a CLDR plural class
  name (`one`/`two`/`few`/`many`/`other`), or empty (catch-all default).
- `{num}` in the selected string is replaced with the (digit-mapped) number.

Selection order in `_formatChoice`:
1. exact numeric match → win immediately
2. numeric range match → win immediately
3. CLDR plural class match → remembered as candidate
4. empty/`other` limit → remembered as default
Result = plural-class match if any, else default.

`getPluralCategory(rules, n)` evaluates `ilib.data.plurals` for the locale:
- computes CLDR operands `n, i, v, f, w, t, c, e` (`_operands`); `c`/`e` are the
  base-10 exponent, used by `es`/`fr`/`it`/`pt`/`pt-PT`
- walks each non-`other` class rule via `_evalRule`, returns first true class
- returns `other` if none match, or falls back to `n==1 ? 'one' : 'other'`
  when the locale has no plural rules loaded

`_evalRule` supports the full IString.js rule tree: `and`, `or`, `eq`, `neq`,
`is`, `isnot`, `inrange`, `within`, `notin`, and the `mod` operand expression.
The bundled iLib v14.22.0 data only uses `and`/`or`/`eq`/`neq`/`mod` — it emits
`eq` with a flat `[start, end]` range — so the remaining operators are not
reached by any bundled locale. They are ported from the JS engine anyway so
future locale data (or the legacy CLDR `n is 1` / `n within 2..4` forms)
evaluates correctly:
- `is`/`isnot` — scalar equality/inequality of two operand values (unlike `eq`,
  the right side is never a range)
- `inrange`/`within` — share one range matcher over the nested
  `[[start, end], ...]` form (`matchRange` and `matchRangeContinuous` are
  identical in v14.22.0); `notin` is its negation

All the non-bundled operators are covered by synthetic-tree tests in
`test/internal/plural_test.dart`. The bundled `ilib.data.plurals` tree is
authoritative.

### Step 3: Clock style (reuse `ILibDateFmt`)

JS builds three `DateFmt` instances (`time: 'hm' | 'hms' | 'ms'`) with the
locale's default clock, then — **after construction** — rewrites the HM and HMS
instances' templates with `template.replace(/hh?/, 'H')` so hours render as
24-hour, no-padding regardless of the locale's default clock:

```js
this.timeFmtHM.template = this.timeFmtHM.template.replace(/hh?/, 'H');
this.timeFmtHM.templateArr = this.timeFmtHM._tokenize(this.timeFmtHM.template);
```

`_buildClockFmt(time)` reproduces this flow rather than pre-computing templates:
1. construct the `ILibDateFmt` with the locale-default clock (`time: 'hm' |
   'hms' | 'ms'`) — reusing DateFmt's own template lookup, not re-parsing
   `dateformats` in DurationFmt
2. for `hm`/`hms`: take the rendered `getTemplate()`, apply
   `replaceFirst(RegExp('hh?'), 'H')`, and re-construct the DateFmt with that
   fixed `template`
3. for `ms`: return the instance unchanged (no hour token to munge)

> `replaceFirst`, not `replaceAll` — JS `String.replace(/hh?/, 'H')` has no `g`
> flag, so it replaces only the first match. (In practice each time template has
> one hour token, but this keeps parity exact.)
>
> Doing the munge **after** construction (as JS does) rather than selecting the
> `'24'` clock section is also what makes 12h locales correct: some locales
> (e.g. `en`) override the `'24'` section with padded `HH:mm`, which would yield
> `01:01`. Mungeing the default-clock template (`h:mm` → `H:mm`) yields the
> JS-correct `1:01` across both 12h and 24h locales.

`format()` picks HMS when `hour` and `second` are present, HM when only `hour`,
else MS.

### Step 4: Native digits + RTL

- native digits: enabled when `useNative == true`, or `useNative == null` and
  `localeinfo.digitsStyle == 'native'`. `_mapDigits` maps `0x30..0x39` to the
  locale's native digit string.
- RTL: if `ILibScriptInfo(script).getScriptDirection() == 'rtl'`, prepend
  `U+200F` (RIGHT-TO-LEFT MARK) to the result, matching JS.

---

## Intentional API differences from JS

| JS API | Dart API | Reason |
|--------|----------|--------|
| `fmt.format({year:1, ...})` — plain object | `fmt.format(ILibDateOptions(year: 1, ...))` | Dart needs a typed carrier; `ILibDateOptions` already has all the fields (incl. `week`) and matches the existing test call sites |
| `getLocale()` returns a `Locale` | `getLocale()` returns a `String` | Consistent with the other converted classes |

---

## Verification

```bash
# Main JS-mirrored suite
flutter test test/durfmt/durfmt_test.dart
flutter test test/durfmt/durfmt2_test.dart

# Per-locale suites
flutter test test/durfmt/durfmt_am_ET_test.dart
flutter test test/durfmt/durfmt_ar_SA_test.dart
flutter test test/durfmt/durfmt_az_Latn_AZ_test.dart
flutter test test/durfmt/durfmt_ha_Latn_NG_test.dart
flutter test test/durfmt/durfmt_km_KH_test.dart
flutter test test/durfmt/durfmt_or_IN_test.dart
flutter test test/durfmt/durfmt_si_LK_test.dart
flutter test test/durfmt/durfmt_sw_KE_test.dart

# Full project regression (durfmt now included; only country is pruned)
./execute_unit_test.sh
```

Coverage exercised by the ported tests:
- length × style matrix (short/medium/long/full × text/clock)
- singular vs plural forms across many locales (en, de, fr, zh, bg, bs, …)
- clock overflow without wrapping (`36:65:66`)
- clock with missing minutes/seconds (`1:00`)
- native-digit locales (bn, mr, as, ur, …) and RTL (ur)
- medium→short downgrade for non-Latn/Grek/Cyrl scripts

---

## Important notes

1. `ilib.data.plurals` is the source of truth for plural selection — do not
   hardcode English rules; the `n==1?'one':'other'` path is only a last-resort
   fallback when a locale ships no plural tree.
2. Clock hours are munged **after** DateFmt construction (default-clock template
   with `replaceFirst hh?→H`), **not** by selecting the `'24'` clock section
   (which is padded in some locales). This mirrors JS. See Step 3.
3. `finalSeparator` is only applied at `full` length, before the last unit.
4. Components are iterated smallest→largest and prepended, matching JS build order.
5. Read all data via `ILibLoader.instance.getLocaleData()`; script direction via
   `ILibScriptInfo`; do not add ad-hoc file reads.

---

## References

- JS source: `iLib/js/lib/DurationFmt.js`, `iLib/js/lib/IString.js` (`formatChoice`,
  `_fncs`, `loadPlurals`)
- Dart source: `lib/ilib_durationfmt.dart`
- Reused: `lib/ilib_datefmt.dart`, `lib/ilib_scriptinfo.dart`, `lib/ilib_localeinfo.dart`
- Locale data: `assets/locale/*` (`ilib.data.sysres`, `ilib.data.plurals`,
  `ilib.data.dateformats`)
