import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ga_IE_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('ga-IE');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtSimpleMedium_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 MFómh 2011');
    });
    test('testDateFmtSimpleLong_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Meán Fómhair 2011');
    });
    test('testDateFmtSimpleFull_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Meán Fómhair 2011');
    });
    test('testDateFmtSimpleTimeShort_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 MFómh 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Meán Fómhair 2011 ag 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Meán Fómhair 2011 ag 13:45');
    });
    test('testDateFmtDateTimeFullwithUseNativeFalse_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE',
          length: 'full',
          type: 'datetime',
          date: 'dmwy',
          time: 'hma',
          useNative: false);

      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2015,
          month: 4,
          day: 8,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Dé Céadaoin 8 Aibreán 2015 ag 13:45');
    });

    test('testDateFmtShortDateComponentsY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'M');
    });
    test('testDateFmtShortDateComponentsD_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtShortDateComponentsMY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/2011');
    });
    test('testDateFmtShortDateComponentsDMY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtShortDateComponentsWDM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'D 29/09');
    });
    test('testDateFmtShortDateComponentsWDMY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'D 29/09/2011');
    });
    test('testDateFmtFullDateComponentsY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Meán Fómhair');
    });
    test('testDateFmtFullDateComponentsD_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Meán Fómhair');
    });
    test('testDateFmtFullDateComponentsMY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Meán Fómhair 2011');
    });
    test('testDateFmtFullDateComponentsDMY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Meán Fómhair 2011');
    });
    test('testDateFmtFullDateComponentsWDM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Déardaoin 29 Meán Fómhair');
    });
    test('testDateFmtFullDateComponentsWDMY_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Déardaoin 29 Meán Fómhair 2011');
    });
    test('testDateFmtShortTimeComponentsS_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsHM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 IST/GMT');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 IST/GMT');
    });
    test('testDateFmtShortTimeComponentsHMSA_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 IST/GMT');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ga-IE', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 IST/GMT');
    });
    test('testDateFmtFullTimeComponentsS_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsHM_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 IST/GMT');
    });
    test('testDateFmtFullTimeComponentsHMSA_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 IST/GMT');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 IST/GMT');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ga-IE', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ga-IE',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 IST/GMT');
    });
  });
}
