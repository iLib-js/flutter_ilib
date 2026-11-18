// CLDR plural-rule evaluation (`ilib.data.plurals`).
//
// Port of iLib `js/lib/PluralUtils.js` (development, post-v15.0.0: the module
// extracted from IString.js plus its plural-rule evaluation fixes). The rule
// tree is the parsed CLDR form used by iLib: each category maps to a boolean
// expression over the CLDR plural operands, built from nested
// `and`/`or`/`eq`/`neq`/`is`/`isnot`/`inrange`/`within`/`notin`/`mod` nodes.
//
// [PluralFncs] mirrors `PluralUtils._fncs` one-to-one (JS `is` is a Dart
// keyword, so it is [PluralFncs.isOp]; JS `fn` is [fncs]), including the JS quirks of the
// fallback evaluator, so results match iLib's non-Intl plural path.

/// @nodoc
library;

import '../ilib_init.dart';
import 'locale_state.dart';

/// The built-in English rule (`one` when `i == 1 and v == 0`), used when a
/// locale has no plural data.
const Map<String, dynamic> pluralsDefault = <String, dynamic>{
  'one': <String, dynamic>{
    'and': <dynamic>[
      <String, dynamic>{
        'eq': <dynamic>['i', 1],
      },
      <String, dynamic>{
        'eq': <dynamic>['v', 0],
      },
    ],
  },
};

/// The plural rules (`ilib.data.plurals`) of [locale] (default: the current
/// library locale), or [pluralsDefault] when the locale is not loaded or has
/// no plural data.
Map<String, dynamic> loadPlurals([String? locale]) {
  final Map<String, dynamic>? data =
      ILibLoader.instance.getLocaleData(locale ?? currentLocale);
  return (data?['ilib.data.plurals'] as Map<String, dynamic>?) ??
      pluralsDefault;
}

/// Returns the CLDR plural class for [n] using [rules].
///
/// Falls back to [pluralsDefault] when [rules] is empty.
String getPluralCategory(Map<String, dynamic> rules, num n) {
  final Map<String, dynamic> ruleset = rules.isEmpty ? pluralsDefault : rules;
  final Map<String, num> ops = fncs.calculateNumberDigits(n);
  for (final MapEntry<String, dynamic> entry in ruleset.entries) {
    if (entry.key == 'other') {
      continue;
    }
    if (_truthy(fncs.getValue(entry.value, ops))) {
      return entry.key;
    }
  }
  return 'other';
}

/// The shared [PluralFncs] instance (JS `PluralUtils._fncs`).
const PluralFncs fncs = PluralFncs._();

/// JS truthiness of a rule-evaluation result.
bool _truthy(dynamic v) {
  if (v == null || v == false) {
    return false;
  }
  if (v is num) {
    return v != 0 && !v.isNaN;
  }
  if (v is String) {
    return v.isNotEmpty;
  }
  return true;
}

/// JS `typeof(x) === 'object'` for decoded JSON (excluding null).
bool _isObject(dynamic v) => v is Map || v is List;

/// JS `obj[index]` on a list: undefined (null) when out of range.
dynamic _at(dynamic obj, int index) {
  if (obj is List && index < obj.length) {
    return obj[index];
  }
  return null;
}

/// JS `parseInt(str, 10)`: the leading integer of [str], or null.
num? _parseIntPrefix(String str) {
  final Match? m = RegExp(r'^[+-]?\d+').firstMatch(str.trim());
  return m == null ? null : num.parse(m.group(0)!);
}

/// The rule primitives of iLib `PluralUtils._fncs`; use the [fncs] instance.
class PluralFncs {
  const PluralFncs._();

  /// The name of the rule at the top of [obj]: `inrange` for a list, the first
  /// key with a truthy value for a map, otherwise null.
  String? firstPropRule(dynamic obj) {
    if (obj is List) {
      return 'inrange';
    } else if (obj is Map) {
      for (final MapEntry<dynamic, dynamic> e in obj.entries) {
        final dynamic p = e.key;
        if (p is String && p.isNotEmpty && _truthy(e.value)) {
          return p;
        }
      }
    }
    return null;
  }

