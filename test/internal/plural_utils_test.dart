// 1:1 port of iLib js/test/root/testpluralutils.js (development, post-v15.0.0).
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_ilib/internal/plural_utils.dart';
import 'package:flutter_test/flutter_test.dart';

dynamic _j(String json) => jsonDecode(json);

// the Russian ruleset exercises every rule primitive (mod, ranges, and/or, eq/neq)
final Map<String, dynamic> pluralsRu = _j('''
{
  "few": {"and": [{"eq": ["v", 0]}, {"eq": [{"mod": ["i", 10]}, [2, 4]]},
    {"neq": [{"mod": ["i", 100]}, [12, 14]]}]},
  "many": {"or": [
    {"and": [{"eq": ["v", 0]}, {"eq": [{"mod": ["i", 10]}, 0]}]},
    {"and": [{"eq": ["v", 0]}, {"eq": [{"mod": ["i", 10]}, [5, 9]]}]},
    {"and": [{"eq": ["v", 0]}, {"eq": [{"mod": ["i", 100]}, [11, 14]]}]}]},
  "one": {"and": [{"eq": ["v", 0]}, {"eq": [{"mod": ["i", 10]}, 1]},
    {"neq": [{"mod": ["i", 100]}, 11]}]}
}''') as Map<String, dynamic>;

// Breton exercises the trickier range forms: a 3-value set [11,71,91],
// a mixed list [[3,4],9], and nested ranges [[10,19],[70,79],[90,99]].
final Map<String, dynamic> pluralsBr = _j('''
{
  "few": {"and": [{"eq": [{"mod": ["n", 10]}, [[3, 4], 9]]},
    {"neq": [{"mod": ["n", 100]}, [[10, 19], [70, 79], [90, 99]]]}]},
  "many": {"and": [{"neq": ["n", 0]}, {"eq": [{"mod": ["n", 1000000]}, 0]}]},
  "one": {"and": [{"eq": [{"mod": ["n", 10]}, 1]},
    {"neq": [{"mod": ["n", 100]}, [11, 71, 91]]}]},
  "two": {"and": [{"eq": [{"mod": ["n", 10]}, 2]},
    {"neq": [{"mod": ["n", 100]}, [12, 72, 92]]}]}
}''') as Map<String, dynamic>;

