import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ru_RU_test.dart] file.');
  group('format()', () {
    test('testDateFmtSimpleShort_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtSimpleMedium_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сент. 2011 г.');
    });
    test('testDateFmtSimpleLong_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сентября 2011 г.');
    });
    test('testDateFmtSimpleFull_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сентября 2011 г.');
    });
    test('testDateFmtSimpleTimeShort_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сент. 2011 г., 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сентября 2011 г. в 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сентября 2011 г. в 13:45');
    });
    test('testDateFmtTypeDate_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtTypeTime_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011, 13:45');
    });
    test('testDateFmtShortDateComponentsY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'се');
    });
    test('testDateFmtShortDateComponentsN_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'с');
    });
    test('testDateFmtShortDateComponentsD_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.2011');
    });
    test('testDateFmtShortDateComponentsDMY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.2011');
    });
    test('testDateFmtShortDateComponentsWDM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Ч, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Ч, 29.09.2011');
    });
    test('testDateFmtFullDateComponentsY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'сентябрь');
    });
    test('testDateFmtFullDateComponentsD_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сентября');
    });
    test('testDateFmtFullDateComponentsMY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'сентябрь 2011 г.');
    });
    test('testDateFmtFullDateComponentsDMY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 сентября 2011 г.');
    });
    test('testDateFmtFullDateComponentsWDM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'четверг, 29 сентября');
    });
    test('testDateFmtFullDateComponentsWDMY_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'четверг, 29 сентября 2011 г.');
    });
    test('testDateFmtShortTimeComponentsS_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          time: 'hmz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 MSK');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          time: 'hmaz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 MSK');
    });
    test('testDateFmtShortTimeComponentsHMSA_ru_RU', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ru-RU', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          time: 'hmsz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 MSK');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 MSK');
    });
    test('testDateFmtFullTimeComponentsS_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 MSK');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 MSK');
    });
    test('testDateFmtFullTimeComponentsHMSA_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 MSK');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 MSK');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Europe/Moscow');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ru-RU',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 MSK');
    });
  });
}
