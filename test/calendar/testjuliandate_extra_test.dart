import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [testjuliandate_extra_test.dart] file.');
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('JulianDate onOrBefore/onOrAfter with offset', () {
    test('testJulDateOnOrBeforeWithOffset1', () {
      final JulianDate jul = JulianDate(
          year: 2014, month: 4, day: 13, hour: 23, timezone: 'Etc/UTC');
      final double rd = jul.getRataDie();
      expect(jul.getRataDieInstance().onOrBefore(0, offset: -0.33333333333),
          rd - 6);
    });
    test('testJulDateOnOrBeforeWithOffset2', () {
      final JulianDate jul = JulianDate(
          year: 2014, month: 4, day: 14, hour: 8, timezone: 'Etc/UTC');
      final double rd = jul.getRataDie();
      expect(
          jul.getRataDieInstance().onOrBefore(0, offset: -0.33333333333), rd);
    });
    test('testJulDateOnOrAfterWithOffset1', () {
      final JulianDate jul = JulianDate(
          year: 2014, month: 4, day: 13, hour: 23, timezone: 'Etc/UTC');
      final double rd = jul.getRataDie();
      expect(jul.getRataDieInstance().onOrAfter(0, offset: -0.33333333333),
          rd + 1);
    });
  });

  group('JulianDate from JD', () {
    test('basic JD', () {
      final JulianDate d =
          JulianDate(julianDay: 2450138.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 1996);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 12);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('JulianDate from components', () {
    test('basic date', () {
      final JulianDate d = JulianDate(
          year: 2000,
          month: 6,
          day: 15,
          hour: 14,
          minute: 30,
          second: 0,
          millisecond: 0);
      expect(d.getYears(), 2000);
      expect(d.getMonths(), 6);
      expect(d.getDays(), 15);
      expect(d.getHours(), 14);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('JulianDate getCalendar', () {
    test('returns julian', () {
      final JulianDate d = JulianDate(year: 2000, month: 1, day: 1);
      expect(d.getCalendar(), 'julian');
    });
  });
}