/// Return the CLDR plural category of a number for the given ruleset.
String categorize(Map<String, dynamic> ruleset, num number) {
  final Map<String, num> ops = fncs.calculateNumberDigits(number);
  const List<String> categories = <String>['zero', 'one', 'two', 'few', 'many'];
  for (final String cat in categories) {
    final dynamic rule = ruleset[cat];
    if (rule != null && fncs.getValue(rule, ops) == true) {
      return cat;
    }
  }
  return 'other';
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [plural_utils_test.dart] file.');

  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('ru-RU');
  });

  group('module shape', () {
    test('testPluralUtilsExists', () {
      expect(fncs, isA<PluralFncs>());
    });
    test('testPluralUtilsHasDefaultRules', () {
      expect(pluralsDefault, isA<Map<String, dynamic>>());
      // the default (English) rule: one when i==1 and v==0
      expect(pluralsDefault['one'], isA<Map<String, dynamic>>());
    });
    test('testPluralUtilsHasFncs', () {
      expect(fncs, isNotNull);
    });
    test('testPluralUtilsHasLoadPlurals', () {
      expect(loadPlurals, isA<Function>());
    });
  });

  group('calculateNumberDigits', () {
    test('testCalculateNumberDigitsInteger', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(1);
      expect(ops['n'], 1);
      expect(ops['i'], 1);
      expect(ops['v'], 0);
      expect(ops['w'], 0);
      expect(ops['f'], 0);
      expect(ops['t'], 0);
      expect(ops['c'], 0);
      expect(ops['e'], 0);
    });
    test('testCalculateNumberDigitsZero', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(0);
      expect(ops['n'], 0);
      expect(ops['i'], 0);
      expect(ops['v'], 0);
      expect(ops['f'], 0);
    });
    test('testCalculateNumberDigitsLargeInteger', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(123);
      expect(ops['n'], 123);
      expect(ops['i'], 123);
      expect(ops['v'], 0);
    });
    test('testCalculateNumberDigitsSimpleDecimal', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(1.5);
      expect(ops['n'], 1.5);
      expect(ops['i'], 1);
      expect(ops['v'], 1);
      expect(ops['w'], 1);
      expect(ops['f'], 5);
      expect(ops['t'], 5);
    });
    test('testCalculateNumberDigitsMultipleDecimals', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(1.23);
      expect(ops['i'], 1);
      expect(ops['v'], 2);
      expect(ops['w'], 2);
      expect(ops['f'], 23);
      expect(ops['t'], 23);
    });
    test('testCalculateNumberDigitsTrailingZeros', () {
      // trailing zeros count in v/f but not w/t
      final Map<String, num> ops = fncs.calculateNumberDigits(1.230);
      // JS normalizes 1.230 to 1.23, so trailing zero is already gone
      expect(ops['i'], 1);
      expect(ops['v'], 2);
      expect(ops['w'], 2);
      expect(ops['f'], 23);
      expect(ops['t'], 23);
    });
    test('testCalculateNumberDigitsNegativeInteger', () {
      // CLDR operands are defined on the absolute value
      final Map<String, num> ops = fncs.calculateNumberDigits(-1);
      expect(ops['n'], 1);
      expect(ops['i'], 1);
      expect(ops['v'], 0);
      expect(ops['f'], 0);
    });
    test('testCalculateNumberDigitsNegativeDecimal', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(-1.5);
      expect(ops['n'], 1.5);
      expect(ops['i'], 1);
      expect(ops['v'], 1);
      expect(ops['f'], 5);
    });
    test('testCalculateNumberDigitsSmallExponentSingleDigit', () {
      // 1e-7 -> exponent is -7
      final Map<String, num> ops = fncs.calculateNumberDigits(1e-7);
      expect(ops['c'], -7);
      expect(ops['e'], -7);
    });
    test('testCalculateNumberDigitsSmallExponentMultiDigit', () {
      // regression: multi-digit exponent must be read in full, not just its first digit
      final Map<String, num> ops = fncs.calculateNumberDigits(1e-21);
      expect(ops['c'], -21);
      expect(ops['e'], -21);
    });
    test('testCalculateNumberDigitsLargeExponent', () {
      // regression: exponent read in full and n/i not mangled by parseInt
      final Map<String, num> ops = fncs.calculateNumberDigits(1e21);
      expect(ops['c'], 21);
      expect(ops['e'], 21);
      expect(ops['n'], 1e21);
      expect(ops['i'], 1e21);
    });
  });

  group('firstPropRule', () {
    test('testFirstPropRuleArrayIsInrange', () {
      expect(fncs.firstPropRule(_j('[2, 4]')), 'inrange');
    });
    test('testFirstPropRuleObject', () {
      expect(fncs.firstPropRule(_j('{"mod": ["i", 10]}')), 'mod');
    });
    test('testFirstPropRuleFirstTruthyProp', () {
      expect(fncs.firstPropRule(_j('{"eq": [1, 1]}')), 'eq');
    });
  });

  group('getValue', () {
    test('testGetValueLiteralNumber', () {
      expect(fncs.getValue(5, 10), 5);
    });
    test('testGetValueOperandString', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(1.5);
      // "i" operand should resolve to the integer part
      expect(fncs.getValue('i', ops), 1);
    });
    test('testGetValueOperandStringWithPlainNumber', () {
      // when n is not an object, a string operand returns n itself
      expect(fncs.getValue('n', 7), 7);
    });
  });

  group('is / isnot', () {
    test('testIsTrue', () {
      expect(fncs.isOp(_j('[1, 1]'), 0), isTrue);
    });
    test('testIsFalse', () {
      expect(!fncs.isOp(_j('[1, 2]'), 0), isTrue);
    });
    test('testIsnotTrue', () {
      expect(fncs.isnot(_j('[1, 2]'), 0), isTrue);
    });
    test('testIsnotFalse', () {
      expect(!fncs.isnot(_j('[1, 1]'), 0), isTrue);
    });
  });

  group('inrange / notin / within', () {
    test('testInrangeContinuousInside', () {
      // inrange(range, value): is value within the range?
      expect(fncs.inrange(_j('[2, 4]'), 3), isTrue);
    });
    test('testInrangeContinuousOutside', () {
      expect(!fncs.inrange(_j('[2, 4]'), 5), isTrue);
    });
    test('testInrangeBoundaries', () {
      expect(fncs.inrange(_j('[2, 4]'), 2), isTrue);
      expect(fncs.inrange(_j('[2, 4]'), 4), isTrue);
    });
    test('testNotinTrue', () {
      expect(fncs.notin(_j('[5, [2, 4]]'), 0), isTrue);
    });
    test('testNotinFalse', () {
      expect(!fncs.notin(_j('[3, [2, 4]]'), 0), isTrue);
    });
    test('testWithinTrue', () {
      expect(fncs.within(_j('[3, [2, 4]]'), 0), isTrue);
    });
    test('testWithinFalse', () {
      expect(!fncs.within(_j('[5, [2, 4]]'), 0), isTrue);
    });
  });

  group('mod', () {
    test('testMod', () {
      expect(fncs.mod(_j('[23, 10]'), 0), 3);
    });
    test('testModExact', () {
      expect(fncs.mod(_j('[20, 10]'), 0), 0);
    });
  });

  group('n', () {
    test('testNReturnsNumber', () {
      expect(fncs.n(null, 42), 42);
    });
  });

  group('or / and', () {
    test('testOrTrue', () {
      expect(fncs.or(_j('[{"eq": [1, 2]}, {"eq": [2, 2]}]'), 0), isTrue);
    });
    test('testOrFalse', () {
      expect(!fncs.or(_j('[{"eq": [1, 2]}, {"eq": [3, 2]}]'), 0), isTrue);
    });
    test('testAndTrue', () {
      expect(fncs.and(_j('[{"eq": [1, 1]}, {"eq": [2, 2]}]'), 0), isTrue);
    });
    test('testAndFalse', () {
      expect(!fncs.and(_j('[{"eq": [1, 1]}, {"eq": [2, 3]}]'), 0), isTrue);
    });
  });

  group('eq / neq with operands', () {
    test('testEqOperandNumber', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(1);
      expect(fncs.eq(_j('["v", 0]'), ops), isTrue);
      final Map<String, num> ops2 = fncs.calculateNumberDigits(1.5);
      expect(!fncs.eq(_j('["v", 0]'), ops2), isTrue);
    });
    test('testEqModWithRange', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(22);
      // i mod 10 == 2, which is in [2,4]
      expect(fncs.eq(_j('[{"mod": ["i", 10]}, [2, 4]]'), ops), isTrue);
      final Map<String, num> ops2 = fncs.calculateNumberDigits(25);
      // i mod 10 == 5, not in [2,4]
      expect(!fncs.eq(_j('[{"mod": ["i", 10]}, [2, 4]]'), ops2), isTrue);
    });
    test('testNeqOperandNumber', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(1.5);
      expect(fncs.neq(_j('["v", 0]'), ops), isTrue);
      final Map<String, num> ops2 = fncs.calculateNumberDigits(1);
      expect(!fncs.neq(_j('["v", 0]'), ops2), isTrue);
    });
    test('testNeqModWithRange', () {
      final Map<String, num> ops = fncs.calculateNumberDigits(12);
      // i mod 100 == 12, which is in [12,14] -> neq is false
      expect(!fncs.neq(_j('[{"mod": ["i", 100]}, [12, 14]]'), ops), isTrue);
      final Map<String, num> ops2 = fncs.calculateNumberDigits(22);
      // i mod 100 == 22, not in [12,14] -> neq is true
      expect(fncs.neq(_j('[{"mod": ["i", 100]}, [12, 14]]'), ops2), isTrue);
    });
    test('testEqNeqSymmetryWithStringOperand', () {
      // eq and neq must stay logically opposite. With a string operand and a
      // plain-number n (not an operand object), neq now mirrors eq's
      // typeof(n) === 'object' guard, so the two return opposite results.
      expect(fncs.eq(_j('["i", 1]'), 5), false);
      expect(fncs.neq(_j('["i", 1]'), 5), true);
    });
  });

  group('end-to-end rule evaluation (English default)', () {
    test('testDefaultRulesOne', () {
      expect(categorize(pluralsDefault, 1), 'one');
    });
    test('testDefaultRulesOther', () {
      expect(categorize(pluralsDefault, 0), 'other');
      expect(categorize(pluralsDefault, 2), 'other');
      expect(categorize(pluralsDefault, 1.5), 'other');
    });
    test('testDefaultRulesNegative', () {
      // operands use the absolute value, so -1 categorizes like 1 (matches Intl.PluralRules)
      expect(categorize(pluralsDefault, -1), 'one');
      expect(categorize(pluralsDefault, -2), 'other');
    });
  });

  group('end-to-end rule evaluation (Russian)', () {
    test('testRussianRulesOne', () {
      expect(categorize(pluralsRu, 1), 'one');
      expect(categorize(pluralsRu, 21), 'one');
      expect(categorize(pluralsRu, 101), 'one');
    });
    test('testRussianRulesFew', () {
      expect(categorize(pluralsRu, 2), 'few');
      expect(categorize(pluralsRu, 3), 'few');
      expect(categorize(pluralsRu, 22), 'few');
    });
    test('testRussianRulesMany', () {
      expect(categorize(pluralsRu, 5), 'many');
      expect(categorize(pluralsRu, 11), 'many');
      expect(categorize(pluralsRu, 12), 'many');
      expect(categorize(pluralsRu, 100), 'many');
    });
    test('testRussianRulesOther', () {
      // fractions fall through to "other"
      expect(categorize(pluralsRu, 1.5), 'other');
      expect(categorize(pluralsRu, 2.7), 'other');
    });
  });

  group('range list forms: sets, mixed and nested (Breton)', () {
    test('testMatchRangeContinuousTwoValueRange', () {
      // exactly two numbers => continuous range 2..4
      expect(fncs.matchRangeContinuous(3, _j('[2, 4]')), isTrue);
      expect(fncs.matchRangeContinuous(2, _j('[2, 4]')), isTrue);
      expect(!fncs.matchRangeContinuous(5, _j('[2, 4]')), isTrue);
    });
    test('testMatchRangeContinuousThreeValueSet', () {
      // three numbers => set {11,71,91}; values between must NOT match
      expect(fncs.matchRangeContinuous(11, _j('[11, 71, 91]')), isTrue);
      expect(fncs.matchRangeContinuous(71, _j('[11, 71, 91]')), isTrue);
      expect(fncs.matchRangeContinuous(91, _j('[11, 71, 91]')), isTrue);
      expect(!fncs.matchRangeContinuous(40, _j('[11, 71, 91]')), isTrue);
    });
    test('testMatchRangeContinuousNestedRanges', () {
      // nested arrays are continuous ranges; union of [3..10] and [13..19]
      expect(fncs.matchRangeContinuous(5, _j('[[3, 10], [13, 19]]')), isTrue);
      expect(fncs.matchRangeContinuous(15, _j('[[3, 10], [13, 19]]')), isTrue);
      expect(!fncs.matchRangeContinuous(11, _j('[[3, 10], [13, 19]]')), isTrue);
      expect(!fncs.matchRangeContinuous(20, _j('[[3, 10], [13, 19]]')), isTrue);
    });
    test('testMatchRangeContinuousMixedList', () {
      // mixed: nested range [3,4] plus single value 9
      expect(fncs.matchRangeContinuous(3, _j('[[3, 4], 9]')), isTrue);
      expect(fncs.matchRangeContinuous(4, _j('[[3, 4], 9]')), isTrue);
      expect(fncs.matchRangeContinuous(9, _j('[[3, 4], 9]')), isTrue);
      expect(!fncs.matchRangeContinuous(5, _j('[[3, 4], 9]')), isTrue);
    });
    test('testInrangeNestedAndMixedList', () {
      // inrange must treat a whole nested/mixed list as the range list
      expect(fncs.inrange(_j('[[3, 10], [13, 19]]'), 15), isTrue);
      expect(fncs.inrange(_j('[[3, 4], 9]'), 9), isTrue);
      expect(!fncs.inrange(_j('[[3, 4], 9]'), 5), isTrue);
    });
    test('testBretonRulesOne', () {
      // n%10==1 and n%100 not in {11,71,91}. Regression: 21/31/41 were
      // previously mis-categorized as "other" because [11,71,91] was read
      // as the range 11..91.
      expect(categorize(pluralsBr, 1), 'one');
      expect(categorize(pluralsBr, 21), 'one');
      expect(categorize(pluralsBr, 31), 'one');
      expect(categorize(pluralsBr, 41), 'one');
    });
    test('testBretonRulesFew', () {
      // n%10 in {3,4,9}. Regression: the mixed list [[3,4],9] previously
      // dropped one branch in inrange, so 3/9 fell through to "other".
      expect(categorize(pluralsBr, 3), 'few');
      expect(categorize(pluralsBr, 4), 'few');
      expect(categorize(pluralsBr, 9), 'few');
    });
    test('testBretonRulesTwoAndOther', () {
      expect(categorize(pluralsBr, 2), 'two');
      expect(categorize(pluralsBr, 11), 'other');
      expect(categorize(pluralsBr, 71), 'other');
      expect(categorize(pluralsBr, 1000000), 'many');
    });
  });

  group('loadPlurals', () {
    test('testLoadPluralsSyncReturnsRules', () {
      // JS passes `new Locale("ru-RU")` here; Dart's loadPlurals takes the locale
      // spec as a String, so this and testLoadPluralsAcceptsStringLocale coincide.
      final Map<String, dynamic> plurals = loadPlurals('ru-RU');
      expect(plurals, isA<Map<String, dynamic>>());
      // Russian has a "few" category
      expect(plurals['few'], isNotNull);
    });
    test('testLoadPluralsSyncDefaultLocale', () {
      final Map<String, dynamic> plurals = loadPlurals();
      expect(plurals, isA<Map<String, dynamic>>());
    });
    test('testLoadPluralsAcceptsStringLocale', () {
      final Map<String, dynamic> plurals = loadPlurals('ru-RU');
      expect(plurals['few'], isNotNull);
    });
  });
}
