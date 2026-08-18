import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [testcopticdate_extra_test.dart] file.');
  group('CopticDate getDayOfYear', () {
    test('CopticDateGetDayOfYearFirst', () {
      final CopticDate d = CopticDate(year: 1735, month: 1, day: 1);
      expect(d.getDayOfYear(), 1);
    });
    test('CopticDateGetDayOfYearMidMonth', () {
      final CopticDate d = CopticDate(year: 1735, month: 1, day: 30);
      expect(d.getDayOfYear(), 30);
    });
    test('CopticDateGetDayOfYearMonth2', () {
      final CopticDate d = CopticDate(year: 1735, month: 2, day: 1);
      expect(d.getDayOfYear(), 31);
    });
    test('CopticDateGetDayOfYearMonth13Start', () {
      final CopticDate d = CopticDate(year: 1735, month: 13, day: 1);
      expect(d.getDayOfYear(), 361);
    });
    test('CopticDateGetDayOfYearMonth13Day5', () {
      final CopticDate d = CopticDate(year: 1736, month: 13, day: 5);
      expect(d.getDayOfYear(), 365);
    });
    test('CopticDateGetDayOfYearMonth13Day6Leap', () {
      final CopticDate d = CopticDate(year: 1735, month: 13, day: 6);
      expect(d.getDayOfYear(), 366);
    });
  });

  group('CopticDate getEra', () {
    test('CopticDateGetEraPositive', () {
      final CopticDate d = CopticDate(year: 1735, month: 1, day: 1);
      expect(d.getEra(), 1);
    });
    test('CopticDateGetEraNegative', () {
      final CopticDate d = CopticDate(julianDay: 1507231.5);
      expect(d.getEra(), -1);
    });
  });

  group('CopticDate getCalendar', () {
    test('testCopticDateGetCalendar', () {
      final CopticDate cd = CopticDate(year: 1735, month: 1, day: 1);
      expect(cd.getCalendar(), 'coptic');
    });
  });
}
