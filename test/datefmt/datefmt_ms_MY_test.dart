import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ms_MY_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('ms-MY');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtSimpleMedium_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep 2011');
    });
    test('testDateFmtSimpleLong_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleFull_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleTimeShort_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtSimpleTimeMedium_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtSimpleTimeLong_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtSimpleTimeFull_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtDateTimeSimpleShort_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 1:45 PTG');
    });
    test('testDateFmtDateTimeSimpleMedium_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep 2011, 1:45 PTG');
    });
    test('testDateFmtDateTimeSimpleLong_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 pada 1:45 PTG');
    });
    test('testDateFmtDateTimeSimpleFull_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 pada 1:45 PTG');
    });

    test('testDateFmtTypeDate_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtTypeTime_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtTypeDateTime_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 1:45 PTG');
    });
    test('testDateFmtShortDateComponentsY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtShortDateComponentsD_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtShortDateComponentsMY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/11');
    });
    test('testDateFmtShortDateComponentsDMY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtShortDateComponentsWDM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'K, 29/09');
    });
    test('testDateFmtShortDateComponentsWDMY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'K, 29/09/11');
    });
    test('testDateFmtFullDateComponentsY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September');
    });
    test('testDateFmtFullDateComponentsD_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September');
    });
    test('testDateFmtFullDateComponentsMY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 2011');
    });
    test('testDateFmtFullDateComponentsDMY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtFullDateComponentsWDM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Isnin, 29 Ogos');
    });
    test('testDateFmtFullDateComponentsWDMY_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Isnin, 29 Ogos 2011');
    });
    test('testDateFmtShortTimeComponentsS_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsMS_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtShortTimeComponentsHMZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          time: 'hmz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 +08');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG +08');
    });
    test('testDateFmtShortTimeComponentsHMSA_ms_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ms-MY', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PTG');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 +08');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PTG +08');
    });
    test('testDateFmtFullTimeComponentsS_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsMS_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG');
    });
    test('testDateFmtFullTimeComponentsHMZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 +08');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PTG +08');
    });
    test('testDateFmtFullTimeComponentsHMSA_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PTG');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 +08');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PTG +08');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Kuala_Lumpur');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ms-MY',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 +08');
    });
  });
}
