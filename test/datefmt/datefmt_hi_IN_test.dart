import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_hi_IN_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('hi-IN');
  });
  group('format()', () {
    test('testDateFmtINSimpleShort_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINSimpleMedium_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 सित॰ 2011');
    });
    test('testDateFmtINSimpleLong_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 सितंबर 2011');
    });
    test('testDateFmtINSimpleFull_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 सितंबर 2011');
    });
    test('testDateFmtINSimpleTimeShort_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeShort_hi_IN1', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeMedium_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeLong_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINSimpleTimeFull_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleShort_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29/9/11, 1:45 PM' : '29/9/11, 1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleMedium_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 सित॰ 2011, 1:45 PM'
          : '29 सित॰ 2011, 1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleLong_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 सितंबर 2011 को 1:45 PM बजे'
          : '29 सितंबर 2011 को 1:45 pm बजे';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINDateTimeSimpleFull_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 सितंबर 2011 को 1:45 PM बजे'
          : '29 सितंबर 2011 को 1:45 pm बजे';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINTypeDate_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINTypeTime_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINTypeDateTime_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29/9/11, 1:45 PM' : '29/9/11, 1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortDateComponentsY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtINShortDateComponentsM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtINShortDateComponentsN_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'स');
    });
    test('testDateFmtINShortDateComponentsD_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtINShortDateComponentsDM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtINShortDateComponentsMY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/11');
    });
    test('testDateFmtINShortDateComponentsDMY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINShortDateComponentsWDM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'गु, 29/9');
    });
    test('testDateFmtINShortDateComponentsWDMY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'गु, 29/9/11');
    });
    test('testDateFmtINFullDateComponentsY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtINFullDateComponentsM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'सितंबर');
    });
    test('testDateFmtINFullDateComponentsD_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtINFullDateComponentsDM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 सितंबर');
    });
    test('testDateFmtINFullDateComponentsMY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'सितंबर 2011');
    });
    test('testDateFmtINFullDateComponentsDMY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 सितंबर 2011');
    });
    test('testDateFmtINFullDateComponentsWDM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'गुरुवार, 29 सितंबर');
    });
    test('testDateFmtINFullDateComponentsWDMY_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'गुरुवार, 29 सितंबर 2011');
    });
    test('testDateFmtINShortTimeComponentsS_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtINShortTimeComponentsM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtINShortTimeComponentsH_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtINShortTimeComponentsHM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtINShortTimeComponentsHMS_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtINShortTimeComponentsHMA_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMAZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMSA_hi_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hi-IN', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM' : '1:45:37 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMSZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsS_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtINFullTimeComponentsM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtINFullTimeComponentsH_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtINFullTimeComponentsHM_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMS_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM' : '1:45:37 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMA_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? '1:45 PM' : '1:45 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMAZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          length: 'full',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSA_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM' : '1:45:37 pm';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtINWithTimeZoneAndNoDST_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hi-IN',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '1:45:37 PM IST' : '1:45:37 pm IST';
      expect(fmt.format(dateOptions), result);
    });
  });
}
