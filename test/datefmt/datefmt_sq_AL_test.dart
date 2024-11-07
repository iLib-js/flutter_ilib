import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_sq_AL_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtINSimpleShort_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.11');
    });
    test('testDateFmtINSimpleMedium_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sht 2011');
    });
    test('testDateFmtINSimpleLong_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 shtator 2011');
    });
    test('testDateFmtINSimpleFull_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 shtator 2011');
    });
    test('testDateFmtINSimpleTimeShort_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeShort_sq_AL1', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeMedium_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeLong_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeFull_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleShort_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29.9.11, 1:45 të pasdites'
          : '29.9.11, 1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleMedium_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 sht 2011, 1:45 të pasdites'
          : '29 sht 2011, 1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleLong_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 shtator 2011 në 1:45 të pasdites'
          : '29 shtator 2011 në 1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleFull_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 shtator 2011 në 1:45 të pasdites'
          : '29 shtator 2011 në 1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINTypeDate_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.11');
    });
    test('testDateFmtINTypeTime_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINTypeDateTime_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29.9.11, 1:45 të pasdites'
          : '29.9.11, 1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortDateComponentsY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtINShortDateComponentsM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtINShortDateComponentsN_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtINShortDateComponentsD_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtINShortDateComponentsDM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9');
    });
    test('testDateFmtINShortDateComponentsMY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9.11');
    });
    test('testDateFmtINShortDateComponentsDMY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.9.11');
    });
    test('testDateFmtINShortDateComponentsWDM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'e, 29.9');
    });
    test('testDateFmtINShortDateComponentsWDMY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'e, 29.9.11');
    });
    test('testDateFmtINFullDateComponentsY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtINFullDateComponentsM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'shtator');
    });
    test('testDateFmtINFullDateComponentsD_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtINFullDateComponentsDM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 shtator');
    });
    test('testDateFmtINFullDateComponentsMY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'shtator 2011');
    });
    test('testDateFmtINFullDateComponentsDMY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 shtator 2011');
    });
    test('testDateFmtINFullDateComponentsWDM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'e enjte, 29 shtator');
    });
    test('testDateFmtINFullDateComponentsWDMY_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'e enjte, 29 shtator 2011');
    });
    test('testDateFmtINShortTimeComponentsS_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtINShortTimeComponentsM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtINShortTimeComponentsH_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtINShortTimeComponentsHM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtINShortTimeComponentsHMS_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtINShortTimeComponentsHMA_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMZ_sq_AL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sq-AL', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites CEST'
          : '1:45:37 e pasdites CEST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHM_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMS_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites'
          : '1:45:37 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMA_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 të pasdites' : '1:45 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMAZ_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites CEST'
          : '1:45:37 e pasdites CEST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSA_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites'
          : '1:45:37 e pasdites';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSZ_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites CEST'
          : '1:45:37 e pasdites CEST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites CEST'
          : '1:45:37 e pasdites CEST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINWithTimeZoneAndNoDST_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'sq-AL', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'sq-AL',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '1:45:37 të pasdites CET'
          : '1:45:37 e pasdites CET';
      expect(fmt.format(dateOptions), result);
    });
  });
}
