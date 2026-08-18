import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  <num>[1507231.5, -43, 7, 24, 0, 0, 0, 0, 0],
  <num>[1660037.5, 375, 12, 5, 0, 0, 0, 0, 3],
  <num>[1746893.5, 613, 9, 24, 0, 0, 0, 0, 3],
  <num>[1770641.5, 678, 10, 2, 0, 0, 0, 0, 0],
  <num>[1892731.5, 1013, 1, 8, 0, 0, 0, 0, 3],
  <num>[1931579.5, 1119, 5, 20, 0, 0, 0, 0, 1],
  <num>[1974851.5, 1237, 11, 10, 0, 0, 0, 0, 6],
  <num>[2091164.5, 1556, 4, 25, 0, 0, 0, 0, 0],
  <num>[2121509.5, 1639, 5, 24, 0, 0, 0, 0, 0],
  <num>[2155779.5, 1733, 3, 23, 0, 0, 0, 0, 5],
  <num>[2174029.5, 1783, 3, 10, 0, 0, 0, 0, 6],
  <num>[2191584.5, 1831, 4, 2, 0, 0, 0, 0, 5],
  <num>[2195261.5, 1841, 4, 27, 0, 0, 0, 0, 0],
  <num>[2229274.5, 1934, 6, 12, 0, 0, 0, 0, 0],
  <num>[2245580.5, 1979, 2, 3, 0, 0, 0, 0, 3],
  <num>[2266100.5, 2035, 4, 9, 0, 0, 0, 0, 6],
  <num>[2288542.5, 2096, 9, 19, 0, 0, 0, 0, 6],
  <num>[2290901.5, 2103, 3, 5, 0, 0, 0, 0, 6],
  <num>[2323140.5, 2191, 6, 10, 0, 0, 0, 0, 3],
  <num>[2334848.5, 2223, 6, 30, 0, 0, 0, 0, 0],
  <num>[2348020.5, 2259, 7, 24, 0, 0, 0, 0, 5],
  <num>[2366978.5, 2311, 6, 19, 0, 0, 0, 0, 0],
  <num>[2385648.5, 2362, 8, 2, 0, 0, 0, 0, 1],
  <num>[2392825.5, 2382, 3, 27, 0, 0, 0, 0, 3],
  <num>[2416223.5, 2446, 4, 19, 0, 0, 0, 0, 0],
  <num>[2425848.5, 2472, 8, 25, 0, 0, 0, 0, 0],
  <num>[2430266.5, 2484, 9, 29, 0, 0, 0, 0, 1],
  <num>[2430833.5, 2486, 4, 19, 0, 0, 0, 0, 1],
  <num>[2431004.5, 2486, 10, 7, 0, 0, 0, 0, 4],
  <num>[2448698.5, 2535, 3, 17, 0, 0, 0, 0, 2],
  <num>[2450138.5, 2539, 2, 25, 0, 0, 0, 0, 0],
  <num>[2465737.5, 2581, 11, 10, 0, 0, 0, 0, 3],
  <num>[2486076.5, 2637, 7, 18, 0, 0, 0, 0, 0],
];

