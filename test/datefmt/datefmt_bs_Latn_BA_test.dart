import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_bs_Latn_BA_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('bs-Latn-BA');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29.09.11.' : '29. 9. 2011.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleMedium_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29. sep. 2011.' : '29. sep 2011.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtSimpleLong_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011.');
    });
    test('testDateFmtSimpleFull_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011.');
    });
    test('testDateFmtSimpleTimeShort_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29.09.11. u 13:45'
          : '29. 9. 2011. u 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleMedium_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29. sep. 2011. u 13:45'
          : '29. sep 2011. u 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtDateTimeSimpleLong_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(fmt.format(dateOptions), '29. septembar 2011. u 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011. u 13:45');
    });
    test('testDateFmtTypeDate_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29.09.11.' : '29. 9. 2011.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtTypeTime_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29.09.11. u 13:45'
          : '29. 9. 2011. u 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '11' : '2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsN_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '29.09' : '29. 9';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsMY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9. 2011.');
    });
    test('testDateFmtShortDateComponentsDMY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29.09.11.' : '29. 9. 2011.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsWDM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? 'Č, 29.09' : 'Č, 29. 9';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtShortDateComponentsWDMY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'Č, 29.09.11.' : 'Č, 29. 9. 2011.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtFullDateComponentsY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembar');
    });
    test('testDateFmtFullDateComponentsD_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar');
    });
    test('testDateFmtFullDateComponentsMY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembar 2011.');
    });
    test('testDateFmtFullDateComponentsDMY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembar 2011.');
    });
    test('testDateFmtFullDateComponentsWDM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'četvrtak, 29. septembar');
    });
    test('testDateFmtFullDateComponentsWDMY_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'četvrtak, 29. septembar 2011.');
    });
    test('testDateFmtShortTimeComponentsS_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsS_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bs-Latn-BA', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bs-Latn-BA',
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
