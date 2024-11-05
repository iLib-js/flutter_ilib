import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_fi_FI_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('fi-FI');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011');
    });
    test('testDateFmtSimpleMedium_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011');
    });
    test('testDateFmtSimpleLong_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. syyskuuta 2011');
    });
    test('testDateFmtSimpleFull_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. syyskuuta 2011');
    });
    test('testDateFmtSimpleTimeShort_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeMedium_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeLong_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeFull_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtDateTimeSimpleShort_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011 klo 13.45');
    });
    test('testDateFmtDateTimeSimpleMedium_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011 klo 13.45');
    });
    test('testDateFmtDateTimeSimpleLong_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. syyskuuta 2011 klo 13.45');
    });
    test('testDateFmtDateTimeSimpleFull_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. syyskuuta 2011 klo 13.45');
    });

    test('testDateFmtTypeDate_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011');
    });
    test('testDateFmtTypeTime_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtTypeDateTime_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011 klo 13.45');
    });
    test('testDateFmtShortDateComponentsY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtShortDateComponentsN_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9');
    });
    test('testDateFmtShortDateComponentsMY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9.2011');
    });
    test('testDateFmtShortDateComponentsDMY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011');
    });
    test('testDateFmtShortDateComponentsWDM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T 29.9');
    });
    test('testDateFmtShortDateComponentsWDMY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T 29.9.2011');
    });
    test('testDateFmtFullDateComponentsY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'syyskuu');
    });
    test('testDateFmtFullDateComponentsD_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. syyskuuta');
    });
    test('testDateFmtFullDateComponentsMY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'syyskuu 2011');
    });
    test('testDateFmtFullDateComponentsDMY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. syyskuuta 2011');
    });
    test('testDateFmtFullDateComponentsWDM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'torstai 29. syyskuuta');
    });
    test('testDateFmtFullDateComponentsWDMY_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'torstai 29. syyskuuta 2011');
    });
    test('testDateFmtShortTimeComponentsS_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45.37');
    });
    test('testDateFmtShortTimeComponentsHM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtShortTimeComponentsHMS_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtShortTimeComponentsHMA_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtShortTimeComponentsHMZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fi-FI', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 EEST');
    });
    test('testDateFmtFullTimeComponentsS_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45.37');
    });
    test('testDateFmtFullTimeComponentsHM_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtFullTimeComponentsHMS_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtFullTimeComponentsHMA_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtFullTimeComponentsHMZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 EEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fi-FI', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fi-FI',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 EET');
    });
  });
}
