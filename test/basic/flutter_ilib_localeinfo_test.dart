import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_localeinfo_test.dart] file.');
  setUpAll(() async {
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleData('ar-SA');
    await ilibjsinstance.loadILibLocaleData('de-DE');
    await ilibjsinstance.loadILibLocaleData('ko-KR');
  });
  group('ILibLocaleInfo', () {
    test('ILibLocaleInfo_arSA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-SA');
      expect(li.getDecimalSeparator(), '٫');
      expect(li.getGroupingSeparator(), '٬');

      expect(li.getPercentageFormat(), '{n}٪؜');
      expect(li.getNegativePercentageFormat(), '؜-{n}٪؜');

      expect(li.getCurrency(), 'SAR');
      expect(li.getCurrencyFormats().common, '‏{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '؜-‏{n} {s}');
    });
    test('ILibLocaleInfo_deDE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-DE');
      expect(li.getDecimalSeparator(), ',');
      expect(li.getGroupingSeparator(), '.');

      expect(li.getPercentageFormat(), '{n} %');
      expect(li.getNegativePercentageFormat(), '-{n} %');

      expect(li.getCurrency(), 'EUR');
      expect(li.getCurrencyFormats().common, '{n} {s}');
      expect(li.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('ILibLocaleInfo_enUS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-US');
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');

      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');

      expect(li.getCurrency(), 'USD');
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('ILibLocaleInfo_koKR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ko-KR');
      expect(li.getDecimalSeparator(), '.');
      expect(li.getGroupingSeparator(), ',');

      expect(li.getPercentageFormat(), '{n}%');
      expect(li.getNegativePercentageFormat(), '-{n}%');

      expect(li.getCurrency(), 'KRW');
      expect(li.getCurrencyFormats().common, '{s}{n}');
      expect(li.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
  });
}
