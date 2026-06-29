# NumFmt & MathUtils Conversion Notes

Gotchas, edge cases, and design decisions discovered during JS→Dart conversion.

## MathUtils (math_utils.dart)

### JS `Math.round` vs Dart Rounding Behavior

| Scenario | JS `Math.round` | Dart `.round()` | Notes |
|----------|----------------|-----------------|-------|
| Positive tie (2.5) | 3 (toward +∞) | 3 (half-away-from-zero) | Same result |
| Negative tie (-2.5) | **-2** (toward +∞) | **-3** (half-away-from-zero) | **Different!** |

- JS `Math.round` is "half toward positive infinity" — ties always go toward +∞.
- Dart `.round()` is "half away from zero" — ties go away from 0 (in both directions).
- **Impact**: `roundHalfup` (ties away from zero) produces different results from JS `Math.round` for negative ties.

### Solution: `roundHalfPositiveInfinity`

A dedicated function mirrors the exact behavior of JS `Math.round`:

```dart
double roundHalfPositiveInfinity(double num) => (num + 0.5).floorToDouble();
```

When JS code uses `Math.round` as the default rounding function (e.g., in `significant()`
without a third argument), pass `roundHalfPositiveInfinity` in Dart to get identical results.

### `mod` / `amod` — int-only vs JS float-accepting

JS `MathUtils.mod` accepts floats (`mod(2.234231, 4)` → `2.234231`).
The Dart version is `int`-only — the project never uses float modulo.

Note: `calendar_utils.dart` also has its own `mod` function (identical logic).
NumFmt uses the one from `math_utils.dart`.

### `signum` — Type Safety

JS handles `typeof(num) === 'string'` (tries `parseInt`), and returns `1` for
`undefined`, `null`, non-numeric strings, booleans, and functions.
Dart version only accepts `num` type — the type system guarantees validity.

### `shiftDecimal` — Floating-Point Precision

JS:
```javascript
var numArray = ("" + number).split("e");
return +(numArray[0] + "e" + (numArray[1] ? (+numArray[1] + precision) : precision));
```

Dart:
```dart
final List<String> parts = number.toString().split('e');
final String base = parts[0];
final int existingExp = parts.length > 1 ? int.parse(parts[1]) : 0;
return double.parse('${base}e${existingExp + precision}');
```

Both use string-based "e" notation to avoid floating-point drift. Same strategy.

---

## NumFmt (ilib_numfmt.dart)

### Architecture Differences

| Aspect | JS (NumFmt.js) | Dart (ilib_numfmt.dart) |
|--------|---------------|------------------------|
| Data loading | `Utils.loadData()` + callback/sync | `ILibLoader.instance.getLocaleData()` |
| Locale info | `new LocaleInfo(locale)` | `ILibLocaleInfo(locale)` |
| Currency info | `new Currency({...})` | Direct access via `localeData['ilib.data.currency']` |
| String substitution | `new IString(template).format(...)` | `String.replaceAll('{n}', ...)` |

### No Separate Currency Class

JS uses a separate `Currency` class (`Currency.js`) that loads currency data,
provides methods like `getSign()`, `getFractionDigits()`, and `getRoundingMode()`,
and supports searching currencies by sign (with circulation-based fallback).

In Dart, **no separate `ILibCurrency` class exists**. Instead, `ILibNumFmt` accesses
the JSON data directly:

```dart
final Map<String, dynamic>? localeData = ILibLoader.instance.getLocaleData(_locale);
final Map<String, dynamic>? allCurrencies =
    localeData?['ilib.data.currency'] as Map<String, dynamic>?;
final Map<String, dynamic>? currInfo = allCurrencies?[_currencyCode];
```

The needed fields (`sign`, `decimals`, `roundingMode`) are extracted directly from
the JSON map without wrapping them in a separate currency class.

If future requirements need feature parity with JS `Currency` class (search by sign,
list all currencies, etc.), then `ILibCurrency` should be implemented separately.

### Default Rounding Mode

- JS: `"halfdown"` (NumFmt.js:360) — `MathUtils["halfdown"]`
- Dart: Same — `"halfdown"` as default
- Currency type: the currency data's `roundingMode` field takes precedence

### `constrain()` — Public API vs Internal

