import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_zh_CN_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29');
    });
    test('testDateFmtSimpleMedium_zh_Hans_CN  ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleLong_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleFull_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleTimeShort_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 13:45');
    });
    test('testDateFmtTypeDate_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29');
    });
    test('testDateFmtTypeTime_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29 13:45');
    });

    test('testDateFmtShortDateComponentsY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtShortDateComponentsM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtShortDateComponentsN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsD_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtShortDateComponentsDM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/29');
    });
    test('testDateFmtShortDateComponentsMY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9');
    });
    test('testDateFmtShortDateComponentsDMY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29');
    });
    test('testDateFmtShortDateComponentsWDM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/29四');
    });
    test('testDateFmtShortDateComponentsWDMY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/9/29四');
    });

    test('testDateFmtFullDateComponentsY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtFullDateComponentsM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtFullDateComponentsD_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtFullDateComponentsDM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日');
    });
    test('testDateFmtFullDateComponentsMY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月');
    });
    test('testDateFmtFullDateComponentsDMY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtFullDateComponentsWDM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日星期四');
    });
    test('testDateFmtFullDateComponentsWDMY_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日星期四');
    });

    test('testDateFmtShortTimeComponentsS_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          time: 'hmz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45');
    });
    test('testDateFmtShortTimeComponentsHMAZ_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45');
    });
    test('testDateFmtShortTimeComponentsHMSA_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45:37');
    });

    test('testDateFmtFullTimeComponentsS_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45');
    });
    test('testDateFmtFullTimeComponentsHMSA_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN', type: 'time', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMSZ_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_zh_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45:37');
    });
    test('testDateFmtWithTimeZoneAndNoDST_zh_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Shanghai');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'zh-Hans-CN',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'CST 13:45:37');
    });
  });
}
