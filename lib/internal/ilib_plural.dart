/// CLDR plural rule evaluator and formatChoice utility.
///
/// Ported from JS IString.js (IString._fncs.* and IString.prototype.formatChoice).
///
/// DateFmt uses a simplified `_parseChoice()` (exact numeric match only, sufficient
/// for ordinal templates like "1#1st|2#2nd|#{num}th"). DurationFmt requires full
/// CLDR plural category evaluation (zero/one/two/few/many/other) because locale
/// templates use category-based limits (e.g. "one#{num} day|#{num} days" in English,
/// "zero#...|one#...|two#...|few#...|many#...|#{num}..." in Arabic).
///
/// This file provides the full evaluator needed by DurationFmt (and later NumFmt).

/// Calculate CLDR operand values for a given number.
///
/// Returns a map with keys: n, i, v, w, f, t, c, e
/// For integers (common in duration formatting): v=0, w=0, f=0, t=0.
Map<String, num> calculateOperands(num value) {
  final String str = value.toString();
  final int dotIndex = str.indexOf('.');

  if (dotIndex == -1) {
    // Integer
    final int absVal = value.toInt().abs();
    return <String, num>{
      'n': absVal,
      'i': absVal,
      'v': 0,
      'w': 0,
      'f': 0,
      't': 0,
      'c': 0,
      'e': 0,
    };
  }

  // Decimal
  final String intPart = str.substring(0, dotIndex);
  final String decPart = str.substring(dotIndex + 1);
  final int i = int.parse(intPart).abs();
  final int v = decPart.length;
  final int f = int.parse(decPart);
  final String trimmed = decPart.replaceAll(RegExp(r'0+$'), '');
  final int w = trimmed.length;
  final int t = trimmed.isEmpty ? 0 : int.parse(trimmed);

  return <String, num>{
    'n': value.abs(),
    'i': i,
    'v': v,
    'w': w,
    'f': f,
    't': t,
    'c': 0,
    'e': 0,
  };
}

/// Recursively evaluate a CLDR plural rule tree against operand values.
///
/// The rule tree is a JSON structure with operators: and, or, eq, neq, mod, inrange.
dynamic _evaluateRule(dynamic rule, Map<String, num> operands) {
  if (rule is num) {
    return rule;
  }
  if (rule is String) {
    // Operand name reference (n, i, v, w, f, t)
    return operands[rule] ?? 0;
  }
  if (rule is List) {
    // Array — used as range in eq/neq checks
    return rule;
  }
  if (rule is Map<String, dynamic>) {
    final String key = _firstKey(rule);
    final dynamic value = rule[key];

    switch (key) {
      case 'and':
        return _evalAnd(value as List<dynamic>, operands);
      case 'or':
        return _evalOr(value as List<dynamic>, operands);
      case 'eq':
        return _evalEq(value as List<dynamic>, operands);
      case 'neq':
        return _evalNeq(value as List<dynamic>, operands);
      case 'mod':
        return _evalMod(value as List<dynamic>, operands);
      case 'inrange':
        return _evalInrange(value, operands);
      default:
        return false;
    }
  }
  return false;
}

String _firstKey(Map<String, dynamic> map) {
  return map.keys.first;
}

bool _evalAnd(List<dynamic> rules, Map<String, num> operands) {
  for (final dynamic rule in rules) {
    final dynamic result = _evaluateRule(rule, operands);
    if (result == false || result == 0) {
      return false;
    }
  }
  return true;
}

bool _evalOr(List<dynamic> rules, Map<String, num> operands) {
  for (final dynamic rule in rules) {
    final dynamic result = _evaluateRule(rule, operands);
    if (result == true || (result is num && result != 0)) {
      return true;
    }
  }
  return false;
}

bool _evalEq(List<dynamic> rule, Map<String, num> operands) {
  final dynamic left = _evaluateRule(rule[0], operands);
  final dynamic right = rule[1];

  if (right is List) {
    // Range check: left matches if it equals any value or falls within [start, end]
    return _matchRange(left is num ? left : 0, right);
  }

  final dynamic rightVal = _evaluateRule(right, operands);
  if (rightVal is bool) {
    return rightVal;
  }
  if (left is num && rightVal is num) {
    return left == rightVal;
  }
  return left == rightVal;
}

bool _evalNeq(List<dynamic> rule, Map<String, num> operands) {
  final dynamic left = _evaluateRule(rule[0], operands);
  final dynamic right = rule[1];

  if (right is List) {
    return !_matchRange(left is num ? left : 0, right);
  }

  final dynamic rightVal = _evaluateRule(right, operands);
  if (rightVal is bool) {
    return !rightVal;
  }
  if (left is num && rightVal is num) {
    return left != rightVal;
  }
  return left != rightVal;
}

num _evalMod(List<dynamic> rule, Map<String, num> operands) {
  final dynamic leftVal = _evaluateRule(rule[0], operands);
  final dynamic rightVal = _evaluateRule(rule[1], operands);
  final num l = leftVal is num ? leftVal : 0;
  final num r = rightVal is num ? rightVal : 1;
  if (r == 0) {
    return 0;
  }
  return l.toInt() % r.toInt();
}

