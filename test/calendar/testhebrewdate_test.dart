import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

const List<List<num>> testDates = <List<num>>[
  [1507231.5, 3174, 5, 10, 0, 0, 0, 0, 0],
  [1660037.5, 3593, 9, 25, 0, 0, 0, 0, 3],
  [1746893.5, 3831, 7, 3, 0, 0, 0, 0, 3],
  [1770641.5, 3896, 7, 9, 0, 0, 0, 0, 0],
  [1892731.5, 4230, 10, 18, 0, 0, 0, 0, 3],
  [1931579.5, 4336, 3, 4, 0, 0, 0, 0, 1],
  [1974851.5, 4455, 8, 13, 0, 0, 0, 0, 6],
  [2091164.5, 4773, 2, 6, 0, 0, 0, 0, 0],
  [2121509.5, 4856, 2, 23, 0, 0, 0, 0, 0],
  [2155779.5, 4950, 1, 7, 0, 0, 0, 0, 5],
  [2174029.5, 5000, 13, 8, 0, 0, 0, 0, 6],
  [2191584.5, 5048, 1, 21, 0, 0, 0, 0, 5],
  [2195261.5, 5058, 2, 7, 0, 0, 0, 0, 0],
  [2229274.5, 5151, 4, 1, 0, 0, 0, 0, 0],
  [2245580.5, 5196, 11, 7, 0, 0, 0, 0, 3],
  [2266100.5, 5252, 1, 3, 0, 0, 0, 0, 6],
  [2288542.5, 5314, 7, 1, 0, 0, 0, 0, 6],
  [2290901.5, 5320, 12, 27, 0, 0, 0, 0, 6],
  [2323140.5, 5408, 3, 20, 0, 0, 0, 0, 3],
  [2334848.5, 5440, 4, 3, 0, 0, 0, 0, 0],
  [2348020.5, 5476, 5, 5, 0, 0, 0, 0, 5],
  [2366978.5, 5528, 4, 4, 0, 0, 0, 0, 0],
  [2385648.5, 5579, 5, 11, 0, 0, 0, 0, 1],
  [2392825.5, 5599, 1, 12, 0, 0, 0, 0, 3],
  [2416223.5, 5663, 1, 22, 0, 0, 0, 0, 0],
  [2425848.5, 5689, 5, 19, 0, 0, 0, 0, 0],
  [2430266.5, 5702, 7, 8, 0, 0, 0, 0, 1],
  [2430833.5, 5703, 1, 14, 0, 0, 0, 0, 1],
  [2431004.5, 5704, 7, 8, 0, 0, 0, 0, 4],
  [2448698.5, 5752, 13, 12, 0, 0, 0, 0, 2],
  [2450138.5, 5756, 12, 5, 0, 0, 0, 0, 0],
  [2465737.5, 5799, 8, 12, 0, 0, 0, 0, 3],
  [2486076.5, 5854, 5, 5, 0, 0, 0, 0, 0],
];

void main() {
  group('HebrewDate from JD', () {
    test('basic JD', () {
      final HebrewDate d = HebrewDate(julianDay: 2450138.5);
      expect(d.getYears(), 5756);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 5);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('HebrewDate from components', () {
    test('basic date', () {
      final HebrewDate d = HebrewDate(
          year: 5784, month: 7, day: 15, hour: 10, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 5784);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 15);
      expect(d.getHours(), 10);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('HebrewDate all 33 reference dates from JD', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} -> ${td[1]}/${td[2]}/${td[3]}', () {
        final HebrewDate d = HebrewDate(julianDay: td[0] as double);
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

  group('HebrewDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final HebrewDate d = HebrewDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('HebrewDate getCalendar', () {
    test('returns hebrew', () {
      final HebrewDate d = HebrewDate(year: 5784, month: 1, day: 1);
      expect(d.getCalendar(), 'hebrew');
    });
  });
}