JS `constrain(num)` is a public method that accepts an integer and returns the
constrained result. Dart exposes `constrain(int)` publicly, while `_constrain(double)`
is the internal workhorse called by `format()` to apply rounding/significant digits.

### `_formatStandard` — `double.toString()` Artifact

Dart `double.toString()` always appends `.0` for integer values:
```dart
(123.0).toString() == '123.0'  // fraction = '0'
```

In JS, `"" + 123` yields `"123"` — no fraction part.

**Fix**: Treat fraction `'0'` as null when minFractionDigits is not set:

```dart
if (fraction == '0' &&
    (_minFractionDigits == null || _minFractionDigits! <= 0) &&
    (_maxFractionDigits == null || _maxFractionDigits! < 0)) {
  fraction = null;
}
```

### `_formatScientific` — Precision Loss Prevention

The path `double.toStringAsExponential()` → `split('e')` → `double.parse(significand)` →
`significant(...)` → `toString()` can lose the last significant digit due to
IEEE 754 precision limits in unnecessary string↔double conversions.

**Fix**: Only re-parse when constraints actually need rounding:

```dart
final bool needsConstraints =
    (_maxFractionDigits != null && _maxFractionDigits! > 0) ||
    (_significantDigits != null && _significantDigits! > 0);
```

### Negative Number Formatting

Negative formatting uses a separate template:
- `number` type: `negativeNumberFormat` from locale data (e.g., `"-{n}"`, `"({n})"`)
- `currency` type: `currencyFormats.commonNegative` / `isoNegative`
- `percentage` type: `negativePercentageFormat`

`{n}` is always replaced with the absolute value of the formatted number.

### Grouping — Primary + Secondary

Indian-style numbers (12,34,56,789):
- Primary group (rightmost): 3 digits
- Secondary group (remaining): 2 digits each

JS uses a `while` loop to apply secondary grouping repeatedly.
Dart mirrors this in `_applySecondaryGrouping`.

### Native Digits

Determined by `useNative` option or locale's `digitsStyle`:
- `digitsStyle == 'native'`: always use native digits
- `digitsStyle == 'optional'` && `style == 'native'`: use native digits
- Otherwise: Western digits (0-9)

Native digit substitution maps codeUnits 48-57 (0-9) to characters from
`localeInfo.getNativeDigits()` string by index.

### Currency Sign Resolution

1. `options.currency` → look up via `ilib.data.currency[code]`
2. If `currInfo['sign']` exists, use it (e.g., `"$"`, `"€"`)
3. Otherwise, use the ISO code itself as the sign
4. `style == 'iso'` always forces the ISO code as sign

### Exponential Symbol

- Western default: `"e"`
- Some locales: `"×10^"` etc.
- When `useNative`: uses `localeInfo.getNativeExponential()`

---

## Test Conversion Notes

### JS `test.roughlyEqual` → Dart `closeTo`

JS approximate float comparison:
```javascript
test.roughlyEqual(actual, 2.234231, 0.0000001);
```

Dart equivalent:
```dart
expect(actual, closeTo(2.234231, 0.0000001));
```

Float mod/amod tests from JS are excluded (Dart version is int-only).

### JS `undefined` vs Dart `null`

- JS `typeof(this.maxFractionDigits) === 'undefined'` → Dart `_maxFractionDigits == null`
- JS `typeof(options.significantDigits) !== 'undefined'` → Dart `options.significantDigits != null`
- "Not set" state: JS uses `undefined`, Dart uses `null` uniformly

### NumFmt Test Structure

JS tests are split by locale:
```
js/test/testNumFmt.js          (basic English)
js/test/testNumFmtAsync.js
js/test/numprs/testnumfmt_*.js (per-locale)
```

Dart tests follow the same structure under `test/numfmt/`.

---

## References

- JS source: `iLib/js/lib/NumFmt.js`, `iLib/js/lib/MathUtils.js`
- JS tests: `iLib/js/test/util/testutils.js`, `iLib/js/test/testNumFmt*.js`
- Dart source: `lib/ilib_numfmt.dart`, `lib/internal/math_utils.dart`
- Dart tests: `test/basic/flutter_ilib_math_utils_test.dart`, `test/numfmt/`
