import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_af_ZA_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtSimpleMedium_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep. 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Jan', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 1,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Januarie 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Feb', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 2,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Februarie 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Mar', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 3,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Maart 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Apr', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 4,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 April 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_May', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 5,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Mei 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Jun', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 6,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Junie 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Jul', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 7,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Julie 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Aug', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Augustus 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Sep', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Oct', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 10,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Oktober 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Nov', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 11,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 November 2011');
    });
    test('testDateFmtSimpleLong_af_ZA_Dec', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Desember 2011');
    });
    test('testDateFmtSimpleLong_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleFull_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleTimeShort_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          length: 'short',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });
    test('testDateFmtSimpleTimeMedium_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          length: 'medium',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          length: 'short',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep. 2011 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          length: 'long',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 om 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          length: 'full',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 om 13:45');
    });
    test('testDateFmtTypeDate_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtTypeTime_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29 13:45');
    });
    test('testDateFmtShortDateComponentsY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'af-ZA', calendar: 'gregorian', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'af-ZA', calendar: 'gregorian', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_af_ZA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'af-ZA', calendar: 'gregorian', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtShortDateComponentsN_af_ZA_Mar', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'af-ZA', calendar: 'gregorian', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 3,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'M');
    });
    test('testDateFmtShortDateComponentsD_af_ZA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'af-ZA', calendar: 'gregorian', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09-29');
    });
    test('testDateFmtShortDateComponentsMY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09');
    });
    test('testDateFmtShortDateComponentsDMY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtShortDateComponentsWDM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S 09-29');
    });
    test('testDateFmtShortDateComponentsWDMY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S 2554-09-29');
    });
    test('testDateFmtFullDateComponentsY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September');
    });
    test('testDateFmtFullDateComponentsD_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September');
    });
    test('testDateFmtFullDateComponentsMY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 2011');
    });
    test('testDateFmtFullDateComponentsDMY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtFullDateComponentsWDM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2015,
          month: 2,
          day: 19,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Donderdag 19 Februarie');
    });
    test('testDateFmtFullDateComponentsWDMY_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2015,
          month: 2,
          day: 19,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Donderdag 19 Februarie 2015');
    });
    test('testDateFmtShortTimeComponentsS_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 SAST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 SAST');
    });
    test('testDateFmtShortTimeComponentsHMSA_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 SAST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA', calendar: 'gregorian', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 SAST');
    });
    test('testDateFmtFullTimeComponentsS_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 SAST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 SAST');
    });
    test('testDateFmtFullTimeComponentsHMSA_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 SAST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 SAST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'af-ZA',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'af-ZA',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 SAST');
    });
  });
}
