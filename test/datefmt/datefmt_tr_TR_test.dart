import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_tr_TR_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('tr-TR');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtSimpleMedium_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eyl 2011');
    });
    test('testDateFmtSimpleLong_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül 2011');
    });
    test('testDateFmtSimpleFull_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül 2011');
    });
    test('testDateFmtSimpleTimeShort_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eyl 2011 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül 2011 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül 2011 13:45');
    });

    test('testDateFmtTypeDate_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtTypeTime_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011 13:45');
    });
    test('testDateFmtShortDateComponentsY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'E');
    });
    test('testDateFmtShortDateComponentsD_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.2011');
    });
    test('testDateFmtShortDateComponentsDMY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtShortDateComponentsWDM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09 P');
    });
    test('testDateFmtShortDateComponentsWDMY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011 P');
    });
    test('testDateFmtFullDateComponentsY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Eylül');
    });
    test('testDateFmtFullDateComponentsD_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül');
    });
    test('testDateFmtFullDateComponentsMY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Eylül 2011');
    });
    test('testDateFmtFullDateComponentsDMY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül 2011');
    });
    test('testDateFmtFullDateComponentsWDM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül Perşembe');
    });
    test('testDateFmtFullDateComponentsWDMY_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Eylül 2011 Perşembe');
    });
    test('testDateFmtShortTimeComponentsS_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +03');
    });
    test('testDateFmtShortTimeComponentsHMAZ_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +03');
    });
    test('testDateFmtShortTimeComponentsHMSA_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +03');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +03');
    });
    test('testDateFmtFullTimeComponentsS_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +03');
    });
    test('testDateFmtFullTimeComponentsHMAZ_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +03');
    });
    test('testDateFmtFullTimeComponentsHMSA_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'tr-TR', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });

    test('testDateFmtTemplateClock12SwitchHH_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24Switchhh_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_tr_TR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'tr-TR', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'tr-TR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
  });
}
