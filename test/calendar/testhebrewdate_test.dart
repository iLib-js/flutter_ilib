import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  <num>[1507231.5, 3174, 5, 10, 0, 0, 0, 0, 0],
  <num>[1660037.5, 3593, 9, 25, 0, 0, 0, 0, 3],
  <num>[1746893.5, 3831, 7, 3, 0, 0, 0, 0, 3],
  <num>[1770641.5, 3896, 7, 9, 0, 0, 0, 0, 0],
  <num>[1892731.5, 4230, 10, 18, 0, 0, 0, 0, 3],
  <num>[1931579.5, 4336, 3, 4, 0, 0, 0, 0, 1],
  <num>[1974851.5, 4455, 8, 13, 0, 0, 0, 0, 6],
  <num>[2091164.5, 4773, 2, 6, 0, 0, 0, 0, 0],
  <num>[2121509.5, 4856, 2, 23, 0, 0, 0, 0, 0],
  <num>[2155779.5, 4950, 1, 7, 0, 0, 0, 0, 5],
  <num>[2174029.5, 5000, 13, 8, 0, 0, 0, 0, 6],
  <num>[2191584.5, 5048, 1, 21, 0, 0, 0, 0, 5],
  <num>[2195261.5, 5058, 2, 7, 0, 0, 0, 0, 0],
  <num>[2229274.5, 5151, 4, 1, 0, 0, 0, 0, 0],
  <num>[2245580.5, 5196, 11, 7, 0, 0, 0, 0, 3],
  <num>[2266100.5, 5252, 1, 3, 0, 0, 0, 0, 6],
  <num>[2288542.5, 5314, 7, 1, 0, 0, 0, 0, 6],
  <num>[2290901.5, 5320, 12, 27, 0, 0, 0, 0, 6],
  <num>[2323140.5, 5408, 3, 20, 0, 0, 0, 0, 3],
  <num>[2334848.5, 5440, 4, 3, 0, 0, 0, 0, 0],
  <num>[2348020.5, 5476, 5, 5, 0, 0, 0, 0, 5],
  <num>[2366978.5, 5528, 4, 4, 0, 0, 0, 0, 0],
  <num>[2385648.5, 5579, 5, 11, 0, 0, 0, 0, 1],
  <num>[2392825.5, 5599, 1, 12, 0, 0, 0, 0, 3],
  <num>[2416223.5, 5663, 1, 22, 0, 0, 0, 0, 0],
  <num>[2425848.5, 5689, 5, 19, 0, 0, 0, 0, 0],
  <num>[2430266.5, 5702, 7, 8, 0, 0, 0, 0, 1],
  <num>[2430833.5, 5703, 1, 14, 0, 0, 0, 0, 1],
  <num>[2431004.5, 5704, 7, 8, 0, 0, 0, 0, 4],
  <num>[2448698.5, 5752, 13, 12, 0, 0, 0, 0, 2],
  <num>[2450138.5, 5756, 12, 5, 0, 0, 0, 0, 0],
  <num>[2465737.5, 5799, 8, 12, 0, 0, 0, 0, 3],
  <num>[2486076.5, 5854, 5, 5, 0, 0, 0, 0, 0],
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('HebrewDate constructor', () {
    test('testHebrewDateConstructor', () {
      final HebrewDate hd = HebrewDate();
      expect(hd.getYears(), isNotNull);
    });
  });

  group('HebrewDate from JD constructs correct date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} gives year ${td[1]}, month ${td[2]}, day ${td[3]}', () {
        final HebrewDate d = HebrewDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
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
        final HebrewDate d = HebrewDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('HebrewDate constructor', () {
    test('testHebrewDateConstructorFull', () {
      final HebrewDate hd = HebrewDate(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(hd.getYears(), 2011);
      expect(hd.getMonths(), 9);
      expect(hd.getDays(), 23);
      expect(hd.getHours(), 16);
      expect(hd.getMinutes(), 7);
      expect(hd.getSeconds(), 12);
      expect(hd.getMilliseconds(), 123);
    });
    test('testHebrewDateConstructorFromRD', () {
      final HebrewDate hd = HebrewDate(rd: 357.25, timezone: 'Etc/UTC');
      expect(hd.getRataDie(), 357.25);
      expect(hd.getYears(), 2);
      expect(hd.getMonths(), 7);
      expect(hd.getDays(), 3);
      expect(hd.getHours(), 0);
      expect(hd.getMinutes(), 0);
      expect(hd.getSeconds(), 0);
      expect(hd.getMilliseconds(), 0);
    });
    test('testHebrewDateConstructorFromJD', () {
      final HebrewDate hd = HebrewDate(julianDay: 348354.5, timezone: 'Etc/UTC');
      expect(hd.getRataDie(), 357.25);
      expect(hd.getYears(), 2);
      expect(hd.getMonths(), 7);
      expect(hd.getDays(), 3);
      expect(hd.getHours(), 0);
      expect(hd.getMinutes(), 0);
      expect(hd.getSeconds(), 0);
      expect(hd.getMilliseconds(), 0);
    });
  });

  group('HebrewDate convert', () {
    test('testHebrewDateConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final HebrewDate hd = HebrewDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(hd.getRataDie(), (td[0] as double) - 347997.25);
        expect(hd.getYears(), td[1] as int);
        expect(hd.getMonths(), td[2] as int);
        expect(hd.getDays(), td[3] as int);
        expect(hd.getHours(), td[4] as int);
        expect(hd.getMinutes(), td[5] as int);
        expect(hd.getSeconds(), td[6] as int);
        expect(hd.getMilliseconds(), td[7] as int);
        expect(hd.getDayOfWeek(), td[8] as int);
      }
    });
  });

  group('HebrewDate getJulianDay', () {
    test('testHebrewDateGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
      final HebrewDate hd = HebrewDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int,
            timezone: 'Etc/UTC');
        expect(hd.getJulianDay(), td[0]);
        expect(hd.getDayOfWeek(), td[8]);
      }
    });
  });

  group('HebrewDate onOrBefore', () {
    // 5771/9/12 is a Friday (dayOfWeek = 5)
    test('testHebrewDateOnOrBeforeSun', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testHebrewDateOnOrBeforeMon', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(1).getRataDie(), rd - 4);
    });
    test('testHebrewDateOnOrBeforeTue', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(2).getRataDie(), rd - 3);
    });
    test('testHebrewDateOnOrBeforeWed', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(3).getRataDie(), rd - 2);
    });
    test('testHebrewDateOnOrBeforeThu', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(4).getRataDie(), rd - 1);
    });
    test('testHebrewDateOnOrBeforeFri', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(5).getRataDie(), rd);
    });
    test('testHebrewDateOnOrBeforeSat', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrBefore(6).getRataDie(), rd - 6);
    });
  });

  group('HebrewDate onOrAfter', () {
    test('testHebrewDateOnOrAfterSun', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      expect(hd.getDayOfWeek(), 5);
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(0).getRataDie(), rd + 2);
    });
    test('testHebrewDateOnOrAfterMon', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(1).getRataDie(), rd + 3);
    });
    test('testHebrewDateOnOrAfterTue', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(2).getRataDie(), rd + 4);
    });
    test('testHebrewDateOnOrAfterWed', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(3).getRataDie(), rd + 5);
    });
    test('testHebrewDateOnOrAfterThu', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(4).getRataDie(), rd + 6);
    });
    test('testHebrewDateOnOrAfterFri', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(5).getRataDie(), rd);
    });
    test('testHebrewDateOnOrAfterSat', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.onOrAfter(6).getRataDie(), rd + 1);
    });
  });

  group('HebrewDate before', () {
    test('testHebrewDateBeforeSun', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(0).getRataDie(), rd - 5);
    });
    test('testHebrewDateBeforeMon', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(1).getRataDie(), rd - 4);
    });
    test('testHebrewDateBeforeTue', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(2).getRataDie(), rd - 3);
    });
    test('testHebrewDateBeforeWed', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(3).getRataDie(), rd - 2);
    });
    test('testHebrewDateBeforeThu', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(4).getRataDie(), rd - 1);
    });
    test('testHebrewDateBeforeFri', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(5).getRataDie(), rd - 7);
    });
    test('testHebrewDateBeforeSat', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.before(6).getRataDie(), rd - 6);
    });
  });

  group('HebrewDate after', () {
    test('testHebrewDateAfterSun', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(0).getRataDie(), rd + 2);
    });
    test('testHebrewDateAfterMon', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(1).getRataDie(), rd + 3);
    });
    test('testHebrewDateAfterTue', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(2).getRataDie(), rd + 4);
    });
    test('testHebrewDateAfterWed', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(3).getRataDie(), rd + 5);
    });
    test('testHebrewDateAfterThu', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(4).getRataDie(), rd + 6);
    });
    test('testHebrewDateAfterFri', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(5).getRataDie(), rd + 7);
    });
    test('testHebrewDateAfterSat', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 9, day: 12, timezone: 'Etc/UTC');
      final double rd = hd.getRataDie();
      expect(hd.after(6).getRataDie(), rd + 1);
    });
  });

  group('HebrewDate getWeekOfYear', () {
    test('testHebrewDateTestGetWeekOfYearThisYear', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 5);
    });
    test('testHebrewDateTestGetWeekOfYearThisYear2', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 9, day: 19, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 12);
    });
    test('testHebrewDateTestGetWeekOfYearThisYearRegular', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 26);
    });
    test('testHebrewDateTestGetWeekOfYearThisYearLeap', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 31);
    });
    test('testHebrewDateTestGetWeekOfYearThisYearWithTime', () {
      final HebrewDate hd = HebrewDate(
          year: 5772,
          month: 6,
          day: 29,
          hour: 16,
          minute: 13,
          second: 12,
          millisecond: 232,
          timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 1);
    });
    test('testHebrewDateTestGetWeekOfYearPreviousYear', () {
      final HebrewDate hd = HebrewDate(year: 5781, month: 7, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 51);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekLeap', () {
      final HebrewDate hd = HebrewDate(year: 5784, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 1);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekRegular1', () {
      final HebrewDate hd = HebrewDate(year: 5781, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 1);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekRegular2', () {
      final HebrewDate hd = HebrewDate(year: 5782, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 1);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekRegular3', () {
      final HebrewDate hd = HebrewDate(year: 5783, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 51);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekRegular4', () {
      final HebrewDate hd = HebrewDate(year: 5785, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 1);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekRegular5', () {
      final HebrewDate hd = HebrewDate(year: 5786, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 51);
    });
    test('testHebrewDateTestGetWeekOfYearLastWeekRegular6', () {
      final HebrewDate hd = HebrewDate(year: 5787, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfYear(), 55);
    });
  });

  group('HebrewDate getDayOfYear', () {
    test('testHebrewDateGetDayOfYearFirstDay', () {
      final HebrewDate hd = HebrewDate(year: 5771, month: 7, day: 1, timezone: 'Etc/UTC');
      expect(hd.getDayOfYear(), 1);
    });
    test('testHebrewDateGetDayOfYearMidYear', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(hd.getDayOfYear(), 178);
    });
    test('testHebrewDateGetDayOfYearMidYearLeap', () {
      final HebrewDate hd = HebrewDate(year: 5774, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(hd.getDayOfYear(), 209);
    });
    test('testHebrewDateGetDayOfYearLastDay', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getDayOfYear(), 354);
    });
    test('testHebrewDateGetDayOfYearLastDayLeapYear', () {
      final HebrewDate hd = HebrewDate(year: 5774, month: 6, day: 29, timezone: 'Etc/UTC');
      expect(hd.getDayOfYear(), 385);
    });
  });

  group('HebrewDate getWeekOfMonth', () {
    setUpAll(() async {
      await ILibLoader.instance.loadILibLocaleData('he-IL');
      await ILibLoader.instance.loadILibLocaleData('en-US');
      await ILibLoader.instance.loadILibLocaleData('de-DE');
    });
    // he-IL: firstDayOfWeek = 0 (Sunday)
    test('testHebrewDateGetWeekOfMonth0', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 9, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 1);
    });
    test('testHebrewDateGetWeekOfMonth1', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 9, day: 2, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 1);
    });
    test('testHebrewDateGetWeekOfMonth2', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 9, day: 11, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 2);
    });
    test('testHebrewDateGetWeekOfMonth3', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 9, day: 20, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 3);
    });
    test('testHebrewDateGetWeekOfMonth4', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 9, day: 29, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 5);
    });
    test('testHebrewDateGetWeekOfMonth5', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 1, day: 30, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 5);
    });
    test('testHebrewDateGetWeekOfMonth6', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 4, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 0);
    });
    test('testHebrewDateGetWeekOfMonth7', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 0);
    });
    test('testHebrewDateGetWeekOfMonth8', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 6, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 1);
    });
    test('testHebrewDateGetWeekOfMonth9', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 7, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 0);
    });
    test('testHebrewDateGetWeekOfMonth10', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('he-IL'), 0);
    });
    test('testHebrewDateGetWeekOfMonthUS', () {
      // en-US: firstDayOfWeek = 0 (Sunday)
      final HebrewDate hd = HebrewDate(year: 5772, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('en-US'), 0);
    });
    test('testHebrewDateGetWeekOfMonthDE', () {
      // de-DE: firstDayOfWeek = 1 (Monday)
      final HebrewDate hd = HebrewDate(year: 5772, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(hd.getWeekOfMonth('de-DE'), 0);
    });
  });

  group('HebrewDate getEra', () {
    test('testHebrewDateGetEraAM', () {
      final HebrewDate hd = HebrewDate(year: 5772, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(hd.getEra(), 1);
    });
    test('testHebrewDateGetEraBAM', () {
      final HebrewDate hd = HebrewDate(year: -46, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(hd.getEra(), -1);
    });
    test('testHebrewDateGetEraAMYear1', () {
      final HebrewDate hd = HebrewDate(year: 1, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(hd.getEra(), 1);
    });
    test('testHebrewDateGetEraBAMYear0', () {
      final HebrewDate hd = HebrewDate(year: 0, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(hd.getEra(), -1);
    });
  });

  group('HebrewDate getTimeZone', () {
    test('testHebrewDateInitWithUnixTimeRightTimeZone', () {
      final HebrewDate hd = HebrewDate(unixtime: 0);
      expect(hd.timezone, 'local');
    });
    test('testHebrewDateInitWithJDRightTimeZone', () {
      final HebrewDate hd = HebrewDate(julianDay: 0);
      expect(hd.timezone, 'local');
    });
    test('testHebrewDateInitWithRDRightTimeZone', () {
      final HebrewDate hd = HebrewDate(rd: 0);
      expect(hd.timezone, 'local');
    });
  });

  group('HebrewDate constructor edge cases', () {
    test('testHebrewDateConstructorFromRDCusp', () {
      final HebrewDate hd = HebrewDate(rd: 355.25, timezone: 'Etc/UTC');
      expect(hd.getRataDie(), 355.25);
      expect(hd.getYears(), 2);
      expect(hd.getMonths(), 7);
      expect(hd.getDays(), 1);
    });
    test('testHebrewDateAfterLeapYear', () {
      // Siv 1, 0004, 9:36am
      final HebrewDate hd = HebrewDate(julianDay: 349326.9, timezone: 'Etc/UTC');
      expect(hd.getYears(), 4);
      expect(hd.getMonths(), 3);
      expect(hd.getDays(), 1);
      expect(hd.getHours(), 9);
      expect(hd.getMinutes(), 36);
      expect(hd.getSeconds(), 0);
      expect(hd.getMilliseconds(), 0);
    });
    test('testHebrewDateAfterNoon', () {
      // Siv 1, 0004, 2:24pm
      final HebrewDate hd = HebrewDate(julianDay: 349327.1, timezone: 'Etc/UTC');
      expect(hd.getYears(), 4);
      expect(hd.getMonths(), 3);
      expect(hd.getDays(), 1);
      expect(hd.getHours(), 14);
      expect(hd.getMinutes(), 24);
      expect(hd.getSeconds(), 0);
      expect(hd.getMilliseconds(), 0);
    });
  });

  group('HebrewDate getTime', () {
    test('testHebrewDateTestGetTimeZero', () {
      // 5730/10/23 = 1970-01-01 UTC
      final HebrewDate hd = HebrewDate(year: 5730, month: 10, day: 23, timezone: 'Etc/UTC');
      expect(hd.getTime(), 0);
    });
    test('testHebrewDateTestGetTimeZeroJD', () {
      final HebrewDate hd = HebrewDate(julianDay: 2440587.5, timezone: 'Etc/UTC');
      expect(hd.getTime(), 0);
    });
    test('testHebrewDateTestGetTime', () {
      final HebrewDate hd =
          HebrewDate(year: 5730, month: 10, day: 24, hour: 8, minute: 30, timezone: 'Etc/UTC');
      expect(hd.getTime(), 117000000);
    });
    test('testHebrewDateTestGetTimeTooEarly', () {
      final HebrewDate hd = HebrewDate(year: 5730, month: 10, day: 22, timezone: 'Etc/UTC');
      expect(hd.getTime(), -1);
    });
    test('testHebrewDateTestGetTimeTooLate', () {
      final HebrewDate hd = HebrewDate(year: 5798, month: 11, day: 14, timezone: 'Etc/UTC');
      expect(hd.getTime(), -1);
    });
  });

  group('HebrewDate round-trip construction', () {
    test('testHebrewDateRoundTripConstruction', () {
      final HebrewDate hd =
          HebrewDate(year: 5775, month: 8, day: 3, timezone: 'local');
      final int u = hd.getTime();
      final HebrewDate hd2 = HebrewDate(unixtime: u, timezone: 'local');
      expect(hd2.timezone, hd.timezone);
      expect(hd2.getYears(), hd.getYears());
      expect(hd2.getMonths(), hd.getMonths());
      expect(hd2.getDays(), hd.getDays());
      expect(hd2.getHours(), hd.getHours());
      expect(hd2.getMinutes(), hd.getMinutes());
      expect(hd2.getSeconds(), hd.getSeconds());
    });
    test('testHebrewDateRoundTripConstruction2', () {
      final HebrewDate hd =
          HebrewDate(year: 5775, month: 8, day: 10, timezone: 'America/Los_Angeles');
      final int u = hd.getTime();
      final HebrewDate hd2 = HebrewDate(unixtime: u, timezone: 'America/Los_Angeles');
      expect(hd2.timezone, hd.timezone);
      expect(hd2.getYears(), hd.getYears());
      expect(hd2.getMonths(), hd.getMonths());
      expect(hd2.getDays(), hd.getDays());
      expect(hd2.getHours(), hd.getHours());
      expect(hd2.getMinutes(), hd.getMinutes());
      expect(hd2.getSeconds(), hd.getSeconds());
    });
  });

  group('HebrewDate getDayOfWeek', () {
    test('testGetDayOfWeek1', () {
      expect(HebrewDate(year: 5772, month: 7, day: 2, timezone: 'Etc/UTC').getDayOfWeek(), 5);
    });
    test('testGetDayOfWeekWithTime', () {
      expect(
          HebrewDate(
                  year: 5772,
                  month: 7,
                  day: 2,
                  hour: 8,
                  minute: 39,
                  second: 34,
                  timezone: 'Etc/UTC')
              .getDayOfWeek(),
          5);
    });
  });

  group('HebrewDate constructor copy', () {
    test('testHebrewDateConstructorCopy', () {
      final HebrewDate hd = HebrewDate(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(hd.getYears(), 2011);
      expect(hd.getMonths(), 9);
      expect(hd.getDays(), 23);
      expect(hd.getHours(), 16);
      expect(hd.getMinutes(), 7);
      expect(hd.getSeconds(), 12);
      expect(hd.getMilliseconds(), 123);
    });
  });
}
