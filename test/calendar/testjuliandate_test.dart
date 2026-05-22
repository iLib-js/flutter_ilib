import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, -587, 7, 30, 0, 0, 0, 0, 0],
  [1660037.5, -169, 12, 8, 0, 0, 0, 0, 3],
  [1746893.5, 70, 9, 26, 0, 0, 0, 0, 3],
  [1770641.5, 135, 10, 3, 0, 0, 0, 0, 0],
  [1892731.5, 470, 1, 7, 0, 0, 0, 0, 3],
  [1931579.5, 576, 5, 18, 0, 0, 0, 0, 1],
  [1974851.5, 694, 11, 7, 0, 0, 0, 0, 6],
  [2091164.5, 1013, 4, 19, 0, 0, 0, 0, 0],
  [2121509.5, 1096, 5, 18, 0, 0, 0, 0, 0],
  [2155779.5, 1190, 3, 16, 0, 0, 0, 0, 5],
  [2174029.5, 1240, 3, 3, 0, 0, 0, 0, 6],
  [2191584.5, 1288, 3, 26, 0, 0, 0, 0, 5],
  [2195261.5, 1298, 4, 20, 0, 0, 0, 0, 0],
  [2229274.5, 1391, 6, 4, 0, 0, 0, 0, 0],
  [2245580.5, 1436, 1, 25, 0, 0, 0, 0, 3],
  [2266100.5, 1492, 3, 31, 0, 0, 0, 0, 6],
  [2288542.5, 1553, 9, 9, 0, 0, 0, 0, 6],
  [2290901.5, 1560, 2, 24, 0, 0, 0, 0, 6],
  [2323140.5, 1648, 5, 31, 0, 0, 0, 0, 3],
  [2334848.5, 1680, 6, 20, 0, 0, 0, 0, 0],
  [2348020.5, 1716, 7, 13, 0, 0, 0, 0, 5],
  [2366978.5, 1768, 6, 8, 0, 0, 0, 0, 0],
  [2385648.5, 1819, 7, 21, 0, 0, 0, 0, 1],
  [2392825.5, 1839, 3, 15, 0, 0, 0, 0, 3],
  [2416223.5, 1903, 4, 6, 0, 0, 0, 0, 0],
  [2425848.5, 1929, 8, 12, 0, 0, 0, 0, 0],
  [2430266.5, 1941, 9, 16, 0, 0, 0, 0, 1],
  [2430833.5, 1943, 4, 6, 0, 0, 0, 0, 1],
  [2431004.5, 1943, 9, 24, 0, 0, 0, 0, 4],
  [2448698.5, 1992, 3, 4, 0, 0, 0, 0, 2],
  [2450138.5, 1996, 2, 12, 0, 0, 0, 0, 0],
  [2465737.5, 2038, 10, 28, 0, 0, 0, 0, 3],
  [2486076.5, 2094, 7, 5, 0, 0, 0, 0, 0],
];

void main() {
  group('JulianDate from JD', () {
    test('basic JD', () {
      final JulianDate d = JulianDate(julianDay: 2450138.5);
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
          year: 2000, month: 6, day: 15, hour: 14, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 2000);
      expect(d.getMonths(), 6);
      expect(d.getDays(), 15);
      expect(d.getHours(), 14);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('JulianDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final JulianDate d = JulianDate(julianDay: td[0] as double);
        expect(d.getYears(), td[1] as int);
        expect(d.getMonths(), td[2] as int);
        expect(d.getDays(), td[3] as int);
        expect(d.getHours(), td[4] as int);
        expect(d.getMinutes(), td[5] as int);
        expect(d.getSeconds(), td[6] as int);
        expect(d.getMilliseconds(), td[7] as int);
      });
    }
  });

  group('JulianDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final JulianDate d = JulianDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('JulianDate getCalendar', () {
    test('returns julian', () {
      final JulianDate d = JulianDate(year: 2000, month: 1, day: 1);
      expect(d.getCalendar(), 'julian');
    });
  });
}
