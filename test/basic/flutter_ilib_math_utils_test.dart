import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/internal/math_utils.dart';

void main() {
  debugPrint('Testing [flutter_ilib_math_utils_test.dart] file.');

  group('math_utils-log10', () {
    test('testLog10', () {
      expect(log10(12345.0).floor(), 4);
    });
    test('testLog10two', () {
      expect(log10(987654321.0).floor(), 8);
    });
  });

  group('math_utils-significant', () {
    test('testSignificant1', () {
      expect(significant(12345.0, 3, roundHalfup), 12300.0);
    });
    test('testSignificant2', () {
      expect(significant(12345.0, 2, roundHalfup), 12000.0);
    });
    test('testSignificant3', () {
      expect(significant(12345.0, 1, roundHalfup), 10000.0);
    });
    test('testSignificantZero', () {
      expect(significant(12345.0, 0, roundHalfup), 12345.0);
    });
    test('testSignificantNegativeDigits', () {
      expect(significant(12345.0, -234, roundHalfup), 12345.0);
    });
    test('testSignificantNegativeNumber', () {
      // JS Math.round rounds ties toward positive infinity
      expect(significant(-12345.0, 4, roundHalfPositiveInfinity), -12340.0);
    });
    test('testSignificantStradleDecimal', () {
      expect(significant(12.345, 4, roundHalfup), 12.35);
    });
    test('testSignificantLessThanOne', () {
      expect(significant(0.123456, 2, roundHalfup), 0.12);
    });
    test('testSignificantLessThanOneRound', () {
      expect(significant(0.123456, 4, roundHalfup), 0.1235);
    });
    test('testSignificantLessThanOneSmall', () {
      expect(significant(0.000123456, 2, roundHalfup), 0.00012);
    });
    test('testSignificantZeroNumber', () {
      expect(significant(0.0, 2, roundHalfup), 0.0);
    });
  });

  group('math_utils-shiftDecimal', () {
    test('shift right', () {
      expect(shiftDecimal(1.23, 2), 123.0);
    });
    test('shift left', () {
      expect(shiftDecimal(123.0, -2), 1.23);
    });
    test('shift zero precision', () {
      expect(shiftDecimal(1.5, 0), 1.5);
    });
    test('shift large precision', () {
      expect(shiftDecimal(1.0, 5), 100000.0);
    });
  });

  group('math_utils-rounding functions', () {
    test('roundFloor positive', () {
      expect(roundFloor(2.3), 2.0);
    });
    test('roundFloor negative', () {
      expect(roundFloor(-2.3), -3.0);
    });
    test('roundCeiling positive', () {
      expect(roundCeiling(2.3), 3.0);
    });
    test('roundCeiling negative', () {
      expect(roundCeiling(-2.3), -2.0);
    });
    test('roundDown positive', () {
      expect(roundDown(2.9), 2.0);
    });
    test('roundDown negative', () {
      expect(roundDown(-2.9), -2.0);
    });
    test('roundUp positive', () {
      expect(roundUp(2.1), 3.0);
    });
    test('roundUp negative', () {
      expect(roundUp(-2.1), -3.0);
    });
    test('roundHalfup positive tie', () {
      expect(roundHalfup(2.5), 3.0);
    });
    test('roundHalfup negative tie', () {
      expect(roundHalfup(-2.5), -3.0);
    });
    test('roundHalfdown positive tie', () {
      expect(roundHalfdown(2.5), 2.0);
    });
    test('roundHalfdown negative tie', () {
      expect(roundHalfdown(-2.5), -2.0);
    });
    test('roundHalfeven even floor tie', () {
      expect(roundHalfeven(2.5), 2.0);
    });
    test('roundHalfeven odd floor tie', () {
      expect(roundHalfeven(3.5), 4.0);
    });
    test('roundHalfodd even floor tie', () {
      expect(roundHalfodd(2.5), 3.0);
    });
    test('roundHalfodd odd floor tie', () {
      expect(roundHalfodd(3.5), 3.0);
    });
  });

  group('math_utils-getRoundingFunction', () {
    test('floor', () {
      expect(getRoundingFunction('floor'), roundFloor);
    });
    test('ceiling', () {
      expect(getRoundingFunction('ceiling'), roundCeiling);
    });
    test('down', () {
      expect(getRoundingFunction('down'), roundDown);
    });
    test('up', () {
      expect(getRoundingFunction('up'), roundUp);
    });
    test('halfup', () {
      expect(getRoundingFunction('halfup'), roundHalfup);
    });
    test('halfdown', () {
      expect(getRoundingFunction('halfdown'), roundHalfdown);
    });
    test('halfeven', () {
      expect(getRoundingFunction('halfeven'), roundHalfeven);
    });
    test('halfodd', () {
      expect(getRoundingFunction('halfodd'), roundHalfodd);
    });
    test('default is halfdown', () {
      expect(getRoundingFunction('unknown'), roundHalfdown);
    });
  });
}
