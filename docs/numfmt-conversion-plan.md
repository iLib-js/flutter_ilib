# ILibNumFmt & ILibCurrency Implementation Plan

## Overview

This document describes the implemented ILib number and currency formatting in Dart.
It documents data inputs, architecture, rounding behavior, grouping, native digits,
and the relationship between NumFmt, Currency lookups, and supplemental MathUtils
helpers. The file mirrors the structure used in datefmt conversion plans and is
intended as a developer reference for maintenance and future conversions.

### Data used
- `ilib.data.currency` — currency metadata and signs
- `ilib.data.localeinfo` — locale-level defaults (currency, digits, grouping)
- `ilib.data.localeinfo.numfmt` — locale-specific number and percentage patterns (nested under localeinfo)
- `ilib.data.sysres` — localized strings used for formatting where applicable

### Scope
- Number, percentage, and currency formatting
- Rounding modes and significant-digit handling
- Grouping (primary + secondary), native digits substitution
- Currency lookup and sign resolution with locale-aware fallback
- Supplemental MathUtils functions required for deterministic rounding

> History: This replaced several JS interop calls and ad-hoc helpers by providing
> pure-Dart implementations in `lib/ilib_numfmt.dart`, `lib/ilib_currency.dart`,
> and `lib/internal/math_utils.dart`.

---

## Architecture

### Data flow

```
ILibNumFmt constructor
  ├── ILibLocaleInfo → determines default digitsStyle, grouping, currency
  ├── ILibLoader.getLocaleData(locale)
  │     └── ['ilib.data.localeinfo'] → locale defaults + ['numfmt'] pattern templates
  ├── ILibLoader.getRootData()
  │     └── ['ilib.data.currency'] → currency metadata (read by `ILibCurrency`)
  ├── _initPatterns() → select pattern based on style (number/currency/percent)
  ├── _resolveCurrency(options) → ILibCurrency lookup when needed
  └── _prepareFormat() → compile internal format rules (grouping, digits)

format(number)
  ├── _resolveOptions(number) → sign, scale (percent), style adjustments
  ├── _applyRounding(number) → uses MathUtils rounding functions
  ├── _formatMantissa(integer, fraction) → grouping + fraction alignment
  ├── _applySignAndPattern(formattedAbs) → insert sign/currency template
  └── _substituteNativeDigits(result) → optional native digit mapping
```

### File structure

```
lib/
├── ilib_numfmt.dart          ← core formatter
├── ilib_currency.dart        ← currency metadata lookup and resolution
├── internal/math_utils.dart  ← rounding helpers used by NumFmt
└── flutter_ilib.dart         ← export
```

---

## Implementation (by layer)

### Step 1: NumFmt (`lib/ilib_numfmt.dart`)

Purpose: format numbers, percentages and currency values using locale data.

Key responsibilities:
- Parse options (locale, style, currency, useNative, grouping, digits)
- Load necessary locale JSON (numberformat, currency, localeinfo)
- Determine rounding mode and digits to use
- Apply grouping rules (primary + optional secondary grouping)
- Render negative formats and currency templates with `{n}` placeholder

Key behaviors covered:
- Styles: `number`, `currency`, `percentage`
- Pattern selection: short, medium, long patterns from `ilib.data.localeinfo.numfmt`
- Percentage scaling: multiply input by 100 when style is `percentage`
- Negative formatting: select negative pattern from number/currency templates

Contract (inputs/outputs):
- Inputs: number (double/int), ILibNumFmtOptions
- Outputs: formatted string
- Error modes: invalid number → throw or return input `toString()` depending on option

Edge cases to consider:
- NaN and Infinity
- Very large exponents (use scientific when requested)
- Zero-padding in fractions when minFractionDigits > 0

### Rounding and Significant Digits

Rounding selection:
- Default: `halfdown` (matches original JS `NumFmt.js` default)
- Currency: currency metadata may override roundingMode
- API: `_maxFractionDigits`, `_minFractionDigits`, `_significantDigits`

Rounding helpers are in `lib/internal/math_utils.dart`. Because JS `Math.round`
differs from Dart `.round()` for negative ties, NumFmt uses a JS-like rounding
helper when parity with JS behavior is required (e.g. tests or compat mode).

### Grouping (primary + secondary)

- Primary group: rightmost group size (commonly 3)
- Secondary group: repeated group size applied to remaining digits (e.g. India: 3 then 2)
- Implement `_applySecondaryGrouping` which uses a loop to insert separators according to
  `primary` and `secondary` sizes from localeinfo.

### Native digits

Controlled by `useNative` option and `localeinfo.digitsStyle`:
- `digitsStyle == 'native'` → always replace Western digits with native digits
- `digitsStyle == 'optional'` and user `style == 'native'` → use native digits
- else → western digits

Mapping: map char codes for '0'..'9' to `localeInfo.getNativeDigits()` characters.

### Templates and sign insertion

