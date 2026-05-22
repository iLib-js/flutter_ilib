import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, -43, 7, 24, 0, 0, 0, 0, 0],
  [1660037.5, 375, 12, 5, 0, 0, 0, 0, 3],
  [1746893.5, 613, 9, 24, 0, 0, 0, 0, 3],
  [1770641.5, 678, 10, 2, 0, 0, 0, 0, 0],
  [1892731.5, 1013, 1, 8, 0, 0, 0, 0, 3],
  [1931579.5, 1119, 5, 20, 0, 0, 0, 0, 1],
  [1974851.5, 1237, 11, 10, 0, 0, 0, 0, 6],
  [2091164.5, 1556, 4, 25, 0, 0, 0, 0, 0],
  [2121509.5, 1639, 5, 24, 0, 0, 0, 0, 0],
  [2155779.5, 1733, 3, 23, 0, 0, 0, 0, 5],
  [2174029.5, 1783, 3, 10, 0, 0, 0, 0, 6],
  [2191584.5, 1831, 4, 2, 0, 0, 0, 0, 5],
  [2195261.5, 1841, 4, 27, 0, 0, 0, 0, 0],
  [2229274.5, 1934, 6, 12, 0, 0, 0, 0, 0],
  [2245580.5, 1979, 2, 3, 0, 0, 0, 0, 3],
  [2266100.5, 2035, 4, 9, 0, 0, 0, 0, 6],
  [2288542.5, 2096, 9, 19, 0, 0, 0, 0, 6],
  [2290901.5, 2103, 3, 5, 0, 0, 0, 0, 6],
  [2323140.5, 2191, 6, 10, 0, 0, 0, 0, 3],
  [2334848.5, 2223, 6, 30, 0, 0, 0, 0, 0],
  [2348020.5, 2259, 7, 24, 0, 0, 0, 0, 5],
  [2366978.5, 2311, 6, 19, 0, 0, 0, 0, 0],
  [2385648.5, 2362, 8, 2, 0, 0, 0, 0, 1],
  [2392825.5, 2382, 3, 27, 0, 0, 0, 0, 3],
  [2416223.5, 2446, 4, 19, 0, 0, 0, 0, 0],
  [2425848.5, 2472, 8, 25, 0, 0, 0, 0, 0],
  [2430266.5, 2484, 9, 29, 0, 0, 0, 0, 1],
  [2430833.5, 2486, 4, 19, 0, 0, 0, 0, 1],
  [2431004.5, 2486, 10, 7, 0, 0, 0, 0, 4],
  [2448698.5, 2535, 3, 17, 0, 0, 0, 0, 2],
  [2450138.5, 2539, 2, 25, 0, 0, 0, 0, 0],
  [2465737.5, 2581, 11, 10, 0, 0, 0, 0, 3],
  [2486076.5, 2637, 7, 18, 0, 0, 0, 0, 0],
];

void main() {
  group('ThaiSolarDate from JD', () {
    test('basic JD', () {
      final ThaiSolarDate d = ThaiSolarDate(julianDay: 2450138.5);
      expect(d.getYears(), 2539);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 25);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('ThaiSolarDate from components', () {
    test('basic date', () {
      final ThaiSolarDate d = ThaiSolarDate(
          year: 2567, month: 3, day: 15, hour: 8, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 2567);
      expect(d.getMonths(), 3);
      expect(d.getDays(), 15);
      expect(d.getHours(), 8);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('ThaiSolarDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final ThaiSolarDate d = ThaiSolarDate(julianDay: td[0] as double);
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

  group('ThaiSolarDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final ThaiSolarDate d = ThaiSolarDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('ThaiSolarDate getCalendar', () {
    test('returns thaisolar', () {
      final ThaiSolarDate d = ThaiSolarDate(year: 2567, month: 1, day: 1);
      expect(d.getCalendar(), 'thaisolar');
    });
  });
}
