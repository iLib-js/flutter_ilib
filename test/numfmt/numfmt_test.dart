import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [numfmt_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('iLibNumFmt', () {
    test('testNumFmtConstructorEmpty', () {
      final ILibNumFmtOptions fmtOptions = ILibNumFmtOptions();
      final ILibNumFmt fmt = ILibNumFmt(fmtOptions);

      expect(fmt, isNotNull);
    });
    test('testNumFmtDefaults', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.getType(), 'number');
      expect(fmt.getMaxFractionDigits(), -1);
      expect(fmt.getMinFractionDigits(), -1);
      expect(fmt.isGroupingUsed(), isTrue);
      expect(fmt.getRoundingMode(), 'halfdown');
      expect(fmt.getCurrency(), isNull);
      // print(fmt.getCurrency());
    });
    test('testNumFmtNumberFormatSimple', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1.745');
    });

    test('testNumFmtNumberFormatUndefined', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(null), '');
    });

    test('testNumFmtNumberFormatSimpleNeg', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(-1.745), '-1.745');
    });

    test('testNumFmtNumberFormatNoFractionalLimit', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(1.012345678901234), '1.012345678901234');
    });

    test('testNumFmtNumberFormatNoIntegralLimit', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(12345678901234.0), '12,345,678,901,234');
    });

    test('testNumFmtNumberFormatWithMaxFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(1.7453), '1.75');
    });

    test('testNumFmtNumberFormatWithMinFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(minFractionDigits: 4));

      expect(fmt, isNotNull);
      expect(fmt.format(1.75), '1.7500');
    });

    test('testNumFmtNumberFormatWithMinFracDigitsTooSmall', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(minFractionDigits: -5));

      expect(fmt, isNotNull);
      // lower bound is 0
      expect(fmt.format(1.75), '1.75');
    });

    test('testNumFmtNumberFormatWithMinFracDigitsTooSmallNoDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(minFractionDigits: -5));

      expect(fmt, isNotNull);
      // lower bound is 0
      expect(fmt.format(17500), '17,500');
    });

    test('testNumFmtNumberFormatWithMinFracDigitsTooBig', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(minFractionDigits: 25));

      expect(fmt, isNotNull);
      // limit to 20, but the precision is only to 16 so it is rounded and zero-padded at the end
      expect(fmt.format(1.012345678901234567890123456789),
          '1.01234567890123460000');
    });

    test('testNumFmtNumberFormatWithMinAndMaxFracDigitsTooSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);
      expect(fmt.format(1.7), '1.700');
    });

    test('testNumFmtNumberFormatWithMinAndMaxFracDigitsTooBig', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);
      expect(fmt.format(1.76543298765), '1.765433');
    });

    test('testNumFmtNumberFormatWithMinAndMaxFracDigitsJustRight', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);
      expect(fmt.format(1.76543), '1.76543');
    });

    test('testNumFmtNumberGetMaxFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.getMaxFractionDigits(), 2);
    });

    test('testNumFmtGetMinFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(minFractionDigits: 4));

      expect(fmt, isNotNull);
      expect(fmt.getMinFractionDigits(), 4);
    });

    test('testNumFmtNumberStyleStandard', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'standard'));

      expect(fmt, isNotNull);
      expect(fmt.format(2345678901234567.0), '2,345,678,901,234,567');
    });

    test('testNumFmtNumberFormatStandardWithMultiGroups', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'standard'));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789.4), '123,456,789.4');
    });

    test('testNumFmtNumberFormatWithMultiGroupsNegative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'standard'));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456789.4), '-123,456,789.4');
    });

    test('testNumFmtNumberStyleScientific', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'scientific'));

      expect(fmt, isNotNull);
      expect(fmt.format(12345678901234567890123456789.0),
          '1.2345678901234568E+28');
    });

    test('testNumFmtNumberStyleScientificSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'scientific'));

      expect(fmt, isNotNull);
      expect(fmt.format(0.000001234567890123456), '1.234567890123456E-6');
    });

    test('testNumFmtNumberStyleScientificWithMaxFractionDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', maxFractionDigits: 5));

      expect(fmt, isNotNull);
      expect(fmt.format(12345678901234567890123456789.0), '1.23457E+28');
    });

    test('testNumFmtNumberStyleScientificSmallWithMaxFractionDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', maxFractionDigits: 5));

      expect(fmt, isNotNull);
      expect(fmt.format(0.0000012345678901234567890123456789), '1.23457E-6');
    });

    test('testNumFmtNumberStyleScientificWithMinFractionDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', minFractionDigits: 5));

      expect(fmt, isNotNull);
      expect(fmt.format(12340000000000000000000000000.0), '1.23400E+28');
    });

    test('testNumFmtNumberStyleScientificWithMinFractionDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', minFractionDigits: 1));

      expect(fmt, isNotNull);
      // min of 1 means we can have more digits than one!
      expect(fmt.format(12345678900000000000000000000.0), '1.23456789E+28');
    });

    test('testNumFmtNumberStyleScientificWithMinFractionDigitsTooSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', minFractionDigits: -2));

      expect(fmt, isNotNull);
      expect(fmt.format(123400000000000000000.0), '1.234E+20');
    });

    test('testNumFmtNumberStyleScientificWithMinFractionDigitsTooSmallNoDigits',
        () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', minFractionDigits: -2));

      expect(fmt, isNotNull);
      expect(fmt.format(10000000000000000000000000000.0), '1E+28');
    });

    test('testNumFmtNumberStyleScientificWithMinFractionDigitsTooBig', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'scientific', minFractionDigits: 25));

      expect(fmt, isNotNull);
      // max is 20
      expect(fmt.format(12340000000000000000000000000.0),
          '1.23400000000000000000E+28');
    });

    test('testNumFmtNumberStyleScientificWithMaxAndRoundUp', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 5, roundingMode: 'up'));

      expect(fmt, isNotNull);
      expect(fmt.format(12345678901234567890123456789.0), '1.23457E+28');
    });

    test('testNumFmtNumberStyleScientificWithMaxAndRoundDown', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 5, roundingMode: 'down'));

      expect(fmt, isNotNull);
      expect(fmt.format(12345678901234567890123456789.0), '1.23456E+28');
    });

    test('testNumFmtNumberStyleScientificWithMaxAndRoundHalfDown', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 3, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(12345000000000000000000000000.0), '1.234E+28');
    });

    test('testNumFmtNumberStyleScientificSmallWithMaxAndRoundHalfDown', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 3, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(0.0000012345), '1.234E-6');
    });

    test('testNumFmtNumberStyleScientificWithMaxAndRoundHalfUp', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 3, roundingMode: 'halfup'));

      expect(fmt, isNotNull);
      expect(fmt.format(12345000000000000000000000000.0), '1.235E+28');
    });

    test(
        'testNumFmtNumberStyleScientificSmallWithMaxAndMinFractionDigitsTooSmall',
        () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 5, minFractionDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(0.0000012), '1.200E-6');
    });

    test(
        'testNumFmtNumberStyleScientificSmallWithMaxAndMinFractionDigitsTooBig',
        () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 5, minFractionDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(0.00000123456789), '1.23457E-6');
    });

    test(
        'testNumFmtNumberStyleScientificSmallWithMaxAndMinFractionDigitsJustRight',
        () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', maxFractionDigits: 5, minFractionDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(0.0000012345), '1.2345E-6');
    });

    test('testNumFmtNumberStyleNogroupingInteger', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'nogrouping'));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789), '123456789');
    });

    test('testNumFmtNumberStyleNogroupingFloat', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'nogrouping'));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789.345345), '123456789.345345');
    });

    test('testNumFmtNumberStyleNogroupingWithLocale', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fa-IR', style: 'nogrouping', useNative: false));

      expect(fmt, isNotNull);
      expect(fmt.format(2014), '2014');
    });

    test('testNumFmtNumberStyleNogroupingWithNative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fa-IR', style: 'nogrouping', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.format(1393), '۱۳۹۳');
    });

    test('testNumFmtNumberStyleNogroupingWithMaxFrac', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(style: 'nogrouping', maxFractionDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789.345945345), '123456789.346');
    });

    test('testNumFmtNumberFormatRoundingCeiling', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'ceiling'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.74475), '1.75');
    });

    test('testNumFmtNumberFormatRoundingCeilingNeg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'ceiling'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.74475), '-1.74');
    });

    test('testNumFmtNumberFormatRoundingDown', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'down'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.74475), '1.74');
    });

    test('testNumFmtNumberFormatRoundingDownNeg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'down'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.74475), '-1.74');
    });

    test('testNumFmtNumberFormatRoundingFloor', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'floor'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.74475), '1.74');
    });

    test('testNumFmtNumberFormatRoundingFloorNeg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'floor'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.74475), '-1.75');
    });

    test('testNumFmtNumberFormatRoundingUp', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'up'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.74475), '1.75');
    });

    test('testNumFmtNumberFormatRoundingUpNeg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'up'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.74475), '-1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfdownReg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.746), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfdownAtHalf', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1.74');
    });

    test('testNumFmtNumberFormatRoundingHalfdownNegReg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.746), '-1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfdownNegAtHalf', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.745), '-1.74');
    });

    test('testNumFmtNumberFormatRoundinghalfdownLessThan5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.743), '1.74');
    });

    test('testNumFmtNumberFormatRoundinghalfdown5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1.74');
    });

    test('testNumFmtNumberFormatRoundinghalfdownMoreThan5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      // still round to the even neighbour
      expect(fmt.format(1.747), '1.75');
    });

    test('testNumFmtNumberFormatRoundinghalfdownExactly5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      // no rounding
      expect(fmt.format(1.75), '1.75');
    });

    test('testNumFmtNumberFormatRoundinghalfdownLessThan5Up', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.753), '1.75');
    });

    test('testNumFmtNumberFormatRoundinghalfdown5Up', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.755), '1.75');
    });

    test('testNumFmtNumberFormatRoundinghalfdownMoreThan5Up', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfdown'));

      expect(fmt, isNotNull);
      // still round to the even neighbour
      expect(fmt.format(1.757), '1.76');
    });

    test('testNumFmtNumberFormatRoundingHalfoddLessThan5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.743), '1.74');
    });

    test('testNumFmtNumberFormatRoundingHalfodd5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfoddMoreThan5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      // still round to the odd neighbour
      expect(fmt.format(1.747), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfoddExactly5', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      // no rounding
      expect(fmt.format(1.75), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfoddLessThan5Up', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.753), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfodd5Up', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.755), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfoddMoreThan5Up', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfodd'));

      expect(fmt, isNotNull);
      // still round to the odd neighbour
      expect(fmt.format(1.757), '1.76');
    });

    test('testNumFmtNumberFormatRoundingHalfupReg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfup'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.746), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfupAtHalf', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfup'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfupNegReg', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfup'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.746), '-1.75');
    });

    test('testNumFmtNumberFormatRoundingHalfupNegAtHalf', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(maxFractionDigits: 2, roundingMode: 'halfup'));

      expect(fmt, isNotNull);
      expect(fmt.format(-1.745), '-1.75');
    });

    test('testNumFmtNumberStyleStringArgument', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(style: 'standard'));

      expect(fmt, isNotNull);
      // should work with string arguments
      expect(fmt.format('2345678901234567.0'), '2,345,678,901,234,567');
    });

    /* Number object
    test('testNumFmtNumberStyleNumberObjectArgument', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
        style: 'standard'
      ));

      expect(fmt, isNotNull);
      // should work with a number object
      expect(fmt.format(new Number(2345678901234567.0)), '2,345,678,901,234,567');
    });

    test('testNumFmtNumberStyleIlibNumberObjectArgument', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
        style: 'standard'
      ));

      expect(fmt, isNotNull);
      // should work with a number object
      expect(fmt.format(new Number(2345678901234567.0)), '2,345,678,901,234,567');
    });
    */

    test('testNumFmtGetUseNativeDefaultFalse', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'en-US'));

      expect(fmt, isNotNull);
      expect(!fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeDefaultTrue', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN'));

      expect(fmt, isNotNull);
      expect(fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeHasNativeButFalse', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN'));

      expect(fmt, isNotNull);
      // Tamil does have native digits, but they are not frequently used
      expect(!fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeHasNativeButFalse_OR_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN'));

      expect(fmt, isNotNull);
      // Oriya does have native digits, but they are not frequently used
      expect(!fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeOverrideTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-US', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeExplicitTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeExplicitFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-US', useNative: false));

      expect(fmt, isNotNull);
      expect(!fmt.getUseNative(), isTrue);
    });

    test('testNumFmtGetUseNativeOverrideFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN', useNative: false));

      expect(fmt, isNotNull);
      expect(!fmt.getUseNative(), isTrue);
    });

    test('testNumFmtFormatWesternDefault', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'en-US'));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtFormatWesternOverrideNative', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-US', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtFormatNativeDefaultTrue', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN'));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '১২৩.৪৫৬');
    });

    test('testNumFmtFormatNativeDefaultFalse_or_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN'));

      expect(fmt, isNotNull);
      // oriya has native digits, but they are not used by default
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtFormatNativeDefaultFalse', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN'));

      expect(fmt, isNotNull);
      // Tamil has native digits, but they are not used by default
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtFormatNativeExplicitTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '১২৩.৪৫৬');
    });

    test('testNumFmtFormatNativeExplicitFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN', useNative: false));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtFormatNativeExplicitTrue2', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '௧௨௩.௪௫௬');
    });

    test('testNumFmtFormatNativeExplicitTrue2_or_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN', useNative: true));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '୧୨୩.୪୫୬');
    });

    test('testNumFmtFormatNativeExplicitFalse2', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN', useNative: false));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtFormatNativeExplicitFalse2_or_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN', useNative: false));

      expect(fmt, isNotNull);
      expect(fmt.format(123.456), '123.456');
    });

    test('testNumFmtNumberFormatDESimple', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1,745');
    });

    test('testNumFmtDEIsGroupingUsed', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));

      expect(fmt, isNotNull);
      expect(fmt.isGroupingUsed(), isTrue);
    });

    test('testNumFmtNumberFormatDEWithThousands', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));

      expect(fmt, isNotNull);
      expect(fmt.format(1234567.745), '1.234.567,745');
    });

    test('testNumFmtNumberFormatDEWithThousandsWithMultiGroups', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789.4), '123.456.789,4');
    });

    test('testNumFmtNumberFormatDEWithThousandsWithMultiGroupsNegative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456789.4), '-123.456.789,4');
    });

    test('testNumFmtNumberFormatFRSimple', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'fr-FR'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1,745');
    });

    test('testNumFmtNumberFormatFRWithThousands', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'fr-FR'));

      expect(fmt, isNotNull);
      expect(fmt.format(1234567.745), '1 234 567,745');
    });

    test('testNumFmtNumberFormatDESimple', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));

      expect(fmt, isNotNull);
      expect(fmt.format(1.745), '1,745');
    });

    test('testNumFmtPercentageFormatRegular', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    test('testNumFmtPercentageGetType', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.getType(), 'percentage');
    });

    test('testNumFmtPercentageFormatWithDecimal', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtPercentageFormatWithDecimalAndRounding', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(type: 'percentage', maxFractionDigits: 1));

      expect(fmt, isNotNull);
      expect(fmt.format(57.789), '57.8%');
    });

    test('testNumFmtPercentageFormatDERegular', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    test('testNumFmtPercentageFormatDEWithDecimal', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    test('testNumFmtPercentageFormatDEWithDecimalAndRounding', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-DE', type: 'percentage', maxFractionDigits: 1));

      expect(fmt, isNotNull);
      expect(fmt.format(57.789), '57,8 %');
    });

    test('testNumFmtCurrencyFormatDefault', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.05), r'$57.05');
    });

    test('testNumFmtCurrencyFormatZeroCents', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57), r'$57.00');
    });

    test('testNumFmtCurrencyGetType', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.getType(), 'currency');
    });

    test('testNumFmtCurrencyGetStyleDefault', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.getStyle(), 'common');
    });

    test('testNumFmtCurrencyFormatDefaultRounding', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.3467), r'$57.35');
    });

    test('testNumFmtCurrencyFormatOverrideMinFraction', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', minFractionDigits: 5, currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.346), r'$57.34600');
    });

    test('testNumFmtCurrencyFormatOverrideMaxFraction', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', maxFractionDigits: 0, currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.3467), r'$57');
    });

    test('testNumFmtCurrencyFormatOverrideMinAndMaxFraction', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          minFractionDigits: 3,
          maxFractionDigits: 3,
          currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.3467), r'$57.347');
    });

    test('testNumFmtCurrencyFormatOverrideMinAndMaxFractionWonky', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          minFractionDigits: 4,
          maxFractionDigits: 3,
          currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.3467), r'$57.347');
    });

    test('testNumFmtCurrencyFormatAlternateStyle', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(type: 'currency', style: 'iso', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.35), 'USD57.35');
    });

    test('testNumFmtCurrencyFormatOtherCurrency', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.35), '€57.35');
    });

    test('testNumFmtCurrencyFormatOtherCurrencyIsoStyle', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(type: 'currency', currency: 'EUR', style: 'iso'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.35), 'EUR57.35');
    });

    test('testNumFmtCurrencyGetDefaultFractionDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.getMaxFractionDigits(), 2);
      expect(fmt.getMinFractionDigits(), 2);
    });

    test('testNumFmtCurrencyGetFractionDigitsOtherCurrency', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(type: 'currency', currency: 'JPY' // Japanese yen
              ));

      expect(fmt, isNotNull);
      expect(fmt.getMaxFractionDigits(), 0);
      expect(fmt.getMinFractionDigits(), 0);
    });

    test('testNumFmtCurrencyFormatOtherCurrencyUseDefaultDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          currency: 'JPY' // japanese yen use 0 fraction digits
          ));

      expect(fmt, isNotNull);
      expect(fmt.format(345.3), '¥345');
    });