  /// Evaluate [obj] (a rule, an operand name or a literal) against [n] (an
  /// operand map from [calculateNumberDigits], or a plain number).
  dynamic getValue(dynamic obj, dynamic n) {
    if (_isObject(obj)) {
      final String? subrule = firstPropRule(obj);
      return subrule == 'inrange'
          ? inrange(obj, n)
          : _dispatch(subrule, (obj as Map<dynamic, dynamic>)[subrule], n);
    } else if (obj is String) {
      return n is Map ? n[obj] : n;
    }
    return obj;
  }

  dynamic _dispatch(String? name, dynamic rule, dynamic n) {
    switch (name) {
      case 'is':
        return isOp(rule, n);
      case 'isnot':
        return isnot(rule, n);
      case 'inrange':
        return inrange(rule, n);
      case 'notin':
        return notin(rule, n);
      case 'within':
        return within(rule, n);
      case 'mod':
        return mod(rule, n);
      case 'n':
        return this.n(rule, n);
      case 'or':
        return or(rule, n);
      case 'and':
        return and(rule, n);
      case 'eq':
        return eq(rule, n);
      case 'neq':
        return neq(rule, n);
      default:
        return null;
    }
  }

  /// Test whether [n] falls within a CLDR range list. Nested `[lo, hi]`
  /// entries are continuous ranges; top-level numbers are single values,
  /// except that a list of exactly two numbers is the range `lo..hi` (so
  /// `[2,4]` is 2..4 while `[11,71,91]` is the set {11,71,91}).
  bool matchRangeContinuous(dynamic n, dynamic range) {
    if (range is! List) {
      return false;
    }
    int topNums = 0;
    bool hasNested = false;
    for (final dynamic r in range) {
      if (r is num) {
        topNums++;
      } else if (r is List) {
        hasNested = true;
      }
    }
    final bool pairIsRange = topNums == 2 && !hasNested;
    if (n is! num) {
      return false;
    }
    for (final dynamic obj in range) {
      if (obj is num) {
        if (n == obj) {
          return true;
        }
        if (pairIsRange && n >= (range[0] as num) && n <= (range[1] as num)) {
          return true;
        }
      } else if (obj is List) {
        if (n >= (obj[0] as num) && n <= (obj[1] as num)) {
          return true;
        }
      }
    }
    return false;
  }

  /// Compute the CLDR plural operands (n, i, v, w, f, t, c, e) for [number].
  ///
  /// Mirrors the JS number-to-string behavior: an integral value has no
  /// fraction operands, w/t equal v/f (no trailing zeros survive), and c/e
  /// are the signed base-10 exponent.
  Map<String, num> calculateNumberDigits(num number) {
    final num abs = number.abs();

    final String expStr = abs.toStringAsExponential();
    final int expIdx = expStr.indexOf('e');
    final int exp = expIdx != -1 ? int.parse(expStr.substring(expIdx + 1)) : 0;

    final bool integral =
        abs is int || (abs.isFinite && abs == abs.truncateToDouble());
    final String str = abs.toString();
    final int dotIdx = str.indexOf('.');

    if (integral || dotIdx == -1) {
      return <String, num>{
        'c': exp,
        'e': exp,
        'n': abs,
        'i': abs,
        'v': 0,
        'w': 0,
        'f': 0,
        't': 0,
      };
    }

    final String decStr = str.substring(dotIdx + 1);
    final num frac = _parseIntPrefix(decStr) ?? double.nan;
    return <String, num>{
      'c': exp,
      'e': exp,
      'n': abs,
      'i': _parseIntPrefix(str.substring(0, dotIdx)) ?? double.nan,
      'v': decStr.length,
      'w': decStr.length,
      'f': frac,
      't': frac,
    };
  }

