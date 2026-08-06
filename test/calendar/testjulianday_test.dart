import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// Converted from iLib js/test/calendar/testjulianday.js (JulianDay class).
// JulianDay is a pure calculation class — no locale/asset loading needed.
//
// Not converted: testJulianDaySetDaysIgnoreFraction — JS calls setDays(2.9) with a
// float to verify the fraction is dropped. Dart `days` is a non-nullable int field,
// so a float cannot be assigned (same reason as *DateConstructorFullWithStrings).
void main() {
  debugPrint('Testing [testjulianday_test.dart] file.');
  group('JulianDay', () {
    test('testJulianDayConstructor', () {
      final JulianDay jd = JulianDay(1721791.25); // jan 2, 2, 6:00pm
      expect(jd.getDate(), 1721791.25);
    });
    test('testJulianDayGetDate', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.getDate(), 1721791.25);
    });
    test('testJulianDayGetDays', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.days, 1721791);
    });
    test('testJulianDayGetDayFraction', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.getDayFraction(), 0.25);
    });
    test('testJulianDayAddDate', () {
      // JS addDate() mutates in place; Dart addDate() returns a new JulianDay and
      // leaves the original unchanged.
      final JulianDay jd = JulianDay(1.25);
      expect(jd.getDate(), 1.25);
      final JulianDay jd2 = jd.addDate(83.2);
      expect(jd2.getDate(), 84.45); // new instance carries the sum
      expect(jd.getDate(), 1.25); // original unchanged (non-mutating)
    });
    test('testJulianDaySetDays', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.getDate(), 1721791.25);
      jd.days = 2;
      expect(jd.days, 2);
      expect(jd.getDate(), 2.25);
    });
    test('testJulianDaySetDayFraction', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.getDate(), 1721791.25);
      jd.setDayFraction(0.33);
      expect(jd.getDayFraction(), 0.33); // stored exactly
      expect(jd.getDate(), 1721791.33);
    });
    test('testJulianDaySetDayFractionWithWholeNumber', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.getDate(), 1721791.25);
      jd.setDayFraction(2.33); // whole part ignored -> 0.33 (with FP residual)
      // 2.33 - 2.0 == 0.33000000000000007, so getDayFraction needs a tolerance.
      expect(jd.getDayFraction(), closeTo(0.33, 1e-10));
      expect(jd.getDate(), 1721791.33);
    });
    test('testJulianDaySetDate', () {
      final JulianDay jd = JulianDay(1721791.25);
      expect(jd.getDate(), 1721791.25);
      jd.setDate(123.456);
      expect(jd.getDate(), 123.456);
    });
  });
}
