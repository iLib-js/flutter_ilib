import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, -1208, 5, 1, 0, 0, 0, 0, 0],
  [1660037.5, -790, 9, 14, 0, 0, 0, 0, 3],
  [1746893.5, -552, 7, 2, 0, 0, 0, 0, 3],
  [1770641.5, -487, 7, 9, 0, 0, 0, 0, 0],
  [1892731.5, -153, 10, 18, 0, 0, 0, 0, 3],
  [1931579.5, -46, 2, 30, 0, 0, 0, 0, 1],
  [1974851.5, 73, 8, 19, 0, 0, 0, 0, 6],
  [2091164.5, 392, 2, 5, 0, 0, 0, 0, 0],
  [2121509.5, 475, 3, 3, 0, 0, 0, 0, 0],
  [2155779.5, 569, 1, 3, 0, 0, 0, 0, 5],
  [2174029.5, 618, 12, 20, 0, 0, 0, 0, 6],
  [2191584.5, 667, 1, 14, 0, 0, 0, 0, 5],
  [2195261.5, 677, 2, 8, 0, 0, 0, 0, 0],
  [2229274.5, 770, 3, 22, 0, 0, 0, 0, 0],
  [2245580.5, 814, 11, 13, 0, 0, 0, 0, 3],
  [2266100.5, 871, 1, 21, 0, 0, 0, 0, 6],
  [2288542.5, 932, 6, 28, 0, 0, 0, 0, 6],
  [2290901.5, 938, 12, 14, 0, 0, 0, 0, 6],
  [2323140.5, 1027, 3, 21, 0, 0, 0, 0, 3],
  [2334848.5, 1059, 4, 10, 0, 0, 0, 0, 0],
  [2348020.5, 1095, 5, 2, 0, 0, 0, 0, 5],
  [2366978.5, 1147, 3, 30, 0, 0, 0, 0, 0],
  [2385648.5, 1198, 5, 10, 0, 0, 0, 0, 1],
  [2392825.5, 1218, 1, 7, 0, 0, 0, 0, 3],
  [2416223.5, 1282, 1, 29, 0, 0, 0, 0, 0],
  [2425848.5, 1308, 6, 3, 0, 0, 0, 0, 0],
  [2430266.5, 1320, 7, 7, 0, 0, 0, 0, 1],
  [2430833.5, 1322, 1, 29, 0, 0, 0, 0, 1],
  [2431004.5, 1322, 7, 14, 0, 0, 0, 0, 4],
  [2448698.5, 1370, 12, 27, 0, 0, 0, 0, 2],
  [2450138.5, 1374, 12, 6, 0, 0, 0, 0, 0],
  [2465737.5, 1417, 8, 19, 0, 0, 0, 0, 3],
  [2486076.5, 1473, 4, 28, 0, 0, 0, 0, 0],
];

void main() {
  group('PersianAlgoDate from JD', () {
    test('basic JD', () {
      final PersianAlgoDate d = PersianAlgoDate(julianDay: 2450138.5);
      expect(d.getYears(), 1374);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 6);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('PersianAlgoDate from components', () {
    test('basic date', () {
      final PersianAlgoDate d = PersianAlgoDate(
          year: 1402, month: 7, day: 15, hour: 10, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 1402);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 15);
      expect(d.getHours(), 10);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('PersianAlgoDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final PersianAlgoDate d = PersianAlgoDate(julianDay: td[0] as double);
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

  group('PersianAlgoDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final PersianAlgoDate d = PersianAlgoDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('PersianAlgoDate getCalendar', () {
    test('returns persian-algo', () {
      final PersianAlgoDate d = PersianAlgoDate(year: 1402, month: 1, day: 1);
      expect(d.getCalendar(), 'persian-algo');
    });
  });
}
