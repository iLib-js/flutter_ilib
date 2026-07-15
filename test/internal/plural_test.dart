// Unit tests for getPluralCategory (lib/internal/ilib_plural.dart).
//
// Each rule tree below is the exact parsed CLDR form bundled in
// assets/locale/{lang}.json (`ilib.data.plurals`). Locales chosen to cover
// every rule shape the bundled data uses: `and` only (en), `mod` + nested
// `and`/`or` + `neq` (ru, pl), `eq` with a flat [start,end] range (ar), and
// the `e`/`c` exponent operand (es).
import 'dart:convert';

import 'package:flutter_ilib/internal/ilib_plural.dart';
import 'package:flutter_test/flutter_test.dart';

Map<String, dynamic> _rules(String json) =>
    jsonDecode(json) as Map<String, dynamic>;

void main() {
  // en: `one` = i == 1 and v == 0; everything else `other`.
  final Map<String, dynamic> en = _rules(
    '{"one":{"and":[{"eq":["i",1]},{"eq":["v",0]}]}}',
  );

  // ru: full Slavic tree — mod 10 / mod 100, nested and/or, neq ranges.
  final Map<String, dynamic> ru = _rules(
    '{"few":{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",10]},[2,4]]},'
    '{"neq":[{"mod":["i",100]},[12,14]]}]},'
    '"many":{"or":[{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",10]},0]}]},'
    '{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",10]},[5,9]]}]},'
    '{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",100]},[11,14]]}]}]},'
    '"one":{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",10]},1]},'
    '{"neq":[{"mod":["i",100]},11]}]}}',
  );

  // ar: `eq` with a flat [start,end] range applied to mod n 100.
  final Map<String, dynamic> ar = _rules(
    '{"few":{"eq":[{"mod":["n",100]},[3,10]]},'
    '"many":{"eq":[{"mod":["n",100]},[11,99]]},'
    '"one":{"eq":["n",1]},"two":{"eq":["n",2]},"zero":{"eq":["n",0]}}',
  );

  // pl: nested and/or with mod ranges and a neq(i, 1).
  final Map<String, dynamic> pl = _rules(
    '{"few":{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",10]},[2,4]]},'
    '{"neq":[{"mod":["i",100]},[12,14]]}]},'
    '"many":{"or":[{"and":[{"eq":["v",0]},{"neq":["i",1]},'
    '{"eq":[{"mod":["i",10]},[0,1]]}]},'
    '{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",10]},[5,9]]}]},'
    '{"and":[{"eq":["v",0]},{"eq":[{"mod":["i",100]},[12,14]]}]}]},'
    '"one":{"and":[{"eq":["i",1]},{"eq":["v",0]}]}}',
  );

  // es: uses the `e` exponent operand (many for large compact values).
  final Map<String, dynamic> es = _rules(
    '{"many":{"or":[{"and":[{"eq":["e",0]},{"neq":["i",0]},'
    '{"eq":[{"mod":["i",1000000]},0]},{"eq":["v",0]}]},'
    '{"neq":["e",[0,5]]}]},"one":{"eq":["n",1]}}',
  );

  // Expected plural categories per CLDR rules for each locale.
  final Map<String, Map<num, String>> expected = <String, Map<num, String>>{
    'en': <num, String>{
      0: 'other',
      1: 'one',
      2: 'other',
      5: 'other',
      11: 'other',
      1.5: 'other',
    },
    'ru': <num, String>{
      0: 'many',
      1: 'one',
      2: 'few',
      3: 'few',
      5: 'many',
      10: 'many',
      11: 'many',
      21: 'one',
      22: 'few',
      25: 'many',
      100: 'many',
      101: 'one',
      1000000: 'many',
      0.5: 'other',
      2.0: 'few',
    },
    'ar': <num, String>{
      0: 'zero',
      1: 'one',
      2: 'two',
      3: 'few',
      6: 'few',
      10: 'few',
      11: 'many',
      15: 'many',
      99: 'many',
      100: 'other',
      101: 'other',
    },
    'pl': <num, String>{
      0: 'many',
      1: 'one',
      2: 'few',
      3: 'few',
      5: 'many',
      12: 'many',
      22: 'few',
      100: 'many',
      101: 'many',
    },
    'es': <num, String>{
      0: 'other',
      1: 'one',
      2: 'other',
      1000000: 'many',
      1500000: 'many',
      2000000: 'many',
    },
  };

  final Map<String, Map<String, dynamic>> trees =
      <String, Map<String, dynamic>>{
    'en': en,
    'ru': ru,
    'ar': ar,
    'pl': pl,
    'es': es,
  };

  group('getPluralCategory', () {
    for (final MapEntry<String, Map<num, String>> loc in expected.entries) {
      final Map<String, dynamic> tree = trees[loc.key]!;
      for (final MapEntry<num, String> c in loc.value.entries) {
        test('${loc.key}: ${c.key} => ${c.value}', () {
          expect(getPluralCategory(tree, c.key), c.value);
        });
      }
    }

    test('empty rules falls back to English (one/other)', () {
      expect(getPluralCategory(<String, dynamic>{}, 1), 'one');
      expect(getPluralCategory(<String, dynamic>{}, 0), 'other');
      expect(getPluralCategory(<String, dynamic>{}, 2), 'other');
    });

    test('c/e exponent operand tracks base-10 magnitude', () {
      // es `many` first branch needs e == 0, so a plain multiple of 1e6 with
      // e computed != 0 must fall through to the neq(e,[0,5]) branch.
      expect(getPluralCategory(es, 1500000), 'many'); // 1.5e6 -> e=6
      expect(getPluralCategory(es, 3000000), 'many'); // 3e6   -> e=6
    });
  });

  // `inrange`/`notin` do not appear in any bundled locale (the bundled data
  // emits `eq` with flat ranges instead), so no per-locale test reaches these
  // branches. The engine still supports them with a nested range list
  // (`[[start,end]]`); these synthetic trees exercise that shape directly.
  group('getPluralCategory inrange/notin (synthetic trees)', () {
    // mod n 100 falling inside a nested [[start,end]] range.
    final Map<String, dynamic> inrange = _rules(
      '{"few":{"inrange":[{"mod":["n",100]},[[3,10]]]},'
      '"many":{"inrange":[{"mod":["n",100]},[[11,99]]]}}',
    );

    // notin against a range list mixing a [start,end] pair and a bare number.
    final Map<String, dynamic> notin = _rules(
      '{"special":{"notin":[{"mod":["n",10]},[[0,1],5]]}}',
    );

    final Map<num, String> inrangeExpected = <num, String>{
      0: 'other',
      2: 'other',
      3: 'few',
      10: 'few',
      11: 'many',
      99: 'many',
      100: 'other', // mod 100 == 0
      103: 'few', // mod 100 == 3
      111: 'many', // mod 100 == 11
    };
    for (final MapEntry<num, String> c in inrangeExpected.entries) {
      test('inrange: ${c.key} => ${c.value}', () {
        expect(getPluralCategory(inrange, c.key), c.value);
      });
    }

    final Map<num, String> notinExpected = <num, String>{
      0: 'other', // mod 10 == 0, in [0,1] -> notin false
      1: 'other', // in [0,1]
      2: 'special', // mod 10 == 2, not in {[0,1],5}
      5: 'other', // equals bare 5
      10: 'other', // mod 10 == 0
      23: 'special', // mod 10 == 3
    };
    for (final MapEntry<num, String> c in notinExpected.entries) {
      test('notin: ${c.key} => ${c.value}', () {
        expect(getPluralCategory(notin, c.key), c.value);
      });
    }
  });
}
