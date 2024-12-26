import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_sr_Latn_RS_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('sr-Latn-RS');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011.');
    });
    test('testDateFmtSimpleMedium_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011.');
    });
    test('testDateFmtSimpleLong_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011.');
    });
    test('testDateFmtSimpleFull_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011.');
    });
    test('testDateFmtSimpleTimeShort_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'short',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'medium',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'long',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'short',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011. 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011. 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'long',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011. 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011. 13:45');
    });

    test('testDateFmtTypeDate_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011.');
    });
    test('testDateFmtTypeTime_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011. 13:45');
    });
    test('testDateFmtShortDateComponentsY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsN_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9');
    });
    test('testDateFmtShortDateComponentsMY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9. 2011.');
    });
    test('testDateFmtShortDateComponentsDMY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011.');
    });
    test('testDateFmtShortDateComponentsWDM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'č, 29. 9');
    });
    test('testDateFmtShortDateComponentsWDMY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'č, 29. 9. 2011.');
    });
    test('testDateFmtFullDateComponentsY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembar');
    });
    test('testDateFmtFullDateComponentsD_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar');
    });
    test('testDateFmtFullDateComponentsMY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembar 2011.');
    });
    test('testDateFmtFullDateComponentsDMY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011.');
    });
    test('testDateFmtFullDateComponentsWDM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'četvrtak, 29. septembar');
    });
    test('testDateFmtFullDateComponentsWDMY_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          length: 'full',
          date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'četvrtak, 29. septembar 2011.');
    });
    test('testDateFmtShortTimeComponentsS_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS', calendar: 'gregorian', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsS_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'ahmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sr-Latn-RS',
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
