import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ka_GE_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtSimpleMedium_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექ. 2011');
    });
    test('testDateFmtSimpleLong_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექტემბერი, 2011');
    });
    test('testDateFmtSimpleFull_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექტემბერი, 2011');
    });
    test('testDateFmtSimpleTimeShort_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });
    test('testDateFmtDateTimeSimpleShort_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექ. 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექტემბერი, 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექტემბერი, 2011, 13:45');
    });

    test('testDateFmtTypeDate_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtTypeTime_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11, 13:45');
    });
    test('testDateFmtShortDateComponentsY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ს');
    });
    test('testDateFmtShortDateComponentsD_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.11');
    });
    test('testDateFmtShortDateComponentsDMY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtShortDateComponentsWDM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ხ, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ხ, 29.09.11');
    });
    test('testDateFmtLongDateComponentsWDM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', date: 'wdm', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ხუთ, 29 სექტემბერი');
    });
    test('testDateFmtFullDateComponentsY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'სექტემბერი');
    });
    test('testDateFmtFullDateComponentsD_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექტემბერი');
    });
    test('testDateFmtFullDateComponentsMY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'სექტემბერი, 2011');
    });
    test('testDateFmtFullDateComponentsDMY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 სექტემბერი, 2011');
    });
    test('testDateFmtFullDateComponentsWDM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ხუთშაბათი, 29 სექტემბერი');
    });
    test('testDateFmtFullDateComponentsWDMY_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ხუთშაბათი, 29 სექტემბერი, 2011');
    });
    test('testDateFmtShortTimeComponentsS_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', time: 'hmz', timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +04');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +04');
    });
    test('testDateFmtShortTimeComponentsHMSA_ka_GE', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ka-GE', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +04');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +04');
    });
    test('testDateFmtFullTimeComponentsS_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +04');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +04');
    });
    test('testDateFmtFullTimeComponentsHMSA_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +04');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +04');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ka_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ka-GE',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Tbilisi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ka-GE',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +04');
    });
  });
}
