import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_pa_IN_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('pa-IN');
  });
  group('format()', () {
    test('testDateFmtINSimpleShort_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINSimpleMedium_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ਸਤੰ 2011');
    });
    test('testDateFmtINSimpleLong_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ਸਤੰਬਰ 2011');
    });
    test('testDateFmtINSimpleFull_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ਸਤੰਬਰ 2011');
    });
    test('testDateFmtINSimpleTimeShort_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeShort_pa_IN1', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeMedium_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeLong_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeFull_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleShort_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29/9/11, 1:45 PM'
          : '29/9/11, 1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleMedium_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 ਸਤੰ 2011, 1:45 PM'
          : '29 ਸਤੰ 2011, 1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleLong_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 ਸਤੰਬਰ 2011 1:45 PM'
          : '29 ਸਤੰਬਰ 2011 1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleFull_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 ਸਤੰਬਰ 2011 1:45 PM'
          : '29 ਸਤੰਬਰ 2011 1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINTypeDate_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINTypeTime_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINTypeDateTime_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29/9/11, 1:45 PM'
          : '29/9/11, 1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortDateComponentsY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtINShortDateComponentsM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtINShortDateComponentsN_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਸ');
    });
    test('testDateFmtINShortDateComponentsD_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtINShortDateComponentsDM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtINShortDateComponentsMY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/11');
    });
    test('testDateFmtINShortDateComponentsDMY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINShortDateComponentsWDM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਵੀ, 29/9');
    });
    test('testDateFmtINShortDateComponentsWDMY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਵੀ, 29/9/11');
    });
    test('testDateFmtINFullDateComponentsY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtINFullDateComponentsM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਸਤੰਬਰ');
    });
    test('testDateFmtINFullDateComponentsD_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtINFullDateComponentsDM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ਸਤੰਬਰ');
    });
    test('testDateFmtINFullDateComponentsMY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਸਤੰਬਰ 2011');
    });
    test('testDateFmtINFullDateComponentsDMY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ਸਤੰਬਰ 2011');
    });
    test('testDateFmtINFullDateComponentsWDM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਵੀਰਵਾਰ, 29 ਸਤੰਬਰ');
    });
    test('testDateFmtINFullDateComponentsWDMY_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ਵੀਰਵਾਰ, 29 ਸਤੰਬਰ 2011');
    });
    test('testDateFmtINShortTimeComponentsS_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtINShortTimeComponentsM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtINShortTimeComponentsH_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtINShortTimeComponentsHM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtINShortTimeComponentsHMS_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtINShortTimeComponentsHMA_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMAZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMSA_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM' : '1:45:37 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMSZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsS_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtINFullTimeComponentsM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtINFullTimeComponentsH_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtINFullTimeComponentsHM_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMS_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM' : '1:45:37 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMA_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45 PM' : '1:45 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMAZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          length: 'full',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSA_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM' : '1:45:37 ਬਾ.ਦੁ.';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINWithTimeZoneAndNoDST_pa_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pa-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 ਬਾ.ਦੁ. IST';
      expect(fmt.format(dateOptions), result);
    });

    test('testDateFmtINTemplateClock12SwitchHH_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtINTemplateClock12Switchkk_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtINTemplateClock24SwitchKK_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtINTemplateClock24Switchhh_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault12KK_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault12hh_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault24HH_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault24kk_pa_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-IN', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pa-IN',
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
