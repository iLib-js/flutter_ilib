import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_es_US_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('SimpleShort_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/2011');
    });
    test('SimpleMedium_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sept 2011');
    });
    test('SimpleLong_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011');
    });
    test('SimpleFull_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011');
    });
    test('SimpleTimeShort_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('SimpleTimeMedium_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('SimpleTimeLong_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('SimpleTimeFull_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('DateTimeSimpleShort_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/2011, 1:45 p.m.');
    });
    test('DateTimeSimpleMedium_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sept 2011, 1:45 p.m.');
    });
    test('DateTimeSimpleLong_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011, 1:45 p.m.');
    });
    test('DateTimeSimpleFull_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011, 1:45 p.m.');
    });
    test('TypeDate_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/2011');
    });
    test('TypeTime_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('TypeDateTime_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/2011, 1:45 p.m.');
    });
    test('ShortDateComponentsY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('ShortDateComponentsM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('ShortDateComponentsN_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('ShortDateComponentsD_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('ShortDateComponentsDM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('ShortDateComponentsMY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/2011');
    });
    test('ShortDateComponentsDMY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/2011');
    });
    test('ShortDateComponentsWDM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J, 29/9');
    });
    test('ShortDateComponentsWDMY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J, 29/9/2011');
    });
    test('FullDateComponentsY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('FullDateComponentsM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septiembre');
    });
    test('FullDateComponentsD_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('FullDateComponentsDM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre');
    });
    test('FullDateComponentsMY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septiembre de 2011');
    });
    test('FullDateComponentsDMY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011');
    });
    test('FullDateComponentsWDM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'jueves, 29 de septiembre');
    });
    test('FullDateComponentsWDMY_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'jueves, 29 de septiembre de 2011');
    });
    test('ShortTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('ShortTimeComponentsM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('ShortTimeComponentsH_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('ShortTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('ShortTimeComponentsHM_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('ShortTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('ShortTimeComponentsHMA_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('ShortTimeComponentsHMZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          time: 'hmz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EDT');
    });
    test('ShortTimeComponentsHMAZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          time: 'hmaz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m. EDT');
    });
    test('ShortTimeComponentsHMSA_es_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-US', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
        locale: 'es-US',
        year: 2011,
        month: 9,
        day: 29,
        hour: 13,
        minute: 45,
        second: 37,
        millisecond: 0,
      );
      expect(fmt.format(dateOptions), '1:45:37 p.m.');
    });
    test('ShortTimeComponentsHMSZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          time: 'hmsz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EDT');
    });
    test('ShortTimeComponentsHMSAZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          time: 'hmsaz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m. EDT');
    });
    test('FullTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('FullTimeComponentsM_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('FullTimeComponentsH_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('FullTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('FullTimeComponentsHM_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('FullTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('FullTimeComponentsHMA_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('FullTimeComponentsHMZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EDT');
    });
    test('FullTimeComponentsHMAZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m. EDT');
    });
    test('FullTimeComponentsHMSA_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m.');
    });
    test('FullTimeComponentsHMSZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EDT');
    });
    test('FullTimeComponentsHMSAZ_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m. EDT');
    });
    test('WithTimeZoneAndNoDST_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'America/New_York');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-US',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EST');
    });
  });
}