dynamic _evalInrange(dynamic rule, Map<String, num> operands) {
  if (rule is List) {
    if (rule.isEmpty) {
      return false;
    }
    if (rule[0] is num) {
      // Direct range: [start, end]
      return _matchRange(operands['n'] ?? 0, rule);
    }
    // [operand, range]
    final dynamic left = _evaluateRule(rule[0], operands);
    final num leftNum = left is num ? left : 0;
    return _matchRange(leftNum, rule[1] as List<dynamic>);
  }
  return false;
}

/// Match a number against a range specification.
///
/// Range can be:
/// - [start, end] — continuous range
/// - [value1, value2, ...] — discrete values
/// - [[start1, end1], [start2, end2], ...] — multiple ranges
bool _matchRange(num n, List<dynamic> range) {
  for (final dynamic item in range) {
    if (item is num) {
      if (n == item) {
        return true;
      }
      // Two-element continuous range [start, end]
      if (range.length == 2 && range[0] is num && range[1] is num) {
        final num start = range[0] as num;
        final num end = range[1] as num;
        if (n >= start && n <= end) {
          return true;
        }
        return false;
      }
    } else if (item is List) {
      // Sub-range [start, end]
      if (item.length == 2 && item[0] is num && item[1] is num) {
        if (n >= (item[0] as num) && n <= (item[1] as num)) {
          return true;
        }
      }
    }
  }
  return false;
}

/// Get the CLDR plural category for a numeric value.
///
/// Returns one of: "zero", "one", "two", "few", "many", "other".
/// [rules] is the locale-specific plural rules from ilib.data.plurals.
String getPluralCategory(num value, Map<String, dynamic>? rules) {
  if (rules == null || rules.isEmpty) {
    return 'other';
  }

  final Map<String, num> operands = calculateOperands(value);

  // Check each category in order
  for (final String category in <String>[
    'zero',
    'one',
    'two',
    'few',
    'many',
  ]) {
    final dynamic rule = rules[category];
    if (rule != null) {
      final dynamic result = _evaluateRule(rule, operands);
      if (result == true) {
        return category;
      }
    }
  }

  return 'other';
}

/// Apply formatChoice template selection and substitution.
///
/// Template syntax: "limit#string|limit#string|..."
/// Limit types:
/// - numeric: "1", "0", "2" — exact match
/// - range: "2-5" — inclusive range
/// - comparison: "<=2", ">=5", "<10", ">0"
/// - CLDR category: "zero", "one", "two", "few", "many"
/// - default: "" or "other" — matches anything
///
/// [template] is the formatChoice template string.
/// [value] is the numeric value to match against.
/// [displayValue] is the string to substitute for {num}.
/// [pluralRules] is the locale plural rules (may be null).
String formatChoice(
  String template,
  num value,
  String displayValue,
  Map<String, dynamic>? pluralRules,
) {
  final List<String> choices = template.split('|');
  String? defaultChoice;

  for (final String choice in choices) {
    final int hashIdx = choice.indexOf('#');
    if (hashIdx == -1) {
      continue;
    }

    final String limit = choice.substring(0, hashIdx);
    final String str = choice.substring(hashIdx + 1);

    if (limit.isEmpty || limit == 'other') {
      defaultChoice ??= str;
      continue;
    }

    if (_testChoice(value, limit, pluralRules)) {
      return str.replaceAll('{num}', displayValue);
    }
  }

  // If no match found, use default or last choice
  if (defaultChoice != null) {
    return defaultChoice.replaceAll('{num}', displayValue);
  }

  // Fallback: if template has no valid choices, return template with substitution
  return template.replaceAll('{num}', displayValue);
}

/// Test if a value matches a choice limit.
bool _testChoice(num value, String limit, Map<String, dynamic>? pluralRules) {
  final Map<String, num> operands = calculateOperands(value);
  final num n = operands['n']!;

  // Comparison operators
  if (limit.length >= 2) {
    if (limit.startsWith('<=')) {
      final num threshold = num.parse(limit.substring(2));
      return n <= threshold;
    }
    if (limit.startsWith('>=')) {
      final num threshold = num.parse(limit.substring(2));
      return n >= threshold;
    }
  }
  if (limit.startsWith('<')) {
    final num threshold = num.parse(limit.substring(1));
    return n < threshold;
  }
  if (limit.startsWith('>')) {
    final num threshold = num.parse(limit.substring(1));
    return n > threshold;
  }

  // CLDR plural categories
  switch (limit) {
    case 'zero':
    case 'one':
    case 'two':
    case 'few':
    case 'many':
      final String category = getPluralCategory(value, pluralRules);
      return category == limit;
  }

  // Range (dash-separated)
  final int dashIdx = limit.indexOf('-');
  if (dashIdx != -1) {
    final num start = num.parse(limit.substring(0, dashIdx));
    final num end = num.parse(limit.substring(dashIdx + 1));
    return n >= start && n <= end;
  }

  // Exact numeric match
  final num? parsed = num.tryParse(limit);
  if (parsed != null) {
    return n == parsed;
  }

  return false;
}