  /// JS `is`: both sides evaluate to the same value.
  bool isOp(dynamic rule, dynamic n) {
    return getValue(_at(rule, 0), n) == getValue(_at(rule, 1), n);
  }

  bool isnot(dynamic rule, dynamic n) {
    return getValue(_at(rule, 0), n) != getValue(_at(rule, 1), n);
  }

  bool inrange(dynamic rule, dynamic n) {
    final dynamic first = _at(rule, 0);
    if (first is num || first is List) {
      // the whole rule is a range list (e.g. [2,4] or [[3,4],9])
      return matchRangeContinuous(n is Map ? n['n'] : n, rule);
    } else if (rule is Map) {
      final String? subrule = firstPropRule(rule);
      return _dispatch(subrule, rule[subrule], n) == true;
    }
    // [operand, range] pair (e.g. [{mod:[n,100]}, [3,10]])
    return matchRangeContinuous(getValue(first, n), _at(rule, 1));
  }

  bool notin(dynamic rule, dynamic n) {
    return !matchRangeContinuous(getValue(_at(rule, 0), n), _at(rule, 1));
  }

  bool within(dynamic rule, dynamic n) {
    return matchRangeContinuous(getValue(_at(rule, 0), n), _at(rule, 1));
  }

  /// iLib `MathUtils.mod`: 0 for a zero modulus, otherwise the remainder
  /// shifted to be non-negative.
  num? mod(dynamic rule, dynamic n) {
    final dynamic dividend = getValue(_at(rule, 0), n);
    final dynamic modulus = getValue(_at(rule, 1), n);
    if (dividend is! num || modulus is! num) {
      return double.nan;
    }
    if (modulus == 0) {
      return 0;
    }
    final num x = dividend.remainder(modulus);
    return x < 0 ? x + modulus : x;
  }

  dynamic n(dynamic rule, dynamic n) {
    return n;
  }

  bool or(dynamic rule, dynamic n) {
    if (rule is List) {
      for (final dynamic r in rule) {
        if (_truthy(getValue(r, n))) {
          return true;
        }
      }
    }
    return false;
  }

  bool and(dynamic rule, dynamic n) {
    if (rule is List) {
      for (final dynamic r in rule) {
        if (!_truthy(getValue(r, n))) {
          return false;
        }
      }
    }
    return true;
  }

  bool eq(dynamic rule, dynamic n) {
    final dynamic left = _at(rule, 0);
    final dynamic right = _at(rule, 1);
    final dynamic valueLeft = getValue(left, n);
    dynamic valueRight;

    if (left is String) {
      if (n is Map) {
        valueRight = n[left];
        if (right is num ||
            (_isObject(right) && firstPropRule(right) == 'inrange')) {
          valueRight = getValue(right, n);
        }
      }
    } else {
      valueRight = firstPropRule(right) == 'inrange'
          ? getValue(right, valueLeft)
          : getValue(right, n);
    }
    return valueRight is bool ? valueRight : valueLeft == valueRight;
  }

  bool neq(dynamic rule, dynamic n) {
    final dynamic left = _at(rule, 0);
    final dynamic right = _at(rule, 1);
    final dynamic valueLeft = getValue(left, n);
    dynamic valueRight;

    if (left is String) {
      if (n is Map) {
        valueRight = n[left];
        if (right is num) {
          valueRight = getValue(right, n);
        } else if (_isObject(right)) {
          final dynamic leftRange = _at(right, 0);
          final dynamic rightRange = _at(right, 1);
          if (leftRange is num && rightRange is num) {
            return !(valueLeft is num &&
                valueLeft >= leftRange &&
                valueLeft <= rightRange);
          }
        }
      }
    } else {
      valueRight = firstPropRule(right) == 'inrange'
          ? getValue(right, valueLeft)
          : getValue(right, n);
    }
    return valueRight is bool ? !valueRight : valueLeft != valueRight;
  }
}
