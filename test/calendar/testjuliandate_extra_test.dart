import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('JulianDate onOrBefore/onOrAfter with offset', () {
    test('testJulDateOnOrBeforeWithOffset1', () {
      final JulianDate jul = JulianDate(year: 2014, month: 4, day: 13, hour: 23);
      final double rd = jul.getRataDie();
      expect(jul.getRataDieInstance().onOrBefore(0, offset: -0.33333333333), rd - 6);
    });
    test('testJulDateOnOrBeforeWithOffset2', () {
      final JulianDate jul = JulianDate(year: 2014, month: 4, day: 14, hour: 8);
      final double rd = jul.getRataDie();
      expect(jul.getRataDieInstance().onOrBefore(0, offset: -0.33333333333), rd);
    });
    test('testJulDateOnOrAfterWithOffset1', () {
      final JulianDate jul = JulianDate(year: 2014, month: 4, day: 13, hour: 23);
      final double rd = jul.getRataDie();
      expect(jul.getRataDieInstance().onOrAfter(0, offset: -0.33333333333), rd + 1);
    });
  });
}
