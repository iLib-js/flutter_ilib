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
  group('GregRataDie constructor', () {
    test('from components default', () {
      final GregRataDie rd = GregRataDie();
      expect(rd.getRataDie() > 0, true);
    });
    test('from JD', () {
      final GregRataDie rd = GregRataDie(julianDay: 1721790.75);
      final double expected = 1721790.75 - GregRataDie.epoch;
      expect(rd.getRataDie(), closeTo(expected, 0.0001));
    });
    test('from RD', () {
      final GregRataDie rd = GregRataDie(rataDie: 234323);
      expect(rd.getRataDie(), 234323);
    });
    test('from unixtime 0', () {
      final GregRataDie rd = GregRataDie(unixtime: 0);
      expect(rd.getRataDie(), closeTo(719163.0, 0.0001));
    });
    test('from unixtime 61000', () {
      final GregRataDie rd = GregRataDie(unixtime: 61000);
      expect(rd.getRataDie(), closeTo(719163.0007060185, 0.0000001));
    });
    test('from full datetime components', () {
      final GregRataDie rd = GregRataDie(
          year: 2011, month: 9, day: 23, hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(rd.getRataDie(), closeTo(734403.6716680903, 0.0000001));
    });
  });

  group('GregRataDie JD conversion from date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> d = testDates[i];
      test('date ${d[1]}/${d[2]}/${d[3]} -> JD ${d[0]}', () {
        final GregRataDie rd = GregRataDie(
          year: d[1] as int,
          month: d[2] as int,
          day: d[3] as int,
          hour: d[4] as int,
          minute: d[5] as int,
          second: d[6] as int,
          millisecond: d[7] as int,
        );
        expect(rd.getJulianDay(), closeTo(d[0] as double, 0.0001));
      });
    }
  });

  group('GregRataDie JD roundtrip', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> d = testDates[i];
      test('JD ${d[0]} roundtrip', () {
        final GregRataDie rd = GregRataDie(julianDay: d[0] as double);
        expect(rd.getJulianDay(), closeTo(d[0] as double, 0.0001));
      });
    }
  });

  group('GregRataDie dayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> d = testDates[i];
      test('${d[1]}/${d[2]}/${d[3]} dow=${d[8]}', () {
        final GregRataDie rd = GregRataDie(
          year: d[1] as int,
          month: d[2] as int,
          day: d[3] as int,
        );
        expect(rd.getDayOfWeek(), d[8] as int);
      });
    }
  });
}
