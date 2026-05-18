import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// Test data: [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  [1507231.5, -586, 7, 24, 0, 0, 0, 0, 0],
  [1660037.5, -168, 12, 5, 0, 0, 0, 0, 3],
  [1746893.5, 70, 9, 24, 0, 0, 0, 0, 3],
  [1770641.5, 135, 10, 2, 0, 0, 0, 0, 0],
  [1892731.5, 470, 1, 8, 0, 0, 0, 0, 3],
  [1931579.5, 576, 5, 20, 0, 0, 0, 0, 1],
  [1974851.5, 694, 11, 10, 0, 0, 0, 0, 6],
  [2091164.5, 1013, 4, 25, 0, 0, 0, 0, 0],
  [2121509.5, 1096, 5, 24, 0, 0, 0, 0, 0],
  [2155779.5, 1190, 3, 23, 0, 0, 0, 0, 5],
  [2174029.5, 1240, 3, 10, 0, 0, 0, 0, 6],
  [2191584.5, 1288, 4, 2, 0, 0, 0, 0, 5],
  [2195261.5, 1298, 4, 27, 0, 0, 0, 0, 0],
  [2229274.5, 1391, 6, 12, 0, 0, 0, 0, 0],
  [2245580.5, 1436, 2, 3, 0, 0, 0, 0, 3],
  [2266100.5, 1492, 4, 9, 0, 0, 0, 0, 6],
  [2288542.5, 1553, 9, 19, 0, 0, 0, 0, 6],
  [2290901.5, 1560, 3, 5, 0, 0, 0, 0, 6],
  [2323140.5, 1648, 6, 10, 0, 0, 0, 0, 3],
  [2334848.5, 1680, 6, 30, 0, 0, 0, 0, 0],
  [2348020.5, 1716, 7, 24, 0, 0, 0, 0, 5],
  [2366978.5, 1768, 6, 19, 0, 0, 0, 0, 0],
  [2385648.5, 1819, 8, 2, 0, 0, 0, 0, 1],
  [2392825.5, 1839, 3, 27, 0, 0, 0, 0, 3],
  [2416223.5, 1903, 4, 19, 0, 0, 0, 0, 0],
  [2425848.5, 1929, 8, 25, 0, 0, 0, 0, 0],
  [2430266.5, 1941, 9, 29, 0, 0, 0, 0, 1],
  [2430833.5, 1943, 4, 19, 0, 0, 0, 0, 1],
  [2431004.5, 1943, 10, 7, 0, 0, 0, 0, 4],
  [2448698.5, 1992, 3, 17, 0, 0, 0, 0, 2],
  [2450138.5, 1996, 2, 25, 0, 0, 0, 0, 0],
  [2465737.5, 2038, 11, 10, 0, 0, 0, 0, 3],
  [2486076.5, 2094, 7, 18, 0, 0, 0, 0, 0],
];

void main() {
  group('GregorianDate from JD', () {
    test('from JD 1721790.75', () {
      final GregorianDate d = GregorianDate(julianDay: 1721790.75);
      expect(d.getYears(), 2);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 1);
      expect(d.getHours(), 6);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
    test('from JD after leap year', () {
      final GregorianDate d = GregorianDate(julianDay: 1723071.9);
      expect(d.getYears(), 5);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 5);
      expect(d.getHours(), 9);
      expect(d.getMinutes(), 36);
    });
  });

  group('GregorianDate from RD', () {
    test('Jan 31 midnight', () {
      final GregorianDate d = GregorianDate(rd: 734533);
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 31);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
    });
    test('Jan 31 noon', () {
      final GregorianDate d = GregorianDate(rd: 734533.5);
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 31);
      expect(d.getHours(), 12);
      expect(d.getMinutes(), 0);
    });
    test('Feb 29 leap year noon', () {
      final GregorianDate d = GregorianDate(rd: 734562.5);
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 29);
      expect(d.getHours(), 12);
    });
  });

  group('GregorianDate from components', () {
    test('basic date', () {
      final GregorianDate d = GregorianDate(
          year: 2011, month: 9, day: 23, hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(d.getYears(), 2011);
      expect(d.getMonths(), 9);
      expect(d.getDays(), 23);
      expect(d.getHours(), 16);
      expect(d.getMinutes(), 7);
      expect(d.getSeconds(), 12);
      expect(d.getMilliseconds(), 123);
    });
  });

  group('GregorianDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final GregorianDate d = GregorianDate(julianDay: td[0] as double);
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

  group('GregorianDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final GregorianDate d = GregorianDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('GregorianDate getDayOfYear', () {
    test('Jan 1', () {
      final GregorianDate d = GregorianDate(year: 2012, month: 1, day: 1);
      expect(d.getDayOfYear(), 1);
    });
    test('Dec 31 non-leap', () {
      final GregorianDate d = GregorianDate(year: 2011, month: 12, day: 31);
      expect(d.getDayOfYear(), 365);
    });
    test('Dec 31 leap', () {
      final GregorianDate d = GregorianDate(year: 2012, month: 12, day: 31);
      expect(d.getDayOfYear(), 366);
    });
    test('Mar 1 leap', () {
      final GregorianDate d = GregorianDate(year: 2012, month: 3, day: 1);
      expect(d.getDayOfYear(), 61);
    });
    test('Mar 1 non-leap', () {
      final GregorianDate d = GregorianDate(year: 2011, month: 3, day: 1);
      expect(d.getDayOfYear(), 60);
    });
  });

  group('GregorianDate getEra', () {
    test('CE', () {
      final GregorianDate d = GregorianDate(year: 2011, month: 1, day: 1);
      expect(d.getEra(), 1);
    });
    test('BCE', () {
      final GregorianDate d = GregorianDate(year: -586, month: 7, day: 24);
      expect(d.getEra(), -1);
    });
  });

  group('GregorianDate getCalendar', () {
    test('returns gregorian', () {
      final GregorianDate d = GregorianDate(year: 2011, month: 1, day: 1);
      expect(d.getCalendar(), 'gregorian');
    });
  });
}