Number/currency templates use `{n}` placeholder. Examples:
- number: `{"positive":"{n}", "negative":"-{n}"}`
- currency common: `"{s}{n}"` or `"({s}{n})"` for accounting
- style `iso` forces the ISO code as sign (e.g. `USD 1,234.56`)

Sign resolution delegated to `ILibCurrency` when `options.currency` is provided.

---

### Step 2: Currency (`lib/ilib_currency.dart`) — main

Purpose: encapsulate currency metadata lookup and fallback rules used by NumFmt.

Data sources:
- `ilib.data.currency` — mapping by ISO code, each entry has `name`, `sign`,
  `decimals`, `roundingMode`, and optional `countries` or `locales`.
- `ilib.data.localeinfo.currency` — locale default currency code

API and behavior:
- Constructor: `ILibCurrency({String? code, String? sign, String? locale})`
- Lookup by code: prefer direct match in `ilib.data.currency`
- Lookup by sign: search for currencies where `curr['sign'] == sign`
  - If multiple matches, prefer the currency of the current locale
  - Otherwise pick the first match (stable ordering from root.json)
- Default currency: if none specified, use `localeinfo.currency` then
  `ILibLocaleInfo.getCurrency()` as fallback

Returned properties:
- `getCode()`, `getSign()`, `getFractionDigits()`, `getName()`, `getRoundingMode()`

- Notes:
- The currency list is read from `ILibLoader.instance.getRootData()['ilib.data.currency']` (rootData); `ILibCurrency` performs lookups and `ILibNumFmt` delegates currency resolution to it.
- `getAvailableCurrencies()` returns a stable list by reading a valid base locale (e.g. `en-US`).

---

### Step 3: MathUtils (`lib/internal/math_utils.dart`) — ancillary

Purpose: provide deterministic rounding and numeric utilities needed by NumFmt.
Only a subset of the original JS MathUtils is implemented—those functions used
by NumFmt and currency rounding.

Converted helpers include:
- `log10`, `shiftDecimal`, `significant`
- Rounding functions: `roundFloor`, `roundCeiling`, `roundDown`, `roundUp`
- Half rounding modes: `roundHalfup`, `roundHalfdown`, `roundHalfeven`, `roundHalfodd`
- `roundHalfPositiveInfinity` — mirrors JS `Math.round` behavior for compatibility
- `getRoundingFunction(name)` — maps rounding mode name to function

Omitted or intentionally unconverted:
- Float `mod`/`amod` (not used by production code)
- `signum` (handles JS-specific types like `undefined`/`function`)

Floating-point precision:
- Use string-based exponent shifting (split on 'e') for `shiftDecimal` to avoid drift.

---

## Verification

Unit tests to run (representative):

```bash
# Representative numfmt tests (actual files in this repo)
flutter test test/numfmt/numfmt_test.dart
flutter test test/numfmt/numfmt_af_test.dart
flutter test test/numfmt/numfmt_am_test.dart
flutter test test/numfmt/numfmt2_test.dart
flutter test test/basic/flutter_ilib_math_utils_test.dart
flutter test test/currency/currency_test.dart
flutter test test/currency/currency_extra_test.dart

# Run all numfmt tests
for f in test/numfmt/*_test.dart; do flutter test "$f"; done

# Full project regression
./execute_unit_test.sh
```

Suggested test coverage:
- Number formatting: positive, negative, zero, large/small, scientific
- Currency: code-based lookup, sign-based lookup, ambiguous sign fallback
- Rounding: each rounding mode, edge ties (2.5, -2.5), significant digits
- Grouping: western vs indian grouping
- Native digits substitution

---

## Dependency Graph

```
ILibCurrency (data) ──┐
                      ├→ ILibNumFmt core → formatting helpers → tests
MathUtils (helpers)───┘
```

`ILibCurrency` and `MathUtils` can be developed in parallel, while `ILibNumFmt`
depends on both.

---

## Important notes

1. Default rounding mode remains `halfdown` for parity with existing tests unless
   currency metadata specifies otherwise.
2. When needing JS-identical rounding for legacy tests, use `roundHalfPositiveInfinity`.
3. Preserve fraction `'0'` handling: if fraction is `'0'` and no minFractionDigits
   required, drop the fraction to match JS output behavior.
4. Do not re-parse strings -> double -> string unnecessarily in scientific paths; only
   re-parse when constraints (digits/rounding) require it to avoid precision loss.
5. For ambiguous currency sign matches, prefer the current locale's currency when
   that currency uses the same sign; this keeps behavior stable across locales.
6. Use `ILibLoader.instance.getLocaleData()` consistently for data reads; avoid
   ad-hoc file reads that bypass loader behavior.

---

## References

- JS source: `iLib/js/lib/NumFmt.js`, `iLib/js/lib/Currency.js`, `iLib/js/lib/MathUtils.js`
- Dart source: `lib/ilib_numfmt.dart`, `lib/ilib_currency.dart`, `lib/internal/math_utils.dart`
- Locale data: `assets/locale/*` (see `pubspec.yaml` / `ILibLoader` usage)

