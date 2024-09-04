import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_nl_NL_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('nl-NL');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29-09-2011');
    });
    test('testDateFmtSimpleMedium_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sep 2011');
    });
    test('testDateFmtSimpleLong_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 september 2011');
    });
    test('testDateFmtSimpleFull_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 september 2011');
    });
    test('testDateFmtSimpleTimeShort_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29-09-2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sep 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 september 2011 om 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 september 2011 om 13:45');
    });
    test('testDateFmtTypeDate_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29-09-2011');
    });
    test('testDateFmtTypeTime_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29-09-2011, 13:45');
    });
    test('testDateFmtShortDateComponentsY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29-09');
    });
    test('testDateFmtShortDateComponentsMY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09-2011');
    });
    test('testDateFmtShortDateComponentsDMY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29-09-2011');
    });
    test('testDateFmtShortDateComponentsWDM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'D 29-09');
    });
    test('testDateFmtShortDateComponentsWDMY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'D 29-09-2011');
    });
    test('testDateFmtFullDateComponentsY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'september');
    });
    test('testDateFmtFullDateComponentsD_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 september');
    });
    test('testDateFmtFullDateComponentsMY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'september 2011');
    });
    test('testDateFmtFullDateComponentsDMY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 september 2011');
    });
    test('testDateFmtFullDateComponentsWDM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'donderdag 29 september');
    });
    test('testDateFmtFullDateComponentsWDMY_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'donderdag 29 september 2011');
    });
    test('testDateFmtShortTimeComponentsS_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          time: 'hmz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          time: 'hmaz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_nl_NL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'nl-NL', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          time: 'hmsz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsS_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Amsterdam');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'nl-NL',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CET');
    });
  });
}
