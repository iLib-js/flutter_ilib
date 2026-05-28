import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDatesCoptic = <List<num>>[
  <num>[1507231.5, -870, 12, 6, 0, 0, 0, 0, 0],
  <num>[1660037.5, -451, 4, 12, 0, 0, 0, 0, 3],
  <num>[1746893.5, -213, 1, 29, 0, 0, 0, 0, 3],
  <num>[1770641.5, -148, 2, 5, 0, 0, 0, 0, 0],
  <num>[1892731.5, 186, 5, 12, 0, 0, 0, 0, 3],
  <num>[1931579.5, 292, 9, 23, 0, 0, 0, 0, 1],
  <num>[1974851.5, 411, 3, 11, 0, 0, 0, 0, 6],
  <num>[2091164.5, 729, 8, 24, 0, 0, 0, 0, 0],
  <num>[2121509.5, 812, 9, 23, 0, 0, 0, 0, 0],
  <num>[2155779.5, 906, 7, 20, 0, 0, 0, 0, 5],
  <num>[2174029.5, 956, 7, 7, 0, 0, 0, 0, 6],
  <num>[2191584.5, 1004, 7, 30, 0, 0, 0, 0, 5],
  <num>[2195261.5, 1014, 8, 25, 0, 0, 0, 0, 0],
  <num>[2229274.5, 1107, 10, 10, 0, 0, 0, 0, 0],
  <num>[2245580.5, 1152, 5, 29, 0, 0, 0, 0, 3],
  <num>[2266100.5, 1208, 8, 5, 0, 0, 0, 0, 6],
  <num>[2288542.5, 1270, 1, 12, 0, 0, 0, 0, 6],
  <num>[2290901.5, 1276, 6, 29, 0, 0, 0, 0, 6],
  <num>[2323140.5, 1364, 10, 6, 0, 0, 0, 0, 3],
  <num>[2334848.5, 1396, 10, 26, 0, 0, 0, 0, 0],
  <num>[2348020.5, 1432, 11, 19, 0, 0, 0, 0, 5],
  <num>[2366978.5, 1484, 10, 14, 0, 0, 0, 0, 0],
  <num>[2385648.5, 1535, 11, 27, 0, 0, 0, 0, 1],
  <num>[2392825.5, 1555, 7, 19, 0, 0, 0, 0, 3],
  <num>[2416223.5, 1619, 8, 11, 0, 0, 0, 0, 0],
  <num>[2425848.5, 1645, 12, 19, 0, 0, 0, 0, 0],
  <num>[2430266.5, 1658, 1, 19, 0, 0, 0, 0, 1],
  <num>[2430833.5, 1659, 8, 11, 0, 0, 0, 0, 1],
  <num>[2431004.5, 1660, 1, 26, 0, 0, 0, 0, 4],
  <num>[2448698.5, 1708, 7, 8, 0, 0, 0, 0, 2],
  <num>[2450138.5, 1712, 6, 17, 0, 0, 0, 0, 0],
  <num>[2465737.5, 1755, 3, 1, 0, 0, 0, 0, 3],
  <num>[2486076.5, 1810, 11, 11, 0, 0, 0, 0, 0],
];

