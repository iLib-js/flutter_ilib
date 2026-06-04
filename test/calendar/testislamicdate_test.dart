import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  <num>[1507231.5, -1245, 12, 9, 0, 0, 0, 0, 0],
  <num>[1660037.5, -813, 2, 23, 0, 0, 0, 0, 3],
  <num>[1746893.5, -568, 4, 1, 0, 0, 0, 0, 3],
  <num>[1770641.5, -501, 4, 6, 0, 0, 0, 0, 0],
  <num>[1892731.5, -157, 10, 17, 0, 0, 0, 0, 3],
  <num>[1931579.5, -47, 6, 3, 0, 0, 0, 0, 1],
  <num>[1974851.5, 75, 7, 13, 0, 0, 0, 0, 6],
  <num>[2091164.5, 403, 10, 5, 0, 0, 0, 0, 0],
  <num>[2121509.5, 489, 5, 22, 0, 0, 0, 0, 0],
  <num>[2155779.5, 586, 2, 7, 0, 0, 0, 0, 5],
  <num>[2174029.5, 637, 8, 7, 0, 0, 0, 0, 6],
  <num>[2191584.5, 687, 2, 20, 0, 0, 0, 0, 5],
  <num>[2195261.5, 697, 7, 7, 0, 0, 0, 0, 0],
  <num>[2229274.5, 793, 7, 1, 0, 0, 0, 0, 0],
  <num>[2245580.5, 839, 7, 6, 0, 0, 0, 0, 3],
  <num>[2266100.5, 897, 6, 1, 0, 0, 0, 0, 6],
  <num>[2288542.5, 960, 9, 30, 0, 0, 0, 0, 6],
  <num>[2290901.5, 967, 5, 27, 0, 0, 0, 0, 6],
  <num>[2323140.5, 1058, 5, 18, 0, 0, 0, 0, 3],
  <num>[2334848.5, 1091, 6, 2, 0, 0, 0, 0, 0],
  <num>[2348020.5, 1128, 8, 4, 0, 0, 0, 0, 5],
  <num>[2366978.5, 1182, 2, 3, 0, 0, 0, 0, 0],
  <num>[2385648.5, 1234, 10, 10, 0, 0, 0, 0, 1],
  <num>[2392825.5, 1255, 1, 11, 0, 0, 0, 0, 3],
  <num>[2416223.5, 1321, 1, 21, 0, 0, 0, 0, 0],
  <num>[2425848.5, 1348, 3, 19, 0, 0, 0, 0, 0],
  <num>[2430266.5, 1360, 9, 8, 0, 0, 0, 0, 1],
  <num>[2430833.5, 1362, 4, 13, 0, 0, 0, 0, 1],
  <num>[2431004.5, 1362, 10, 7, 0, 0, 0, 0, 4],
  <num>[2448698.5, 1412, 9, 13, 0, 0, 0, 0, 2],
  <num>[2450138.5, 1416, 10, 5, 0, 0, 0, 0, 0],
  <num>[2465737.5, 1460, 10, 12, 0, 0, 0, 0, 3],
  <num>[2486076.5, 1518, 3, 5, 0, 0, 0, 0, 0],
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('IslamicDate constructor', () {
    test('testIslamicDateConstructor', () {
      final IslamicDate id = IslamicDate();
      expect(id.getYears(), isNotNull);
    });
  });

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

  group('IslamicDate from JD constructs correct date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} gives year ${td[1]}, month ${td[2]}, day ${td[3]}', () {
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

  group('IslamicDate constructor', () {
    test('testIslamicDateConstructorFull', () {
      final IslamicDate id = IslamicDate(
          year: 2011, month: 9, day: 23, hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(id.getYears(), 2011);
      expect(id.getMonths(), 9);
      expect(id.getDays(), 23);
      expect(id.getHours(), 16);
      expect(id.getMinutes(), 7);
      expect(id.getSeconds(), 12);
      expect(id.getMilliseconds(), 123);
    });
    test('testIslamicDateConstructorFromJD', () {
      final IslamicDate id = IslamicDate(julianDay: 2450138.5);
      expect(id.getJulianDay(), 2450138.5);
    });
    test('testIslamicDateAfterLeapYear', () {
      // Muh 1, 0003 AH, 9:36am
      final IslamicDate id = IslamicDate(julianDay: 1949148.9);
      expect(id.getRataDie(), closeTo(709.4, 0.001));
      expect(id.getYears(), 3);
      expect(id.getMonths(), 1);
      expect(id.getDays(), 1);
      expect(id.getHours(), 9);
      expect(id.getMinutes(), 36);
      expect(id.getSeconds(), 0);
      expect(id.getMilliseconds(), 0);
    });
  });

  group('IslamicDate convert', () {
    test('testIslamicDateConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final IslamicDate id = IslamicDate(julianDay: td[0] as double);
        expect(id.getYears(), td[1] as int);
        expect(id.getMonths(), td[2] as int);
        expect(id.getDays(), td[3] as int);
        expect(id.getDayOfWeek(), td[8] as int);
      }
    });
  });

  group('IslamicDate getJulianDay', () {
    test('testIslamicDateGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final IslamicDate id = IslamicDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int);
        expect(id.getJulianDay(), td[0]);
        expect(id.getDayOfWeek(), td[8]);
      }
    });
  });

  group('IslamicDate onOrBefore', () {
    // 1431/1/1 is a Friday (dayOfWeek = 5)
    test('testIslamicDateOnOrBeforeSun', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      expect(id.getDayOfWeek(), 5);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testIslamicDateOnOrBeforeMon', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(1).getRataDie(), rd - 4);
    });
    test('testIslamicDateOnOrBeforeTue', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(2).getRataDie(), rd - 3);
    });
    test('testIslamicDateOnOrBeforeWed', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(3).getRataDie(), rd - 2);
    });
    test('testIslamicDateOnOrBeforeThu', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(4).getRataDie(), rd - 1);
    });
    test('testIslamicDateOnOrBeforeFri', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(5).getRataDie(), rd);
    });
    test('testIslamicDateOnOrBeforeSat', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrBefore(6).getRataDie(), rd - 6);
    });
  });

  group('IslamicDate onOrAfter', () {
    test('testIslamicDateOnOrAfterSun', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(0).getRataDie(), rd + 2);
    });
    test('testIslamicDateOnOrAfterMon', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(1).getRataDie(), rd + 3);
    });
    test('testIslamicDateOnOrAfterTue', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(2).getRataDie(), rd + 4);
    });
    test('testIslamicDateOnOrAfterWed', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(3).getRataDie(), rd + 5);
    });
    test('testIslamicDateOnOrAfterThu', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(4).getRataDie(), rd + 6);
    });
    test('testIslamicDateOnOrAfterFri', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(5).getRataDie(), rd);
    });
    test('testIslamicDateOnOrAfterSat', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.onOrAfter(6).getRataDie(), rd + 1);
    });
  });

  group('IslamicDate before', () {
    test('testIslamicDateBeforeSun', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(0).getRataDie(), rd - 5);
    });
    test('testIslamicDateBeforeMon', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(1).getRataDie(), rd - 4);
    });
    test('testIslamicDateBeforeTue', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(2).getRataDie(), rd - 3);
    });
    test('testIslamicDateBeforeWed', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(3).getRataDie(), rd - 2);
    });
    test('testIslamicDateBeforeThu', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(4).getRataDie(), rd - 1);
    });
    test('testIslamicDateBeforeFri', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(5).getRataDie(), rd - 7);
    });
    test('testIslamicDateBeforeSat', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.before(6).getRataDie(), rd - 6);
    });
  });

  group('IslamicDate after', () {
    test('testIslamicDateAfterSun', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(0).getRataDie(), rd + 2);
    });
    test('testIslamicDateAfterMon', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(1).getRataDie(), rd + 3);
    });
    test('testIslamicDateAfterTue', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(2).getRataDie(), rd + 4);
    });
    test('testIslamicDateAfterWed', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(3).getRataDie(), rd + 5);
    });
    test('testIslamicDateAfterThu', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(4).getRataDie(), rd + 6);
    });
    test('testIslamicDateAfterFri', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(5).getRataDie(), rd + 7);
    });
    test('testIslamicDateAfterSat', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      final double rd = id.getRataDie();
      expect(id.after(6).getRataDie(), rd + 1);
    });
  });

  group('IslamicDate getWeekOfYear', () {
    test('testIslamicDateTestGetWeekOfYearThisYear', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 2, day: 1);
      expect(id.getWeekOfYear(), 5);
    });
    test('testIslamicDateTestGetWeekOfYearThisYear2', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 3, day: 19);
      expect(id.getWeekOfYear(), 11);
    });
    test('testIslamicDateTestGetWeekOfYearThisYear3', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 12, day: 29);
      expect(id.getWeekOfYear(), 1);
    });
    test('testIslamicDateTestGetWeekOfYearThisYearWithTime', () {
      final IslamicDate id = IslamicDate(
          year: 1431, month: 12, day: 29, hour: 16, minute: 13, second: 12, millisecond: 232);
      expect(id.getWeekOfYear(), 1);
    });
    test('testIslamicDateTestGetWeekOfYearPreviousYear', () {
      final IslamicDate id = IslamicDate(year: 1428, month: 1, day: 1);
      expect(id.getWeekOfYear(), 51);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekLeap', () {
      final IslamicDate id = IslamicDate(year: 1429, month: 12, day: 29);
      expect(id.getWeekOfYear(), 1);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekRegular1', () {
      final IslamicDate id = IslamicDate(year: 1428, month: 12, day: 29);
      expect(id.getWeekOfYear(), 1);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekRegular2', () {
      final IslamicDate id = IslamicDate(year: 1427, month: 12, day: 29);
      expect(id.getWeekOfYear(), 51);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekRegular3', () {
      final IslamicDate id = IslamicDate(year: 1426, month: 12, day: 29);
      expect(id.getWeekOfYear(), 1);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekRegular4', () {
      final IslamicDate id = IslamicDate(year: 1425, month: 12, day: 29);
      expect(id.getWeekOfYear(), 1);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekRegular5', () {
      final IslamicDate id = IslamicDate(year: 1424, month: 12, day: 29);
      expect(id.getWeekOfYear(), 51);
    });
    test('testIslamicDateTestGetWeekOfYearLastWeekRegular6', () {
      final IslamicDate id = IslamicDate(year: 1423, month: 12, day: 29);
      expect(id.getWeekOfYear(), 1);
    });
  });

  group('IslamicDate getDayOfYear', () {
    test('testIslamicDateGetDayOfYearFirstDay', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 1, day: 1);
      expect(id.getDayOfYear(), 1);
    });
    test('testIslamicDateGetDayOfYearMidYear', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 3, day: 17);
      expect(id.getDayOfYear(), 76);
    });
    test('testIslamicDateGetDayOfYearLastDay', () {
      final IslamicDate id = IslamicDate(year: 1430, month: 12, day: 29);
      expect(id.getDayOfYear(), 354);
    });
    test('testIslamicDateGetDayOfYearLastDayLeapYear', () {
      final IslamicDate id = IslamicDate(year: 1431, month: 12, day: 30);
      expect(id.getDayOfYear(), 355);
    });
  });

  group('IslamicDate getWeekOfMonth', () {
    // en-US: firstDayOfWeek = 0 (Sunday)
    test('testIslamicDateGetWeekOfMonth0', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 3, day: 1);
      expect(id.getWeekOfMonth(0), 0);
    });
    test('testIslamicDateGetWeekOfMonth1', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 3, day: 2);
      expect(id.getWeekOfMonth(0), 1);
    });
    test('testIslamicDateGetWeekOfMonth2', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 3, day: 11);
      expect(id.getWeekOfMonth(0), 2);
    });
    test('testIslamicDateGetWeekOfMonth3', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 3, day: 20);
      expect(id.getWeekOfMonth(0), 3);
    });
    test('testIslamicDateGetWeekOfMonth4', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 3, day: 29);
      expect(id.getWeekOfMonth(0), 4);
    });
    test('testIslamicDateGetWeekOfMonth5', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 3, day: 30);
      expect(id.getWeekOfMonth(0), 5);
    });
    test('testIslamicDateGetWeekOfMonth6', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 4, day: 1);
      expect(id.getWeekOfMonth(0), 1);
    });
    test('testIslamicDateGetWeekOfMonth7', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 5, day: 1);
      expect(id.getWeekOfMonth(0), 1);
    });
    test('testIslamicDateGetWeekOfMonth8', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 6, day: 1);
      expect(id.getWeekOfMonth(0), 0);
    });
    test('testIslamicDateGetWeekOfMonth9', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 7, day: 1);
      expect(id.getWeekOfMonth(0), 0);
    });
    test('testIslamicDateGetWeekOfMonthUS', () {
      final IslamicDate id = IslamicDate(year: 1432, month: 8, day: 1);
      expect(id.getWeekOfMonth(0), 1);
    });
    test('testIslamicDateGetWeekOfMonthDE', () {
      // de-DE: firstDayOfWeek = 1 (Monday), 8/1 is Sunday
      final IslamicDate id = IslamicDate(year: 1432, month: 8, day: 1);
      expect(id.getWeekOfMonth(1), 0);
    });
  });

  group('IslamicDate getEra', () {
    test('testIslamicDateGetEraAH', () {
      final IslamicDate id = IslamicDate(year: 2011, month: 5, day: 1);
      expect(id.getEra(), 1);
    });
    test('testIslamicDateGetEraBAH', () {
      final IslamicDate id = IslamicDate(year: -46, month: 5, day: 1);
      expect(id.getEra(), -1);
    });
    test('testIslamicDateGetEraAHYear1', () {
      final IslamicDate id = IslamicDate(year: 1, month: 1, day: 1);
      expect(id.getEra(), 1);
    });
    test('testIslamicDateGetEraBAHYear0', () {
      final IslamicDate id = IslamicDate(year: 0, month: 12, day: 29);
      expect(id.getEra(), -1);
    });
  });

  group('IslamicDate getTimeZone', () {
    test('testIslamicDateInitWithUnixTimeRightTimeZone', () {
      final IslamicDate id = IslamicDate(unixtime: 0);
      expect(id.timezone, 'local');
    });
    test('testIslamicDateInitWithJDRightTimeZone', () {
      final IslamicDate id = IslamicDate(julianDay: 0);
      expect(id.timezone, 'local');
    });
    test('testIslamicDateInitWithRDRightTimeZone', () {
      final IslamicDate id = IslamicDate(rd: 0);
      expect(id.timezone, 'local');
    });
  });

  group('IslamicDate getTime', () {
    test('testIslamicDateTestGetTimeZero', () {
      final IslamicDate id = IslamicDate(year: 1389, month: 10, day: 22);
      expect(id.getTime(), 0);
    });
    test('testIslamicDateTestGetTimeZeroJD', () {
      final IslamicDate id = IslamicDate(julianDay: 2440587.5);
      expect(id.getTime(), 0);
    });
    test('testIslamicDateTestGetTime', () {
      final IslamicDate id =
          IslamicDate(year: 1389, month: 10, day: 24, hour: 8, minute: 30);
      expect(id.getTime(), 203400000);
    });
    test('testIslamicDateTestGetTimeTooEarly', () {
      final IslamicDate id = IslamicDate(julianDay: 2440586.5);
      expect(id.getTime(), -1);
    });
    test('testIslamicDateTestGetTimeTooLate', () {
      final IslamicDate id = IslamicDate(year: 1460, month: 10, day: 12);
      expect(id.getTime(), -1);
    });
  });

  group('IslamicDate round-trip construction', () {
    test('testIslamicDateRoundTripConstruction', () {
      final IslamicDate id = IslamicDate(year: 1436, month: 1, day: 10);
      final int u = id.getTime();
      final IslamicDate id2 = IslamicDate(unixtime: u);
      expect(id2.getYears(), id.getYears());
      expect(id2.getMonths(), id.getMonths());
      expect(id2.getDays(), id.getDays());
      expect(id2.getHours(), id.getHours());
      expect(id2.getMinutes(), id.getMinutes());
      expect(id2.getSeconds(), id.getSeconds());
    });
    test('testIslamicDateRoundTripConstruction2', () {
      final IslamicDate id = IslamicDate(
          year: 1436, month: 1, day: 10,
          timezone: 'America/Los_Angeles');
      final int u = id.getTime();
      final IslamicDate id2 = IslamicDate(
          unixtime: u, timezone: 'America/Los_Angeles');
      expect(id2.timezone, id.timezone);
      expect(id2.getYears(), id.getYears());
      expect(id2.getMonths(), id.getMonths());
      expect(id2.getDays(), id.getDays());
      expect(id2.getHours(), id.getHours());
      expect(id2.getMinutes(), id.getMinutes());
      expect(id2.getSeconds(), id.getSeconds());
    }, skip: 'non-Gregorian calendar year conversion needed for timezone offset');
  });
}
