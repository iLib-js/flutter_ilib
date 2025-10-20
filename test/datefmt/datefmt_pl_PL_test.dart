import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_pl_PL_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('pl-PL');
  });
  group('format()', () {
    test('testDateFmtPLSimpleShort_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtPLSimpleMedium_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29 Wrz 2011' : '29 wrz 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLSimpleLong_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29 Września 2011' : '29 września 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLSimpleFull_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29 Września 2011' : '29 września 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLSimpleTimeShort_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLSimpleTimeMedium_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLSimpleTimeLong_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLSimpleTimeFull_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLDateTimeSimpleShort_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011, 13:45');
    });
    test('testDateFmtPLDateTimeSimpleMedium_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 Wrz 2011, 13:45'
          : '29 wrz 2011, 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLDateTimeSimpleLong_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 Września 2011 13:45'
          : '29 września 2011 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLDateTimeSimpleFull_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '29 Września 2011 13:45'
          : '29 września 2011 13:45';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLTypeDate_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtPLTypeTime_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLTypeDateTime_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011, 13:45');
    });
    test('testDateFmtPLShortDateComponentsY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtPLShortDateComponentsM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? 'Wr' : 'wr';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLShortDateComponentsN_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? 'W' : 'w';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLShortDateComponentsD_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtPLShortDateComponentsDM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtPLShortDateComponentsMY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.2011');
    });
    test('testDateFmtPLShortDateComponentsDMY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtPLShortDateComponentsWDM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? 'C, 29.09' : 'c, 29.09';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLShortDateComponentsWDMY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'C, 29.09.2011' : 'c, 29.09.2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLFullDateComponentsY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtPLFullDateComponentsM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS') ? 'Wrzesień' : 'wrzesień';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLFullDateComponentsD_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtPLFullDateComponentsDM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29 Września' : '29 września';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLFullDateComponentsMY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? 'Wrzesień 2011' : 'wrzesień 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLFullDateComponentsDMY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '29 Września 2011' : '29 września 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLFullDateComponentsWDM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? 'Czwartek, 29 Września'
          : 'czwartek, 29 września';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLFullDateComponentsWDMY_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? 'Czwartek, 29 Września 2011'
          : 'czwartek, 29 września 2011';
      expect(fmt.format(dateOptions), result);
    });
    test('testDateFmtPLShortTimeComponentsS_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtPLShortTimeComponentsM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtPLShortTimeComponentsH_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtPLShortTimeComponentsMS_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtPLShortTimeComponentsHM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLShortTimeComponentsHMS_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPLShortTimeComponentsHMA_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLShortTimeComponentsHMZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtPLShortTimeComponentsHMAZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtPLShortTimeComponentsHMSA_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPLShortTimeComponentsHMSZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtPLShortTimeComponentsHMSAZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtPLFullTimeComponentsS_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtPLFullTimeComponentsM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtPLFullTimeComponentsH_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtPLFullTimeComponentsMS_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtPLFullTimeComponentsHM_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLFullTimeComponentsHMS_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPLFullTimeComponentsHMA_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtPLFullTimeComponentsHMZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtPLFullTimeComponentsHMAZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtPLFullTimeComponentsHMSA_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtPLFullTimeComponentsHMSZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtPLFullTimeComponentsHMSAZ_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtPLWithTimeZoneAndNoDST_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'pl-PL', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CET');
    });

    test('testDateFmtPLTemplateClock12SwitchHH_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtPLTemplateClock12Switchkk_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtPLTemplateClock24SwitchKK_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtPLTemplateClock24Switchhh_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtPLTemplateNoClockDoNotFollowLocaleDefault12KK_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtPLTemplateNoClockDoNotFollowLocaleDefault12hh_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtPLTemplateNoClockDoNotFollowLocaleDefault24HH_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtPLTemplateNoClockDoNotFollowLocaleDefault24kk_pl_PL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pl-PL', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'pl-PL',
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
