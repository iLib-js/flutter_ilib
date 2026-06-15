import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDatesEthiopic = <List<num>>[
  <num>[1507231.5, -594, 12, 5, 18, 0, 0, 0, 6],
  <num>[1660037.5, -175, 4, 11, 18, 0, 0, 0, 2],
  <num>[1746893.5, 63, 1, 28, 18, 0, 0, 0, 2],
  <num>[1770641.5, 128, 2, 4, 18, 0, 0, 0, 6],
  <num>[1892731.5, 462, 5, 11, 18, 0, 0, 0, 2],
  <num>[1931579.5, 568, 9, 22, 18, 0, 0, 0, 0],
  <num>[1974851.5, 687, 3, 10, 18, 0, 0, 0, 5],
  <num>[2091164.5, 1005, 8, 23, 18, 0, 0, 0, 6],
  <num>[2121509.5, 1088, 9, 22, 18, 0, 0, 0, 6],
  <num>[2155779.5, 1182, 7, 19, 18, 0, 0, 0, 4],
  <num>[2174029.5, 1232, 7, 6, 18, 0, 0, 0, 5],
  <num>[2191584.5, 1280, 7, 29, 18, 0, 0, 0, 4],
  <num>[2195261.5, 1290, 8, 24, 18, 0, 0, 0, 6],
  <num>[2229274.5, 1383, 10, 9, 18, 0, 0, 0, 6],
  <num>[2245580.5, 1428, 5, 28, 18, 0, 0, 0, 2],
  <num>[2266100.5, 1484, 8, 4, 18, 0, 0, 0, 5],
  <num>[2288542.5, 1546, 1, 11, 18, 0, 0, 0, 5],
  <num>[2290901.5, 1552, 6, 28, 18, 0, 0, 0, 5],
  <num>[2323140.5, 1640, 10, 5, 18, 0, 0, 0, 2],
  <num>[2334848.5, 1672, 10, 25, 18, 0, 0, 0, 6],
  <num>[2348020.5, 1708, 11, 18, 18, 0, 0, 0, 4],
  <num>[2366978.5, 1760, 10, 13, 18, 0, 0, 0, 6],
  <num>[2385648.5, 1811, 11, 26, 18, 0, 0, 0, 0],
  <num>[2392825.5, 1831, 7, 18, 18, 0, 0, 0, 2],
  <num>[2416223.5, 1895, 8, 10, 18, 0, 0, 0, 6],
  <num>[2425848.5, 1921, 12, 18, 18, 0, 0, 0, 6],
  <num>[2430266.5, 1934, 1, 18, 18, 0, 0, 0, 0],
  <num>[2430833.5, 1935, 8, 10, 18, 0, 0, 0, 0],
  <num>[2431004.5, 1936, 1, 25, 18, 0, 0, 0, 3],
  <num>[2448698.5, 1984, 7, 7, 18, 0, 0, 0, 1],
  <num>[2450138.5, 1988, 6, 16, 18, 0, 0, 0, 6],
  <num>[2465737.5, 2031, 2, 30, 18, 0, 0, 0, 2],
  <num>[2486076.5, 2086, 11, 10, 18, 0, 0, 0, 6],
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('am-ET');
    await ILibLoader.instance.loadILibLocaleData('de-DE');
    await ILibLoader.instance.loadILibLocaleData('ja-JP');
  });

  group('EthiopicRataDie constructor', () {
    test('testEthiopicRataDieConstructor', () {
      final EthiopicRataDie erd = EthiopicRataDie();
      expect(erd.getRataDie(), isNotNull);
    });
    test('testEthiopicRataDieConstructorComponents', () {
      final EthiopicRataDie erd =
          EthiopicRataDie(year: 1, month: 1, day: 1, hour: 0, minute: 0, second: 0, millisecond: 0);
      expect(erd.getRataDie(), 1);
    });
    test('testEthiopicRataDieConstructorComponentsBig', () {
      final EthiopicRataDie erd = EthiopicRataDie(
          year: 2007, month: 2, day: 19, hour: 12, minute: 30, second: 12, millisecond: 0);
      expect(erd.getRataDie(), 732740.5209722222);
    });
    test('testEthiopicRataDieConstructorRD', () {
      final EthiopicRataDie erd = EthiopicRataDie(rataDie: 732323.2342345);
      expect(erd.getRataDie(), 732323.2342345);
    });
    test('testEthiopicRataDieConstructorUnixtime', () {
      final EthiopicRataDie erd = EthiopicRataDie(unixtime: 0);
      expect(erd.getRataDie(), 716367.75);
    });
    test('testEthiopicRataDieConstructorJulianDay', () {
      final EthiopicRataDie erd = EthiopicRataDie(julianDay: 1724219.75 + 734564);
      expect(erd.getRataDie(), 734564);
    });
  });

  group('EthiopicRataDie getJulianDay', () {
    test('testEthiopicRataDieGetJulianDay1', () {
      final EthiopicRataDie erd = EthiopicRataDie(julianDay: 1724219.75 + 734564);
      expect(erd.getJulianDay(), 1724219.75 + 734564);
    });
    test('testEthiopicRataDieGetJulianDay2', () {
      final EthiopicRataDie erd = EthiopicRataDie(unixtime: 0);
      expect(erd.getJulianDay(), 2440587.5);
    });
    test('testEthiopicRataDieGetJulianDay3', () {
      final EthiopicRataDie erd = EthiopicRataDie(rataDie: 0);
      expect(erd.getJulianDay(), 1724219.75);
    });
  });

  group('EthiopicDate getTime (from RataDie tests)', () {
    test('testEthiopicRataDieGetTime1', () {
      final EthiopicDate ed = EthiopicDate(unixtime: 0);
      expect(ed.getTime(), 0);
    });
    test('testEthiopicRataDieGetTime2', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2440587.5);
      expect(ed.getTime(), 0);
    });
    test('testEthiopicRataDieGetTimeTooSmall', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2440586.5);
      expect(ed.getTime(), -1);
    });
    test('testEthiopicRataDieGetTimeTooBig', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2465443.634803241);
      expect(ed.getTime(), -1);
    });
  });

  group('EthiopicDate getTimeExtended (from RataDie tests)', () {
    test('testEthiopicRataDieGetTimeExtended1', () {
      final EthiopicDate ed = EthiopicDate(unixtime: 0);
      expect(ed.getTimeExtended(), 0);
    });
    test('testEthiopicRataDieGetTimeExtended2', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2440587.5);
      expect(ed.getTimeExtended(), 0);
    });
    test('testEthiopicRataDieGetTimeExtendedTooSmallForRegularGetTime', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2440586.5);
      expect(ed.getTimeExtended(), -86400000);
    });
    test('testEthiopicRataDieGetTimeExtendedTooBigForRegularGetTime', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2465443.634803241);
      expect(ed.getTimeExtended(), 2147570047000);
    });
  });

  group('EthiopicDate constructor', () {
    test('testEthiopicDateConstructor', () {
      final EthiopicDate ed = EthiopicDate();
      expect(ed.getYears(), isNotNull);
    });
  });

  group('EthiopicDate constructor from JD', () {
    test('testEthiopicDateConstructorFromJD', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 1724586.75, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 2);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
  });

  group('EthiopicDate constructor from unixtime', () {
    test('testEthiopicDateConstructorUnixTime', () {
      final EthiopicDate ed = EthiopicDate(unixtime: 0, timezone: 'Etc/UTC');
      expect(ed.getYears(), 1962);
      expect(ed.getMonths(), 4);
      expect(ed.getDays(), 22);
      expect(ed.getHours(), 18);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
  });

  group('EthiopicDate after leap year', () {
    test('testEthiopicDateAfterLeapYear', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 1725316.75, timezone: 'Etc/UTC');
      expect(ed.getYears(), 4);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
  });

  group('EthiopicDate from RD month/year transitions', () {
    test('testEthiopicDateFirstMonthEndRightBeforeDateChange', () {
      final EthiopicDate ed = EthiopicDate(rd: 733087.9583333333, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2008);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 30);
      expect(ed.getHours(), 23);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateSecondMonthStartNoonAfterDateChange', () {
      final EthiopicDate ed = EthiopicDate(rd: 733088.041666667, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2008);
      expect(ed.getMonths(), 2);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 1);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateLastMonthLeapYear', () {
      final EthiopicDate ed = EthiopicDate(rd: 733057, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2007);
      expect(ed.getMonths(), 13);
      expect(ed.getDays(), 6);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateFirstMonthAfterLeapYear', () {
      final EthiopicDate ed = EthiopicDate(rd: 733058, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2008);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateThirdMonthEnd', () {
      final EthiopicDate ed = EthiopicDate(rd: 733147, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2008);
      expect(ed.getMonths(), 3);
      expect(ed.getDays(), 30);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateFourthMonthStart', () {
      final EthiopicDate ed = EthiopicDate(rd: 733148, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2008);
      expect(ed.getMonths(), 4);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateLastMonthEndNonLeapYear', () {
      final EthiopicDate ed = EthiopicDate(rd: 733422, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2008);
      expect(ed.getMonths(), 13);
      expect(ed.getDays(), 5);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateFirstMonthStartNonLeapYear', () {
      final EthiopicDate ed = EthiopicDate(rd: 733423, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2009);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
  });

  group('EthiopicDate from RD year boundaries', () {
    test('testEthiopicDateEndOfYearZeroRd', () {
      final EthiopicDate ed = EthiopicDate(rd: 0, timezone: 'Etc/UTC');
      expect(ed.getYears(), 0);
      expect(ed.getMonths(), 13);
      expect(ed.getDays(), 5);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateBeginningOfYearOneRd', () {
      final EthiopicDate ed = EthiopicDate(rd: 1, timezone: 'Etc/UTC');
      expect(ed.getYears(), 1);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateAlmostEndOfYearOneRd', () {
      final EthiopicDate ed = EthiopicDate(rd: 364, timezone: 'Etc/UTC');
      expect(ed.getYears(), 1);
      expect(ed.getMonths(), 13);
      expect(ed.getDays(), 4);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateEndOfYearOneRd', () {
      final EthiopicDate ed = EthiopicDate(rd: 365, timezone: 'Etc/UTC');
      expect(ed.getYears(), 1);
      expect(ed.getMonths(), 13);
      expect(ed.getDays(), 5);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
    test('testEthiopicDateBeginningOfYear2Rd', () {
      final EthiopicDate ed = EthiopicDate(rd: 366, timezone: 'Etc/UTC');
      expect(ed.getYears(), 2);
      expect(ed.getMonths(), 1);
      expect(ed.getDays(), 1);
      expect(ed.getHours(), 0);
      expect(ed.getMinutes(), 0);
      expect(ed.getSeconds(), 0);
      expect(ed.getMilliseconds(), 0);
    });
  });

  group('EthiopicDate convert reference dates', () {
    for (int i = 0; i < testDatesEthiopic.length; i++) {
      final List<num> td = testDatesEthiopic[i];
      test('testEthiopicDateConvert$i', () {
        final EthiopicDate ed = EthiopicDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(ed.getYears(), td[1]);
        expect(ed.getMonths(), td[2]);
        expect(ed.getDays(), td[3]);
        expect(ed.getHours(), td[4]);
        expect(ed.getMinutes(), td[5]);
        expect(ed.getSeconds(), td[6]);
        expect(ed.getMilliseconds(), td[7]);
      });
    }
  });

  group('EthiopicDate getDayOfWeek', () {
    for (int i = 0; i < testDatesEthiopic.length; i++) {
      final List<num> td = testDatesEthiopic[i];
      test('testEthiopicDateGetDayOfWeek$i', () {
        final EthiopicDate ed = EthiopicDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(ed.getDayOfWeek(), td[8]);
      });
    }
  });

  group('EthiopicDate constructor from components', () {
    test('testEthiopicDateConstructorFull', () {
      final EthiopicDate ed = EthiopicDate(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(ed.getYears(), 2011);
      expect(ed.getMonths(), 9);
      expect(ed.getDays(), 23);
      expect(ed.getHours(), 16);
      expect(ed.getMinutes(), 7);
      expect(ed.getSeconds(), 12);
      expect(ed.getMilliseconds(), 123);
    });
  });

  group('EthiopicDate getJulianDay round-trip', () {
    for (int i = 0; i < testDatesEthiopic.length; i++) {
      final List<num> td = testDatesEthiopic[i];
      test('testEthiopicDateGetJulianDay$i', () {
        final EthiopicDate ed = EthiopicDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int,
            timezone: 'Etc/UTC');
        expect(ed.getJulianDay(), td[0]);
        expect(ed.getDayOfWeek(), td[8]);
      });
    }
  });

  group('EthiopicDate getTime', () {
    test('testEthiopicDateTestGetTimeZero', () {
      final EthiopicDate ed =
          EthiopicDate(year: 1962, month: 4, day: 22, hour: 18, timezone: 'Etc/UTC');
      expect(ed.getTime(), 0);
    });
    test('testEthiopicDateTestGetTime', () {
      final EthiopicDate ed =
          EthiopicDate(year: 1962, month: 4, day: 22, hour: 21, minute: 30, timezone: 'Etc/UTC');
      expect(ed.getTime(), 12600000);
    });
    test('testEthiopicDateTestGetTimeTooEarly', () {
      final EthiopicDate ed =
          EthiopicDate(year: 1962, month: 4, day: 22, hour: 16, timezone: 'Etc/UTC');
      expect(ed.getTime(), -1);
    });
    test('testEthiopicDateTestGetTimeTooLate', () {
      final EthiopicDate ed = EthiopicDate(
          year: 2030, month: 5, day: 10, hour: 21, minute: 14, second: 8, timezone: 'Etc/UTC');
      expect(ed.getTime(), -1);
    });
    test('testEthiopicDateTestGetTimeExtendedNotTooLate', () {
      final EthiopicDate ed = EthiopicDate(
          year: 2030, month: 5, day: 10, hour: 21, minute: 14, second: 8, timezone: 'Etc/UTC');
      expect(ed.getTimeExtended(), 2147483648000);
    });
  });

  group('EthiopicDate round-trip construction', () {
    test('testEthiopicDateRoundTripConstruction', () {
      final EthiopicDate ed =
          EthiopicDate(year: 2014, month: 10, day: 20, timezone: 'local');
      final int u = ed.getTime();
      final EthiopicDate ed2 = EthiopicDate(unixtime: u, timezone: 'local');
      expect(ed2.timezone, ed.timezone);
      expect(ed2.getYears(), ed.getYears());
      expect(ed2.getMonths(), ed.getMonths());
      expect(ed2.getDays(), ed.getDays());
      expect(ed2.getHours(), ed.getHours());
      expect(ed2.getMinutes(), ed.getMinutes());
      expect(ed2.getSeconds(), ed.getSeconds());
    });
    test('testEthiopicDateRoundTripConstruction2', () {
      final EthiopicDate ed =
          EthiopicDate(year: 2014, month: 10, day: 20, timezone: 'America/Los_Angeles');
      final int u = ed.getTime();
      final EthiopicDate ed2 = EthiopicDate(unixtime: u, timezone: 'America/Los_Angeles');
      expect(ed2.timezone, ed.timezone);
      expect(ed2.getYears(), ed.getYears());
      expect(ed2.getMonths(), ed.getMonths());
      expect(ed2.getDays(), ed.getDays());
      expect(ed2.getHours(), ed.getHours());
      expect(ed2.getMinutes(), ed.getMinutes());
      expect(ed2.getSeconds(), ed.getSeconds());
    });
  });

  group('EthiopicDate current time', () {
    test('testEthiopicDateCurrentTimeWithTimeZone', () {
      final EthiopicDate ed = EthiopicDate(timezone: 'America/Los_Angeles');
      final int now = DateTime.now().millisecondsSinceEpoch;
      expect((ed.getTime() - now).abs(), lessThan(50));
    });
  });

  group('EthiopicDate convert from julianday', () {
    test('testEthiopicDateConvertYears', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed =
            EthiopicDate(julianDay: testDatesEthiopic[i][0].toDouble(), timezone: 'Etc/UTC');
        expect(ed.getYears(), testDatesEthiopic[i][1], reason: 'jd=${testDatesEthiopic[i][0]}');
      }
    });
    test('testEthiopicDateConvertMonths', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed =
            EthiopicDate(julianDay: testDatesEthiopic[i][0].toDouble(), timezone: 'Etc/UTC');
        expect(ed.getMonths(), testDatesEthiopic[i][2], reason: 'jd=${testDatesEthiopic[i][0]}');
      }
    });
    test('testEthiopicDateConvertDays', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed =
            EthiopicDate(julianDay: testDatesEthiopic[i][0].toDouble(), timezone: 'Etc/UTC');
        expect(ed.getDays(), testDatesEthiopic[i][3], reason: 'jd=${testDatesEthiopic[i][0]}');
      }
    });
    test('testEthiopicDateConvertHours', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed =
            EthiopicDate(julianDay: testDatesEthiopic[i][0].toDouble(), timezone: 'Etc/UTC');
        expect(ed.getHours(), testDatesEthiopic[i][4], reason: 'jd=${testDatesEthiopic[i][0]}');
      }
    });
    test('testEthiopicDateConvertDayOfWeek', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed =
            EthiopicDate(julianDay: testDatesEthiopic[i][0].toDouble(), timezone: 'Etc/UTC');
        expect(ed.getDayOfWeek(), testDatesEthiopic[i][8], reason: 'jd=${testDatesEthiopic[i][0]}');
      }
    });
    test('testEthiopicDateConvertOther', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed =
            EthiopicDate(julianDay: testDatesEthiopic[i][0].toDouble(), timezone: 'Etc/UTC');
        expect(ed.getMinutes(), testDatesEthiopic[i][5],
            reason: 'jd=${testDatesEthiopic[i][0]} minutes');
        expect(ed.getSeconds(), testDatesEthiopic[i][6],
            reason: 'jd=${testDatesEthiopic[i][0]} seconds');
        expect(ed.getMilliseconds(), testDatesEthiopic[i][7],
            reason: 'jd=${testDatesEthiopic[i][0]} milliseconds');
      }
    });
    test('testEthiopicDateGetJulianDay', () {
      for (int i = 0; i < testDatesEthiopic.length; i++) {
        final EthiopicDate ed = EthiopicDate(
            year: testDatesEthiopic[i][1] as int,
            month: testDatesEthiopic[i][2] as int,
            day: testDatesEthiopic[i][3] as int,
            hour: testDatesEthiopic[i][4] as int,
            minute: testDatesEthiopic[i][5] as int,
            second: testDatesEthiopic[i][6] as int,
            millisecond: testDatesEthiopic[i][7] as int,
            timezone: 'Etc/UTC');
        expect(ed.getJulianDay(), testDatesEthiopic[i][0], reason: 'index=$i');
        expect(ed.getDayOfWeek(), testDatesEthiopic[i][8], reason: 'index=$i dayOfWeek');
      }
    });
  });

  group('EthiopicDate getTimeZone', () {
    test('testEthiopicDateGetTimeZone', () {
      final EthiopicDate ed =
          EthiopicDate(year: 2011, month: 3, day: 8, timezone: 'America/Los_Angeles');
      expect(ed.timezone, 'America/Los_Angeles');
    });
    test('testEthiopicDateGetTimeZoneDefault', () {
      final EthiopicDate ed = EthiopicDate(year: 2011, month: 3, day: 8);
      expect(ed.timezone, 'local');
    });
    test('testEthiopicDateInitWithUnixTimeRightTimeZone', () {
      final EthiopicDate ed = EthiopicDate(unixtime: 0);
      expect(ed.timezone, 'local');
    });
    test('testEthiopicDateInitWithJDRightTimeZone', () {
      final EthiopicDate ed = EthiopicDate(julianDay: 2440587.5);
      expect(ed.timezone, 'local');
    });
    test('testEthiopicDateInitWithRDRightTimeZone', () {
      final EthiopicDate ed = EthiopicDate(rd: 716367.75);
      expect(ed.timezone, 'local');
    });
  });

  group('EthiopicDate getTimeZone by locale', () {
    test('testEthiopicDateGetTimeZoneByLocaleDE', () {
      final EthiopicDate ed = EthiopicDate(year: 2011, month: 3, day: 8, locale: 'de-DE');
      expect(ed.timezone, 'Europe/Berlin');
    });
    test('testEthiopicDateGetTimeZoneByLocaleJP', () {
      final EthiopicDate ed = EthiopicDate(year: 2011, month: 3, day: 8, locale: 'ja-JP');
      expect(ed.timezone, 'Asia/Tokyo');
    });
    test('testEthiopicDateGetTimeZoneByLocaleBogus', () {
      final EthiopicDate ed = EthiopicDate(year: 2011, month: 3, day: 8, locale: 'zz-ZZ');
      expect(ed.timezone, 'Etc/UTC');
    });
  });

  group('EthiopicDate conversion via DateFmt', () {
    test('testEthiopicDateConversion', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 1,
          minute: 0,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), '13 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion_weekday', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmwy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 1,
          minute: 0,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), 'ሐሙስ፣ 13 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion2', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 14,
          minute: 30,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), '14 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion2_weekday', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmwy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 14,
          minute: 30,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), 'ዓርብ፣ 14 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion3', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 3,
          minute: 43,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), '13 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion3_weekday', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmwy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 3,
          minute: 43,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), 'ሐሙስ፣ 13 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion4', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 19,
          minute: 0,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), '14 ነሐሴ 2013');
    });
    test('testEthiopicDateConversion4_weekday', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'am-ET', date: 'dmwy', length: 'full', timezone: 'Africa/Addis_Ababa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2021,
          month: 8,
          day: 20,
          hour: 19,
          minute: 0,
          type: 'gregorian',
          timezone: 'Africa/Addis_Ababa');
      expect(fmt.format(dateOptions), 'ዓርብ፣ 14 ነሐሴ 2013');
    });
  });

  group('EthiopicDate constructor copy', () {
    test('testEthiopicDateConstructorCopy', () {
      final EthiopicDate ed = EthiopicDate(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(ed.getYears(), 2011);
      expect(ed.getMonths(), 9);
      expect(ed.getDays(), 23);
      expect(ed.getHours(), 16);
      expect(ed.getMinutes(), 7);
      expect(ed.getSeconds(), 12);
      expect(ed.getMilliseconds(), 123);
    });
  });
}
