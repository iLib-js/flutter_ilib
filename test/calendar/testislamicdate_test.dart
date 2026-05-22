import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, -1245, 12, 9, 0, 0, 0, 0, 0],
  [1660037.5, -813, 2, 23, 0, 0, 0, 0, 3],
  [1746893.5, -568, 4, 1, 0, 0, 0, 0, 3],
  [1770641.5, -501, 4, 6, 0, 0, 0, 0, 0],
  [1892731.5, -157, 10, 17, 0, 0, 0, 0, 3],
  [1931579.5, -47, 6, 3, 0, 0, 0, 0, 1],
  [1974851.5, 75, 7, 13, 0, 0, 0, 0, 6],
  [2091164.5, 403, 10, 5, 0, 0, 0, 0, 0],
  [2121509.5, 489, 5, 22, 0, 0, 0, 0, 0],
  [2155779.5, 586, 2, 7, 0, 0, 0, 0, 5],
  [2174029.5, 637, 8, 7, 0, 0, 0, 0, 6],
  [2191584.5, 687, 2, 20, 0, 0, 0, 0, 5],
  [2195261.5, 697, 7, 7, 0, 0, 0, 0, 0],
  [2229274.5, 793, 7, 1, 0, 0, 0, 0, 0],
  [2245580.5, 839, 7, 6, 0, 0, 0, 0, 3],
  [2266100.5, 897, 6, 1, 0, 0, 0, 0, 6],
  [2288542.5, 960, 9, 30, 0, 0, 0, 0, 6],
  [2290901.5, 967, 5, 27, 0, 0, 0, 0, 6],
  [2323140.5, 1058, 5, 18, 0, 0, 0, 0, 3],
  [2334848.5, 1091, 6, 2, 0, 0, 0, 0, 0],
  [2348020.5, 1128, 8, 4, 0, 0, 0, 0, 5],
  [2366978.5, 1182, 2, 3, 0, 0, 0, 0, 0],
  [2385648.5, 1234, 10, 10, 0, 0, 0, 0, 1],
  [2392825.5, 1255, 1, 11, 0, 0, 0, 0, 3],
  [2416223.5, 1321, 1, 21, 0, 0, 0, 0, 0],
  [2425848.5, 1348, 3, 19, 0, 0, 0, 0, 0],
  [2430266.5, 1360, 9, 8, 0, 0, 0, 0, 1],
  [2430833.5, 1362, 4, 13, 0, 0, 0, 0, 1],
  [2431004.5, 1362, 10, 7, 0, 0, 0, 0, 4],
  [2448698.5, 1412, 9, 13, 0, 0, 0, 0, 2],
  [2450138.5, 1416, 10, 5, 0, 0, 0, 0, 0],
  [2465737.5, 1460, 10, 12, 0, 0, 0, 0, 3],
  [2486076.5, 1518, 3, 5, 0, 0, 0, 0, 0],
];

void main() {
  group('IslamicDate from JD', () {
    test('basic JD', () {
      final IslamicDate d = IslamicDate(julianDay: 2450138.5);
      expect(d.getYears(), 1416);
      expect(d.getMonths(), 10);
      expect(d.getDays(), 5);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('IslamicDate from components', () {
    test('basic date', () {
      final IslamicDate d = IslamicDate(
          year: 1445, month: 9, day: 1, hour: 5, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 1445);
      expect(d.getMonths(), 9);
      expect(d.getDays(), 1);
      expect(d.getHours(), 5);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('IslamicDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final IslamicDate d = IslamicDate(julianDay: td[0] as double);
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

  group('IslamicDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final IslamicDate d = IslamicDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('IslamicDate getCalendar', () {
    test('returns islamic', () {
      final IslamicDate d = IslamicDate(year: 1445, month: 1, day: 1);
      expect(d.getCalendar(), 'islamic');
    });
  });
}
