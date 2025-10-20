import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_zh_Hant_HK_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('zh-Hant-HK');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日' : '29/9/2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleMedium_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleLong_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleFull_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleTimeShort_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtSimpleTimeMedium_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtSimpleTimeLong_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtSimpleTimeFull_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtDateTimeSimpleShort_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日 下午1:45' : '29/9/2011 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleMedium_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 下午1:45');
    });
    test('testDateFmtDateTimeSimpleLong_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 下午1:45');
    });
    test('testDateFmtDateTimeSimpleFull_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 下午1:45');
    });
    test('testDateFmtTypeDate_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日' : '29/9/2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeTime_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtTypeDateTime_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日 下午1:45' : '29/9/2011 下午1:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtShortDateComponentsM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtShortDateComponentsN_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsD_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtShortDateComponentsDM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '9月29日' : '29/9';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsMY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '2011年9月' : '9/2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsDMY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日' : '29/9/2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsWDM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '9月29日週四' : '29/9四';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsWDMY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '2011年9月29日週四' : '29/9/2011四';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullDateComponentsY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtFullDateComponentsM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtFullDateComponentsD_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtFullDateComponentsDM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日');
    });
    test('testDateFmtFullDateComponentsMY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月');
    });
    test('testDateFmtFullDateComponentsDMY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtFullDateComponentsWDM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日星期四');
    });
    test('testDateFmtFullDateComponentsWDMY_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日星期四');
    });
    test('testDateFmtShortTimeComponentsS_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsMS_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          time: 'hmz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 [HKST]');
    });
    test('testDateFmtShortTimeComponentsHMAZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45 [HKST]');
    });
    test('testDateFmtShortTimeComponentsHMSA_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 [HKST]');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45:37 [HKST]');
    });
    test('testDateFmtFullTimeComponentsS_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsMS_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 [HKST]');
    });
    test('testDateFmtFullTimeComponentsHMAZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45 [HKST]');
    });
    test('testDateFmtFullTimeComponentsHMSA_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 [HKST]');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午1:45:37 [HKST]');
    });
    test('testDateFmtTimeFrameDefaultWeeHours_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '上午1:45');
    });
    test('testDateFmtTimeFrameDefaultEarlyMorning_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 8,
          minute: 30,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '上午8:30');
    });
    test('testDateFmtTimeFrameDefaultLateMorning_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 11,
          minute: 30,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '上午11:30');
    });
    test('testDateFmtTimeFrameDefaultNoonHour_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 12,
          minute: 37,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午12:37');
    });
    test('testDateFmtTimeFrameDefaultAfterNoon_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 15,
          minute: 37,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午3:37');
    });
    test('testDateFmtTimeFrameDefaultEvening_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 19,
          minute: 47,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午7:47');
    });
    test('testDateFmtTimeFrameDefaultNight_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 22,
          minute: 53,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '下午10:53');
    });

    test('testDateFmtWithTimeZoneAndNoDST_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Hong_Kong');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 [HKST]');
    });

    test('testDateFmtTemplateClock12Switchkk_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24SwitchKK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateClock24Switchhh_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hant-HK', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12KK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_zh_Hant_HK',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_zh_Hant_HK',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hant-HK',
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
