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

  group('iLibNumFmt_am', () {
    test('testNumFmtNumberFormatNaN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(double.nan), 'NaN');
    });

    test('testNumFmtNumberETFormatNoFractionalLimit', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET'));
      expect(fmt, isNotNull);

      // no limit imposed by the function -- JavaScript has a limit for itself though
      // of about 16 significant digits, which stems from the implementation of
      // floating point arithmetic that it uses
      expect(fmt.format(1.012345678901234), '1.012345678901234');
    });
    test('testNumFmtNumberETFormatNoIntegralLimit', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET'));

      expect(fmt, isNotNull);

      // no limit imposed by the function -- JavaScript has a limit for itself though
      // of about 16 significant digits, which stems from the implementation of
      // floating point arithmetic that it uses
      expect(fmt.format(12345678901234.0), '12,345,678,901,234');
    });
    test('testNumFmtNumberETFormatWithMaxFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', maxFractionDigits: 2));

      expect(fmt, isNotNull);

      expect(fmt.format(1.7453), '1.75');
    });
    test('testNumFmtNumberETFormatWithMinFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', minFractionDigits: 4));

      expect(fmt, isNotNull);

      expect(fmt.format(1.75), '1.7500');
    });
    test('testNumFmtNumberETFormatWithMinFracDigitsTooSmall', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', minFractionDigits: -5));

      expect(fmt, isNotNull);

      // lower bound is 0
      expect(fmt.format(1.75), '1.75');
    });
    test('testNumFmtNumberETFormatWithMinFracDigitsTooSmallNoDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', minFractionDigits: -5));

      expect(fmt, isNotNull);

      // lower bound is 0
      expect(fmt.format(17500), '17,500');
    });
    test('testNumFmtNumberETFormatWithMinFracDigitsTooBig', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', minFractionDigits: 25));

      expect(fmt, isNotNull);

      // limit to 20, but the precision is only to 16 so it is rounded and zero-padded at the end
      expect(fmt.format(1.012345678901234567890123456789),
          '1.01234567890123460000');
    });
    test('testNumFmtNumberETFormatWithMinAndMaxFracDigitsTooSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.7), '1.700');
    });
    test('testNumFmtNumberETFormatWithMinAndMaxFracDigitsTooBig', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.76543298765), '1.765433');
    });
    test('testNumFmtNumberETFormatWithMinAndMaxFracDigitsJustRight', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.76543), '1.76543');
    });
    test('testNumFmtNumberETStyleStandard', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'standard'));

      expect(fmt, isNotNull);

      expect(fmt.format(2345678901234567.0), '2,345,678,901,234,567');
    });
    test('testNumFmtNumberETFormatStandardWithMultiGroups', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'standard'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456789.4), '123,456,789.4');
    });
    test('testNumFmtNumberETFormatWithMultiGroupsNegative', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'standard'));

      expect(fmt, isNotNull);

      expect(fmt.format(-123456789.4), '-123,456,789.4');
    });
    test('testNumFmtNumberETStyleScientific', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'scientific'));

      expect(fmt, isNotNull);

      expect(fmt.format(12345678901234567890123456789.0),
          '1.2345678901234568E+28');
    });
    test('testNumFmtNumberETStyleScientificSmall', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'scientific'));

      expect(fmt, isNotNull);

      expect(fmt.format(0.000001234567890123456), '1.234567890123456E-6');
    });
    test('testNumFmtNumberETStyleScientificWithMinFractionDigits1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', style: 'scientific', minFractionDigits: 5));

      expect(fmt, isNotNull);

      expect(fmt.format(12340000000000000000000000000.0), '1.23400E+28');
    });
    test('testNumFmtNumberETStyleScientificWithMinFractionDigits2', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', style: 'scientific', minFractionDigits: 1));

      expect(fmt, isNotNull);

      // min of 1 means we can have more digits than one!
      expect(fmt.format(12345678900000000000000000000.0), '1.23456789E+28');
    });
    test('testNumFmtNumberETStyleScientificWithMinFractionDigitsTooSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', style: 'scientific', minFractionDigits: -2));

      expect(fmt, isNotNull);

      expect(fmt.format(123400000000000000000.0), '1.234E+20');
    });
    test(
        'testNumFmtNumberETStyleScientificWithMinFractionDigitsTooSmallNoDigits',
        () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', locale: 'am-ET', minFractionDigits: -2));

      expect(fmt, isNotNull);

      expect(fmt.format(10000000000000000000000000000.0), '1E+28');
    });
    test('testNumFmtNumberETStyleScientificWithMinFractionDigitsTooBig', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', style: 'scientific', minFractionDigits: 25));

      expect(fmt, isNotNull);

      // max is 20
      expect(fmt.format(12340000000000000000000000000.0),
          '1.23400000000000000000E+28');
    });
    test('testNumFmtNumberETStyleScientificWithMaxAndRoundUp', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific',
          locale: 'am-ET',
          maxFractionDigits: 5,
          roundingMode: 'up'));

      expect(fmt, isNotNull);

      expect(fmt.format(12345678901234567890123456789.0), '1.23457E+28');
    });

    test('testNumFmtNumberETStyleNogroupingInteger', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'nogrouping'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456789), '123456789');
    });
    test('testNumFmtNumberETStyleNogroupingFloat', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', style: 'nogrouping'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456789.345345), '123456789.345345');
    });
    test('testNumFmtETGetUseNativeHasNativeButFalse', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET'));

      expect(fmt, isNotNull);

      // Tamil does have native digits, but they are not frequently used
      expect(fmt.getUseNative(), false);
    });
    test('testNumFmtGetUseNativeOverrideTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', useNative: true));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), true);
    });
    test('testNumFmtGetUseNativeExplicitTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', useNative: true));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), true);
    });
    test('testNumFmtGetUseNativeExplicitFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', useNative: false));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), false);
    });
    test('testNumFmtGetUseNativeOverrideFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', useNative: false));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), false);
    });
    test('testNumFmtPercentageFormatRegular', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', type: 'percentage'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.0), '57%');
    });
    test('testNumFmtPercentageGetType', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', type: 'percentage'));

      expect(fmt, isNotNull);

      expect(fmt.getType(), 'percentage');
    });
    test('testNumFmtPercentageFormatWithDecimal', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'am-ET', type: 'percentage'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.8), '57.8%');
    });
    test('testNumFmtCurrencyFormatETDefault1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.05), 'Br57.05');
    });
    test('testNumFmtCurrencyFormatETDefault2', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.05), 'Br57.05');
    });
    test('testNumFmtCurrencyFormatETDefault3', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.056), 'Br57.06');
    });
    test('testNumFmtCurrencyUseCorrectFractionDigitsForLocale', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.getMaxFractionDigits(), 2);
      expect(fmt.getMinFractionDigits(), 2);
    });
    test('testNumFmtCurrencyFormatETDefault4', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57), 'Br57.00');
    });
    test('testNumFmtCurrencyFormatETDefault5', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.1), 'Br57.10');
    });
    test('testNumFmtCurrencyFormatETDefault6', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'am-ET',
          minFractionDigits: 5,
          currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.1), 'Br57.10000');
    });
    test('testNumFmtCurrencyFormatETDefault7', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', style: 'iso', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.1), 'ETB57.10');
    });
    test('testNumFmtCurrencyFormatETDefault8', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(-57), '-Br57.00');
    });
    test('testNumFmtCurrencyFormatETGrouping', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'am-ET', currency: 'ETB'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456788), 'Br123,456,788.00');
    });
  });
}
