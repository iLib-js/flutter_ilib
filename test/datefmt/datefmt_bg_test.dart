import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_bg_BG_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('bg-BG');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 г.');
    });
    test('testDateFmtSimpleMedium_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011 г.');
    });
    test('testDateFmtSimpleLong_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г.');
    });
    test('testDateFmtSimpleFull_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г.');
    });
    test('testDateFmtSimpleTimeShort_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 г., 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011 г., 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г. в 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г. в 13:45');
    });

    test('testDateFmtTypeDate_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 г.');
    });
    test('testDateFmtTypeTime_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 г., 13:45');
    });
    test('testDateFmtShortDateComponentsY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'с');
    });
    test('testDateFmtShortDateComponentsD_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.11 г.');
    });
    test('testDateFmtShortDateComponentsDMY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 г.');
    });
    test('testDateFmtShortDateComponentsWDM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ч, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ч, 29.09.11 г.');
    });
    test('testDateFmtFullDateComponentsY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'септември');
    });
    test('testDateFmtFullDateComponentsD_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември');
    });
    test('testDateFmtFullDateComponentsMY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'септември 2011 г.');
    });
    test('testDateFmtFullDateComponentsDMY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г.');
    });
    test('testDateFmtFullDateComponentsWDM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'четвъртък, 29 септември');
    });
    test('testDateFmtFullDateComponentsWDMY_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'четвъртък, 29 септември 2011 г.');
    });
    test('testDateFmtShortTimeComponentsS_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', time: 'hmz', timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          time: 'hmaz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          time: 'hmsz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsS_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Sofia');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EET');
    });

    test('testDateFmtTemplateClock12SwitchHH_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24Switchhh_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateClock24SwitchKK_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12KK_bg_BG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bg-BG', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bg-BG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });
  });
}
