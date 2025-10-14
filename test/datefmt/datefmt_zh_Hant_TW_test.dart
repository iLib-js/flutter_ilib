import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_zh_Hant_TW_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('zh-Hant-TW');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29');
    });
    test('testDateFmtSimpleMedium_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleLong_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleFull_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleTimeShort_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeMedium_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeLong_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleTimeFull_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleShort_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011/9/29 13:45' : '2011/9/29 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleMedium_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日 13:45' : '2011年9月29日 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleLong_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日 13:45' : '2011年9月29日 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleFull_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日 13:45' : '2011年9月29日 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeDate_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29');
    });
    test('testDateFmtTypeTime_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeDateTime_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011/9/29 13:45' : '2011/9/29 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtShortDateComponentsM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtShortDateComponentsN_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsD_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtShortDateComponentsDM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/29');
    });
    test('testDateFmtShortDateComponentsMY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9');
    });
    test('testDateFmtShortDateComponentsDMY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29');
    });
    test('testDateFmtShortDateComponentsWDM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/29 四');
    });
    test('testDateFmtShortDateComponentsWDMY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29 四');
    });
    test('testDateFmtFullDateComponentsY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtFullDateComponentsM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtFullDateComponentsD_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtFullDateComponentsDM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日');
    });
    test('testDateFmtFullDateComponentsMY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月');
    });
    test('testDateFmtFullDateComponentsDMY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtFullDateComponentsWDM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日 星期四');
    });
    test('testDateFmtFullDateComponentsWDMY_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 星期四');
    });
    test('testDateFmtShortTimeComponentsS_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13時' : '1';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsMS_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMS_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45:37' : '1:45:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMA_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          time: 'hmz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45 [CST]' : '1:45 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMAZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45 [CST]' : '下午1:45 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSA_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45:37' : '下午1:45:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45:37 [CST]' : '1:45:37 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortTimeComponentsHMSAZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45:37 [CST]' : '下午1:45:37 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsS_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13時' : '1';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsMS_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMS_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45:37' : '1:45:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMA_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '13:45' : '下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45 [CST]' : '1:45 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMAZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45 [CST]' : '下午1:45 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSA_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45:37' : '下午1:45:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45:37 [CST]' : '1:45:37 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullTimeComponentsHMSAZ_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '13:45:37 [CST]' : '下午1:45:37 [CST]';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultWeeHours_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45' : '凌晨1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultEarlyMorning_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 8,
          minute: 30,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '8:30' : '上午8:30';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultLateMorning_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 11,
          minute: 30,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '11:30' : '上午11:30';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultNoonHour_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 12,
          minute: 37,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '12:37' : '中午12:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultAfterNoon_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 15,
          minute: 37,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '15:37' : '下午3:37';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultEvening_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 19,
          minute: 47,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '19:47' : '晚上7:47';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTimeFrameDefaultNight_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 22,
          minute: 53,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '22:53' : '晚上10:53';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtWithTimeZoneAndNoDST_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Taipei');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'Asia/Taipei');
      final String result =
          (testPlatform == 'webOS') ? '13:45:37 [CST]' : '1:45:37 [CST]';
      expect(fmt.format(dateOptions), result);
    });

    test('testDateFmtTemplateClock12SwitchHH_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24Switchhh_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-TW', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_zh_Hant_TW',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_zh_Hant_TW',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_zh_Hant_TW',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-TW',
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
