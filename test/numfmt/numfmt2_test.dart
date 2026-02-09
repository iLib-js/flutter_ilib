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

  group('iLibNumFmt2', () {
    test('testNumFmtNumberFormatNaN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(double.nan), 'NaN');
    });
    test('testNumFmtNumberFormatInfinity', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(-double.infinity), '-Infinity');
    });

    test('testNumFmt_ar_EG', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-EG', type: 'standard', useNative: false));
      final ILibLocaleInfo li = ILibLocaleInfo('ar-EG');
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');
      expect(fmt.format(123456789.45), '123٬456٬789٫45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-EG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}٪؜');
      expect(li.getNegativePercentageFormat(), '؜-{n}٪؜');
      expect(pctfmt.format(34), '34٪؜');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-EG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‏{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '؜-‏{n} {s}');
      expect(curfmt.format(57.05), '‏57٫05 E£'); //EGP
    });
    test('testNumFmt_ar_IQ', () {
      final ILibLocaleInfo li = new ILibLocaleInfo('ar-IQ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-IQ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');
      expect(fmt.format(123456789.45), '123٬456٬789٫45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-IQ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}٪؜');
      expect(li.getNegativePercentageFormat(), '؜-{n}٪؜');
      expect(pctfmt.format(34), '34٪؜');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-IQ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‏{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '؜-‏{n} {s}');
      expect(curfmt.format(57.05), '‏57 ﺩ.ﻉ.'); //IQD
    });
    test('testNumFmt_ar_MA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-MA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-MA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-MA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}‎%‎');
      expect(li.getNegativePercentageFormat(), '‎-{n}‎%‎');
      expect(pctfmt.format(34), '34‎%‎');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-MA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‏{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '‏-{n} {s}');
      expect(curfmt.format(57.05), '‏57,05 د.م.'); //MAD
    });
    test('testNumFmt_as_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('as-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'as-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'as-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'as-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), '₹ 57.05'); //INR
    });
    test('testNumFmt_bg_BG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bg-BG');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bg-BG', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bg-BG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bg-BG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 лв'); // BGN
    });
    test('testNumFmt_bn_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bn-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bn-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bn-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bn-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_bs_Latn_BA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bs-Latn-BA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bs-Latn-BA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bs-Latn-BA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 KM'); //BAM
    });
    test('testNumFmt_bs_Latn_ME', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bs-Latn-ME');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bs-Latn-ME', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bs-Latn-ME', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_cs_CZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('cs-CZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'cs-CZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'cs-CZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'cs-CZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 Kč'); //CZK
    });
    test('testNumFmt_da_DK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('da-DK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'da-DK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'da-DK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'da-DK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 kr'); // //DKK
    });
    test('testNumFmt_de_AT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-AT');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-AT', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-AT', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-AT',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), '€ 57,05'); //EUR
    });
    test('testNumFmt_de_CH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-CH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-CH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), '’');
      expect(fmt.format(123456789.45), '123’456’789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-CH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-CH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '{s}-{n}');
      expect(curfmt.format(57.05), 'Fr 57.05'); //CHF
    });
    test('testNumFmt_de_DE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-DE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-DE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-DE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-DE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_de_LU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-LU');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-LU', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-LU', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'de-LU',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_el_CY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('el-CY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'el-CY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'el-CY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'el-CY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_el_GR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('el-GR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'el-GR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'el-GR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'el-GR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.0545), '57,05 €'); //EUR
    });
    test('testNumFmt_en_AM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-AM');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AM', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AM', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AM',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '֏57.05'); //AMD (decimals:0)
    });
    test('testNumFmt_en_AU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-AU');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AU', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AU', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AU',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //AUD
    });
    test('testNumFmt_en_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-AZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-AZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₼57.05'); //AZN
    });
    test('testNumFmt_en_CA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-CA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-CA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-CA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-CA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //CAD
    });
    test('testNumFmt_en_GB', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GB');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GB', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GB', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GB',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '£57.05'); //GBP
    });
    test('testNumFmt_en_GH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'GH₵57.05'); //GHS
    });
    test('testNumFmt_en_HK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-HK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-HK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-HK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-HK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //HKD
    });
    test('testNumFmt_en_IE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-IE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '€57.05'); //INR
    });
    test('testNumFmt_en_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_en_IS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-IS');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IS', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IS', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-IS',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'kr57'); //ISK decimals:0
    });
    test('testNumFmt_en_JP', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-JP');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-JP', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-JP', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-JP',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '¥57'); //JPY decimals:0
    });
    test('testNumFmt_en_KE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-KE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-KE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-KE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-KE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Sh57.05'); //KES
    });
    test('testNumFmt_en_KR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-KR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-KR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-KR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-KR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₩57'); //KRW decimals:0
    });
    test('testNumFmt_en_LK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-LK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-LK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-LK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-LK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Rs57.05'); //LKR
    });
    test('testNumFmt_en_MM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MM');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MM', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MM', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MM',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'K57'); //MMK decimals:0
    });
    test('testNumFmt_en_MW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MW');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MW', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MW', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MW',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'MK57.05'); //MWK
    });
    test('testNumFmt_en_MY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'RM57.05'); //MYR
    });
    test('testNumFmt_en_NG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-NG');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-NG', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-NG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-NG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₦57.05'); //NGN
    });
    test('testNumFmt_en_NZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-NZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-NZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-NZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-NZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //NZD
    });
    test('testNumFmt_en_PH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-PH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-PH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-PH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-PH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₱57.05'); //PHP
    });
    test('testNumFmt_en_PR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-PR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-PR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-PR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-PR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //USD
    });
    test('testNumFmt_en_SG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-SG');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-SG', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-SG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-SG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //SGD
    });
    test('testNumFmt_en_US', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-US');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-US', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-US', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-US',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //USD
    });
    test('testNumFmt_en_UG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-UG');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-UG', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-UG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-UG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Sh57'); //UGX decimals:0
    });
    test('testNumFmt_en_ZA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-ZA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-ZA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-ZA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-ZA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'R57,05'); //ZAR
    });
    test('testNumFmt_en_ZM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-ZM');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-ZM', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-ZM', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-ZM',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'ZK57.05'); //ZMW
    });
    test('testNumFmt_es_AR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-AR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-AR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-AR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-AR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), r'$ 57,05'); //ARS
    });
    test('testNumFmt_es_BO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-BO');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-BO', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-BO', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-BO',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Bs57,05'); //BOB
    });
    test('testNumFmt_es_CL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CL');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CL', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CL', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CL',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '{s}-{n}');
      expect(curfmt.format(57.05), r'$57'); //CLP
    });
    test('testNumFmt_es_CO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CO');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CO', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CO', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CO',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), r'$ 57,05'); //COP
    });
    test('testNumFmt_es_DO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-DO');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-DO', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-DO', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-DO',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //DOP
    });
    test('testNumFmt_es_EC', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-EC');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-EC', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-EC', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-EC',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '{s}-{n}');
      expect(curfmt.format(57.05), r'$57,05'); //USD
    });
    test('testNumFmt_es_ES', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-ES');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-ES', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-ES', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-ES',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_es_GT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-GT');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-GT', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-GT', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-GT',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Q57.05'); //GTQ
    });
    test('testNumFmt_es_HN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-HN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-HN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-HN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-HN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'L57.05'); //HNL
    });
    test('testNumFmt_es_MX', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-MX');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-MX', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-MX', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-MX',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //MXN
    });
    test('testNumFmt_es_NI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-NI');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-NI', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-NI', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-NI',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'C$57.05'); //NIO
    });
    test('testNumFmt_es_PA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //USD
    });
    test('testNumFmt_es_PE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), 'S/. 57.05'); //PEN
    });
    test('testNumFmt_es_PR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //USD
    });
    test('testNumFmt_es_PY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-PY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '{s} -{n}');
      expect(curfmt.format(57.05), '₲ 57'); //PYG
    });
    test('testNumFmt_es_SV', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-SV');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-SV', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-SV', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-SV',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //USD
    });
    test('testNumFmt_es_US', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-US');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-US', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-US', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-US',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05');
    });
    test('testNumFmt_es_UY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-UY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-UY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-UY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-UY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), r'$ 57,05'); //UYU
    });
    test('testNumFmt_es_VE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-VE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-VE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-VE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-VE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '{s}-{n}');
      expect(curfmt.format(57.05), 'VES57,05'); //VES
    });
    test('testNumFmt_et_EE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('et-EE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'et-EE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'et-EE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '−{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'et-EE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_fa_IR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fa-IR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fa-IR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');
      expect(fmt.format(123456789.45), '123٬456٬789٫45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fa-IR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}٪');
      expect(li.getNegativePercentageFormat(), '‎−{n}٪');
      expect(pctfmt.format(34), '34٪');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fa-IR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‎{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '‎−‎{s}{n}');
      expect(curfmt.format(57.05), '‎﷼57'); //IRR
    });
    test('testNumFmt_fi_FI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fi-FI');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fi-FI', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fi-FI', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '−{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fi-FI',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_fr_BE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-BE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-BE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-BE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-BE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_fr_CA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-CA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-CA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-CA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), r'57,05 $'); //CAD
    });
    test('testNumFmt_fr_CH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-CH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-CH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-CH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 Fr'); //CHF
    });
    test('testNumFmt_fr_FR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-FR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-FR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-FR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-FR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_fr_LU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-LU');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-LU', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-LU', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'fr-LU',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_ga_IE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ga-IE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ga-IE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ga-IE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ga-IE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '€57.05'); //EUR
    });
    test('testNumFmt_gu_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('gu-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'gu-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'gu-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'gu-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_he_IL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('he-IL');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'he-IL', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'he-IL', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '‎-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'he-IL',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‏{n} ‏{s}');
      expect(li.getCurrencyFormats().commonNegative, '‏-{n} ‏{s}');
      expect(curfmt.format(57.05), '‏57.05 ‏₪'); //ILS
    });
    test('testNumFmt_hi_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hi-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hi-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hi-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hi-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_hr_HR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hr-HR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-HR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-HR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '−{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-HR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 €');
    });
    test('testNumFmt_hr_ME', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hr-ME');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-ME', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-ME', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %'); // CLDR 34 change
      expect(li.getNegativePercentageFormat(), '−{n} %'); // CLDR 34 change
      expect(pctfmt.format(34), '34 %'); // CLDR 34 change

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-ME',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_hr_HU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hr-HU');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-HU', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-HU', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %'); // CLDR 34 change
      expect(li.getNegativePercentageFormat(), '−{n} %'); // CLDR 34 change
      expect(pctfmt.format(34), '34 %'); // CLDR 34 change

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'hr-HU',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 Ft'); //HUF
    });
    test('testNumFmt_id_ID', () {
      final ILibLocaleInfo li = ILibLocaleInfo('id-ID');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'id-ID', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'id-ID', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'id-ID',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Rp57,05'); //IDR
    });
    test('testNumFmt_is_IS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('is-IS');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'is-IS', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'is-IS', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'is-IS',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57 kr'); //ISK
    });
    test('testNumFmt_it_CH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('it-CH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'it-CH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), '’');
      expect(fmt.format(123456789.45), '123’456’789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'it-CH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'it-CH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '{s}-{n}');
      expect(curfmt.format(57.05), 'Fr 57.05'); //CHF
    });
    test('testNumFmt_it_IT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('it-IT');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'it-IT', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'it-IT', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'it-IT',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_ja_JP', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ja-JP');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ja-JP', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ja-JP', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ja-JP',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '¥57'); //JPY
    });
    test('testNumFmt_kk_KZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('kk-KZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kk-KZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kk-KZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kk-KZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₸'); //KZT
    });
    test('testNumFmt_kn_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('kn-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kn-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kn-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'kn-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_ko_KR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ko-KR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ko-KR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ko-KR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ko-KR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₩57'); //KRW
    });
    test('testNumFmt_ku_IQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ku-IQ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ku-IQ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');
      expect(fmt.format(123456789.45), '123٬456٬789٫45');
      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ku-IQ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} ٪');
      expect(li.getNegativePercentageFormat(), '‏-{n} ٪');
      expect(pctfmt.format(34), '34 ٪');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ku-IQ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '‏-{n} {s}');
      expect(curfmt.format(57.05), '57 ﺩ.ﻉ.'); //IQD
    });
    test('testNumFmt_lt_LT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('lt-LT');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'lt-LT', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'lt-LT', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '−{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'lt-LT',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_lv_LV', () {
      final ILibLocaleInfo li = ILibLocaleInfo('lv-LV');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'lv-LV', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'lv-LV', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'lv-LV',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_mk_MK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('mk-MK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mk-MK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mk-MK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mk-MK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ден'); //MKD
    });
    test('testNumFmt_ml_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ml-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ml-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ml-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ml-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_mr_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('mr-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mr-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mr-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mr-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_ms_MY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ms-MY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ms-MY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ms-MY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ms-MY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'RM57.05'); //MYR
    });
    test('testNumFmt_nb_NO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nb-NO');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nb-NO', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nb-NO', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '−{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nb-NO',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 kr'); //NOK
    });
    test('testNumFmt_nl_BE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-BE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nl-BE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nl-BE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nl-BE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '{s} -{n}');
      expect(curfmt.format(57.05), '€ 57,05'); //EUR
    });
    test('testNumFmt_nl_NL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-NL');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nl-NL', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nl-NL', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'nl-NL',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '{s} -{n}');
      expect(curfmt.format(57.05), '€ 57,05'); //EUR
    });
    test('testNumFmt_pa_Guru_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa-Guru-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pa-Guru-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pa-Guru-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_pl_PL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pl-PL');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pl-PL', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pl-PL', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pl-PL',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 zł'); //PLN
    });
    test('testNumFmt_pt_BR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-BR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pt-BR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pt-BR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pt-BR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), r'R$ 57,05'); //BRL
    });
    test('testNumFmt_pt_PT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-PT');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pt-PT', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pt-PT', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'pt-PT',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_ro_RO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ro-RO');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ro-RO', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ro-RO', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ro-RO',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 lei'); //RON
    });
    test('testNumFmt_sr_Cyrl_RS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sr-Cyrl-RS');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sr-Cyrl-RS', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sr-Cyrl-RS', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57 дин.'); //RSD
    });
    test('testNumFmt_sr_Latn_RS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sr-Latn-RS');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sr-Latn-RS', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sr-Latn-RS', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57 дин.'); //RSD
    });
    test('testNumFmt_ru_BY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-BY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-BY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-BY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-BY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 р.'); //BYN
    });
    test('testNumFmt_ru_KG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-KG');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-KG', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-KG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-KG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ⃀'); //KGS
    });
    test('testNumFmt_ru_KZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-KZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-KZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-KZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-KZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₸'); //KZT
    });
    test('testNumFmt_ru_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-GE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-GE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-GE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-GE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₾'); //GEL
    });
    test('testNumFmt_ru_RU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-RU');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-RU', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-RU', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-RU',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₽'); //RUB
    });
    test('testNumFmt_ru_UA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-UA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-UA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-UA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ru-UA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₴'); //UAH
    });
    test('testNumFmt_sk_SK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sk-SK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sk-SK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sk-SK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sk-SK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_sl_SI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sl-SI');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sl-SI', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sl-SI', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      //expect(li.getNegativePercentageFormat(), '–{n} %'); //CLDR 34 'minus symbol change
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sl-SI',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      //expect(li.getCurrencyFormats().commonNegative, '–{n} {s}'); //CLDR 34 'minus symbol change
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_sq_AL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sq-AL');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sq-AL', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sq-AL', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sq-AL',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57 L'); //ALL
    });
    test('testNumFmt_sq_ME', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sq-ME');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sq-ME', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sq-ME', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sq-ME',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_sv_FI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sv-FI');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sv-FI', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sv-FI', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '−{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sv-FI',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 €'); //EUR
    });
    test('testNumFmt_sv_SE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sv-SE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sv-SE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sv-SE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '−{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'sv-SE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '−{n} {s}');
      expect(curfmt.format(57.05), '57,05 kr'); //SEK
    });
    test('testNumFmt_ta_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ta-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ta-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ta-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ta-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_te_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('te-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'te-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'te-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'te-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₹57.05'); //INR
    });
    test('testNumFmt_th_TH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('th-TH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'th-TH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'th-TH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'th-TH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '฿57.05'); //THB
    });
    test('testNumFmt_tr_AM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-AM');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-AM', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-AM', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '%{n}');
      expect(li.getNegativePercentageFormat(), '-%{n}');
      expect(pctfmt.format(34), '%34');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-AM',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '֏57,05'); //AMD
    });
    test('testNumFmt_tr_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-AZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-AZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-AZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '%{n}');
      expect(li.getNegativePercentageFormat(), '-%{n}');
      expect(pctfmt.format(34), '%34');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-AZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₼57,05'); //AZN
    });
    test('testNumFmt_tr_CY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-CY');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-CY', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-CY', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '%{n}');
      expect(li.getNegativePercentageFormat(), '-%{n}');
      expect(pctfmt.format(34), '%34');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-CY',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '€57,05'); //EUR
    });
    test('testNumFmt_tr_TR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-TR');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-TR', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-TR', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '%{n}');
      expect(li.getNegativePercentageFormat(), '-%{n}');
      expect(pctfmt.format(34), '%34');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'tr-TR',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₺57,05'); //TRY
    });
    test('testNumFmt_uk_UA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uk-UA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'uk-UA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'uk-UA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'uk-UA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₴'); //UAH
    });
    test('testNumFmt_ur_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ur-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ur-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');
      expect(fmt.format(123456789.45), '123٬456٬789٫45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ur-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '‎-‎{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ur-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '‎-‎{s} {n}');
      expect(curfmt.format(57.05), '₹ 57٫05'); //INR
    });
    test('testNumFmt_uz_Latn_UZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uz-Latn-UZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'uz-Latn-UZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'uz-Latn-UZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 лв'); //UZS
    });
    test('testNumFmt_vi_VN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('vi-VN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'vi-VN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'vi-VN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'vi-VN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57 ₫'); //VND
    });
    test('testNumFmt_zh_Hans_CN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hans-CN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hans-CN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hans-CN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '¥57.05'); //CNY
    });
    test('testNumFmt_zh_Hant_HK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hant-HK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hant-HK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hant-HK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //HKD
    });
    test('testNumFmt_zh_Hant_TW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hant-TW');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hant-TW', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hant-TW', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //TWD
    });
    test('testNumFmt_en_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-GE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '₾57.05'); //GEL
    });
    test('testNumFmt_en_CN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-CN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-CN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-CN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-CN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), '¥57.05'); //CNY
    });
    test('testNumFmt_en_MX', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MX');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MX', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MX', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-MX',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //MXN
    });
    test('testNumFmt_en_TW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-TW');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-TW', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-TW', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'en-TW',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'$57.05'); //TWD
    });
    test('testNumFmt_mn_MN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('mn-MN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mn-MN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mn-MN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'mn-MN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), r'₮ 57.05'); //MNT
    });
    test('testNumFmt_es_CA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');
      expect(pctfmt.format(34), '34 %');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'es-CA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), r'57,05 $'); //CAD
    });
    test('testNumFmt_af_ZA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('af-ZA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'af-ZA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), r'R57,05'); //ZAR
    });
    test('testNumFmt_am_ET', () {
      final ILibLocaleInfo li = ILibLocaleInfo('am-ET');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'am-ET',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Br57.05'); //ETB
    });
    test('testNumFmt_ha_Latn_NG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ha-Latn-NG');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ha-Latn-NG', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ha-Latn-NG', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s} {n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s} {n}');
      expect(curfmt.format(57.05), '₦ 57.05'); //NGN
    });
    test('testNumFmt_or_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('or-IN');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'or-IN', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '12,34,56,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'or-IN', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'or-IN',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}'); //// CLDR 34 change
      expect(li.getCurrencyFormats().commonNegative,
          '-{s}{n}'); //// CLDR 34 change
      expect(curfmt.format(57.05), '₹57.05'); //INR  //// CLDR 34 change
    });
    test('testNumFmt_az_Latn_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('az-Latn-AZ');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'az-Latn-AZ', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');
      expect(fmt.format(123456789.45), '123.456.789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'az-Latn-AZ', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}'); //// CLDR 34 change
      expect(li.getCurrencyFormats().commonNegative,
          '-{n} {s}'); //// CLDR 34 change
      expect(curfmt.format(57.05), '57,05 ₼'); //AZN
    });
    test('testNumFmt_km_KH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('km-KH');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'km-KH', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'km-KH', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'km-KH',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n}{s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n}{s}');
      expect(curfmt.format(57.05), '57.05៛'); //KHR
    });
    test('testNumFmt_si_LK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('si-LK');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'si-LK', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'si-LK', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'si-LK',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
      expect(curfmt.format(57.05), 'Rs57.05'); //LKR
    });
    test('testNumFmt_ar_AE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-AE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-AE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');
      expect(fmt.format(123456789.45), '123,456,789.45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-AE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}‎%‎');
      expect(li.getNegativePercentageFormat(), '‎-{n}‎%‎');
      expect(pctfmt.format(34), '34‎%‎');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-AE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‏{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '‏-{n} {s}');
      expect(curfmt.format(57.05), '‏57.05 د.إ'); //AED
    });
    test('testNumFmt_ar_SA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-SA');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-SA', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');
      expect(fmt.format(123456789.45), '123٬456٬789٫45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-SA', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}٪؜');
      expect(li.getNegativePercentageFormat(), '؜-{n}٪؜');
      expect(pctfmt.format(34), '34٪؜');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ar-SA',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '‏{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '؜-‏{n} {s}');
      expect(curfmt.format(57.05), '‏57٫05 ر.س'); //SAR
    });
    test('testNumFmt_ka_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ka-GE');
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ka-GE', type: 'standard', useNative: false));
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), ' ');
      expect(fmt.format(123456789.45), '123 456 789,45');

      final ILibNumFmt pctfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ka-GE', type: 'percentage', useNative: false));
      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');
      expect(pctfmt.format(34), '34%');

      final ILibNumFmt curfmt = ILibNumFmt(ILibNumFmtOptions(
          locale: 'ka-GE',
          type: 'currency',
          useNative: false,
          currency: li.getCurrency()));
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
      expect(curfmt.format(57.05), '57,05 ₾'); //GEL
    });
  });
}