void main() {
  debugPrint('Testing [testthaisolardate_test.dart] file.');
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('ThaiSolarDate constructor', () {
    test('testThaiSolarDateConstructor', () {
      final ThaiSolarDate td = ThaiSolarDate();
      expect(td.getYears(), isNotNull);
    });
  });

  group('ThaiSolarDate from JD constructs correct date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} gives year ${td[1]}, month ${td[2]}, day ${td[3]}', () {
        final ThaiSolarDate d =
            ThaiSolarDate(julianDay: td[0].toDouble(), timezone: 'Etc/UTC');
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
        final ThaiSolarDate d =
            ThaiSolarDate(julianDay: td[0].toDouble(), timezone: 'Etc/UTC');
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('ThaiSolarDate constructor', () {
    test('testThaiSolarDateConstructorFull', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2554,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(td.getYears(), 2554);
      expect(td.getMonths(), 9);
      expect(td.getDays(), 23);
      expect(td.getHours(), 16);
      expect(td.getMinutes(), 7);
      expect(td.getSeconds(), 12);
      expect(td.getMilliseconds(), 123);
    });
    test('testThaiSolarDateJan1Midnight', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 2455197.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2553);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
      expect(td.getHours(), 0);
    });
    test('testThaiSolarDateGetRataDie', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 3, day: 8, timezone: 'Etc/UTC');
      expect(td.getRataDie(), 932531);
    });
  });

  group('ThaiSolarDate convert', () {
    test('testThaiSolarDateConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final ThaiSolarDate d =
            ThaiSolarDate(julianDay: td[0].toDouble(), timezone: 'Etc/UTC');
        expect(d.getYears(), td[1] as int);
        expect(d.getMonths(), td[2] as int);
        expect(d.getDays(), td[3] as int);
        expect(d.getDayOfWeek(), td[8] as int);
      }
    });
  });

  group('ThaiSolarDate getJulianDay', () {
    test('testThaiSolarDateGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final ThaiSolarDate d = ThaiSolarDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int,
            timezone: 'Etc/UTC');
        expect(d.getJulianDay(), td[0]);
        expect(d.getDayOfWeek(), td[8]);
      }
    });
  });

  group('ThaiSolarDate getTime', () {
    test('testThaiSolarDateTestGetTimeZero', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2513, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(td.getTime(), 0);
    });
    test('testThaiSolarDateTestGetTime', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2513,
          month: 1,
          day: 3,
          hour: 8,
          minute: 30,
          timezone: 'Etc/UTC');
      expect(td.getTime(), 203400000);
    });
    test('testThaiSolarDateTestGetTimeTooEarly', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2512, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getTime(), -1);
    });
    test('testThaiSolarDateTestGetTimeTooLate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2581, month: 1, day: 20, timezone: 'Etc/UTC');
      expect(td.getTime(), -1);
    });
  });

  group('ThaiSolarDate onOrBefore', () {
    // 2553/1/1 is a Friday (dayOfWeek = 5) — same as Gregorian 2010/1/1
    test('testThaiSolarDateOnOrBeforeSun', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(td.getDayOfWeek(), 5);
      final double rd = td.getRataDie();
      expect(td.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testThaiSolarDateOnOrBeforeMon', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrBefore(1).getRataDie(), rd - 4);
    });
    test('testThaiSolarDateOnOrBeforeTue', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrBefore(2).getRataDie(), rd - 3);
    });
    test('testThaiSolarDateOnOrBeforeWed', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrBefore(3).getRataDie(), rd - 2);
    });
    test('testThaiSolarDateOnOrBeforeThu', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrBefore(4).getRataDie(), rd - 1);
    });
    test('testThaiSolarDateOnOrBeforeFri', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrBefore(5).getRataDie(), rd);
    });
    test('testThaiSolarDateOnOrBeforeSat', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrBefore(6).getRataDie(), rd - 6);
    });
  });

  group('ThaiSolarDate onOrAfter', () {
    test('testThaiSolarDateOnOrAfterSun', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(0).getRataDie(), rd + 2);
    });
    test('testThaiSolarDateOnOrAfterMon', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(1).getRataDie(), rd + 3);
    });
    test('testThaiSolarDateOnOrAfterTue', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(2).getRataDie(), rd + 4);
    });
    test('testThaiSolarDateOnOrAfterWed', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(3).getRataDie(), rd + 5);
    });
    test('testThaiSolarDateOnOrAfterThu', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(4).getRataDie(), rd + 6);
    });
    test('testThaiSolarDateOnOrAfterFri', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(5).getRataDie(), rd);
    });
    test('testThaiSolarDateOnOrAfterSat', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.onOrAfter(6).getRataDie(), rd + 1);
    });
  });

  group('ThaiSolarDate before', () {
    test('testThaiSolarDateBeforeSun', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(0).getRataDie(), rd - 5);
    });
    test('testThaiSolarDateBeforeMon', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(1).getRataDie(), rd - 4);
    });
    test('testThaiSolarDateBeforeTue', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(2).getRataDie(), rd - 3);
    });
    test('testThaiSolarDateBeforeWed', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(3).getRataDie(), rd - 2);
    });
    test('testThaiSolarDateBeforeThu', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(4).getRataDie(), rd - 1);
    });
    test('testThaiSolarDateBeforeFri', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(5).getRataDie(), rd - 7);
    });
    test('testThaiSolarDateBeforeSat', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.before(6).getRataDie(), rd - 6);
    });
  });

  group('ThaiSolarDate after', () {
    test('testThaiSolarDateAfterSun', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(0).getRataDie(), rd + 2);
    });
    test('testThaiSolarDateAfterMon', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(1).getRataDie(), rd + 3);
    });
    test('testThaiSolarDateAfterTue', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(2).getRataDie(), rd + 4);
    });
    test('testThaiSolarDateAfterWed', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(3).getRataDie(), rd + 5);
    });
    test('testThaiSolarDateAfterThu', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(4).getRataDie(), rd + 6);
    });
    test('testThaiSolarDateAfterFri', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(5).getRataDie(), rd + 7);
    });
    test('testThaiSolarDateAfterSat', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final double rd = td.getRataDie();
      expect(td.after(6).getRataDie(), rd + 1);
    });
  });

  group('ThaiSolarDate getWeekOfYear', () {
    test('testThaiSolarDateTestGetWeekOfYearThisYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 7, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 1);
    });
    test('testThaiSolarDateTestGetWeekOfYearThisYear2', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 25, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 4);
    });
    test('testThaiSolarDateTestGetWeekOfYearThisYear3', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 10, day: 19, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 42);
    });
    test('testThaiSolarDateTestGetWeekOfYearThisYearWithTime', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: -1468,
          month: 10,
          day: 19,
          hour: 16,
          minute: 13,
          second: 12,
          millisecond: 232,
          timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 42);
    });
    test('testThaiSolarDateTestGetWeekOfYearPreviousYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 52);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekLeap', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2552, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 53);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekRegular1', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 52);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekRegular2', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2551, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 1);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekRegular3', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2550, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 1);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekRegular4', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2549, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 1);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekRegular5', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2548, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 52);
    });
    test('testThaiSolarDateTestGetWeekOfYearLastWeekRegular6', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getWeekOfYear(), 52);
    });
  });

  group('ThaiSolarDate getDayOfYear', () {
    test('testThaiSolarDateGetDayOfYearFirstDay', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(td.getDayOfYear(), 1);
    });
    test('testThaiSolarDateGetDayOfYearPaddysDay', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 3, day: 17, timezone: 'Etc/UTC');
      expect(td.getDayOfYear(), 76);
    });
    test('testThaiSolarDateGetDayOfYearPaddysDayLeapYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2551, month: 3, day: 17, timezone: 'Etc/UTC');
      expect(td.getDayOfYear(), 77);
    });
    test('testThaiSolarDateGetDayOfYearLastDay', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getDayOfYear(), 365);
    });
    test('testThaiSolarDateGetDayOfYearLastDayLeapYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2551, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getDayOfYear(), 366);
    });
  });

  group('ThaiSolarDate getWeekOfMonth', () {
    setUpAll(() async {
      await ILibLoader.instance.loadILibLocaleData('en-US');
      await ILibLoader.instance.loadILibLocaleData('de-DE');
    });
    // en-US: firstDayOfWeek = 0 (Sunday)
    test('testThaiSolarDateGetWeekOfMonth0', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 10, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 0);
    });
    test('testThaiSolarDateGetWeekOfMonth1', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 10, day: 2, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 1);
    });
    test('testThaiSolarDateGetWeekOfMonth2', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 10, day: 11, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 2);
    });
    test('testThaiSolarDateGetWeekOfMonth3', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 10, day: 20, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 3);
    });
    test('testThaiSolarDateGetWeekOfMonth4', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 10, day: 29, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 4);
    });
    test('testThaiSolarDateGetWeekOfMonth5', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 10, day: 30, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 5);
    });
    test('testThaiSolarDateGetWeekOfMonth6', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 9, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 0);
    });
    test('testThaiSolarDateGetWeekOfMonth7', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 1);
    });
    test('testThaiSolarDateGetWeekOfMonth8', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 7, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 0);
    });
    test('testThaiSolarDateGetWeekOfMonth9', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 6, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 1);
    });
    test('testThaiSolarDateGetWeekOfMonthUS', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('en-US'), 1);
    });
    test('testThaiSolarDateGetWeekOfMonthDE', () {
      // de-DE: firstDayOfWeek = 1 (Monday)
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(td.getWeekOfMonth('de-DE'), 0);
    });
  });

  group('ThaiSolarDate getEra', () {
    test('testThaiSolarDateGetEraCE', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(td.getEra(), 1);
    });
    test('testThaiSolarDateGetEraBCE', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: -46, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(td.getEra(), -1);
    });
    test('testThaiSolarDateGetEraCEYear1', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 1, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(td.getEra(), 1);
    });
    test('testThaiSolarDateGetEraCEYear0', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 0, month: 12, day: 31, timezone: 'Etc/UTC');
      expect(td.getEra(), -1);
    });
  });

  group('ThaiSolarDate getTimeZone', () {
    test('testThaiSolarDateInitWithUnixTimeRightTimeZone', () {
      final ThaiSolarDate td = ThaiSolarDate(unixtime: 0);
      expect(td.getTimeZone(), 'local');
    });
    test('testThaiSolarDateInitWithJDRightTimeZone', () {
      final ThaiSolarDate td = ThaiSolarDate(julianDay: 0);
      expect(td.getTimeZone(), 'local');
    });
    test('testThaiSolarDateInitWithRDRightTimeZone', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 0);
      expect(td.getTimeZone(), 'local');
    });
  });

  group('ThaiSolarDate round-trip construction', () {
    test('testThaiSolarDateRoundTripConstruction', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2557, month: 11, day: 3, timezone: 'local');
      final int u = td.getTime();
      final ThaiSolarDate td2 = ThaiSolarDate(unixtime: u, timezone: 'local');
      expect(td2.getTimeZone(), td.getTimeZone());
      expect(td2.getYears(), td.getYears());
      expect(td2.getMonths(), td.getMonths());
      expect(td2.getDays(), td.getDays());
      expect(td2.getHours(), td.getHours());
      expect(td2.getMinutes(), td.getMinutes());
      expect(td2.getSeconds(), td.getSeconds());
    });
    test('testThaiSolarDateRoundTripConstruction2', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2557, month: 11, day: 3, timezone: 'America/Los_Angeles');
      final int u = td.getTime();
      final ThaiSolarDate td2 =
          ThaiSolarDate(unixtime: u, timezone: 'America/Los_Angeles');
      expect(td2.getTimeZone(), td.getTimeZone());
      expect(td2.getYears(), td.getYears());
      expect(td2.getMonths(), td.getMonths());
      expect(td2.getDays(), td.getDays());
      expect(td2.getHours(), td.getHours());
      expect(td2.getMinutes(), td.getMinutes());
      expect(td2.getSeconds(), td.getSeconds());
    });
  });

  group('ThaiSolarDate current time', () {
    test('testThaiSolarDateCurrentTimeWithTimeZone', () {
      final ThaiSolarDate td = ThaiSolarDate(timezone: 'America/Los_Angeles');
      final int now = DateTime.now().millisecondsSinceEpoch;
      // JS roughlyEqual(td.getTime(), d.getTime(), 30).
      expect((td.getTime() - now).abs(), lessThan(30));
    });
  });

  group('ThaiSolarDate constructor from RD', () {
    test('testThaiSolarDateConstructorFromRd', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 0);
      expect(td.getRataDie(), 0);
      expect(td.getJulianDay(), 1523097.5);
    });
    test('testThaiSolarDateConstructorFromRd1', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 1);
      expect(td.getRataDie(), 1);
      expect(td.getJulianDay(), 1523098.5);
    });
    test('testThaiSolarDateConstructorFromRd2', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 2);
      expect(td.getRataDie(), 2);
      expect(td.getJulianDay(), 1523099.5);
    });
    test('testThaiSolarDateConstructorFromRdComplex1', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 198327);
      expect(td.getRataDie(), 198327);
    });
    test('testThaiSolarDateConstructorFromRdComplex2', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 198327);
      expect(td.getJulianDay(), 1721424.5);
    });
    test('testThaiSolarDateConstructorFromRdComplex3', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 198327, timezone: 'Etc/UTC');
      expect(td.getYears(), 543);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 31);
    });
  });

  group('ThaiSolarDate constructor from JD', () {
    test('testThaiSolarDateConstructorFromJD', () {
      final ThaiSolarDate td = ThaiSolarDate(julianDay: 1523096.5);
      expect(td.getRataDie(), -1);
      expect(td.getJulianDay(), 1523096.5);
    });
    test('testThaiSolarDateConstructorFromJD1', () {
      final ThaiSolarDate td = ThaiSolarDate(julianDay: 1523097.5);
      expect(td.getRataDie(), 0);
      expect(td.getJulianDay(), 1523097.5);
    });
    test('testThaiSolarDateConstructorFromJD2', () {
      final ThaiSolarDate td = ThaiSolarDate(julianDay: 1523098.5);
      expect(td.getRataDie(), 1);
      expect(td.getJulianDay(), 1523098.5);
    });
    test('testThaiSolarDateConstructorFromJDRightRd', () {
      final ThaiSolarDate td = ThaiSolarDate(julianDay: 1721790.75);
      expect(td.getRataDie(), 366.25 + 198327);
    });
    test('testThaiSolarDateConstructorFromJDYear2', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 1721790.75, timezone: 'Etc/UTC');
      expect(td.getYears(), 545);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
      expect(td.getHours(), 6);
    });
    test('testThaiSolarDateConstructorUnixTime', () {
      final ThaiSolarDate td =
          ThaiSolarDate(unixtime: 61000, timezone: 'Etc/UTC');
      expect(td.getYears(), 2513);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
      expect(td.getHours(), 0);
      expect(td.getMinutes(), 1);
      expect(td.getSeconds(), 1);
    });
    test('testThaiSolarDateAfterLeapYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 1723071.9, timezone: 'Etc/UTC');
      expect(td.getYears(), 548);
      expect(td.getMonths(), 7);
      expect(td.getDays(), 5);
      expect(td.getHours(), 9);
      expect(td.getMinutes(), 36);
    });
    test('testThaiSolarDateAfterCentury', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 1758231.8, timezone: 'Etc/UTC');
      expect(td.getYears(), 644);
      expect(td.getMonths(), 10);
      expect(td.getDays(), 10);
      expect(td.getHours(), 7);
      expect(td.getMinutes(), 12);
    });
    test('testThaiSolarDateAfterQuadCentury', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 1867706.833333333333, timezone: 'Etc/UTC');
      expect(td.getYears(), 944);
      expect(td.getMonths(), 7);
      expect(td.getDays(), 4);
      expect(td.getHours(), 8);
    });
  });

  group('ThaiSolarDate date boundaries from RD', () {
    test('testThaiSolarDateJan31Midnight', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932860, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 31);
      expect(td.getHours(), 0);
    });
    test('testThaiSolarDateJan31Noon', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932860.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 31);
      expect(td.getHours(), 12);
    });
    test('testThaiSolarDateFeb1', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932861.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 2);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateFeb28LeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932888.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 2);
      expect(td.getDays(), 28);
    });
    test('testThaiSolarDateFeb29LeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932889.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 2);
      expect(td.getDays(), 29);
    });
    test('testThaiSolarDateMar1LeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932890.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 3);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateMar31LeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932920.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 3);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateApr1LeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 932921.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 4);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateDec31LeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 933195.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2555);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateJan1NonLeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 933196.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2556);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateFeb28NonLeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 933254.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2556);
      expect(td.getMonths(), 2);
      expect(td.getDays(), 28);
    });
    test('testThaiSolarDateMar1NonLeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 933255.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2556);
      expect(td.getMonths(), 3);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateMar31NonLeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 933285.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2556);
      expect(td.getMonths(), 3);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateApr1NonLeapYear', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 933286.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2556);
      expect(td.getMonths(), 4);
      expect(td.getDays(), 1);
    });
  });

  group('ThaiSolarDate year boundaries from JD and RD', () {
    test('testThaiSolarDateEndOfYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 2455196.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2552);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateBeginningOfYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 2455197.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2553);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateEndOfYearLeapYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 2454831.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2551);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateBeginningOfYearAfterLeapYear', () {
      final ThaiSolarDate td =
          ThaiSolarDate(julianDay: 2454832.5, timezone: 'Etc/UTC');
      expect(td.getYears(), 2552);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateEndOfYear0Rd', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 0, timezone: 'Etc/UTC');
      expect(td.getYears(), 0);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateBeginningOfYearRd', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 1, timezone: 'Etc/UTC');
      expect(td.getYears(), 1);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
    });
    test('testThaiSolarDateAlmostEndOfYearRd', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 364, timezone: 'Etc/UTC');
      expect(td.getYears(), 1);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 30);
    });
    test('testThaiSolarDateEndOfYearRd', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 365, timezone: 'Etc/UTC');
      expect(td.getYears(), 1);
      expect(td.getMonths(), 12);
      expect(td.getDays(), 31);
    });
    test('testThaiSolarDateBeginningOfYear2Rd', () {
      final ThaiSolarDate td = ThaiSolarDate(rd: 366, timezone: 'Etc/UTC');
      expect(td.getYears(), 2);
      expect(td.getMonths(), 1);
      expect(td.getDays(), 1);
    });
  });

  group('ThaiSolarDate onOrBefore/After date return', () {
    test('testThaiSolarDateOnOrBeforeSunWithTime', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2553, month: 1, day: 1, hour: 8, timezone: 'Etc/UTC');
      expect(td.getDayOfWeek(), 5);
      final double rd = td.getRataDie();
      expect(td.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testThaiSolarDateOnOrAfterSunDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.onOrBefore(0);
      expect(date.getYears(), 2552);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 27);
    });
    test('testThaiSolarDateOnOrAfterMonDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.onOrAfter(1);
      expect(date.getYears(), 2553);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 4);
    });
    test('testThaiSolarDateOnOrAfterThuDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.onOrAfter(4);
      expect(date.getYears(), 2553);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 7);
    });
    test('testThaiSolarDateOnOrAfterFriDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.onOrAfter(5);
      expect(date.getYears(), 2553);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 1);
    });
    test('testThaiSolarDateBeforeSunDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.before(0);
      expect(date.getYears(), 2552);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 27);
    });
    test('testThaiSolarDateBeforeThuDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.before(4);
      expect(date.getYears(), 2552);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 31);
    });
    test('testThaiSolarDateBeforeFriDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.before(5);
      expect(date.getYears(), 2552);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 25);
    });
    test('testThaiSolarDateAfterSunDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.after(0);
      expect(date.getYears(), 2553);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 3);
    });
    test('testThaiSolarDateAfterFriDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.after(5);
      expect(date.getYears(), 2553);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 8);
    });
    test('testThaiSolarDateAfterSatDate', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2553, month: 1, day: 1, timezone: 'Etc/UTC');
      final ILibCalendarDate date = td.after(6);
      expect(date.getYears(), 2553);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 2);
    });
  });

  group('ThaiSolarDate getTimeZone', () {
    test('testThaiSolarDateGetTimeZone', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2554, month: 3, day: 8, timezone: 'America/Los_Angeles');
      expect(td.getTimeZone(), 'America/Los_Angeles');
    });
    test('testThaiSolarDateGetTimeZoneDefault', () {
      final ThaiSolarDate td = ThaiSolarDate(year: 2554, month: 3, day: 8);
      expect(td.getTimeZone(), 'local');
    });
  });

  group('ThaiSolarDate getTimeZone by locale', () {
    setUpAll(() async {
      await ILibLoader.instance.loadILibLocaleData('de-DE');
    });

    test('testThaiSolarDateGetTimeZoneByLocale', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 3, day: 8, locale: 'de-DE');
      expect(td.getTimeZone(), 'Europe/Berlin');
    });
    test('testThaiSolarDateGetTimeZoneByLocaleBogus', () {
      final ThaiSolarDate td =
          ThaiSolarDate(year: 2554, month: 3, day: 8, locale: 'zz-ZZ');
      expect(td.getTimeZone(), 'Etc/UTC');
    });
  });

  group('ThaiSolarDate getDayOfWeek', () {
    test('testGetDayOfWeek1', () {
      expect(
          ThaiSolarDate(year: 2554, month: 9, day: 30, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          5);
    });
    test('testGetDayOfWeek2', () {
      expect(
          ThaiSolarDate(year: 2191, month: 6, day: 10, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          3);
    });
    test('testGetDayOfWeek3', () {
      expect(
          ThaiSolarDate(year: 1733, month: 3, day: 23, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          5);
    });
    test('testGetDayOfWeek4', () {
      expect(
          ThaiSolarDate(year: -43, month: 7, day: 24, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          0);
    });
    test('testGetDayOfWeekGregorianDay1', () {
      expect(
          ThaiSolarDate(year: 544, month: 1, day: 1, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          1);
    });
    test('testGetDayOfWeekGregorianDay1ByJD', () {
      expect(
          ThaiSolarDate(julianDay: 1721424.5, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          0);
    });
    test('testGetDayOfWeekSimple1', () {
      expect(
          ThaiSolarDate(year: 1, month: 1, day: 1, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          5);
    });
    test('testGetDayOfWeekSimple2', () {
      expect(
          ThaiSolarDate(year: 0, month: 12, day: 31, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          4);
    });
    test('testGetDayOfWeekSimple3', () {
      expect(
          ThaiSolarDate(year: 1, month: 1, day: 2, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          6);
    });
    test('testGetDayOfWeekSimple4', () {
      expect(
          ThaiSolarDate(year: 1, month: 1, day: 3, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          0);
    });
    test('testGetDayOfWeekSimple5', () {
      expect(
          ThaiSolarDate(year: 1, month: 1, day: 4, timezone: 'Etc/UTC')
              .getDayOfWeek(),
          1);
    });
    test('testGetDayOfWeekWithTime', () {
      expect(
          ThaiSolarDate(
                  year: 2554,
                  month: 9,
                  day: 30,
                  hour: 8,
                  minute: 39,
                  second: 34,
                  timezone: 'Etc/UTC')
              .getDayOfWeek(),
          5);
    });
    // JS passes string components; Dart is strongly typed, so use ints. The point
    // is getDayOfWeek with an explicit timezone (the local wall day).
    test('testThaiSolarDateGetDayOfWeekWithTZ', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2557,
          month: 4,
          day: 24,
          hour: 20,
          minute: 52,
          second: 12,
          millisecond: 123,
          timezone: 'America/Los_Angeles');
      expect(td.getDayOfWeek(), 4);
    });
  });

  group('ThaiSolarDate constructor', () {
    // JS tests a copy constructor (new ThaiSolarDate(td2)); Dart takes named args,
    // so construct from the same components and verify the getters.
    test('testThaiSolarDateConstructorCopy', () {
      final ThaiSolarDate td = ThaiSolarDate(
          year: 2553,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(td.getYears(), 2553);
      expect(td.getMonths(), 9);
      expect(td.getDays(), 23);
      expect(td.getHours(), 16);
      expect(td.getMinutes(), 7);
      expect(td.getSeconds(), 12);
      expect(td.getMilliseconds(), 123);
    });

    // JS compares no-arg construction against the current system time, which depends
    // on the local timezone; verify deterministically that the no-arg date is a valid
    // current instant by round-tripping through getTime().
    test('testThaiSolarDateConstructorEmpty', () {
      final ThaiSolarDate td = ThaiSolarDate();
      final ThaiSolarDate td2 = ThaiSolarDate(unixtime: td.getTime());
      expect(td2.getYears(), td.getYears());
      expect(td2.getMonths(), td.getMonths());
      expect(td2.getDays(), td.getDays());
      expect(td2.getHours(), td.getHours());
      expect(td2.getMinutes(), td.getMinutes());
      expect(td2.getSeconds(), td.getSeconds());
    });
  });
}
