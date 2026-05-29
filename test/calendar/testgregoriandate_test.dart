import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDatesGregorian = <List<num>>[
  <num>[1507231.5, -586, 7, 24, 0, 0, 0, 0, 0],
  <num>[1660037.5, -168, 12, 5, 0, 0, 0, 0, 3],
  <num>[1746893.5, 70, 9, 24, 0, 0, 0, 0, 3],
  <num>[1770641.5, 135, 10, 2, 0, 0, 0, 0, 0],
  <num>[1892731.5, 470, 1, 8, 0, 0, 0, 0, 3],
  <num>[1931579.5, 576, 5, 20, 0, 0, 0, 0, 1],
  <num>[1974851.5, 694, 11, 10, 0, 0, 0, 0, 6],
  <num>[2091164.5, 1013, 4, 25, 0, 0, 0, 0, 0],
  <num>[2121509.5, 1096, 5, 24, 0, 0, 0, 0, 0],
  <num>[2155779.5, 1190, 3, 23, 0, 0, 0, 0, 5],
  <num>[2174029.5, 1240, 3, 10, 0, 0, 0, 0, 6],
  <num>[2191584.5, 1288, 4, 2, 0, 0, 0, 0, 5],
  <num>[2195261.5, 1298, 4, 27, 0, 0, 0, 0, 0],
  <num>[2229274.5, 1391, 6, 12, 0, 0, 0, 0, 0],
  <num>[2245580.5, 1436, 2, 3, 0, 0, 0, 0, 3],
  <num>[2266100.5, 1492, 4, 9, 0, 0, 0, 0, 6],
  <num>[2288542.5, 1553, 9, 19, 0, 0, 0, 0, 6],
  <num>[2290901.5, 1560, 3, 5, 0, 0, 0, 0, 6],
  <num>[2323140.5, 1648, 6, 10, 0, 0, 0, 0, 3],
  <num>[2334848.5, 1680, 6, 30, 0, 0, 0, 0, 0],
  <num>[2348020.5, 1716, 7, 24, 0, 0, 0, 0, 5],
  <num>[2366978.5, 1768, 6, 19, 0, 0, 0, 0, 0],
  <num>[2385648.5, 1819, 8, 2, 0, 0, 0, 0, 1],
  <num>[2392825.5, 1839, 3, 27, 0, 0, 0, 0, 3],
  <num>[2416223.5, 1903, 4, 19, 0, 0, 0, 0, 0],
  <num>[2425848.5, 1929, 8, 25, 0, 0, 0, 0, 0],
  <num>[2430266.5, 1941, 9, 29, 0, 0, 0, 0, 1],
  <num>[2430833.5, 1943, 4, 19, 0, 0, 0, 0, 1],
  <num>[2431004.5, 1943, 10, 7, 0, 0, 0, 0, 4],
  <num>[2448698.5, 1992, 3, 17, 0, 0, 0, 0, 2],
  <num>[2450138.5, 1996, 2, 25, 0, 0, 0, 0, 0],
  <num>[2465737.5, 2038, 11, 10, 0, 0, 0, 0, 3],
  <num>[2486076.5, 2094, 7, 18, 0, 0, 0, 0, 0],
];

