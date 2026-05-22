import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, -870, 12, 6, 0, 0, 0, 0, 0],
  [1660037.5, -451, 4, 12, 0, 0, 0, 0, 3],
  [1746893.5, -213, 1, 29, 0, 0, 0, 0, 3],
  [1770641.5, -148, 2, 5, 0, 0, 0, 0, 0],
  [1892731.5, 186, 5, 12, 0, 0, 0, 0, 3],
  [1931579.5, 292, 9, 23, 0, 0, 0, 0, 1],
  [1974851.5, 411, 3, 11, 0, 0, 0, 0, 6],
  [2091164.5, 729, 8, 24, 0, 0, 0, 0, 0],
  [2121509.5, 812, 9, 23, 0, 0, 0, 0, 0],
  [2155779.5, 906, 7, 20, 0, 0, 0, 0, 5],
  [2174029.5, 956, 7, 7, 0, 0, 0, 0, 6],
  [2191584.5, 1004, 7, 30, 0, 0, 0, 0, 5],
  [2195261.5, 1014, 8, 25, 0, 0, 0, 0, 0],
  [2229274.5, 1107, 10, 10, 0, 0, 0, 0, 0],
  [2245580.5, 1152, 5, 29, 0, 0, 0, 0, 3],
  [2266100.5, 1208, 8, 5, 0, 0, 0, 0, 6],
  [2288542.5, 1270, 1, 12, 0, 0, 0, 0, 6],
  [2290901.5, 1276, 6, 29, 0, 0, 0, 0, 6],
  [2323140.5, 1364, 10, 6, 0, 0, 0, 0, 3],
  [2334848.5, 1396, 10, 26, 0, 0, 0, 0, 0],
  [2348020.5, 1432, 11, 19, 0, 0, 0, 0, 5],
  [2366978.5, 1484, 10, 14, 0, 0, 0, 0, 0],
  [2385648.5, 1535, 11, 27, 0, 0, 0, 0, 1],
  [2392825.5, 1555, 7, 19, 0, 0, 0, 0, 3],
  [2416223.5, 1619, 8, 11, 0, 0, 0, 0, 0],
  [2425848.5, 1645, 12, 19, 0, 0, 0, 0, 0],
  [2430266.5, 1658, 1, 19, 0, 0, 0, 0, 1],
  [2430833.5, 1659, 8, 11, 0, 0, 0, 0, 1],
  [2431004.5, 1660, 1, 26, 0, 0, 0, 0, 4],
  [2448698.5, 1708, 7, 8, 0, 0, 0, 0, 2],
  [2450138.5, 1712, 6, 17, 0, 0, 0, 0, 0],
  [2465737.5, 1755, 3, 1, 0, 0, 0, 0, 3],
  [2486076.5, 1810, 11, 11, 0, 0, 0, 0, 0],
];

void main() {
  group('CopticDate from JD', () {
    test('basic JD', () {
      final CopticDate d = CopticDate(julianDay: 2430266.5);
      expect(d.getYears(), 1658);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 19);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('CopticDate from components', () {
    test('basic date', () {
      final CopticDate d = CopticDate(
          year: 1735, month: 7, day: 15, hour: 12, minute: 30, second: 45, millisecond: 500);
      expect(d.getYears(), 1735);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 15);
      expect(d.getHours(), 12);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 45);
      expect(d.getMilliseconds(), 500);
    });
  });

  group('CopticDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final CopticDate d = CopticDate(julianDay: td[0] as double);
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

  group('CopticDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final CopticDate d = CopticDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('CopticDate getCalendar', () {
    test('returns coptic', () {
      final CopticDate d = CopticDate(year: 1735, month: 1, day: 1);
      expect(d.getCalendar(), 'coptic');
    });
  });
}
