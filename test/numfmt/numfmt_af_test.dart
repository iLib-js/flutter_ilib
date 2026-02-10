import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [numfmt_test.dart] file.');
  setUpAll(() async {
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('iLibNumFmt_af', () {
    test('testNumFmtNumberZAFormatNoFractionalLimit', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA'));
      expect(fmt, isNotNull);

      // no limit imposed by the function -- JavaScript has a limit for itself though
      // of about 16 significant digits, which stems from the implementation of
      // floating point arithmetic that it uses
      expect(fmt.format(1.012345678901234), '1,012345678901234');
    });
    test('testNumFmtNumberZAFormatNoIntegralLimit', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA'));

      expect(fmt, isNotNull);

      // no limit imposed by the function -- JavaScript has a limit for itself though
      // of about 16 significant digits, which stems from the implementation of
      // floating point arithmetic that it uses
      expect(fmt.format(12345678901234.0), '12 345 678 901 234');
    });
    test('testNumFmtNumberZAFormatWithMaxFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', maxFractionDigits: 2));

      expect(fmt, isNotNull);

      expect(fmt.format(1.7453), '1,75');
    });
    test('testNumFmtNumberZAFormatWithMinFracDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', minFractionDigits: 4));

      expect(fmt, isNotNull);

      expect(fmt.format(1.75), '1,7500');
    });
    test('testNumFmtNumberZAFormatWithMinFracDigitsTooSmall', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', minFractionDigits: -5));

      expect(fmt, isNotNull);

      // lower bound is 0
      expect(fmt.format(1.75), '1,75');
    });
    test('testNumFmtNumberZAFormatWithMinFracDigitsTooSmallNoDigits', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', minFractionDigits: -5));

      expect(fmt, isNotNull);

      // lower bound is 0
      expect(fmt.format(17500), '17 500');
    });
    test('testNumFmtNumberZAFormatWithMinFracDigitsTooBig', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', minFractionDigits: 25));

      expect(fmt, isNotNull);

      // limit to 20, but the precision is only to 16 so it is rounded and zero-padded at the end
      expect(fmt.format(1.012345678901234567890123456789),
          '1,01234567890123460000');
    });
    test('testNumFmtNumberZAFormatWithMinAndMaxFracDigitsTooSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.7), '1,700');
    });
    test('testNumFmtNumberZAFormatWithMinAndMaxFracDigitsTooBig', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.76543298765), '1,765433');
    });
    test('testNumFmtNumberZAFormatWithMinAndMaxFracDigitsJustRight', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.76543), '1.76543');
    });
    test('testNumFmtNumberZAStyleStandard', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'standard'));

      expect(fmt, isNotNull);

      expect(fmt.format(2345678901234567.0), '2 345 678 901 234 567');
    });
    test('testNumFmtNumberZAFormatStandardWithMultiGroups', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'standard'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456789.4), '123 456 789,4');
    });
    test('testNumFmtNumberZAFormatWithMultiGroupsNegative', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'standard'));

      expect(fmt, isNotNull);

      expect(fmt.format(-123456789.4), '-123 456 789,4');
    });
    test('testNumFmtNumberZAStyleScientific', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'scientific'));

      expect(fmt, isNotNull);

      expect(fmt.format(12345678901234567890123456789.0),
          '1,2345678901234568E+28');
    });
    test('testNumFmtNumberZAStyleScientificSmall', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'scientific'));

      expect(fmt, isNotNull);

      expect(fmt.format(0.000001234567890123456), '1,234567890123456E-6');
    });
    test('testNumFmtNumberZAStyleScientificWithMinFractionDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', style: 'scientific', minFractionDigits: 5));

      expect(fmt, isNotNull);

      expect(fmt.format(12340000000000000000000000000.0), '1,23400E+28');
    });
    test('testNumFmtNumberZAStyleScientificWithMinFractionDigits', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', style: 'scientific', minFractionDigits: 1));

      expect(fmt, isNotNull);

      // min of 1 means we can have more digits than one!
      expect(fmt.format(12345678900000000000000000000.0), '1,23456789E+28');
    });
    test('testNumFmtNumberZAStyleScientificWithMinFractionDigitsTooSmall', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', style: 'scientific', minFractionDigits: -2));

      expect(fmt, isNotNull);

      expect(fmt.format(123400000000000000000.0), '1,234E+20');
    });
    test(
        'testNumFmtNumberZAStyleScientificWithMinFractionDigitsTooSmallNoDigits',
        () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific', locale: 'af-ZA', minFractionDigits: -2));

      expect(fmt, isNotNull);

      expect(fmt.format(10000000000000000000000000000.0), '1E+28');
    });
    test('testNumFmtNumberZAStyleScientificWithMinFractionDigitsTooBig', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', style: 'scientific', minFractionDigits: 25));

      expect(fmt, isNotNull);

      // max is 20
      expect(fmt.format(12340000000000000000000000000.0),
          '1,23400000000000000000E+28');
    });
    test('testNumFmtNumberZAStyleScientificWithMaxAndRoundUp', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          style: 'scientific',
          locale: 'af-ZA',
          maxFractionDigits: 5,
          roundingMode: 'up'));

      expect(fmt, isNotNull);

      expect(fmt.format(12345678901234567890123456789.0), '1,23457E+28');
    });
    test('testNumFmtNumberZAStyleNogroupingInteger', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'nogrouping'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456789), '123456789');
    });
    test('testNumFmtNumberZAStyleNogroupingFloat', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', style: 'nogrouping'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456789.345345), '123456789,345345');
    });
    test('testGetUseNativeZAHasNativeButFalse', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA'));

      expect(fmt, isNotNull);

      // Tamil does have native digits, but they are not frequently used
      expect(fmt.getUseNative(), false);
    });
    test('testNumFmtGetUseNativeOverrideTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', useNative: true));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), true);
    });
    test('testNumFmtGetUseNativeExplicitTrue', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', useNative: true));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), true);
    });
    test('testNumFmtGetUseNativeExplicitFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', useNative: false));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), false);
    });
    test('testNumFmtGetUseNativeOverrideFalse', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', useNative: false));

      expect(fmt, isNotNull);

      expect(fmt.getUseNative(), false);
    });
    test('testNumFmtPercentageFormatRegular', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', type: 'percentage'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.0), '57%');
    });
    test('testNumFmtPercentageGetType', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', type: 'percentage'));

      expect(fmt, isNotNull);

      expect(fmt.getType(), 'percentage');
    });
    test('testNumFmtPercentageFormatWithDecimal', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(locale: 'af-ZA', type: 'percentage'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.8), '57,8%');
    });
    test('testNumFmtCurrencyFormatZADefault1', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.05), 'R57,05');
    });
    test('testNumFmtCurrencyFormatZADefault2', () {
      final ILibNumFmt fmt =
          ILibNumFmt(ILibNumFmtOptions(type: 'currency', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.05), 'R57.05');
    });
    test('testNumFmtCurrencyFormatZADefault4', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.056), 'R57,06');
    });
    test('testNumFmtCurrencyUseCorrectFractionDigitsForLocale', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.getMaxFractionDigits(), 2);
      expect(fmt.getMinFractionDigits(), 2);
    });
    test('testNumFmtCurrencyFormatZADefault5', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57), 'R57,00');
    });
    test('testNumFmtCurrencyFormatZADefault6', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.1), 'R57,10');
    });
    test('testNumFmtCurrencyFormatZADefault7', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency',
          locale: 'af-ZA',
          minFractionDigits: 5,
          currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.1), 'R57,10000');
    });
    test('testNumFmtCurrencyFormatZADefault8', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', style: 'iso', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(57.1), 'ZAR57,10');
    });
    test('testNumFmtCurrencyFormatZADefault9', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(-57), '-R57,00');
    });
    test('testNumFmtCurrencyFormatZAGrouping', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          type: 'currency', locale: 'af-ZA', currency: 'ZAR'));

      expect(fmt, isNotNull);

      expect(fmt.format(123456788), 'R123 456 788,00');
    });
    test('testNumFmtNumberNAFormatWithMinAndMaxFracDigitsJustRight', () {
      final ILibNumFmt fmt = ILibNumFmt(
          ILibNumFmtOptions(minFractionDigits: 3, maxFractionDigits: 6));

      expect(fmt, isNotNull);

      expect(fmt.format(1.76543), '1.76543');
    });
  });
}
