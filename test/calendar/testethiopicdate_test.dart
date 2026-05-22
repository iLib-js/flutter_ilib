import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, -594, 12, 5, 18, 0, 0, 0, 6],
  [1660037.5, -175, 4, 11, 18, 0, 0, 0, 2],
  [1746893.5, 63, 1, 28, 18, 0, 0, 0, 2],
  [1770641.5, 128, 2, 4, 18, 0, 0, 0, 6],
  [1892731.5, 462, 5, 11, 18, 0, 0, 0, 2],
  [1931579.5, 568, 9, 22, 18, 0, 0, 0, 0],
  [1974851.5, 687, 3, 10, 18, 0, 0, 0, 5],
  [2091164.5, 1005, 8, 23, 18, 0, 0, 0, 6],
  [2121509.5, 1088, 9, 22, 18, 0, 0, 0, 6],
  [2155779.5, 1182, 7, 19, 18, 0, 0, 0, 4],
  [2174029.5, 1232, 7, 6, 18, 0, 0, 0, 5],
  [2191584.5, 1280, 7, 29, 18, 0, 0, 0, 4],
  [2195261.5, 1290, 8, 24, 18, 0, 0, 0, 6],
  [2229274.5, 1383, 10, 9, 18, 0, 0, 0, 6],
  [2245580.5, 1428, 5, 28, 18, 0, 0, 0, 2],
  [2266100.5, 1484, 8, 4, 18, 0, 0, 0, 5],
  [2288542.5, 1546, 1, 11, 18, 0, 0, 0, 5],
  [2290901.5, 1552, 6, 28, 18, 0, 0, 0, 5],
  [2323140.5, 1640, 10, 5, 18, 0, 0, 0, 2],
  [2334848.5, 1672, 10, 25, 18, 0, 0, 0, 6],
  [2348020.5, 1708, 11, 18, 18, 0, 0, 0, 4],
  [2366978.5, 1760, 10, 13, 18, 0, 0, 0, 6],
  [2385648.5, 1811, 11, 26, 18, 0, 0, 0, 0],
  [2392825.5, 1831, 7, 18, 18, 0, 0, 0, 2],
  [2416223.5, 1895, 8, 10, 18, 0, 0, 0, 6],
  [2425848.5, 1921, 12, 18, 18, 0, 0, 0, 6],
  [2430266.5, 1934, 1, 18, 18, 0, 0, 0, 0],
  [2430833.5, 1935, 8, 10, 18, 0, 0, 0, 0],
  [2431004.5, 1936, 1, 25, 18, 0, 0, 0, 3],
  [2448698.5, 1984, 7, 7, 18, 0, 0, 0, 1],
  [2450138.5, 1988, 6, 16, 18, 0, 0, 0, 6],
  [2465737.5, 2031, 2, 30, 18, 0, 0, 0, 2],
  [2486076.5, 2086, 11, 10, 18, 0, 0, 0, 6],
];

void main() {
  group('EthiopicDate from JD', () {
    test('basic JD', () {
      final EthiopicDate d = EthiopicDate(julianDay: 2430266.5);
      expect(d.getYears(), 1934);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 18);
      expect(d.getHours(), 18);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('EthiopicDate from components', () {
    test('basic date', () {
      final EthiopicDate d = EthiopicDate(
          year: 2010, month: 5, day: 15, hour: 10, minute: 30, second: 45, millisecond: 200);
      expect(d.getYears(), 2010);
      expect(d.getMonths(), 5);
      expect(d.getDays(), 15);
      expect(d.getHours(), 10);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 45);
      expect(d.getMilliseconds(), 200);
    });
  });

  group('EthiopicDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final EthiopicDate d = EthiopicDate(julianDay: td[0] as double);
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

  group('EthiopicDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final EthiopicDate d = EthiopicDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('EthiopicDate getCalendar', () {
    test('returns ethiopic', () {
      final EthiopicDate d = EthiopicDate(year: 2010, month: 1, day: 1);
      expect(d.getCalendar(), 'ethiopic');
    });
  });
}
