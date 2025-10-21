import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  String testPlatform = '';
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_am_ET_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('am-ET');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtSimpleMedium_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ግንቦት 2011');
    });
    test('testDateFmtSimpleLong_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ግንቦት 2011');
    });
    test('testDateFmtSimpleFull_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String result =
          (testPlatform == 'webOS') ? 'ግንቦት 29 ቀን 2011 ዓ.ም' : '29 ግንቦት 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeShort_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeMedium_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeLong_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeFull_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleShort_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29/09/2011 ከሰዓት 1:45'
          : '29/09/2011 1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleMedium_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String result = (testPlatform == 'webOS')
          ? '29 ግንቦት 2011 ከሰዓት 1:45'
          : '29 ግንቦት 2011 1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleLong_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 ግንቦት 2011 ከሰዓት 1:45'
          : '29 ግንቦት 2011 1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleFull_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? 'ግንቦት 29 ቀን 2011 ዓ.ም ከሰዓት 1:45'
          : '29 ግንቦት 2011 1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeDate_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtTypeTime_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeDateTime_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29/09/2011 ከሰዓት 1:45'
          : '29/09/2011 1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ግ');
    });
    test('testDateFmtShortDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtShortDateComponentsMY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/2011');
    });
    test('testDateFmtShortDateComponentsDMY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtShortDateComponentsWDM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ሐ፣ 29/09');
    });
    test('testDateFmtShortDateComponentsWDMY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ሐ፣ 29/09/2011');
    });
    test('testDateFmtFullDateComponentsY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ግንቦት');
    });
    test('testDateFmtFullDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ግንቦት');
    });
    test('testDateFmtFullDateComponentsMY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ግንቦት ቀን 2011 ዓ.ም' : 'ግንቦት 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullDateComponentsDMY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ግንቦት 29 ቀን 2011 ዓ.ም' : '29 ግንቦት 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullDateComponentsWDM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ሐሙስ፣ 29 ግንቦት');
    });
    test('testDateFmtFullDateComponentsWDMY_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? 'ሐሙስ፣ ግንቦት 29 ቀን 2011 ዓ.ም'
          : 'ሐሙስ፣ 29 ግንቦት 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsS_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsMS_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          time: 'hmz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EAT');
    });
    test('testDateFmtShortTimeComponentsHMAZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          time: 'hmaz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45 EAT' : '1:45 ከምሽቱ EAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSA_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45:37' : '1:45:37 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          time: 'hmsz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EAT');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45:37 EAT' : '1:45:37 ከምሽቱ EAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsS_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsMS_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45' : '1:45 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EAT');
    });
    test('testDateFmtFullTimeComponentsHMAZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45 EAT' : '1:45 ከምሽቱ EAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSA_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45:37' : '1:45:37 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EAT');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:45:37 EAT' : '1:45:37 ከምሽቱ EAT';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtWithTimeZoneAndNoDST_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      // does not observe DST, so no difference in the TZ spec
      expect(fmt.format(dateOptions), '1:45:37 EAT');
    });
    test('testDateFmtTimeMeridiem0_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'long',
          time: 'hma',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሌሊቱ 1:45' : '1:45 ጥዋት';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeMeridiem1_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'long',
          time: 'hma',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 6,
          minute: 0,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከጥዋቱ 6:00' : '6:00 ቀትር';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeMeridiem2_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'long',
          time: 'hma',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 8,
          minute: 22,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ቀትር 8:22' : '8:22 ከሰዓት';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeMeridiem3_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'long',
          time: 'hma',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 22,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከሰዓት 1:22' : '1:22 ከምሽቱ';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeMeridiem4_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          length: 'long',
          time: 'hma',
          timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 19,
          minute: 22,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'ከምሽቱ 7:22' : '7:22 ከሌሊቱ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDateFmtTemplateClock12SwitchHH_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24SwitchKK_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateClock24Switchhh_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12KK_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'am-ET',
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
