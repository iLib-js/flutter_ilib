import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_et_EE_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('et-EE');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtSimpleMedium_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. sept 2011');
    });
    test('testDateFmtSimpleLong_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. september 2011');
    });
    test('testDateFmtSimpleFull_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. september 2011');
    });
    test('testDateFmtSimpleTimeShort_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. sept 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. september 2011, kell 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. september 2011, kell 13:45');
    });

    test('testDateFmtShortDateComponentsY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.11');
    });
    test('testDateFmtShortDateComponentsDMY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtShortDateComponentsWDM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'N, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'N, 29.09.11');
    });
    test('testDateFmtFullDateComponentsY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'september');
    });
    test('testDateFmtFullDateComponentsD_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. september');
    });
    test('testDateFmtFullDateComponentsMY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'september 2011');
    });
    test('testDateFmtFullDateComponentsDMY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. september 2011');
    });
    test('testDateFmtFullDateComponentsWDM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'neljapäev, 29. september');
    });
    test('testDateFmtFullDateComponentsWDMY_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'neljapäev, 29. september 2011');
    });
    test('testDateFmtShortTimeComponentsS_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsHM_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsS_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsHM_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'et-EE', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EET');
    });

    test('testDateFmtTemplateClock12SwitchHH_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24SwitchKK_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateClock24Switchhh_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12KK_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_et_EE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'et-EE', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'et-EE',
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
