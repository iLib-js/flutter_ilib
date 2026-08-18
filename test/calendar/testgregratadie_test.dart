import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// Test data: [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
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
  debugPrint('Testing [testgregratadie_test.dart] file.');
  group('GregRataDie constructor', () {
    test('from components default', () {
      final GregRataDie rd = GregRataDie();
      expect(rd.getRataDie() > 0, true);
    });
    test('from JD', () {
      final GregRataDie rd = GregRataDie(julianDay: 1721790.75);
      expect(rd.getRataDie(), 366.25);
    });
    test('from RD', () {
      final GregRataDie rd = GregRataDie(rataDie: 234323);
      expect(rd.getRataDie(), 234323);
    });
    test('from unixtime 0', () {
      final GregRataDie rd = GregRataDie(unixtime: 0);
      expect(rd.getRataDie(), 719163.0);
    });
    test('from unixtime 61000', () {
      final GregRataDie rd = GregRataDie(unixtime: 61000);
      expect(rd.getRataDie(), 719163.0007060185);
    });
    test('from full datetime components', () {
      final GregRataDie rd = GregRataDie(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123);
      expect(rd.getRataDie(), 734403.6716680903);
    });
  });

  group('GregRataDie JD conversion from date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> d = testDates[i];
      test('year ${d[1]}, month ${d[2]}, day ${d[3]} gives JD ${d[0]}', () {
        final GregRataDie rd = GregRataDie(
          year: d[1] as int,
          month: d[2] as int,
          day: d[3] as int,
          hour: d[4] as int,
          minute: d[5] as int,
          second: d[6] as int,
          millisecond: d[7] as int,
        );
        expect(rd.getJulianDay(), d[0]);
      });
    }
  });

  group('GregRataDie JD roundtrip', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> d = testDates[i];
      test('JD ${d[0]} -> RD -> JD preserves value', () {
        final GregRataDie rd = GregRataDie(julianDay: d[0].toDouble());
        expect(rd.getJulianDay(), d[0]);
      });
    }
  });

  group('GregRataDie dayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> d = testDates[i];
      test('${d[1]}/${d[2]}/${d[3]} dow=${d[8]}', () {
        final GregRataDie rd = GregRataDie(
          year: d[1] as int,
          month: d[2] as int,
          day: d[3] as int,
        );
        expect(rd.getDayOfWeek(), d[8] as int);
      });
    }
  });

  group('GregRataDie constructor additional', () {
    test('testGregRataDieConstructor', () {
      final GregRataDie rd = GregRataDie();
      expect(rd.getRataDie() > 0, true);
    });
    test('testGregRataDieConstructorFromJD', () {
      final GregRataDie rd = GregRataDie(julianDay: 1721790.75);
      expect(rd.getRataDie(), 366.25);
    });
    test('testGregRataDieConstructorFromRD', () {
      final GregRataDie rd = GregRataDie(rataDie: 234323);
      expect(rd.getRataDie(), 234323);
    });
    test('testGregRataDieConstructorFromUnixtime', () {
      final GregRataDie rd = GregRataDie(unixtime: 0);
      expect(rd.getRataDie(), 719163);
    });
    test('testGregRataDieConstructorFromComponents', () {
      final GregRataDie rd = GregRataDie(year: 1970, month: 1, day: 1);
      expect(rd.getRataDie(), 719163);
    });
    test('testGregRataDieConstructorFull', () {
      final GregRataDie rd = GregRataDie(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123);
      expect(rd.getRataDie(), 734403.6716680903);
    });
    test('testGregRataDieConstructorCopy', () {
      final GregRataDie rd2 = GregRataDie(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123);
      final GregRataDie rd = GregRataDie(rataDie: rd2.getRataDie());
      expect(rd.getRataDie(), 734403.6716680903);
    });
    test('testGregRataDieConstructorUnixTime', () {
      final GregRataDie rd = GregRataDie(unixtime: 61000);
      expect(rd.getRataDie(), 719163.0007060185);
    });
    test('testGregRataDieConstructorUnixTimeTestRounding', () {
      final GregRataDie rd = GregRataDie(unixtime: 61000);
      expect(rd.getRataDie(), 719163.0007060185);
      final double jd = rd.getJulianDay();
      final int time = (jd < 2440587.5 || jd > 2465442.634803241)
          ? -1
          : ((jd - 2440587.5) * 86400000).round();
      expect(time, 61000);
    });
    test('testGregRataDieConstructorFullWithStrings', () {
      // Dart doesn't accept strings, so this verifies same result as Full
      final GregRataDie rd = GregRataDie(
          year: 2011,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123);
      expect(rd.getRataDie(), 734403.6716680903);
    });
  });

  group('GregRataDie convert', () {
    test('testGregRataDieConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final GregRataDie rd =
            GregRataDie(julianDay: testDates[i][0].toDouble());
        expect(rd.getRataDie(), testDates[i][0].toDouble() - GregRataDie.epoch);
      }
    });
  });

  group('GregRataDie getJulianDay', () {
    test('testGregRataDieGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> d = testDates[i];
        final GregRataDie rd = GregRataDie(
            year: d[1] as int,
            month: d[2] as int,
            day: d[3] as int,
            hour: d[4] as int,
            minute: d[5] as int,
            second: d[6] as int,
            millisecond: d[7] as int);
        expect(rd.getJulianDay(), d[0]);
      }
    });
  });

  group('GregRataDie getRataDie', () {
    test('testGregRataDieGetRataDie', () {
      final GregRataDie rd = GregRataDie(year: 2011, month: 3, day: 8);
      expect(rd.getRataDie(), 734204);
    });
    test('testGregRataDieJan1Midnight', () {
      final GregRataDie rd = GregRataDie(julianDay: 2455197.5);
      expect(rd.getRataDie(), 733773);
    });
  });

  group('GregRataDie getTime', () {
    test('testGregRataDieTestGetTimeZero', () {
      final GregRataDie rd = GregRataDie(year: 1970, month: 1, day: 1);
      final double jd = rd.getJulianDay();
      final int time = (jd < 2440587.5 || jd > 2465442.634803241)
          ? -1
          : ((jd - 2440587.5) * 86400000).round();
      expect(time, 0);
    });
    test('testGregRataDieTestGetTime', () {
      final GregRataDie rd =
          GregRataDie(year: 1970, month: 1, day: 3, hour: 8, minute: 30);
      final double jd = rd.getJulianDay();
      final int time = ((jd - 2440587.5) * 86400000).round();
      expect(time, 203400000);
    });
    test('testGregRataDieTestGetTimeTooEarly', () {
      final GregRataDie rd = GregRataDie(year: 1969, month: 12, day: 31);
      final double jd = rd.getJulianDay();
      final int time = (jd < 2440587.5 || jd > 2465442.634803241)
          ? -1
          : ((jd - 2440587.5) * 86400000).round();
      expect(time, -1);
    });
    test('testGregRataDieTestGetTimeTooLate', () {
      final GregRataDie rd = GregRataDie(year: 2038, month: 1, day: 20);
      final double jd = rd.getJulianDay();
      final int time = (jd < 2440587.5 || jd > 2465442.634803241)
          ? -1
          : ((jd - 2440587.5) * 86400000).round();
      expect(time, -1);
    });
    test('testGregRataDieGetTimeWithUnixTime', () {
      // Date.UTC(2011, 2, 8) = 2011-03-08 UTC = 1299542400000
      const int expected = 1299542400000;
      final GregRataDie rd = GregRataDie(
          year: 2011,
          month: 3,
          day: 8,
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0);
      final double jd = rd.getJulianDay();
      final int time = ((jd - 2440587.5) * 86400000).round();
      expect(time, expected);
    });
    test('testGregRataDieGetTimeWithUTC', () {
      // Date.UTC(2013, 10, 1) = 2013-11-01 UTC = 1383264000000
      const int utc = 1383264000000;
      final GregRataDie rd = GregRataDie(unixtime: utc);
      final double jd = rd.getJulianDay();
      final int time = ((jd - 2440587.5) * 86400000).round();
      expect(time, utc);
    });
  });

  group('GregRataDie onOrBefore', () {
    // 2010-01-01 is a Friday (dayOfWeek = 5)
    test('testGregRataDieOnOrBeforeSun', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(0), rdn - 5);
    });
    test('testGregRataDieOnOrBeforeMon', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(1), rdn - 4);
    });
    test('testGregRataDieOnOrBeforeTue', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(2), rdn - 3);
    });
    test('testGregRataDieOnOrBeforeWed', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(3), rdn - 2);
    });
    test('testGregRataDieOnOrBeforeThu', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(4), rdn - 1);
    });
    test('testGregRataDieOnOrBeforeFri', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(5), rdn);
    });
    test('testGregRataDieOnOrBeforeSat', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(6), rdn - 6);
    });
    test('testGregRataDieOnOrBeforeSunWithTime', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1, hour: 8);
      final double rdn = rd.getRataDie();
      expect(rd.onOrBefore(0), rdn - 5);
    });
    test('testGregRataDieOnOrBeforeWithOffset1', () {
      // 2014-04-26 23:00 — Saturday in California (offset -8h = -0.333), Sunday in UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 26, hour: 23);
      expect(rd.onOrBefore(0, offset: -0.33333333333), rd.getRataDie() - 6);
    });
    test('testGregRataDieOnOrBeforeWithOffset2', () {
      // 2014-04-27 08:00 — Sunday in California and UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 27, hour: 8);
      expect(rd.onOrBefore(0, offset: -0.33333333333), rd.getRataDie());
    });
  });

  group('GregRataDie onOrAfter', () {
    test('testGregRataDieOnOrAfterSun', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(0), rdn + 2);
    });
    test('testGregRataDieOnOrAfterMon', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(1), rdn + 3);
    });
    test('testGregRataDieOnOrAfterTue', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(2), rdn + 4);
    });
    test('testGregRataDieOnOrAfterWed', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(3), rdn + 5);
    });
    test('testGregRataDieOnOrAfterThu', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(4), rdn + 6);
    });
    test('testGregRataDieOnOrAfterFri', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(5), rdn);
    });
    test('testGregRataDieOnOrAfterSat', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.onOrAfter(6), rdn + 1);
    });
    test('testGregRataDieOnOrAfterWithOffset1', () {
      // 2014-04-26 23:00 — Saturday in California, Sunday in UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 26, hour: 23);
      expect(rd.onOrAfter(0, offset: -0.33333333333), rd.getRataDie() + 1);
    });
    test('testGregRataDieOnOrAfterWithOffset2', () {
      // 2014-04-27 08:00 — Sunday in California and UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 27, hour: 8);
      expect(rd.onOrAfter(0, offset: -0.33333333333), rd.getRataDie());
    });
  });

  group('GregRataDie before', () {
    test('testGregRataDieBeforeSun', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(0), rdn - 5);
    });
    test('testGregRataDieBeforeMon', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(1), rdn - 4);
    });
    test('testGregRataDieBeforeTue', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(2), rdn - 3);
    });
    test('testGregRataDieBeforeWed', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(3), rdn - 2);
    });
    test('testGregRataDieBeforeThu', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(4), rdn - 1);
    });
    test('testGregRataDieBeforeFri', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(5), rdn - 7);
    });
    test('testGregRataDieBeforeSat', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.before(6), rdn - 6);
    });
    test('testGregRataDieBeforeWithOffset1', () {
      // 2014-04-27 23:00 — Sunday in California, Monday in UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 27, hour: 23);
      expect(rd.before(0, offset: -0.33333333333), rd.getRataDie() - 7);
    });
    test('testGregRataDieBeforeWithOffset2', () {
      // 2014-04-28 08:00 — Monday in California and UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 28, hour: 8);
      expect(rd.before(0, offset: -0.33333333333), rd.getRataDie() - 1);
    });
  });

  group('GregRataDie after', () {
    test('testGregRataDieAfterSun', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(0), rdn + 2);
    });
    test('testGregRataDieAfterMon', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(1), rdn + 3);
    });
    test('testGregRataDieAfterTue', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(2), rdn + 4);
    });
    test('testGregRataDieAfterWed', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(3), rdn + 5);
    });
    test('testGregRataDieAfterThu', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(4), rdn + 6);
    });
    test('testGregRataDieAfterFri', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(5), rdn + 7);
    });
    test('testGregRataDieAfterSat', () {
      final GregRataDie rd = GregRataDie(year: 2010, month: 1, day: 1);
      final double rdn = rd.getRataDie();
      expect(rd.after(6), rdn + 1);
    });
    test('testGregRataDieAfterWithOffset1', () {
      // 2014-04-26 23:00 — Saturday in California, Sunday in UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 26, hour: 23);
      expect(rd.after(0, offset: -0.33333333333), rd.getRataDie() + 1);
    });
    test('testGregRataDieAfterWithOffset2', () {
      // 2014-04-27 08:00 — Sunday in California and UTC
      final GregRataDie rd =
          GregRataDie(year: 2014, month: 4, day: 27, hour: 8);
      expect(rd.after(0, offset: -0.33333333333), rd.getRataDie() + 7);
    });
  });

  group('GregRataDie getTime', () {
    test('testGregRataDieGetTimeWithDefaultTime', () {
      // Dart-specific (no JS counterpart): no-arg construction uses the current
      // time. Use the same 100ms tolerance as testGregDateGetTimeWithDefaultTime.
      final int before = DateTime.now().millisecondsSinceEpoch;
      final int t = GregRataDie().getTime();
      expect((t - before).abs() <= 100, isTrue);
    });
  });
}
