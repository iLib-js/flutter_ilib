import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ro_RO_test.dart] file.');
  group('format()', () {
    test('testDateFmtSimpleShort_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtSimpleMedium_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sept. 2011');
    });
    test('testDateFmtSimpleLong_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembrie 2011');
    });
    test('testDateFmtSimpleFull_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembrie 2011');
    });
    test('testDateFmtSimpleTimeShort_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sept. 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembrie 2011 la 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembrie 2011 la 13:45');
    });

    test('testDateFmtTypeDate_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtTypeTime_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011, 13:45');
    });
    test('testDateFmtShortDateComponentsY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.2011');
    });
    test('testDateFmtShortDateComponentsDMY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtShortDateComponentsWDM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J, 29.09.2011');
    });
    test('testDateFmtFullDateComponentsY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembrie');
    });
    test('testDateFmtFullDateComponentsD_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembrie');
    });
    test('testDateFmtFullDateComponentsMY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembrie 2011');
    });
    test('testDateFmtFullDateComponentsDMY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembrie 2011');
    });
    test('testDateFmtFullDateComponentsWDM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'joi, 29 septembrie');
    });
    test('testDateFmtFullDateComponentsWDMY_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'joi, 29 septembrie 2011');
    });
    test('testDateFmtShortTimeComponentsS_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ro_RO', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ro-RO', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsS_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ro-RO', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ro-RO',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
  });
}
