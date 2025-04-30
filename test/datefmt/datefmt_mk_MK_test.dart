import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_mk_MK_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('mk-MK');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.11');
    });
    test('testDateFmtSimpleMedium_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011 г.');
    });
    test('testDateFmtSimpleLong_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г.');
    });
    test('testDateFmtSimpleFull_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г.');
    });
    test('testDateFmtSimpleTimeShort_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.11, во 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.2011 г., во 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г., во 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г., во 13:45');
    });

    test('testDateFmtShortDateComponentsY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'с');
    });
    test('testDateFmtShortDateComponentsD_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9');
    });
    test('testDateFmtShortDateComponentsMY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9.11');
    });
    test('testDateFmtShortDateComponentsDMY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.11');
    });
    test('testDateFmtShortDateComponentsWDM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ч, 29.9');
    });
    test('testDateFmtShortDateComponentsWDMY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ч, 29.9.11');
    });
    test('testDateFmtFullDateComponentsY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'септември');
    });
    test('testDateFmtFullDateComponentsD_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември');
    });
    test('testDateFmtFullDateComponentsMY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'септември 2011 г.');
    });
    test('testDateFmtFullDateComponentsDMY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 септември 2011 г.');
    });
    test('testDateFmtFullDateComponentsWDM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'четврток, 29 септември');
    });
    test('testDateFmtFullDateComponentsWDMY_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'четврток, 29 септември 2011 г.');
    });
    test('testDateFmtShortTimeComponentsS_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsHM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'mk-MK', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsS_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsHM_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'mk-MK', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'mk-MK',
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
