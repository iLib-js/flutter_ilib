import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_pt_PT_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtPTSimpleShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtPTSimpleMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtPTSimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 setembro 2011'
          : '29 de setembro de 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPTSimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de setembro de 2011');
    });
    test('testDateFmtPTSimpleTimeShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTSimpleTimeMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTSimpleTimeLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTSimpleTimeFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTDateTimeSimpleShort', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 13:45');
    });
    test('testDateFmtPTDateTimeSimpleMedium', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtPTDateTimeSimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 setembro 2011 às 13:45'
          : '29 de setembro de 2011 às 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPTDateTimeSimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de setembro de 2011 às 13:45');
    });

    test('testDateFmtPTTypeDate', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtPTTypeTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTTypeDateTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 13:45');
    });
    test('testDateFmtPTShortDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtPTShortDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtPTShortDateComponentsN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtPTShortDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtPTShortDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtPTShortDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/11');
    });
    test('testDateFmtPTShortDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtPTShortDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Q, 29/09');
    });
    test('testDateFmtPTShortDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Q, 29/09/11');
    });
    test('testDateFmtPTFullDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtPTFullDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'setembro');
    });
    test('testDateFmtPTFullDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtPTFullDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de setembro');
    });
    test('testDateFmtPTFullDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'setembro de 2011');
    });
    test('testDateFmtPTFullDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de setembro de 2011');
    });
    test('testDateFmtPTFullDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'quinta-feira, 29 de setembro');
    });
    test('testDateFmtPTFullDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'quinta-feira, 29 de setembro de 2011');
    });
    test('testDateFmtPTShortTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtPTShortTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtPTShortTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtPTShortTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtPTShortTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTShortTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPTShortTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTShortTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          time: 'hmz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 WEST');
    });
    test('testDateFmtPTShortTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          time: 'hmaz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 WEST');
    });
    test('testDateFmtPTShortTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pt-PT', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPTShortTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          time: 'hmsz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 WEST');
    });
    test('testDateFmtPTShortTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 WEST');
    });
    test('testDateFmtPTFullTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtPTFullTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtPTFullTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtPTFullTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtPTFullTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTFullTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPTFullTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPTFullTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 WEST');
    });
    test('testDateFmtPTFullTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 WEST');
    });
    test('testDateFmtPTFullTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPTFullTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 WEST');
    });
    test('testDateFmtPTFullTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 WEST');
    });
    test('testDateFmtPTWithTimeZoneAndNoDST', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Lisbon');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pt-PT',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 WET');
    });
  });
}
