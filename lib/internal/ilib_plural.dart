/// CLDR plural-rule evaluation (`ilib.data.plurals`).
///
/// Selects the plural category (`one`, `two`, `few`, `many`, `other`, ...) for
/// a given number. The rule tree is the parsed CLDR form used by iLib: each
/// category maps to a boolean expression over the CLDR plural operands, built
/// from nested `and`/`or`/`eq`/`neq`/`is`/`isnot`/`inrange`/`within`/`notin`/
/// `mod` nodes. The bundled iLib v14.22.0 data only uses
/// `and`/`or`/`eq`/`neq`/`mod`, but the full operator set from the IString.js
/// engine is supported so future locale data (or the legacy CLDR `n is 1` /
/// `n within 2..4` forms) evaluates correctly.
library;

/// Returns the CLDR plural class for [n] using [rules].
///
/// Falls back to the English rule (`one` for 1, else `other`) when [rules] is
/// empty.
String getPluralCategory(Map<String, dynamic> rules, num n) {
  if (rules.isEmpty) {
    return n == 1 ? 'one' : 'other';
  }
  final Map<String, num> ops = _operands(n);
  for (final MapEntry<String, dynamic> entry in rules.entries) {
    final String cls = entry.key;
    if (cls == 'other') {
      continue;
    }
    final dynamic rule = entry.value;
    if (rule is String && rule.isEmpty) {
      continue;
    }
    if (_evalRule(rule, ops)) {
      return cls;
    }
  }
  return 'other';
}

/// Compute CLDR plural operand values for [n].
/// n=absolute value, i=integer part, v=visible fraction digits,
/// f=visible fraction digits as integer, c/e=base-10 exponent.
Map<String, num> _operands(num n) {
  final double abs = n.abs().toDouble();
  final int i = abs.truncate();
  final String str = abs.toString();
  final int dotIdx = str.indexOf('.');
  final String fracStr = dotIdx >= 0 ? str.substring(dotIdx + 1) : '';
  final int v = fracStr == '0' ? 0 : fracStr.length;
  final int f = v > 0 ? int.parse(fracStr) : 0;
  // c/e are the base-10 exponent read from the exponential form (0 when
  // there is none).
  final String exp = abs.toStringAsExponential();
  final int eIdx = exp.indexOf('e');
  final int c = eIdx >= 0 ? int.parse(exp.substring(eIdx + 1)).abs() : 0;
  return <String, num>{
    'n': abs,
    'i': i,
    'v': v,
    'f': f,
    'w': v,
    't': f,
    'c': c,
    'e': c,
  };
}

dynamic _evalOperand(dynamic expr, Map<String, num> ops) {
  if (expr is String) {
    return ops[expr] ?? 0;
  }
  if (expr is num) {
    return expr;
  }
  if (expr is Map<String, dynamic>) {
    final String op = expr.keys.first;
    final dynamic args = expr[op];
    if (op == 'mod') {
      final List<dynamic> a = args as List<dynamic>;
      final num left = (_evalOperand(a[0], ops) as num).toDouble();
      final num right = (_evalOperand(a[1], ops) as num).toDouble();
      return left % right;
    }
  }
  return 0;
}

/// [range] is a list whose elements are either a `[start, end]` pair or a
/// bare number. Returns true if [n] equals one of the bare numbers or falls
/// within any pair.
bool _matchRange(num n, List<dynamic> range) {
  for (final dynamic entry in range) {
    if (entry is List<dynamic>) {
      final double s = (entry[0] as num).toDouble();
      final double e = (entry[1] as num).toDouble();
      if (n >= s && n <= e) {
        return true;
      }
    } else if (entry is num) {
      if (n == entry.toDouble()) {
        return true;
      }
    }
  }
  return false;
}

bool _evalRule(dynamic rule, Map<String, num> ops) {
  if (rule == null) {
    return false;
  }
  if (rule is String) {
    return true;
  }
  if (rule is Map<String, dynamic>) {
    final String op = rule.keys.first;
    final dynamic args = rule[op];
    switch (op) {
      case 'and':
        final List<dynamic> conditions = args as List<dynamic>;
        for (final dynamic c in conditions) {
          if (!_evalRule(c, ops)) {
            return false;
          }
        }
        return true;
      case 'or':
        final List<dynamic> conditions = args as List<dynamic>;
        for (final dynamic c in conditions) {
          if (_evalRule(c, ops)) {
            return true;
          }
        }
        return false;
      case 'eq':
      case 'neq':
        final List<dynamic> a = args as List<dynamic>;
        final num lhs = (_evalOperand(a[0], ops) as num).toDouble();
        final dynamic rhs = a[1];
        bool eq;
        if (rhs is List<dynamic>) {
          if (rhs.length == 2 && rhs[0] is num && rhs[1] is num) {
            // flat [start, end] range — the only list shape the bundled data
            // emits for `eq`/`neq` (e.g. `{"eq": ["i", [2, 4]]}`).
            final double start = (rhs[0] as num).toDouble();
            final double end = (rhs[1] as num).toDouble();
            eq = lhs >= start && lhs <= end;
          } else {
            // Set of scalars and/or nested `[[start, end], ...]` ranges. Not
            // used by any bundled locale, but JS routes a list rhs through
            // matchRange, so delegate here too (guards against a cast crash on
            // future nested-range data).
            eq = _matchRange(lhs, rhs);
          }
        } else {
          eq = lhs == (rhs as num).toDouble();
        }
        return op == 'eq' ? eq : !eq;
      case 'is':
      case 'isnot':
        // args = [left, right]. Scalar equality of two operand values (the
        // legacy CLDR `n is 1` form; unlike `eq`, the right side is never a
        // range). Ported from IString.js `_fncs.is` / `_fncs.isnot`.
        final List<dynamic> a = args as List<dynamic>;
        final num lhs = (_evalOperand(a[0], ops) as num).toDouble();
        final num rhs = (_evalOperand(a[1], ops) as num).toDouble();
        final bool eq = lhs == rhs;
        return op == 'is' ? eq : !eq;
      case 'inrange':
      case 'notin':
      case 'within':
        // args = [operand, rangeList]. rangeList is a list whose elements are
        // either a [start, end] pair or a bare number; matches if the operand
        // value falls in any of them. In iLib v14.22.0 `matchRange` and
        // `matchRangeContinuous` are identical, so `inrange`/`within` share
        // one matcher (`notin` is its negation).
        final List<dynamic> args2 = args as List<dynamic>;
        final num val = (_evalOperand(args2[0], ops) as num).toDouble();
        final bool inRange = _matchRange(val, args2[1] as List<dynamic>);
        return op == 'notin' ? !inRange : inRange;
      default:
        return false;
    }
  }
  return false;
}
