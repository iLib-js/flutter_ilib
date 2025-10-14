import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ha_Latn_NG_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('ha-Latn-NG');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtSimpleMedium_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sat, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Jan', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 1,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Janairu, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Feb', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 2,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Faburairu, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Mar', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 3,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Maris, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Apr', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 4,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Afirilu, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_May', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 5,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Mayu, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Jun', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 6,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Yuni, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Jul', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 7,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Yuli, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Aug', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Agusta, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Sep', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Satumba, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Oct', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 10,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Oktoba, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Nov', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 11,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Nuwamba, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn_Dec', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Disamba, 2011');
    });
    test('testDateFmtSimpleLong_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Satumba, 2011');
    });
    test('testDateFmtSimpleFull_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Satumba, 2011');
    });
    test('testDateFmtSimpleTimeShort_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'short',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 Safiya' : '01:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeMedium_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'medium',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 Yamma' : '13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeLong_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'long',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 Yamma' : '13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeFull_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 Yamma' : '13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleShort_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'short',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29/9/11, 1:45 Yamma' : '29/9/11, 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleMedium_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 Sat, 2011, 1:45 Yamma'
          : '29 Sat, 2011, 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleLong_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'long',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 Satumba, 2011 da 1:45 Yamma'
          : '29 Satumba, 2011 da 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleFull_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 Satumba, 2011 da 1:45 Yamma'
          : '29 Satumba, 2011 da 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeDate_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtTypeTime_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 Yamma' : '13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeDateTime_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29/9/11, 1:45 Yamma' : '29/9/11, 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtShortDateComponentsN_ha_Latn_Mar', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 3,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'M');
    });
    test('testDateFmtShortDateComponentsD_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtShortDateComponentsMY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/11');
    });
    test('testDateFmtShortDateComponentsDMY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtShortDateComponentsDMW_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'L 29/9');
    });
    test('testDateFmtShortDateComponentsDMWY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'L 29/9/54');
    });
    test('testDateFmtFullDateComponentsY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Satumba');
    });
    test('testDateFmtFullDateComponentsD_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Satumba');
    });
    test('testDateFmtFullDateComponentsMY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Satumba, 2011');
    });
    test('testDateFmtFullDateComponentsDMY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Satumba, 2011');
    });
    test('testDateFmtFullDateComponentsDMW_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2015,
          month: 2,
          day: 19,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Alhamis 19 Faburairu');
    });
    test('testDateFmtFullDateComponentsDMWY_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          length: 'full',
          date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2015,
          month: 2,
          day: 19,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Alhamis 19 Faburairu, 2015');
    });
    test('testDateFmtShortTimeComponentsS_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1' : '13';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsMS_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHMZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 WAT' : '13:45 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMAZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          time: 'ahmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 Yamma WAT' : '13:45 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 WAT' : '13:45:37 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 Yamma WAT' : '13:45:37 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsS_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsMS_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45' : '13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMS_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45:37' : '13:45:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 WAT' : '13:45 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMAZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 Yamma WAT' : '13:45 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 WAT' : '13:45:37 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 Yamma WAT' : '13:45:37 WAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtWithTimeZoneAndNoDST_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 WAT' : '13:45:37 WAT';
      expect(fmt.format(dateOptions), result);
    });

    test('testDateFmtTemplateClock12SwitchHH_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          clock: '12',
          template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          clock: '12',
          template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24Switchhh_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          clock: '24',
          template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateClock24SwitchKK_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          calendar: 'gregorian',
          clock: '24',
          template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockNotFollowLocaleDefault12hh_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockNotFollowLocaleDefault12KK_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockNotFollowLocaleDefault24HH_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockNotFollowLocaleDefault24kk_ha_Latn', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ha-Latn-NG', calendar: 'gregorian', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ha-Latn-NG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
  });
}
