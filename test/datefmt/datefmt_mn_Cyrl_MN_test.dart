import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_mn_Cyrl_MN_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('mn-Cyrl-MN');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09.29');
    });
    test('testDateFmtSimpleMedium_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны 9-р сарын 29');
    });
    test('testDateFmtSimpleLong_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны есдүгээр сарын 29');
    });
    test('testDateFmtSimpleFull_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны есдүгээр сарын 29');
    });
    test('testDateFmtSimpleTimeShort_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09.29 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны 9-р сарын 29 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны есдүгээр сарын 29 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны есдүгээр сарын 29 13:45');
    });

    test('testDateFmtTypeDate_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09.29');
    });
    test('testDateFmtTypeTime_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09.29 13:45');
    });
    test('testDateFmtShortDateComponentsY_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsD_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.29');
    });
    test('testDateFmtShortDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09');
    });
    test('testDateFmtShortDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09.29');
    });
    test('testDateFmtShortDateComponentsWDM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.29, Пү гараг');
    });
    test('testDateFmtShortDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011.09.29, Пү гараг');
    });
    test('testDateFmtFullDateComponentsY_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Есдүгээр сар');
    });
    test('testDateFmtFullDateComponentsD_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'есдүгээр сарын 29');
    });
    test('testDateFmtFullDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны есдүгээр сар');
    });
    test('testDateFmtFullDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 оны есдүгээр сарын 29');
    });
    test('testDateFmtFullDateComponentsWDM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'есдүгээр сарын 29, пүрэв гараг');
    });
    test('testDateFmtFullDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          fmt.format(dateOptions), '2011 оны есдүгээр сарын 29, пүрэв гараг');
    });
    test('testDateFmtShortTimeComponentsS_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          time: 'hmz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 (+08/+09)');
    });
    test('testDateFmtShortTimeComponentsHMAZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 (+08/+09)');
    });
    test('testDateFmtShortTimeComponentsHMSA_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mn-Cyrl-MN', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 (+08/+09)');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 (+08/+09)');
    });
    test('testDateFmtFullTimeComponentsS_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 (+08/+09)');
    });
    test('testDateFmtFullTimeComponentsHMAZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 (+08/+09)');
    });
    test('testDateFmtFullTimeComponentsHMSA_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 (+08/+09)');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 (+08/+09)');
    });
    test('testDateFmtWithTimeZoneAndNoDST_mn_Cyrl_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Ulaanbaatar');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mn-Cyrl-MN',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 (+08/+09)');
    });
  });
}
