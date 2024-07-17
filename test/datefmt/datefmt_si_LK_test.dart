import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_si_LK_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtSimpleMedium_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප් 29');
    });
    test('testDateFmtSimpleLong_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර් 29');
    });
    test('testDateFmtSimpleFull_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර් 29');
    });
    test('testDateFmtSimpleTimeShort_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeMedium_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeLong_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeFull_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtDateTimeSimpleShort_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29, 13.45');
    });
    test('testDateFmtDateTimeSimpleMedium_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප් 29, 13.45');
    });
    test('testDateFmtDateTimeSimpleLong_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර් 29 දින 13.45');
    });
    test('testDateFmtDateTimeSimpleFull_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර් 29 දින 13.45');
    });

    test('testDateFmtTypeDate_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtTypeTime_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtTypeDateTime_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29, 13.45');
    });
    test('testDateFmtShortDateComponentsY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'සැ');
    });
    // resources(N formats) of si-LK locale are changed manually
    // because of combination of glyph, substring function can't
    // extract N formats properly in toolcode for datefomat.
    test('testDateFmtShortDateComponentsN_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ස');
    });
    test('testDateFmtShortDateComponentsD_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09-29');
    });
    test('testDateFmtShortDateComponentsMY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09');
    });
    test('testDateFmtShortDateComponentsDMY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtShortDateComponentsDMW_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09-29, බ්‍ර');
    });
    test('testDateFmtShortDateComponentsDMWY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29, බ්‍ර');
    });
    test('testDateFmtFullDateComponentsY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'සැප්තැම්බර්');
    });
    test('testDateFmtFullDateComponentsD_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'සැප්තැම්බර් 29');
    });
    test('testDateFmtFullDateComponentsMY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර්');
    });
    test('testDateFmtFullDateComponentsDMY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර් 29');
    });
    test('testDateFmtFullDateComponentsDMW_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'සැප්තැම්බර් 29, බ්‍රහස්පතින්දා');
    });
    test('testDateFmtFullDateComponentsDMWY_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', length: 'full', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011 සැප්තැම්බර් 29, බ්‍රහස්පතින්දා');
    });
    test('testDateFmtShortTimeComponentsS_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45.37');
    });
    test('testDateFmtShortTimeComponentsHM_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtShortTimeComponentsHMS_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtShortTimeComponentsHMA_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtShortTimeComponentsHMZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 +0530');
    });
    test('testDateFmtShortTimeComponentsHMAZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 +0530');
    });
    test('testDateFmtShortTimeComponentsHMSA_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 +0530');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'si-LK', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 +0530');
    });
    test('testDateFmtFullTimeComponentsS_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45.37');
    });
    test('testDateFmtFullTimeComponentsHM_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtFullTimeComponentsHMS_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtFullTimeComponentsHMA_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtFullTimeComponentsHMZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 +0530');
    });
    test('testDateFmtFullTimeComponentsHMAZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 +0530');
    });
    test('testDateFmtFullTimeComponentsHMSA_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 +0530');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 +0530');
    });
    test('testDateFmtWithTimeZoneAndNoDST_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'si-LK', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'si-LK',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 +0530');
    });
  });
}