void main() {
  group('CopticRataDie constructor', () {
    test('testCopticRataDieConstructorComponents', () {
      final CopticRataDie crd = CopticRataDie(
          year: 1, month: 1, day: 1, hour: 0, minute: 0, second: 0, millisecond: 0);
      expect(crd.getRataDie(), 1);
    });
    test('testCopticRataDieConstructorComponentsBig', () {
      final CopticRataDie crd = CopticRataDie(
          year: 1731, month: 2, day: 19, hour: 12, minute: 30, second: 12, millisecond: 0);
      expect(crd.getRataDie(), 631931.5209722222);
    });
    test('testCopticRataDieConstructorRD', () {
      final CopticRataDie crd = CopticRataDie(rataDie: 732323.2342345);
      expect(crd.getRataDie(), 732323.2342345);
    });
    test('testCopticRataDieConstructorUnixtime', () {
      final CopticRataDie crd = CopticRataDie(unixtime: 0);
      expect(crd.getRataDie(), 615559);
    });
    test('testCopticRataDieConstructorJD', () {
      final CopticRataDie crd = CopticRataDie(julianDay: 2559592.5);
      expect(crd.getRataDie(), 734564);
    });
  });

  group('CopticRataDie getJulianDay', () {
    test('testCopticRataDieGetJulianDay1', () {
      final CopticRataDie crd = CopticRataDie(rataDie: 734564);
      expect(crd.getJulianDay(), 1825028.5 + 734564);
    });
    test('testCopticRataDieGetJulianDay2', () {
      final CopticRataDie crd = CopticRataDie(unixtime: 0);
      expect(crd.getJulianDay(), 2440587.5);
    });
    test('testCopticRataDieGetJulianDay3', () {
      final CopticRataDie crd = CopticRataDie(rataDie: 0);
      expect(crd.getJulianDay(), 1825028.5);
    });
  });

  group('CopticDate getTime (from RataDie tests)', () {
    test('testCopticRataDieGetTime1', () {
      final CopticDate cd = CopticDate(unixtime: 0);
      expect(cd.getTime(), 0);
    });
    test('testCopticRataDieGetTime2', () {
      final CopticDate cd = CopticDate(julianDay: 2440587.5);
      expect(cd.getTime(), 0);
    });
    test('testCopticRataDieGetTimeTooSmall', () {
      final CopticDate cd = CopticDate(julianDay: 2440586.5);
      expect(cd.getTime(), -1);
    });
    test('testCopticRataDieGetTimeTooBig', () {
      final CopticDate cd = CopticDate(julianDay: 2465443.634803241);
      expect(cd.getTime(), -1);
    });
  });

  group('CopticDate getTimeExtended (from RataDie tests)', () {
    test('testCopticRataDieGetTimeExtended1', () {
      final CopticDate cd = CopticDate(unixtime: 0);
      expect(cd.getTimeExtended(), 0);
    });
    test('testCopticRataDieGetTimeExtended2', () {
      final CopticDate cd = CopticDate(julianDay: 2440587.5);
      expect(cd.getTimeExtended(), 0);
    });
    test('testCopticRataDieGetTimeExtendedTooSmallForRegularGetTime', () {
      final CopticDate cd = CopticDate(julianDay: 2440586.5);
      expect(cd.getTimeExtended(), -86400000);
    });
    test('testCopticRataDieGetTimeExtendedTooBigForRegularGetTime', () {
      final CopticDate cd = CopticDate(julianDay: 2465443.634803241);
      expect(cd.getTimeExtended(), 2147570047000);
    });
  });

  group('CopticDate constructor from JD', () {
    test('testCopticDateConstructorFromJD', () {
      final CopticDate cd = CopticDate(julianDay: 1825395.5);
      expect(cd.getYears(), 2);
      expect(cd.getMonths(), 1);
      expect(cd.getDays(), 2);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
  });

  group('CopticDate constructor from unixtime', () {
    test('testCopticDateConstructorUnixTime', () {
      final CopticDate cd = CopticDate(unixtime: 0);
      expect(cd.getYears(), 1686);
      expect(cd.getMonths(), 4);
      expect(cd.getDays(), 23);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
  });

  group('CopticDate after leap year', () {
    test('testCopticDateAfterLeapYear', () {
      final CopticDate cd = CopticDate(julianDay: 1826125.5);
      expect(cd.getYears(), 4);
      expect(cd.getMonths(), 1);
      expect(cd.getDays(), 1);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
  });

  group('CopticDate from RD month/year transitions', () {
    test('testCopticDateFirstMonthEndRightBeforeDateChange', () {
      final CopticDate cd = CopticDate(rd: 632263.9583333333);
      expect(cd.getYears(), 1732);
      expect(cd.getMonths(), 1);
      expect(cd.getDays(), 15);
      expect(cd.getHours(), 23);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateSecondMonthStartNoonAfterDateChange', () {
      final CopticDate cd = CopticDate(rd: 632265.2083333333);
      expect(cd.getYears(), 1732);
      expect(cd.getMonths(), 1);
      expect(cd.getDays(), 17);
      expect(cd.getHours(), 5);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateLastMonthLeapYear', () {
      final CopticDate cd = CopticDate(rd: 632245);
      expect(cd.getYears(), 1731);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 3);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateFirstMonthAfterLeapYear', () {
      final CopticDate cd = CopticDate(rd: 632246);
      expect(cd.getYears(), 1731);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 4);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateThirdMonthEnd', () {
      final CopticDate cd = CopticDate(rd: 632335);
      expect(cd.getYears(), 1732);
      expect(cd.getMonths(), 3);
      expect(cd.getDays(), 27);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateFourthMonthStart', () {
      final CopticDate cd = CopticDate(rd: 632336);
      expect(cd.getYears(), 1732);
      expect(cd.getMonths(), 3);
      expect(cd.getDays(), 28);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateLastMonthEndNonLeapYear', () {
      final CopticDate cd = CopticDate(rd: 632610);
      expect(cd.getYears(), 1732);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 2);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateFirstMonthStartNonLeapYear', () {
      final CopticDate cd = CopticDate(rd: 632611);
      expect(cd.getYears(), 1732);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 3);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
  });

  group('CopticDate from RD year boundaries', () {
    test('testCopticDateEndOfYearZeroRd', () {
      final CopticDate cd = CopticDate(rd: 0);
      expect(cd.getYears(), 0);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 5);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateBeginningOfYearOneRd', () {
      final CopticDate cd = CopticDate(rd: 1);
      expect(cd.getYears(), 1);
      expect(cd.getMonths(), 1);
      expect(cd.getDays(), 1);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateAlmostEndOfYearOneRd', () {
      final CopticDate cd = CopticDate(rd: 364);
      expect(cd.getYears(), 1);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 4);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateEndOfYearOneRd', () {
      final CopticDate cd = CopticDate(rd: 365);
      expect(cd.getYears(), 1);
      expect(cd.getMonths(), 13);
      expect(cd.getDays(), 5);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
    test('testCopticDateBeginningOfYear2Rd', () {
      final CopticDate cd = CopticDate(rd: 366);
      expect(cd.getYears(), 2);
      expect(cd.getMonths(), 1);
      expect(cd.getDays(), 1);
      expect(cd.getHours(), 0);
      expect(cd.getMinutes(), 0);
      expect(cd.getSeconds(), 0);
      expect(cd.getMilliseconds(), 0);
    });
  });

  group('CopticDate convert reference dates', () {
    for (int i = 0; i < testDatesCoptic.length; i++) {
      final List<num> td = testDatesCoptic[i];
      test('testCopticDateConvert$i', () {
        final CopticDate cd = CopticDate(julianDay: td[0] as double);
        expect(cd.getYears(), td[1]);
        expect(cd.getMonths(), td[2]);
        expect(cd.getDays(), td[3]);
        expect(cd.getHours(), td[4]);
        expect(cd.getMinutes(), td[5]);
        expect(cd.getSeconds(), td[6]);
        expect(cd.getMilliseconds(), td[7]);
      });
    }
  });

  group('CopticDate getDayOfWeek', () {
    for (int i = 0; i < testDatesCoptic.length; i++) {
      final List<num> td = testDatesCoptic[i];
      test('testCopticDateGetDayOfWeek$i', () {
        final CopticDate cd = CopticDate(julianDay: td[0] as double);
        expect(cd.getDayOfWeek(), td[8]);
      });
    }
  });

  group('CopticDate constructor from components', () {
    test('testCopticDateConstructorFull', () {
      final CopticDate cd = CopticDate(
          year: 1735, month: 9, day: 23, hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(cd.getYears(), 1735);
      expect(cd.getMonths(), 9);
      expect(cd.getDays(), 23);
      expect(cd.getHours(), 16);
      expect(cd.getMinutes(), 7);
      expect(cd.getSeconds(), 12);
      expect(cd.getMilliseconds(), 123);
    });
  });

  group('CopticDate getJulianDay round-trip', () {
    for (int i = 0; i < testDatesCoptic.length; i++) {
      final List<num> td = testDatesCoptic[i];
      test('testCopticDateGetJulianDay$i', () {
        final CopticDate cd = CopticDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int);
        expect(cd.getJulianDay(), td[0]);
        expect(cd.getDayOfWeek(), td[8]);
      });
    }
  });

  group('CopticDate getTime', () {
    test('testCopticDateTestGetTimeZero', () {
      final CopticDate cd = CopticDate(year: 1686, month: 4, day: 23, hour: 0);
      expect(cd.getTime(), 0);
    });
    test('testCopticDateTestGetTime', () {
      final CopticDate cd =
          CopticDate(year: 1686, month: 4, day: 23, hour: 3, minute: 30);
      expect(cd.getTime(), 12600000);
    });
    test('testCopticDateTestGetTimeTooEarly', () {
      final CopticDate cd = CopticDate(year: 1686, month: 4, day: 22, hour: 23);
      expect(cd.getTime(), -1);
    });
    test('testCopticDateTestGetTimeTooLate', () {
      final CopticDate cd = CopticDate(
          year: 1754, month: 5, day: 11, hour: 3, minute: 14, second: 8);
      expect(cd.getTime(), -1);
    });
    test('testCopticDateTestGetTimeExtendedNotTooLate', () {
      final CopticDate cd = CopticDate(
          year: 1754, month: 5, day: 11, hour: 3, minute: 14, second: 8);
      expect(cd.getTimeExtended(), 2147483648000);
    });
  });

  group('CopticDate round-trip construction', () {
    test('testCopticDateRoundTripConstruction', () {
      final CopticDate cd = CopticDate(year: 1738, month: 10, day: 20);
      final int u = cd.getTime();
      final CopticDate cd2 = CopticDate(unixtime: u);
      expect(cd2.getYears(), cd.getYears());
      expect(cd2.getMonths(), cd.getMonths());
      expect(cd2.getDays(), cd.getDays());
      expect(cd2.getHours(), cd.getHours());
      expect(cd2.getMinutes(), cd.getMinutes());
      expect(cd2.getSeconds(), cd.getSeconds());
    });
  });

  group('CopticDate getTimeZone', () {
    test('testCopticDateGetTimeZone', () {
      final CopticDate cd = CopticDate(
          year: 1735, month: 9, day: 23, hour: 16, minute: 7, second: 12,
          timezone: 'America/Los_Angeles');
      expect(cd.timezone, 'America/Los_Angeles');
    });
    test('testCopticDateGetTimeZoneDefault', () {
      final CopticDate cd = CopticDate(year: 1735, month: 9, day: 23);
      expect(cd.timezone, 'local');
    });
    test('testCopticDateInitWithUnixTimeRightTimeZone', () {
      final CopticDate cd = CopticDate(unixtime: 0);
      expect(cd.timezone, 'local');
    });
    test('testCopticDateInitWithJDRightTimeZone', () {
      final CopticDate cd = CopticDate(julianDay: 2440587.5);
      expect(cd.timezone, 'local');
    });
    test('testCopticDateInitWithRDRightTimeZone', () {
      final CopticDate cd = CopticDate(rd: 615559);
      expect(cd.timezone, 'local');
    });
  });

  group('CopticDate getCalendar', () {
    test('testCopticDateGetCalendar', () {
      final CopticDate cd = CopticDate(year: 1735, month: 1, day: 1);
      expect(cd.getCalendar(), 'coptic');
    });
  });
}