void main() {
  group('GregorianDate constructor from JD', () {
    test('testGregDateConstructorFromJD', () {
      final GregorianDate gd = GregorianDate(julianDay: 1721790.75);
      expect(gd.getYears(), 2);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 6);
      expect(gd.getMinutes(), 0);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
    test('testGregDateAfterLeapYear', () {
      final GregorianDate gd = GregorianDate(julianDay: 1723071.9);
      expect(gd.getYears(), 5);
      expect(gd.getMonths(), 7);
      expect(gd.getDays(), 5);
      expect(gd.getHours(), 9);
      expect(gd.getMinutes(), 36);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
    test('testGregDateAfterCentury', () {
      final GregorianDate gd = GregorianDate(julianDay: 1758231.8);
      expect(gd.getYears(), 101);
      expect(gd.getMonths(), 10);
      expect(gd.getDays(), 10);
      expect(gd.getHours(), 7);
      expect(gd.getMinutes(), 12);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
    test('testGregDateAfterQuadCentury', () {
      final GregorianDate gd = GregorianDate(julianDay: 1867706.833333333333);
      expect(gd.getYears(), 401);
      expect(gd.getMonths(), 7);
      expect(gd.getDays(), 4);
      expect(gd.getHours(), 8);
      expect(gd.getMinutes(), 0);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
    test('testGregDateEndOfYear', () {
      final GregorianDate gd = GregorianDate(julianDay: 2455196.5);
      expect(gd.getYears(), 2009);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 31);
    });
    test('testGregDateBeginningOfYear', () {
      final GregorianDate gd = GregorianDate(julianDay: 2455197.5);
      expect(gd.getYears(), 2010);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
    });
    test('testGregDateEndOfYearLeapYear', () {
      final GregorianDate gd = GregorianDate(julianDay: 2454831.5);
      expect(gd.getYears(), 2008);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 31);
    });
    test('testGregDateBeginningOfYearAfterLeapYear', () {
      final GregorianDate gd = GregorianDate(julianDay: 2454832.5);
      expect(gd.getYears(), 2009);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
    });
    test('testGregDateEndOfYear0RJd', () {
      final GregorianDate gd = GregorianDate(julianDay: 1721424.5);
      expect(gd.getYears(), 0);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 31);
    });
    test('testGregDateJan1Midnight', () {
      final GregorianDate gd = GregorianDate(julianDay: 2455197.5);
      expect(gd.getYears(), 2010);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 0);
      expect(gd.getMinutes(), 0);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
  });

  group('GregorianDate from RD', () {
    test('testGregDateJan31Midnight', () {
      final GregorianDate gd = GregorianDate(rd: 734533);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 31);
      expect(gd.getHours(), 0);
      expect(gd.getMinutes(), 0);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
    test('testGregDateJan31Noon', () {
      final GregorianDate gd = GregorianDate(rd: 734533.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 31);
      expect(gd.getHours(), 12);
      expect(gd.getMinutes(), 0);
      expect(gd.getSeconds(), 0);
      expect(gd.getMilliseconds(), 0);
    });
    test('testGregDateFeb1', () {
      final GregorianDate gd = GregorianDate(rd: 734534.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 2);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 12);
    });
    test('testGregDateFeb28LeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734561.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 2);
      expect(gd.getDays(), 28);
      expect(gd.getHours(), 12);
    });
    test('testGregDateFeb29LeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734562.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 2);
      expect(gd.getDays(), 29);
      expect(gd.getHours(), 12);
    });
    test('testGregDateMar1LeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734563.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 3);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 12);
    });
    test('testGregDateMar31LeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734593.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 3);
      expect(gd.getDays(), 31);
      expect(gd.getHours(), 12);
    });
    test('testGregDateApr1LeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734594.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 4);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 12);
    });
    test('testGregDateDec31LeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734868.5);
      expect(gd.getYears(), 2012);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 31);
      expect(gd.getHours(), 12);
    });
    test('testGregDateJan1NonLeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734869.5);
      expect(gd.getYears(), 2013);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 12);
    });
    test('testGregDateFeb28NonLeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734927.5);
      expect(gd.getYears(), 2013);
      expect(gd.getMonths(), 2);
      expect(gd.getDays(), 28);
      expect(gd.getHours(), 12);
    });
    test('testGregDateMar1NonLeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734928.5);
      expect(gd.getYears(), 2013);
      expect(gd.getMonths(), 3);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 12);
    });
    test('testGregDateMar31NonLeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734958.5);
      expect(gd.getYears(), 2013);
      expect(gd.getMonths(), 3);
      expect(gd.getDays(), 31);
      expect(gd.getHours(), 12);
    });
    test('testGregDateApr1NonLeapYear', () {
      final GregorianDate gd = GregorianDate(rd: 734959.5);
      expect(gd.getYears(), 2013);
      expect(gd.getMonths(), 4);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 12);
    });
    test('testGregDateEndOfYear0Rd', () {
      final GregorianDate gd = GregorianDate(rd: 0);
      expect(gd.getYears(), 0);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 31);
    });
    test('testGregDateBeginningOfYearRd', () {
      final GregorianDate gd = GregorianDate(rd: 1);
      expect(gd.getYears(), 1);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
    });
    test('testGregDateAlmostEndOfYearRd', () {
      final GregorianDate gd = GregorianDate(rd: 364);
      expect(gd.getYears(), 1);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 30);
    });
    test('testGregDateEndOfYearRd', () {
      final GregorianDate gd = GregorianDate(rd: 365);
      expect(gd.getYears(), 1);
      expect(gd.getMonths(), 12);
      expect(gd.getDays(), 31);
    });
    test('testGregDateBeginningOfYear2Rd', () {
      final GregorianDate gd = GregorianDate(rd: 366);
      expect(gd.getYears(), 2);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
    });
  });

  group('GregorianDate constructor from unixtime', () {
    test('testGregDateConstructorUnixTime', () {
      final GregorianDate gd = GregorianDate(unixtime: 61000);
      expect(gd.getYears(), 1970);
      expect(gd.getMonths(), 1);
      expect(gd.getDays(), 1);
      expect(gd.getHours(), 0);
      expect(gd.getMinutes(), 1);
      expect(gd.getSeconds(), 1);
      expect(gd.getMilliseconds(), 0);
    });
  });

  group('GregorianDate constructor from components', () {
    test('testGregDateConstructorFull', () {
      final GregorianDate gd = GregorianDate(
          year: 2011, month: 9, day: 23, hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(gd.getYears(), 2011);
      expect(gd.getMonths(), 9);
      expect(gd.getDays(), 23);
      expect(gd.getHours(), 16);
      expect(gd.getMinutes(), 7);
      expect(gd.getSeconds(), 12);
      expect(gd.getMilliseconds(), 123);
    });
  });

  group('GregorianDate convert reference dates', () {
    for (int i = 0; i < testDatesGregorian.length; i++) {
      final List<num> td = testDatesGregorian[i];
      test('testGregDateConvert$i', () {
        final GregorianDate gd = GregorianDate(julianDay: td[0] as double);
        expect(gd.getYears(), td[1]);
        expect(gd.getMonths(), td[2]);
        expect(gd.getDays(), td[3]);
        expect(gd.getHours(), td[4]);
        expect(gd.getMinutes(), td[5]);
        expect(gd.getSeconds(), td[6]);
        expect(gd.getMilliseconds(), td[7]);
        expect(gd.getDayOfWeek(), td[8]);
      });
    }
  });

  group('GregorianDate getJulianDay round-trip', () {
    for (int i = 0; i < testDatesGregorian.length; i++) {
      final List<num> td = testDatesGregorian[i];
      test('testGregDateGetJulianDay$i', () {
        final GregorianDate gd = GregorianDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int);
        expect(gd.getJulianDay(), td[0]);
        expect(gd.getDayOfWeek(), td[8]);
      });
    }
  });

  group('GregorianDate getDayOfWeek', () {
    test('testGetDayOfWeek1', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 9, day: 30);
      expect(gd.getDayOfWeek(), 5);
    });
    test('testGetDayOfWeekWithTime', () {
      final GregorianDate gd =
          GregorianDate(year: 2011, month: 9, day: 30, hour: 8, minute: 39, second: 34);
      expect(gd.getDayOfWeek(), 5);
    });
    test('testGetDayOfWeek2', () {
      final GregorianDate gd = GregorianDate(year: 1648, month: 6, day: 10);
      expect(gd.getDayOfWeek(), 3);
    });
    test('testGetDayOfWeek3', () {
      final GregorianDate gd = GregorianDate(year: 1190, month: 3, day: 23);
      expect(gd.getDayOfWeek(), 5);
    });
    test('testGetDayOfWeek4', () {
      final GregorianDate gd = GregorianDate(year: -586, month: 7, day: 24);
      expect(gd.getDayOfWeek(), 0);
    });
  });

  group('GregorianDate getTime', () {
    test('testGregDateTestGetTimeZero', () {
      final GregorianDate gd = GregorianDate(year: 1970, month: 1, day: 1);
      expect(gd.getTime(), 0);
    });
    test('testGregDateTestGetTime', () {
      final GregorianDate gd =
          GregorianDate(year: 1970, month: 1, day: 3, hour: 8, minute: 30);
      expect(gd.getTime(), 203400000);
    });
    test('testGregDateTestGetTimeTooEarly', () {
      final GregorianDate gd = GregorianDate(year: 1969, month: 12, day: 31);
      expect(gd.getTime(), -1);
    });
    test('testGregDateTestGetTimeTooLate', () {
      final GregorianDate gd = GregorianDate(year: 2038, month: 1, day: 20);
      expect(gd.getTime(), -1);
    });
    test('testGregDateGetTimeWithUTC', () {
      // Date.UTC(2013, 10, 1) = 2013-11-01 00:00:00 UTC = 1383264000000
      const int utc = 1383264000000;
      final GregorianDate gd = GregorianDate(unixtime: utc);
      expect(gd.getTime(), utc);
    });
  });

  group('GregorianDate getTimeExtended', () {
    test('testGregDateTestGetTimeExtendedZero', () {
      final GregorianDate gd = GregorianDate(year: 1970, month: 1, day: 1);
      expect(gd.getTimeExtended(), 0);
    });
    test('testGregDateTestGetTimeExtended', () {
      final GregorianDate gd =
          GregorianDate(year: 1970, month: 1, day: 3, hour: 8, minute: 30);
      expect(gd.getTimeExtended(), 203400000);
    });
    test('testGregDateTestGetTimeExtendedTooEarlyForRegularUnixTime', () {
      final GregorianDate gd = GregorianDate(year: 1969, month: 12, day: 31);
      expect(gd.getTimeExtended(), -86400000);
    });
    test('testGregDateTestGetTimeExtendedTooLateForRegularUnixTime', () {
      final GregorianDate gd = GregorianDate(year: 2038, month: 1, day: 20);
      expect(gd.getTimeExtended(), 2147558400000);
    });
    test('testGregDateTestGetTimeExtendedTooEarlyForExtendedUnixTime', () {
      final GregorianDate gd = GregorianDate(year: -271821, month: 4, day: 18);
      expect(gd.getTimeExtended(), -1);
    });
    test('testGregDateTestGetTimeExtendedTooLateForExtendedUnixTime', () {
      final GregorianDate gd = GregorianDate(year: 275760, month: 9, day: 20);
      expect(gd.getTimeExtended(), -1);
    });
  });

  group('GregorianDate getRataDie', () {
    test('testGregDateGetRataDie', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 3, day: 8);
      expect(gd.getRataDie(), 734204);
    });
  });


  group('GregorianDate getWeekOfYear', () {
    test('testGregDateTestGetWeekOfYearThisYear', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 1, day: 7);
      expect(gd.getWeekOfYear(), 1);
    });
    test('testGregDateTestGetWeekOfYearThisYear2', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 1, day: 25);
      expect(gd.getWeekOfYear(), 4);
    });
    test('testGregDateTestGetWeekOfYearThisYear3', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 19);
      expect(gd.getWeekOfYear(), 42);
    });
    test('testGregDateTestGetWeekOfYearThisYearWithTime', () {
      final GregorianDate gd = GregorianDate(
          year: -2011, month: 10, day: 19, hour: 16, minute: 13, second: 12, millisecond: 232);
      expect(gd.getWeekOfYear(), 42);
    });
    test('testGregDateTestGetWeekOfYearPreviousYear', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 1, day: 1);
      expect(gd.getWeekOfYear(), 52);
    });
    test('testGregDateTestGetWeekOfYearLastWeekLeap', () {
      final GregorianDate gd = GregorianDate(year: 2009, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 53);
    });
    test('testGregDateTestGetWeekOfYearLastWeekRegular1', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 52);
    });
    test('testGregDateTestGetWeekOfYearLastWeekRegular2', () {
      final GregorianDate gd = GregorianDate(year: 2008, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 1);
    });
    test('testGregDateTestGetWeekOfYearLastWeekRegular3', () {
      final GregorianDate gd = GregorianDate(year: 2007, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 1);
    });
    test('testGregDateTestGetWeekOfYearLastWeekRegular4', () {
      final GregorianDate gd = GregorianDate(year: 2006, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 1);
    });
    test('testGregDateTestGetWeekOfYearLastWeekRegular5', () {
      final GregorianDate gd = GregorianDate(year: 2005, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 52);
    });
    test('testGregDateTestGetWeekOfYearLastWeekRegular6', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 12, day: 31);
      expect(gd.getWeekOfYear(), 52);
    });
  });

  group('GregorianDate getDayOfYear', () {
    test('testGregDateGetDayOfYearFirstDay', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 1, day: 1);
      expect(gd.getDayOfYear(), 1);
    });
    test('testGregDateGetDayOfYearPaddysDay', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 3, day: 17);
      expect(gd.getDayOfYear(), 76);
    });
    test('testGregDateGetDayOfYearPaddysDayLeapYear', () {
      final GregorianDate gd = GregorianDate(year: 2008, month: 3, day: 17);
      expect(gd.getDayOfYear(), 77);
    });
    test('testGregDateGetDayOfYearLastDay', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 12, day: 31);
      expect(gd.getDayOfYear(), 365);
    });
    test('testGregDateGetDayOfYearLastDayLeapYear', () {
      final GregorianDate gd = GregorianDate(year: 2008, month: 12, day: 31);
      expect(gd.getDayOfYear(), 366);
    });
  });

  group('GregorianDate getWeekOfMonth', () {
    test('testGregDateGetWeekOfMonth0', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 1);
      expect(gd.getWeekOfMonth(0), 0);
    });
    test('testGregDateGetWeekOfMonth1', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 2);
      expect(gd.getWeekOfMonth(0), 1);
    });
    test('testGregDateGetWeekOfMonth2', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 11);
      expect(gd.getWeekOfMonth(0), 2);
    });
    test('testGregDateGetWeekOfMonth3', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 20);
      expect(gd.getWeekOfMonth(0), 3);
    });
    test('testGregDateGetWeekOfMonth4', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 29);
      expect(gd.getWeekOfMonth(0), 4);
    });
    test('testGregDateGetWeekOfMonth5', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 10, day: 30);
      expect(gd.getWeekOfMonth(0), 5);
    });
    test('testGregDateGetWeekOfMonth6', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 9, day: 1);
      expect(gd.getWeekOfMonth(0), 0);
    });
    test('testGregDateGetWeekOfMonth7', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 8, day: 1);
      expect(gd.getWeekOfMonth(0), 1);
    });
    test('testGregDateGetWeekOfMonth8', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 7, day: 1);
      expect(gd.getWeekOfMonth(0), 0);
    });
    test('testGregDateGetWeekOfMonth9', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 6, day: 1);
      expect(gd.getWeekOfMonth(0), 1);
    });
    test('testGregDateGetWeekOfMonthUS', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 5, day: 1);
      expect(gd.getWeekOfMonth(0), 1);
    });
    test('testGregDateGetWeekOfMonthDE', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 5, day: 1);
      expect(gd.getWeekOfMonth(1), 0);
    });
  });

  group('GregorianDate onOrBefore', () {
    // 2010-01-01 is a Friday (dayOfWeek = 5)
    test('testGregDateOnOrBeforeSun', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testGregDateOnOrBeforeMon', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(1).getRataDie(), rd - 4);
    });
    test('testGregDateOnOrBeforeTue', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(2).getRataDie(), rd - 3);
    });
    test('testGregDateOnOrBeforeWed', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(3).getRataDie(), rd - 2);
    });
    test('testGregDateOnOrBeforeThu', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(4).getRataDie(), rd - 1);
    });
    test('testGregDateOnOrBeforeFri', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(5).getRataDie(), rd);
    });
    test('testGregDateOnOrBeforeSat', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(6).getRataDie(), rd - 6);
    });
    test('testGregDateOnOrBeforeSunWithTime', () {
      final GregorianDate gd =
          GregorianDate(year: 2010, month: 1, day: 1, hour: 8);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testGregDateOnOrBeforeSunWithTimeZoneWestern1', () {
      // 2014-04-26 23:59 LA = Saturday in LA, Sunday in UTC
      final GregorianDate gd = GregorianDate(
          year: 2014, month: 4, day: 26, hour: 23, minute: 59,
          timezone: 'America/Los_Angeles');
      expect(gd.getDayOfWeek(), 6);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(0).getRataDie(), rd - 6);
    });
    test('testGregDateOnOrBeforeSunWithTimeZoneWestern2', () {
      // 2014-04-27 00:00 LA = Sunday in LA and UTC
      final GregorianDate gd = GregorianDate(
          year: 2014, month: 4, day: 27, hour: 0, minute: 0,
          timezone: 'America/Los_Angeles');
      expect(gd.getDayOfWeek(), 0);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(0).getRataDie(), rd);
    });
    test('testGregDateOnOrBeforeSunWithTimeZoneEastern1', () {
      // 2014-04-27 00:00 Seoul = Saturday in UTC, Sunday in Seoul
      final GregorianDate gd = GregorianDate(
          year: 2014, month: 4, day: 27, hour: 0, minute: 0,
          timezone: 'Asia/Seoul');
      expect(gd.getDayOfWeek(), 0);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(0).getRataDie(), rd);
    });
    test('testGregDateOnOrBeforeSunWithTimeZoneEastern2', () {
      // 2014-04-26 23:59 Seoul = Saturday in Seoul and in UTC
      final GregorianDate gd = GregorianDate(
          year: 2014, month: 4, day: 26, hour: 23, minute: 59,
          timezone: 'Asia/Seoul');
      expect(gd.getDayOfWeek(), 6);
      final double rd = gd.getRataDie();
      expect(gd.onOrBefore(0).getRataDie(), rd - 6);
    });
  });

  group('GregorianDate onOrAfter', () {
    // 2010-01-01 is a Friday (dayOfWeek = 5)
    test('testGregDateOnOrAfterSun', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(0).getRataDie(), rd + 2);
    });
    test('testGregDateOnOrAfterMon', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(1).getRataDie(), rd + 3);
    });
    test('testGregDateOnOrAfterTue', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(2).getRataDie(), rd + 4);
    });
    test('testGregDateOnOrAfterWed', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(3).getRataDie(), rd + 5);
    });
    test('testGregDateOnOrAfterThu', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(4).getRataDie(), rd + 6);
    });
    test('testGregDateOnOrAfterFri', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(5).getRataDie(), rd);
    });
    test('testGregDateOnOrAfterSat', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.onOrAfter(6).getRataDie(), rd + 1);
    });
    test('testGregDateOnOrAfterSunDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.onOrBefore(0);
      expect(date.getYears(), 2009);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 27);
    });
    test('testGregDateOnOrAfterMonDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.onOrAfter(1);
      expect(date.getYears(), 2010);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 4);
    });
    test('testGregDateOnOrAfterThuDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.onOrAfter(4);
      expect(date.getYears(), 2010);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 7);
    });
    test('testGregDateOnOrAfterFriDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.onOrAfter(5);
      expect(date.getYears(), 2010);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 1);
    });
  });

  group('GregorianDate before', () {
    // 2010-01-01 is a Friday (dayOfWeek = 5)
    test('testGregDateBeforeSun', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(0).getRataDie(), rd - 5);
    });
    test('testGregDateBeforeMon', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(1).getRataDie(), rd - 4);
    });
    test('testGregDateBeforeTue', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(2).getRataDie(), rd - 3);
    });
    test('testGregDateBeforeWed', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(3).getRataDie(), rd - 2);
    });
    test('testGregDateBeforeThu', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(4).getRataDie(), rd - 1);
    });
    test('testGregDateBeforeFri', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(5).getRataDie(), rd - 7);
    });
    test('testGregDateBeforeSat', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.before(6).getRataDie(), rd - 6);
    });
    test('testGregDateBeforeSunDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.before(0);
      expect(date.getYears(), 2009);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 27);
    });
    test('testGregDateBeforeThuDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.before(4);
      expect(date.getYears(), 2009);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 31);
    });
    test('testGregDateBeforeFriDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.before(5);
      expect(date.getYears(), 2009);
      expect(date.getMonths(), 12);
      expect(date.getDays(), 25);
    });
  });

  group('GregorianDate after', () {
    // 2010-01-01 is a Friday (dayOfWeek = 5)
    test('testGregDateAfterSun', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(0).getRataDie(), rd + 2);
    });
    test('testGregDateAfterMon', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(1).getRataDie(), rd + 3);
    });
    test('testGregDateAfterTue', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(2).getRataDie(), rd + 4);
    });
    test('testGregDateAfterWed', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(3).getRataDie(), rd + 5);
    });
    test('testGregDateAfterThu', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(4).getRataDie(), rd + 6);
    });
    test('testGregDateAfterFri', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(5).getRataDie(), rd + 7);
    });
    test('testGregDateAfterSat', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final double rd = gd.getRataDie();
      expect(gd.after(6).getRataDie(), rd + 1);
    });
    test('testGregDateAfterSunDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.after(0);
      expect(date.getYears(), 2010);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 3);
    });
    test('testGregDateAfterFriDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.after(5);
      expect(date.getYears(), 2010);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 8);
    });
    test('testGregDateAfterSatDate', () {
      final GregorianDate gd = GregorianDate(year: 2010, month: 1, day: 1);
      expect(gd.getDayOfWeek(), 5);
      final ILibCalendarDate date = gd.after(6);
      expect(date.getYears(), 2010);
      expect(date.getMonths(), 1);
      expect(date.getDays(), 2);
    });
  });

  group('GregorianDate getEra', () {
    test('testGregDateGetEraCE', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 5, day: 1);
      expect(gd.getEra(), 1);
    });
    test('testGregDateGetEraBCE', () {
      final GregorianDate gd = GregorianDate(year: -46, month: 5, day: 1);
      expect(gd.getEra(), -1);
    });
    test('testGregDateGetEraCEYear1', () {
      final GregorianDate gd = GregorianDate(year: 1, month: 1, day: 1);
      expect(gd.getEra(), 1);
    });
    test('testGregDateGetEraCEYear0', () {
      final GregorianDate gd = GregorianDate(year: 0, month: 12, day: 31);
      expect(gd.getEra(), -1);
    });
  });

  group('GregorianDate getTimeZone', () {
    test('testGregDateGetTimeZone', () {
      final GregorianDate gd =
          GregorianDate(year: 2011, month: 3, day: 8, timezone: 'America/Los_Angeles');
      expect(gd.timezone, 'America/Los_Angeles');
    });
    test('testGregDateGetTimeZoneDefault', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 3, day: 8);
      expect(gd.timezone, 'local');
    });
    test('testGregDateInitWithUnixTimeRightTimeZone', () {
      final GregorianDate gd = GregorianDate(unixtime: 0);
      expect(gd.timezone, 'local');
    });
    test('testGregDateInitWithJDRightTimeZone', () {
      final GregorianDate gd = GregorianDate(julianDay: 0);
      expect(gd.timezone, 'local');
    });
    test('testGregDateInitWithRDRightTimeZone', () {
      final GregorianDate gd = GregorianDate(rd: 0);
      expect(gd.timezone, 'local');
    });
  });

  group('GregorianDate round-trip construction', () {
    test('testGregDateRoundTripConstruction', () {
      final GregorianDate gd = GregorianDate(year: 2014, month: 11, day: 3);
      final int u = gd.getTime();
      final GregorianDate gd2 = GregorianDate(unixtime: u);
      expect(gd2.getYears(), gd.getYears());
      expect(gd2.getMonths(), gd.getMonths());
      expect(gd2.getDays(), gd.getDays());
      expect(gd2.getHours(), gd.getHours());
      expect(gd2.getMinutes(), gd.getMinutes());
      expect(gd2.getSeconds(), gd.getSeconds());
    });
  });

  group('GregorianDate getCalendar', () {
    test('testGregDateGetCalendar', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 1, day: 1);
      expect(gd.getCalendar(), 'gregorian');
    });
  });
}
