import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  <num>[1507231.5, -587, 7, 30, 0, 0, 0, 0, 0],
  <num>[1660037.5, -169, 12, 8, 0, 0, 0, 0, 3],
  <num>[1746893.5, 70, 9, 26, 0, 0, 0, 0, 3],
  <num>[1770641.5, 135, 10, 3, 0, 0, 0, 0, 0],
  <num>[1892731.5, 470, 1, 7, 0, 0, 0, 0, 3],
  <num>[1931579.5, 576, 5, 18, 0, 0, 0, 0, 1],
  <num>[1974851.5, 694, 11, 7, 0, 0, 0, 0, 6],
  <num>[2091164.5, 1013, 4, 19, 0, 0, 0, 0, 0],
  <num>[2121509.5, 1096, 5, 18, 0, 0, 0, 0, 0],
  <num>[2155779.5, 1190, 3, 16, 0, 0, 0, 0, 5],
  <num>[2174029.5, 1240, 3, 3, 0, 0, 0, 0, 6],
  <num>[2191584.5, 1288, 3, 26, 0, 0, 0, 0, 5],
  <num>[2195261.5, 1298, 4, 20, 0, 0, 0, 0, 0],
  <num>[2229274.5, 1391, 6, 4, 0, 0, 0, 0, 0],
  <num>[2245580.5, 1436, 1, 25, 0, 0, 0, 0, 3],
  <num>[2266100.5, 1492, 3, 31, 0, 0, 0, 0, 6],
  <num>[2288542.5, 1553, 9, 9, 0, 0, 0, 0, 6],
  <num>[2290901.5, 1560, 2, 24, 0, 0, 0, 0, 6],
  <num>[2323140.5, 1648, 5, 31, 0, 0, 0, 0, 3],
  <num>[2334848.5, 1680, 6, 20, 0, 0, 0, 0, 0],
  <num>[2348020.5, 1716, 7, 13, 0, 0, 0, 0, 5],
  <num>[2366978.5, 1768, 6, 8, 0, 0, 0, 0, 0],
  <num>[2385648.5, 1819, 7, 21, 0, 0, 0, 0, 1],
  <num>[2392825.5, 1839, 3, 15, 0, 0, 0, 0, 3],
  <num>[2416223.5, 1903, 4, 6, 0, 0, 0, 0, 0],
  <num>[2425848.5, 1929, 8, 12, 0, 0, 0, 0, 0],
  <num>[2430266.5, 1941, 9, 16, 0, 0, 0, 0, 1],
  <num>[2430833.5, 1943, 4, 6, 0, 0, 0, 0, 1],
  <num>[2431004.5, 1943, 9, 24, 0, 0, 0, 0, 4],
  <num>[2448698.5, 1992, 3, 4, 0, 0, 0, 0, 2],
  <num>[2450138.5, 1996, 2, 12, 0, 0, 0, 0, 0],
  <num>[2465737.5, 2038, 10, 28, 0, 0, 0, 0, 3],
  <num>[2486076.5, 2094, 7, 5, 0, 0, 0, 0, 0],
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('JulianDate constructor', () {
    test('testJulDateConstructor', () {
      final JulianDate jul = JulianDate();
      expect(jul.getYears(), isNotNull);
    });
  });

  group('JulianDate from JD constructs correct date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} gives year ${td[1]}, month ${td[2]}, day ${td[3]}', () {
        final JulianDate d = JulianDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
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

  group('JulianDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final JulianDate d = JulianDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('JulianDate constructor', () {
    test('testJulDateConstructorFromJD', () {
      final JulianDate jul = JulianDate(julianDay: 1721790.75, timezone: 'Etc/UTC');
      expect(jul.getYears(), 2);
      expect(jul.getMonths(), 1);
      expect(jul.getDays(), 3);
      expect(jul.getHours(), 6);
      expect(jul.getMinutes(), 0);
      expect(jul.getSeconds(), 0);
      expect(jul.getMilliseconds(), 0);
    });
    test('testJulDateConstructorUnixTime', () {
      final JulianDate jul = JulianDate(unixtime: 61000, timezone: 'Etc/UTC');
      expect(jul.getYears(), 1969);
      expect(jul.getMonths(), 12);
      expect(jul.getDays(), 19);
      expect(jul.getHours(), 0);
      expect(jul.getMinutes(), 1);
      expect(jul.getSeconds(), 1);
      expect(jul.getMilliseconds(), 0);
    });
    test('testJulDateConstructorFull', () {
      final JulianDate jul = JulianDate(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(jul.getYears(), 2011);
      expect(jul.getMonths(), 9);
      expect(jul.getDays(), 23);
      expect(jul.getHours(), 16);
      expect(jul.getMinutes(), 7);
      expect(jul.getSeconds(), 12);
      expect(jul.getMilliseconds(), 123);
    });
    test('testJulDateAfterLeapYear', () {
      final JulianDate jul = JulianDate(julianDay: 1723071.9, timezone: 'Etc/UTC');
      expect(jul.getYears(), 5);
      expect(jul.getMonths(), 7);
      expect(jul.getDays(), 7);
      expect(jul.getHours(), 9);
      expect(jul.getMinutes(), 36);
      expect(jul.getSeconds(), 0);
      expect(jul.getMilliseconds(), 0);
    });
    test('testJulDateAfterCentury', () {
      final JulianDate jul = JulianDate(julianDay: 1758231.8, timezone: 'Etc/UTC');
      expect(jul.getYears(), 101);
      expect(jul.getMonths(), 10);
      expect(jul.getDays(), 11);
      expect(jul.getHours(), 7);
      expect(jul.getMinutes(), 12);
      expect(jul.getSeconds(), 0);
      expect(jul.getMilliseconds(), 0);
    });
    test('testJulDateAfterQuadCentury', () {
      final JulianDate jul = JulianDate(julianDay: 1867706.833333333333, timezone: 'Etc/UTC');
      expect(jul.getYears(), 401);
      expect(jul.getMonths(), 7);
      expect(jul.getDays(), 3);
      expect(jul.getHours(), 8);
      expect(jul.getMinutes(), 0);
      expect(jul.getSeconds(), 0);
      expect(jul.getMilliseconds(), 0);
    });
  });

  group('JulianDate date boundaries from RD', () {
    test('testJulDateJan31Midnight', () {
      final JulianDate d = JulianDate(rd: 734548, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 31);
      expect(d.getHours(), 0);
    });
    test('testJulDateJan31Noon', () {
      final JulianDate d = JulianDate(rd: 734548.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 31);
      expect(d.getHours(), 12);
    });
    test('testJulDateFeb1', () {
      final JulianDate d = JulianDate(rd: 734549.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 1);
      expect(d.getHours(), 12);
    });
    test('testJulDateFeb28LeapYear', () {
      final JulianDate d = JulianDate(rd: 734576.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 28);
    });
    test('testJulDateFeb29LeapYear', () {
      final JulianDate d = JulianDate(rd: 734577.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 29);
    });
    test('testJulDateMar1LeapYear', () {
      final JulianDate d = JulianDate(rd: 734578.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 3);
      expect(d.getDays(), 1);
    });
    test('testJulDateMar31LeapYear', () {
      final JulianDate d = JulianDate(rd: 734608.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 3);
      expect(d.getDays(), 31);
    });
    test('testJulDateApr1LeapYear', () {
      final JulianDate d = JulianDate(rd: 734609.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 4);
      expect(d.getDays(), 1);
    });
    test('testJulDateDec31LeapYear', () {
      final JulianDate d = JulianDate(rd: 734883.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2012);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 31);
    });
    test('testJulDateJan1NonLeapYear', () {
      final JulianDate d = JulianDate(rd: 734884.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2013);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 1);
    });
    test('testJulDateFeb28NonLeapYear', () {
      final JulianDate d = JulianDate(rd: 734942.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2013);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 28);
    });
    test('testJulDateMar1NonLeapYear', () {
      final JulianDate d = JulianDate(rd: 734943.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2013);
      expect(d.getMonths(), 3);
      expect(d.getDays(), 1);
    });
    test('testJulDateMar31NonLeapYear', () {
      final JulianDate d = JulianDate(rd: 734973.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2013);
      expect(d.getMonths(), 3);
      expect(d.getDays(), 31);
    });
    test('testJulDateApr1NonLeapYear', () {
      final JulianDate d = JulianDate(rd: 734974.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2013);
      expect(d.getMonths(), 4);
      expect(d.getDays(), 1);
    });
    test('testJulDateEndOfYearMinus1Rd', () {
      final JulianDate d = JulianDate(rd: 0, timezone: 'Etc/UTC');
      expect(d.getYears(), -1);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 31);
    });
    test('testJulDateBeginningOfYearRd', () {
      final JulianDate d = JulianDate(rd: 1, timezone: 'Etc/UTC');
      expect(d.getYears(), 1);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 1);
    });
    test('testJulDateAlmostEndOfYearRd', () {
      final JulianDate d = JulianDate(rd: 364, timezone: 'Etc/UTC');
      expect(d.getYears(), 1);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 30);
    });
    test('testJulDateEndOfYearRd', () {
      final JulianDate d = JulianDate(rd: 365, timezone: 'Etc/UTC');
      expect(d.getYears(), 1);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 31);
    });
    test('testJulDateBeginningOfYear2Rd', () {
      final JulianDate d = JulianDate(rd: 366, timezone: 'Etc/UTC');
      expect(d.getYears(), 2);
      expect(d.getMonths(), 1);
      expect(d.getDays(), 1);
    });
  });

  group('JulianDate convert', () {
    test('testJulDateConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final JulianDate jul = JulianDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(jul.getYears(), td[1] as int);
        expect(jul.getMonths(), td[2] as int);
        expect(jul.getDays(), td[3] as int);
        expect(jul.getDayOfWeek(), td[8] as int);
      }
    });
  });

  group('JulianDate getJulianDay', () {
    test('testJulDateGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final JulianDate jul = JulianDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int,
            timezone: 'Etc/UTC');
        expect(jul.getJulianDay(), td[0]);
        expect(jul.getDayOfWeek(), td[8]);
      }
    });
  });

  group('JulianDate getTime', () {
    test('testJulDateTestGetTimeZero', () {
      final JulianDate jul = JulianDate(year: 1969, month: 12, day: 19, timezone: 'Etc/UTC');
      expect(jul.getTime(), 0);
    });
    test('testJulDateTestGetTime', () {
      final JulianDate jul =
          JulianDate(year: 1969, month: 12, day: 21, hour: 8, minute: 30, timezone: 'Etc/UTC');
      expect(jul.getTime(), 203400000);
    });
    test('testJulDateTestGetTimeTooEarly', () {
      final JulianDate jul = JulianDate(year: 1960, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(jul.getTime(), -1);
    });
    test('testJulDateTestGetTimeTooLate', () {
      final JulianDate jul = JulianDate(year: 2040, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(jul.getTime(), -1);
    });
  });

  group('JulianDate getTimeZone', () {
    test('testJulDateGetTimeZone', () {
      final JulianDate jul =
          JulianDate(year: 2011, month: 3, day: 8, timezone: 'America/Los_Angeles');
      expect(jul.getTimeZone(), 'America/Los_Angeles');
    });
    test('testJulDateGetTimeZoneDefault', () {
      final JulianDate jul = JulianDate(year: 2011, month: 3, day: 8);
      expect(jul.getTimeZone(), 'local');
    });
    test('testJulDateInitWithUnixTimeRightTimeZone', () {
      final JulianDate jul = JulianDate(unixtime: 0);
      expect(jul.getTimeZone(), 'local');
    });
    test('testJulDateInitWithJDRightTimeZone', () {
      final JulianDate jul = JulianDate(julianDay: 0);
      expect(jul.getTimeZone(), 'local');
    });
    test('testJulDateInitWithRDRightTimeZone', () {
      final JulianDate jul = JulianDate(rd: 0);
      expect(jul.getTimeZone(), 'local');
    });
  });

  group('JulianDate round-trip construction', () {
    test('testJulianDateRoundTripConstruction', () {
      final JulianDate jd = JulianDate(year: 2014, month: 10, day: 20, timezone: 'local');
      final int u = jd.getTime();
      final JulianDate jd2 = JulianDate(unixtime: u, timezone: 'local');
      expect(jd2.getTimeZone(), jd.getTimeZone());
      expect(jd2.getYears(), jd.getYears());
      expect(jd2.getMonths(), jd.getMonths());
      expect(jd2.getDays(), jd.getDays());
      expect(jd2.getHours(), jd.getHours());
      expect(jd2.getMinutes(), jd.getMinutes());
      expect(jd2.getSeconds(), jd.getSeconds());
    });
    test('testJulianDateRoundTripConstruction2', () {
      final JulianDate jul =
          JulianDate(year: 2014, month: 10, day: 20, timezone: 'America/Los_Angeles');
      final int u = jul.getTime();
      final JulianDate jul2 = JulianDate(unixtime: u, timezone: 'America/Los_Angeles');
      expect(jul2.getTimeZone(), jul.getTimeZone());
      expect(jul2.getYears(), jul.getYears());
      expect(jul2.getMonths(), jul.getMonths());
      expect(jul2.getDays(), jul.getDays());
      expect(jul2.getHours(), jul.getHours());
      expect(jul2.getMinutes(), jul.getMinutes());
      expect(jul2.getSeconds(), jul.getSeconds());
    });
  });

  group('JulianDate current time', () {
    test('testJulDateCurrentTimeWithTimeZone', () {
      final JulianDate jul = JulianDate(timezone: 'America/Los_Angeles');
      final int now = DateTime.now().millisecondsSinceEpoch;
      expect((jul.getTime() - now).abs(), lessThan(50));
    });
  });

  group('JulianDate getTimeZone by locale', () {
    setUpAll(() async {
      await ILibLoader.instance.loadILibLocaleData('de-DE');
      await ILibLoader.instance.loadILibLocaleData('ja-JP');
    });

    test('testJulDateGetTimeZoneByLocaleDE', () {
      final JulianDate jul = JulianDate(year: 2011, month: 3, day: 8, locale: 'de-DE');
      expect(jul.getTimeZone(), 'Europe/Berlin');
    });
    test('testJulDateGetTimeZoneByLocaleJP', () {
      final JulianDate jul = JulianDate(year: 2011, month: 3, day: 8, locale: 'ja-JP');
      expect(jul.getTimeZone(), 'Asia/Tokyo');
    });
    test('testJulDateGetTimeZoneByLocaleBogus', () {
      final JulianDate jul = JulianDate(year: 2011, month: 3, day: 8, locale: 'zz-ZZ');
      expect(jul.getTimeZone(), 'Etc/UTC');
    });
  });

  group('JulianDate constructor copy', () {
    test('testJulDateConstructorCopy', () {
      final JulianDate jul = JulianDate(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(jul.getYears(), 2011);
      expect(jul.getMonths(), 9);
      expect(jul.getDays(), 23);
      expect(jul.getHours(), 16);
      expect(jul.getMinutes(), 7);
      expect(jul.getSeconds(), 12);
      expect(jul.getMilliseconds(), 123);
    });
  });
}
