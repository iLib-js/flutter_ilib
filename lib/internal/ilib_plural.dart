/// CLDR plural-rule evaluation (`ilib.data.plurals`).
///
/// Selects the plural category (`one`, `two`, `few`, `many`, `other`, ...) for
/// a given number. The rule tree is the parsed CLDR form used by iLib: each
/// category maps to a boolean expression over the CLDR plural operands, built
/// from nested `and`/`or`/`eq`/`neq`/`inrange`/`mod` nodes.
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
/// f=visible fraction digits as integer.
Map<String, num> _operands(num n) {
  final double abs = n.abs().toDouble();
  final int i = abs.truncate();
  final String str = abs.toString();
  final int dotIdx = str.indexOf('.');
  final String fracStr = dotIdx >= 0 ? str.substring(dotIdx + 1) : '';
  final int v = fracStr == '0' ? 0 : fracStr.length;
  final int f = v > 0 ? int.parse(fracStr) : 0;
  return <String, num>{'n': abs, 'i': i, 'v': v, 'f': f, 'w': v, 't': f};
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
          // range [start, end] or set
          if (rhs.length == 2 && rhs[0] is num && rhs[1] is num) {
            final double start = (rhs[0] as num).toDouble();
            final double end = (rhs[1] as num).toDouble();
            eq = lhs >= start && lhs <= end;
          } else {
            eq = rhs.any((dynamic v) => (v as num).toDouble() == lhs);
          }
        } else {
          eq = lhs == (rhs as num).toDouble();
        }
        return op == 'eq' ? eq : !eq;
      case 'inrange':
        final List<dynamic> ranges = args as List<dynamic>;
        final num val = (_evalOperand(ranges[0], ops) as num).toDouble();
        for (int i = 1; i < ranges.length; i += 2) {
          final double s = (ranges[i] as num).toDouble();
          final double e = (ranges[i + 1] as num).toDouble();
          if (val >= s && val <= e) {
            return true;
          }
        }
        return false;
      default:
        return false;
    }
  }
  return false;
}
