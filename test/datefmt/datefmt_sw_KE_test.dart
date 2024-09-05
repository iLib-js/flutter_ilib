import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_sw_KE_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtSimpleMedium_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep 2011');
    });
    test('testDateFmtSimpleLong_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Septemba 2011');
    });
    test('testDateFmtSimpleFull_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Septemba 2011');
    });
    test('testDateFmtSimpleTimeShort_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(fmt.format(dateOptions), '29 Septemba 2011 saa 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Septemba 2011 saa 13:45');
    });

    test('testDateFmtTypeDate_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtTypeTime_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtShortDateComponentsY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtShortDateComponentsD_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtShortDateComponentsMY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/2011');
    });
    test('testDateFmtShortDateComponentsDMY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtShortDateComponentsDMW_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T, 29/09');
    });
    test('testDateFmtShortDateComponentsDMWY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T, 29/09/2011');
    });
    test('testDateFmtFullDateComponentsY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Septemba');
    });
    test('testDateFmtFullDateComponentsD_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Septemba');
    });
    test('testDateFmtFullDateComponentsMY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Septemba 2011');
    });
    test('testDateFmtFullDateComponentsDMY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Septemba 2011');
    });
    test('testDateFmtFullDateComponentsDMW_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', length: 'full', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Alhamisi, 29 Septemba');
    });
    test('testDateFmtFullDateComponentsDMWY_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', length: 'full', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Alhamisi, 29 Septemba 2011');
    });
    test('testDateFmtShortTimeComponentsS_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtShortTimeComponentsHMAZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtShortTimeComponentsHMSA_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sw-Latn-KE', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtFullTimeComponentsS_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtFullTimeComponentsHMAZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtFullTimeComponentsHMSA_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtWithTimeZoneAndNoDST_sw_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sw-Latn-KE', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sw-Latn-KE',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
  });
}