/* here
    test('testNumFmtCurrencyNoCurrencyDefaultForLocale', () {
      var fmt;

      try {
        fmt = new NumFmt({
          type: 'currency',
          locale: 'ja-JP'
        });

        test.fail();
      } catch (e) {
        test.ok(typeof(fmt) === 'undefined');
        expect(e, 'A currency property is required in the options to the number formatter constructor when the type property is set to currency.');
      }

    });
*/
    test('testNumFmtCurrencyUseCorrectFractionDigitsForLocale', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ja-JP', currency: 'JPY'));

      expect(fmt, isNotNull);
      expect(fmt.getMaxFractionDigits(), 0);
      expect(fmt.getMinFractionDigits(), 0);
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ja-JP', currency: 'JPY'));

      expect(fmt, isNotNull);
      expect(fmt.format(345.3), '¥345');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocalefr_CA', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fr-CA', currency: 'CAD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100000.00), r'100 000,00 $');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocalefr_CA1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fr-CA', currency: 'CAD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'100 110,57 $');
    });

    test('testNumFmtCurrencyUseCorrectRoundingModeForLocale', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'zxx-XX', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.getRoundingMode(), 'halfdown');
    });

    test('testNumFmtJAIsGroupingUsed', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP'));

      expect(fmt, isNotNull);
      expect(fmt.isGroupingUsed(), isTrue);
    });

    test('testNumFmtNumberFormatJAWithThousandsWithMultiGroups', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP'));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789.4), '123,456,789.4');
    });

    test('testNumFmtNumberFormatJAWithThousandsWithMultiGroupsNegative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP'));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456789.4), '-123,456,789.4');
    });

    test('testNumFmtNumberFormatJAWithThousandsWithMultiGroupsja', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja'));

      expect(fmt, isNotNull);
      expect(fmt.format(123456789.4), '123,456,789.4');
    });

    test('testNumFmtNumberFormatJAWithThousandsWithMultiGroupsNegativeja', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja'));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456789.4), '-123,456,789.4');
    });

    test('testNumFmtNumberFormatJALessThanOne', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP'));

      expect(fmt, isNotNull);
      expect(fmt.format(0.7), '0.7');
    });

    test('testNumFmtNumberFormatJALessThanOneNegative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP'));

      expect(fmt, isNotNull);
      expect(fmt.format(-0.7), '-0.7');
    });

    // test all of tier 1 locales and a number of the tier 2 and lower locales
    test('testNumFmtzhCN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'zh-CN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtenIN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-1,23,456.78');
    });

    test('testNumFmtasIN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'as-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-১,২৩,৪৫৬.৭৮');
    });

    //test acses for hi-IN
    test('testNumFmthi_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'hi-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-112345613232.785), '-1,12,34,56,13,232.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_hi_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'hi-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_hi_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'hi-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹१,००,११०.५७');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_hi_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'hi-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹१,००,११०.५७');
    });

    //test cases for bn-IN

    test('testNumFmtbn_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-112345613232.785), '-১,১২,৩৪,৫৬,১৩,২৩২.৭৮');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_bn_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'bn-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹১,০০,১১০.৫৭');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_bn_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'bn-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹১,০০,১১০.৫৭');
    });

    test('testNumFmtPercentageFormatRegular_bn_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bn-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '৫৭.৮%');
    });

    //test cases for mr-IN

    test('testNumFmt_mr_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mr-IN', useNative: false, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_mr_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'mr-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-१२,३४,५६८.७८');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_mr_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'mr-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹१,००,११०.५७');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_mr_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'mr-IN',
          useNative: false,
          currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtCurrencyFormatNativeCorrectCurrencyForLocale_mr_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'mr-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹१,००,११०.५७');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_mr_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'mr-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹१,००,११०.५७');
    });

    test('testNumFmtPercentageFormatRegular_mr_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'mr-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '५७.८%');
    });

    test('testNumFmtPercentageNativeFormatRegular_mr_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mr-IN', useNative: false, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for kn-IN

    test('testNumFmt_kn_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'kn-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-1,234,568.78');
    });

    test('testNumFmtNative_kn_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kn-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-೧,೨೩೪,೫೬೮.೭೮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_kn_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'kn-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹೧೦೦,೧೧೦.೫೭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_kn_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'kn-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹೧೦೦,೧೧೦.೫೭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_kn_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'kn-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_kn_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kn-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '೫೭.೮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_kn_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'kn-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for gu-IN

    test('testNumFmt_gu_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'gu-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_gu_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'gu-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-૧૨,૩૪,૫૬૮.૭૮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_gu_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'gu-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹૧,૦૦,૧૧૦.૫૭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_gu_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'gu-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹૧,૦૦,૧૧૦.૫૭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_gu_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'gu-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtPercentageFormatRegular_gu_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'gu-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '૫૭.૮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_gu_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'gu-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for ta-IN

    test('testNumFmt_ta_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_ta_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ta-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-௧௨,௩௪,௫௬௮.௭௮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_ta_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ta-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹௧,௦௦,௧௧௦.௫௭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_ta_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ta-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹௧,௦௦,௧௧௦.௫௭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ta_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ta-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_ta_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ta-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹1,00,110.57');
    });

    test('testNumFmtPercentageFormatRegular_ta_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ta-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '௫௭.௮%');
    });

    test('testNumFmtPercentageFormatNegative_ta_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ta-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-௫௭.௮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_ta_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtPercentageNativeFormatNegative_ta_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ta-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57.8%');
    });

    //test cases for or-IN

    test('testNumFmt_or_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_or_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'or-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-୧୨,୩୪,୫୬୮.୭୮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_or_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'or-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹୧,୦୦,୧୧୦.୫୭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_or_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'or-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹୧,୦୦,୧୧୦.୫୭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_or_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'or-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtPercentageFormatRegular_or_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'or-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '୫୭.୮%');
    });

    test('testNumFmtPercentageFormatNegative_or_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'or-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-୫୭.୮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_or_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtPercentageNativeFormatNegative_or_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'or-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57.8%');
    });

    //test cases for ha-Latn-NG

    test('testNumFmt_ha_Latn_NG', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'ha-Latn-NG', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-1,234,568.78');
    });

    test('testNumFmtCurrencyFormatCurrencyForLocale_ha_Latn_NG1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ha-Latn-NG', currency: 'NGN'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₦ 100,110.57');
    });

    test('testNumFmtCurrencyFormatNegativeCurrencyForLocale_ha_Latn_NG1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ha-Latn-NG', currency: 'NGN'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₦ 100,110.57');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ha_Latn_NG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ha-Latn-NG', currency: 'NGN'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₦ 100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_ha_Latn_NG', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'ha-Latn-NG', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test acses for ml-IN

    test('testNumFmt_ml_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ml-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_ml_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ml-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-൧൨,൩൪,൫൬൮.൭൮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_ml_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ml-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹൧,൦൦,൧൧൦.൫൭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_ml_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ml-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹൧,൦൦,൧൧൦.൫൭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ml_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ml-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtPercentageFormatRegular_ml_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ml-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '൫൭.൮%');
    });

    test('testNumFmtPercentageFormatNegative_ml_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ml-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-൫൭.൮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_ml_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ml-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for te-IN

    test('testNumFmt_te_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'te-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_te_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'te-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-౧౨,౩౪,౫౬౮.౭౮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_te_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'te-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹౧,౦౦,౧౧౦.౫౭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_te_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'te-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹౧,౦౦,౧౧౦.౫౭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_te_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'te-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_te_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'te-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹1,00,110.57');
    });

    test('testNumFmtPercentageFormatRegular_te_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'te-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '౫౭.౮%');
    });

    test('testNumFmtPercentageFormatNegative_te_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'te-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-౫౭.౮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_te_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'te-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtPercentageNativeFormatNegative_te_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'te-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57.8%');
    });

    //test cases for pa-IN

    test('testNumFmt_pa_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pa-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-12,34,568.78');
    });

    test('testNumFmtNative_pa_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pa-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-੧੨,੩੪,੫੬੮.੭੮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_pa_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pa-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹੧,੦੦,੧੧੦.੫੭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_pa_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pa-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹੧,੦੦,੧੧੦.੫੭');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_pa_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pa-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_pa_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pa-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹1,00,110.57');
    });

    test('testNumFmtPercentageFormatRegular_pa_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pa-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '੫੭.੮%');
    });

    test('testNumFmtPercentageFormatRegular_pa_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pa-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-੫੭.੮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_pa_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pa-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtPercentageNativeFormatRegular_pa_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pa-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57.8%');
    });

    //test cases for ur-IN

    test('testNumFmt_ur_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ur-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '‎-‎۱٬۲۳۴٬۵۶۸٫۷۸');
    });

    test('testNumFmtNative_ur_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ur-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '‎-‎۱٬۲۳۴٬۵۶۸٫۷۸');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_ur_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ur-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹ ۱۰۰٬۱۱۰٫۵۷');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_ur_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ur-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '‎-‎₹ ۱۰۰٬۱۱۰٫۵۷');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ur_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ur-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹ ۱۰۰٬۱۱۰٫۵۷');
    });

    test('testNumFmtPercentageFormatRegular_ur_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ur-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '۵۷٫۸%');
    });

    test('testNumFmtPercentageNativeFormatRegular_ur_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ur-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '‎-‎۵۷٫۸%');
    });

    test('testNumFmtPercentageNativeFormatNegative_ur_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ur-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '۵۷٫۸%');
    });

    //test cases for as-IN

    test('testNumFmt_as_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'as-IN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-১২,৩৪,৫৬৮.৭৮');
    });

    test('testNumFmtNative_as_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'as-IN', useNative: true, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-1234568.78), '-১২,৩৪,৫৬৮.৭৮');
    });

    test('testNumFmtCurrencyFormatNativeCurrencyForLocale_as_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'as-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹ ১,০০,১১০.৫৭');
    });

    test('testNumFmtCurrencyFormatNegativeNativeCurrencyForLocale_as_IN1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'as-IN', useNative: true, currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₹ ১,০০,১১০.৫৭');
    });

    test('testNumFmtPercentageFormatRegular_as_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'as-IN', useNative: true, type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '৫৭.৮%');
    });

    test('testNumFmtPercentageNativeFormatRegular_as_IN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'as-IN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '৫৭.৮%');
    });

    //test cases for en-US
    test('testNumFmt_en_US', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-US', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_US', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-US', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_US', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-US', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for en-GB

    test('testNumFmtenGB', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-GB', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_GB', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-GB', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_GB', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-GB', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for ko-KR

    test('testNumFmtko_KR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ko-KR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocaleko_KR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'ko-KR',
          currency: 'KRW',
          maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₩100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_ko_KR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ko-KR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for zh-Hans-CN
    test('testNumFmt_zh_Hans_CN', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hans-CN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_zh_Hans_CN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'zh-Hans-CN', currency: 'CNY'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '¥100,110.57');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_zh_Hans_CN',
        () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'zh-Hans-CN', currency: 'CNY'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-¥100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_zh_Hans_CN', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hans-CN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    test('testNumFmtPercentageFormatNegativeRegular_zh_Hans_CN', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hans-CN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.0), '-57%');
    });

    //test cases for honk-kong

    test('testNumFmt_zh_Hant_HK', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hant-HK', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_zh_Hant_HK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'zh-Hant-HK',
          style: 'iso',
          currency: 'HKD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'HKD100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_zh_Hant_HK', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hant-HK', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //zh-Hank-TW

    test('testNumFmt_zh_Hant_TW', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hant-TW', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_zh_Hant_TW', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'zh-Hant-TW',
          style: 'iso',
          currency: 'TWD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'TWD100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_zh_Hant_TW', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'zh-Hant-TW', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for fr-FR
    test('testNumFmt_fr_FR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fr-FR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmt_fr_FR1', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fr-FR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_fr_FR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fr-FR', currency: 'CAD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'100 110,57 $');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_fr_FR1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fr-FR', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'100 110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_fr_FR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fr-FR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    //test cases for pt-BR
    test('testNumFmt_pt_BR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pt-BR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtPercentageFormatRegular_pt_BR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pt-BR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.21), '57,21%');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_pt_BR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pt-BR', currency: 'BRL'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'R$ 100.110,57');
    });

    //test cases for pt-PT
    test('testNumFmt_pt_PT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pt-PT', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_pt_PT', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pt-PT', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'100 110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_pt_PT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pt-PT', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for es-ES
    test('testNumFmt_es_ES', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-ES', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_ES', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-ES', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_es_ES', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-ES', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    //test cases for es-CO
    test('testNumFmt_es_CO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-CO', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_CO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-CO', currency: 'COP'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$ 100.110,57');
    });

    test('testNumFmtPercentageFormatRegular_es_CO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-CO', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for ja-JP
    test('testNumFmt_ja_JP', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ja_JP', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ja-JP', currency: 'JPY'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '¥100,111');
    });

    test('testNumFmtPercentageFormatRegular_ja_JP', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for itIT
    test('testNumFmt_it_IT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'it-IT', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_it_IT', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'it-IT', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_it_IT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'it-IT', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for sv-SE
    test('testNumFmt_sv_SE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'sv-SE', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '−123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_sv_SE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'sv-SE', currency: 'SEK'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 kr');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_sv_SE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'sv-SE', currency: 'SEK'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '−100 110,57 kr');
    });

    test('testNumFmtPercentageFormatRegular_sv_SE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'sv-SE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    test('testNumFmtPercentageFormatNegative_sv_SE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'sv-SE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.0), '−57 %');
    });

    //test cases for fi-FI
    test('testNumFmt_fi_FI', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fi-FI', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '−123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_fi_FI', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fi-FI', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 €');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_fi_FI', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fi-FI', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '−100 110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_fi_FI', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fi-FI', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    test('testNumFmtPercentageFormatNegative_fi_FI', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fi-FI', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.0), '−57 %');
    });

    //test cases for cs-CZ
    test('testNumFmt_cs_CZ', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'cs-CZ', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_cs_CZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'cs-CZ', currency: 'CZK'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 Kč');
    });

    test('testNumFmtPercentageFormatRegular_cs_CZ', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'cs-CZ', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    //test cases for el-GR
    test('testNumFmt_el_GR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'el-GR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_el_GR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'el-GR', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_el_GR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'el-GR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for hu-HU
    test('testNumFmt_hu_Hu', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'hu-HU', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_hu_Hu', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'hu-HU', currency: 'HUF'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 Ft');
    });

    test('testNumFmtPercentageFormatRegular_hu_HU', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'hu-HU', type: 'percentage'));
      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for nl_NL
    test('testNumFmt_nl_NL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'nl-NL', maxFractionDigits: 2));
      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_nl_NL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'nl-NL', currency: 'EUR'));
      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '€ 100.110,57');
    });

    test('testNumFmtPercentageFormatRegular_nl_NL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'nl-NL', type: 'percentage'));
      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for pl_PL
    test('testNumFmt_pl_PL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pl-PL', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_pl_PL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pl-PL', currency: 'PLN'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 zł');
    });

    test('testNumFmtPercentageFormatRegular_pl_PL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pl-PL', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    //test cases for da-DK
    test('testNumFmt_da_DK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'da-DK', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_da_DK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'da-DK', currency: 'DKK'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 kr');
    });

    test('testNumFmtPercentageFormatRegular_da_DK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'da-DK', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    //test cases for ro_RO
    test('testNumFmt_ro_RO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ro-RO', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ro_RO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ro-RO', currency: 'RON'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 lei');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_ro_RO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ro-RO', currency: 'RON'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100.110,57 lei');
    });

    test('testNumFmtPercentageFormatRegular_ro_RO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ro-RO', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57 %');
    });

    test('testNumFmtPercentageFormatNegative_ro_RO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ro-RO', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.0), '-57 %');
    });

    //test cases for en-IN
    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹1,00,110.57');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_as_IN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'as-IN', currency: 'INR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₹ ১,০০,১১০.৫৭');
    });

    //test cases for ar-SA
    test('testNumFmt_ar_SA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ar-SA', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '؜-١٢٣٬٤٥٦٫٧٨');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ar_SA', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ar-SA', currency: 'SAR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '‏١٠٠٬١١٠٫٥٧ ر.س');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_ar_SA', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ar-SA', currency: 'SAR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '؜-‏١٠٠٬١١٠٫٥٧ ر.س');
    });

    test('testNumFmtPercentageFormatRegular_ar_SA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ar-SA', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '٥٧٫٨٪؜');
    });

    test('testNumFmtPercentageFormatNegative_ar_SA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ar-SA', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '؜-٥٧٫٨٪؜');
    });

    //test cases for bg-BG
    test('testNumFmt_bg_BG', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bg-BG', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_bg_BG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'bg-BG', currency: 'BGN'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 лв');
    });

    test('testNumFmtPercentageFormatRegular_bg_BG', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'bg-BG', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    //test cases for bs-Latn-BA
    test('testNumFmt_bs_Latn_BA', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'bs-Latn-BA', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_bs_Latn_BA', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'bs-Latn-BA', currency: 'BAM'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 KM');
    });

    test('testNumFmtPercentageFormatRegular_bs_Latn_BA', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'bs-Latn-BA', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    test('testNumFmtPercentageFormatNegative_bs_Latn_BA', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'bs-Latn-BA', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57,8%');
    });

    //test cases for de-DE
    test('testNumFmt_de_DE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_de_DE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'de-DE', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_de_DE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    test('testNumFmtPercentageFormatNegative_de_DE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57,8 %');
    });

    //test cases for et-EE
    test('testNumFmt_et_EE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'et-EE', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '−111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_et_EE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'et-EE', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 €');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_cs_CZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'cs-CZ', currency: 'CZK'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100 110,57 Kč');
    });

    test('testNumFmtPercentageFormatRegular_et_EE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'et-EE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    test('testNumFmtPercentageFormatNegative_et_EE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'et-EE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '−57,8%');
    });

    //test cases for fa-IR
    test('testNumFmt_fa_IR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fa-IR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '‎−۱۱۱٬۱۲۳٬۴۵۶٫۷۸');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_fa_IR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fa-IR', currency: 'IRR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '‎﷼۱۰۰٬۱۱۱');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_fa_IR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'fa-IR', currency: 'IRR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '‎−‎﷼۱۰۰٬۱۱۱');
    });

    test('testNumFmtPercentageFormatRegular_fa_IR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fa-IR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '۵۷٫۸٪');
    });

    test('testNumFmtPercentageFormatNegative_fa_IR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fa-IR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '‎−۵۷٫۸٪');
    });

    //test cases for ga-IE
    test('testNumFmt_ga_IE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ga-IE', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ga_IE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ga-IE', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '€100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_ga_IE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ga-IE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for he-IL
    test('testNumFmt_he_IL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'he-IL', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '‎-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_he_IL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'he-IL', currency: 'ILS'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '‏100,110.57 ‏₪');
    });

    test('testNumFmtPercentageFormatRegular_he_IL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'he-IL', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for hr-HR
    test('testNumFmt_hr_HR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'hr-HR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '−111.123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_hr_HR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'hr-HR', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_hr_HR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'hr-HR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    //test cases for id-ID
    test('testNumFmt_id_ID', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'id-ID', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111.123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_id_ID', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'id-ID', currency: 'IDR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Rp100.110,57');
    });

    test('testNumFmtPercentageFormatRegular_id_ID', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'id-ID', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    //test cases for kk-Cyrl-KZ
    test('testNumFmt_kk_Cyrl_KZ', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'kk-Cyrl-KZ', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_kk_Cyrl_KZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'kk-Cyrl-KZ', currency: 'KZT'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 ₸');
    });

    test('testNumFmtPercentageFormatRegular_kk_Cyrl_KZ', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'kk-Cyrl-KZ', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    //test cases for lt-LT
    test('testNumFmt_lt_LT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'lt-LT', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '−111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_lt_LT', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'lt-LT', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 €');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_lt_LT', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'lt-LT', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '−100 110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_lt_LT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'lt-LT', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    test('testNumFmtPercentageFormatNegative_lt_LT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'lt-LT', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '−57,8 %');
    });

    //test cases for lv-LV
    test('testNumFmt_lv_LV', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'lv-LV', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_lv_LV', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'lv-LV', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 €');
    });

    test('testNumFmtPercentageFormatRegular_lv_LV', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'lv-LV', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    //test cases for mk-MK
    test('testNumFmt_mk_MK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'mk-MK', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111.123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_mk_MK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'mk-MK', currency: 'MKD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 ден');
    });

    test('testNumFmtPercentageFormatRegular_mk_MK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'mk-MK', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    //test cases for ms-MY
    test('testNumFmt_ms_MY', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ms-MY', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ms_MY', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ms-MY', currency: 'MNT'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₮100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_ms_MY', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ms-MY', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    //test cases for nb-NO
    test('testNumFmt_nb_NO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'nb-NO', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '−111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_nb_NO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'nb-NO', currency: 'NOK'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 kr');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_nb_NO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'nb-NO', currency: 'NOK'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100 110,57 kr');
    });

    test('testNumFmtPercentageFormatRegular_nb_NO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'nb-NO', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    test('testNumFmtPercentageFormatNegative_nb_NO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'nb-NO', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '−57,8 %');
    });

    //test cases for ru-RU
    test('testNumFmtruRU', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ru-RU', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_ru_RU', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ru-RU', currency: 'RUB'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100 110,57 ₽');
    });

    test('testNumFmtCurrencyFormatCorrectNegativeCurrencyForLocale_ru_RU', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ru-RU', currency: 'RUB'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100 110,57 ₽');
    });

    test('testNumFmtPercentageFormatRegular_ru_RU', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ru-RU', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8 %');
    });

    test('testNumFmtPercentageFormatNegative_ru_RU', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ru-RU', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(-57.8), '-57,8 %');
    });

    //test cases for negative currency
    test('testNumFmtNegativeCurrencyFormatForLocale_nl_NL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'nl-NL', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '€ -100.110,57');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_pl_PL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pl-PL', currency: 'PLN'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100 110,57 zł');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_US', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-US', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_et_EE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'et-EE', currency: 'EUR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '−100 110,57 €');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_ko_KR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'ko-KR',
          currency: 'KRW',
          maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₩100,110.57');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_ms_MY', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'ms-MY', currency: 'MNT'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₮100,110.57');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_pt_BR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'pt-BR', currency: 'BRL'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-R$ 100.110,57');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_es_EC', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-EC', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'$-100.110,57');
    });

    //test cases for en-SL

    test('testNumFmt_en_SL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-SL', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_SL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-SL', currency: 'SLE'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'SLE100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_SL', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-SL', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_SL', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-SL', currency: 'SLE'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-SLE100,110.57');
    });

    //test cases for en-SG

    test('testNumFmt_en_SG', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-SG', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_SG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-SG', currency: 'SGD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_SG', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-SG', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_SG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-SG', currency: 'SGD'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    //test caes for en-ZA
    test('testNumFmt_en_ZA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-ZA', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), r'-111 123 456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_ZA', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'R100 110,57');
    });

    test('testNumFmtPercentageFormatRegular_en_ZA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-ZA', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57,8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_ZA', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-R100 110,57');
    });

    //test cases for en-MY

    test('testNumFmt_en_MY', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-MY', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), r'-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_MY', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-MY', currency: 'MYR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'RM100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_MY', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-MY', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_MY', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-MY', currency: 'MYR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-RM100,110.57');
    });

    //test cases for en-MM

    test('testNumFmt_en_MM', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-MM', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_MM', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-MM', currency: 'MMK'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'K100,111');
    });

    test('testNumFmtPercentageFormatRegular_en_MM', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-MM', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_MM', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-MM', currency: 'MMK'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-K100,111');
    });

    //test cases for en-NZ

    test('testNumFmt_en_NZ', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-NZ', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_NZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-NZ', currency: 'NZD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_NZ', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-NZ', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_NZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-NZ', currency: 'NZD'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    //test cases for en-NG
    test('testNumFmt_en_NG', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-NG', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_NG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-NG', currency: 'NGN'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₦100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_NG', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-NG', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_NG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-NG', currency: 'NGN'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₦100,110.57');
    });

    //test cases for en-PK

    test('testNumFmt_en_PK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-PK', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_PK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-PK', currency: 'PKR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Rs100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_PK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-PK', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_PK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-PK', currency: 'PKR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Rs100,110.57');
    });

    //test cases for en-PH

    test('testNumFmt_en_PH', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-PH', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_PH', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-PH', currency: 'PHP'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '₱100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_PH', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-PH', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_PH', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-PH', currency: 'PHP'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-₱100,110.57');
    });

    //test cases for en-PR

    test('testNumFmt_en_PR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-PR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_PR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-PR', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_PR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-PR', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_PR', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-PR', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    //test cases for en-RW
    test('testNumFmt_en_RW', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-RW', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_RW', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-RW', currency: 'RWF'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'RF100,111');
    });

    test('testNumFmtPercentageFormatRegular_en_RW', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-RW', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_RW', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-RW', currency: 'RWF'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-RF100,111');
    });

    //test cases for en-LK

    test('testNumFmt_en_LK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-LK', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_LK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-LK', currency: 'LKR'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Rs100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_LK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-LK', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_LK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-LK', currency: 'LKR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Rs100,110.57');
    });

    //test cases for en-SD

    test('testNumFmt_en_SD', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-SD', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_SD', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-SD', currency: 'SDG'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '£100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_SD', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-SD', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_SD', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-SD', currency: 'SDG'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-£100,110.57');
    });

    //test cases for en-TZ

    test('testNumFmt_en_TZ', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-TZ', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_en_TZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-TZ', currency: 'TZS'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Sh100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_en_TZ', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-TZ', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_TZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-TZ', currency: 'TZS'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Sh100,110.57');
    });

    //test cases for es-DO

    test('testNumFmt_es_DO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-DO', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_DO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-DO', currency: 'DOP'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_es_DO', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-DO', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_es_DO', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-DO', currency: 'DOP'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    //test cases for es-SV

    test('testNumFmt_es_SV', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-SV', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_SV', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-SV', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_es_SV', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-SV', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_es_SV', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-SV', currency: 'USD'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    //test cases for es-GT

    test('testNumFmt_es_GT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-GT', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_GT', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-GT', currency: 'GTQ'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Q100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_es_GT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-GT', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_es_GT', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-GT', currency: 'GTQ'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Q100,110.57');
    });

    //test cases for es-HN

    test('testNumFmt_es_HN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-HN', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_HN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-HN', currency: 'HNL'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'L100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_es_HN', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-HN', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_es_HN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-HN', currency: 'HNL'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-L100,110.57');
    });

    //test cases for es-MX

    test('testNumFmt_es_MX', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-MX', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-111123456.785), '-111,123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_es_MX', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-MX', currency: 'MXN'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), r'$100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_es_MX', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'es-MX', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.8), '57.8%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_es_MX', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'es-MX', currency: 'MXN'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), r'-$100,110.57');
    });

    // test case for az-Latn-AZ
    test('testNumFmt_az_Latn_AZ', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'az-Latn-AZ', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_az_Latn_AZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'az-Latn-AZ',
          currency: 'AZN',
          maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100.110,57 ₼');
    });

    test('testNumFmtPercentageFormatRegular_az_Latn_AZ', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'az-Latn-AZ', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_az_Latn_AZ', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'az-Latn-AZ', currency: 'AZN'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100.110,57 ₼');
    });

    // test case for km-KH
    test('testNumFmt_km_KH', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'km-KH', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_km_KH', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'km-KH',
          currency: 'KHR',
          maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), '100,110.57៛');
    });

    test('testNumFmtPercentageFormatRegular_km_KH', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'km-KH', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_km_KH', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'km-KH', currency: 'KHR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-100,110.57៛');
    });

    // test case for si-LK
    test('testNumFmt_si_LK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'si-LK', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_si_LK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'si-LK',
          currency: 'LKR',
          maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Rs100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_si_LK', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'si-LK', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_si_LK', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'si-LK', currency: 'LKR'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Rs100,110.57');
    });

    // test case for sw-Latn-KE
    test('testNumFmt_sw_KE', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'sw-Latn-KE', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmtCurrencyFormatCorrectCurrencyForLocale_sw_KE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'sw-Latn-KE',
          currency: 'KES',
          maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Sh 100,110.57');
    });

    test('testNumFmtPercentageFormatRegular_sw_KE', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(locale: 'sw-Latn-KE', type: 'percentage'));

      expect(fmt, isNotNull);
      expect(fmt.format(57.0), '57%');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_sw_KE', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'sw-Latn-KE', currency: 'KES'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Sh 100,110.57');
    });

    test('testNumFmtCurrencyFormatForLocale_en_CW', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-CW', currency: 'XCG'));

      expect(fmt, isNotNull);
      expect(fmt.format(100110.57), 'Cg.100,110.57');
    });

    test('testNumFmtNegativeCurrencyFormatForLocale_en_CW', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'en-CW', currency: 'XCG'));

      expect(fmt, isNotNull);
      expect(fmt.format(-100110.57), '-Cg.100,110.57');
    });

    test('testNumFmt_en_GB', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-GB', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });

    test('testNumFmt_en_CA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'en-CA', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });
    test('testNumFmt_ja_JP', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'ja-JP', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,456.78');
    });
    test('testNumFmt_pt_BR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'pt-BR', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });
    test('testNumFmt_de_DE', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });
    test('testNumFmt_id_ID', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'id-ID', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });
    test('testNumFmt_fr_CA', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fr-CA', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,78');
    });
    test('testNumFmt_it_IT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'it-IT', maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.456,78');
    });
    test('testNumFmtGetSignificantDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.getSignificantDigits(), 3);
    });
    // todo
    // test('testNumFmtGetSignificantDigitsAsString', () {
    //     final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
    //         significantDigits: '3'
    //     ));

    //     expect(fmt, isNotNull);
    //     expect(fmt.getSignificantDigits(), 3);

    // });
    test('testNumFmtSignificantDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(123456.785), '123,000');
    });
    test('testNumFmtSignificantDigitsNegative', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123,000');
    });
    test('testNumFmtSignificantDigitsLessThanOne', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(0.012345), '0.0123');
    });
    test('testNumFmtSignificantDigitsStradleDecimalPoint', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 4));

      expect(fmt, isNotNull);
      expect(fmt.format(12.341262), '12.34');
    });
    test('testNumFmtSignificantDigitsRoundUp', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 4));

      expect(fmt, isNotNull);
      expect(fmt.format(123456.785), '123,500');
    });
    test('testNumFmtSignificantDigitsConflictsWithMaxFractionDigits1', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(significantDigits: 6, maxFractionDigits: 4));

      expect(fmt, isNotNull);
      expect(fmt.format(156.785384), '156.785');
    });
    test('testNumFmtSignificantDigitsConflictsWithMaxFractionDigits2', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(significantDigits: 6, maxFractionDigits: 2));

      expect(fmt, isNotNull);
      expect(fmt.format(156.785384), '156.79');
    });
    test('testNumFmtSignificantDigitsIT', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'it-IT', significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123.000');
    });
    test('testNumFmtSignificantDigitsFR', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'fr-FR', significantDigits: 7));

      expect(fmt, isNotNull);
      expect(fmt.format(-123456.785), '-123 456,8');
    });
    test('testNumFmtSignificantDigitsNone', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(0), '0');
    });
    test('testNumFmtSignificantDigitsNotEnoughDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(significantDigits: 3));

      expect(fmt, isNotNull);
      expect(fmt.format(1200), '1,200');
    });
    test('testNumFmtSignificantDigitsScientificNotation', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(significantDigits: 3, style: 'scientific'));

      expect(fmt, isNotNull);
      expect(fmt.format(12345678900), '1.23E+10');
    });
  });
}
