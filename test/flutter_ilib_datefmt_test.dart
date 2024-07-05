import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_datefmt_test.dart] file.');
  group('format()', () {
    test('ILibDateFmt_no_Options', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions();
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions =
          ILibDateOptions(dateTime: DateTime.parse('2024-03-23 10:42'));
      expect(fmt.format(dateOptions), '3/23/24');
    });
    test('ILibDateFmt_Options', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2024,
          month: 7,
          day: 4,
          hour: 13,
          minute: 45,
          second: 0);
      expect(fmt.format(dateOptions), '2024년 7월 4일 오후 1:45');
    });
    test('ILibDateFmt_DateTimeObj_datetime', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', length: 'full', type: 'datetime', timezone: 'local');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      expect(fmt.format(dateOptions), '2024년 5월 31일 오후 1:20');
    });
    test('ILibDateFmt_DateTimeObj_time', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', length: 'full', type: 'time', timezone: 'local');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      expect(fmt.format(dateOptions), '오후 1:20');
    });
    test('ILibDateFmt_DateTimeObj_date', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      expect(fmt.format(dateOptions), '2024년 5월 31일');
    });
    test('ILibDateFmt_DateTimeObj_date2', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions =
          ILibDateOptions(dateTime: DateTime.parse('2024-06-27 10:42'));
      expect(fmt.format(dateOptions), '2024년 6월 27일 오전 10:42');
    });
  });
  group('getClock()', () {
    test('getClock_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('getClock_en_US', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-US', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('getClock_en_GB', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-GB', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
  });
}
