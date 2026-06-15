import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  <num>[1507231.5, -1207, 5, 1, 0, 0, 0, 0, 0],
  <num>[1660037.5, -789, 9, 14, 0, 0, 0, 0, 3],
  <num>[1746893.5, -551, 7, 2, 0, 0, 0, 0, 3],
  <num>[1770641.5, -486, 7, 9, 0, 0, 0, 0, 0],
  <num>[1892731.5, -152, 10, 18, 0, 0, 0, 0, 3],
  <num>[1931579.5, -45, 2, 31, 0, 0, 0, 0, 1],
  <num>[1974851.5, 73, 8, 19, 0, 0, 0, 0, 6],
  <num>[2091164.5, 392, 2, 5, 0, 0, 0, 0, 0],
  <num>[2121509.5, 475, 3, 4, 0, 0, 0, 0, 0],
  <num>[2155779.5, 569, 1, 3, 0, 0, 0, 0, 5],
  <num>[2174029.5, 618, 12, 20, 0, 0, 0, 0, 6],
  <num>[2191584.5, 667, 1, 14, 0, 0, 0, 0, 5],
  <num>[2195261.5, 677, 2, 8, 0, 0, 0, 0, 0],
  <num>[2229274.5, 770, 3, 22, 0, 0, 0, 0, 0],
  <num>[2245580.5, 814, 11, 13, 0, 0, 0, 0, 3],
  <num>[2266100.5, 871, 1, 21, 0, 0, 0, 0, 6],
  <num>[2288542.5, 932, 6, 28, 0, 0, 0, 0, 6],
  <num>[2290901.5, 938, 12, 14, 0, 0, 0, 0, 6],
  <num>[2323140.5, 1027, 3, 21, 0, 0, 0, 0, 3],
  <num>[2334848.5, 1059, 4, 10, 0, 0, 0, 0, 0],
  <num>[2348020.5, 1095, 5, 2, 0, 0, 0, 0, 5],
  <num>[2366978.5, 1147, 3, 30, 0, 0, 0, 0, 0],
  <num>[2385648.5, 1198, 5, 10, 0, 0, 0, 0, 1],
  <num>[2392825.5, 1218, 1, 7, 0, 0, 0, 0, 3],
  <num>[2416223.5, 1282, 1, 29, 0, 0, 0, 0, 0],
  <num>[2425848.5, 1308, 6, 3, 0, 0, 0, 0, 0],
  <num>[2430266.5, 1320, 7, 7, 0, 0, 0, 0, 1],
  <num>[2430833.5, 1322, 1, 29, 0, 0, 0, 0, 1],
  <num>[2431004.5, 1322, 7, 14, 0, 0, 0, 0, 4],
  <num>[2448698.5, 1370, 12, 27, 0, 0, 0, 0, 2],
  <num>[2450138.5, 1374, 12, 6, 0, 0, 0, 0, 0],
  <num>[2465737.5, 1417, 8, 19, 0, 0, 0, 0, 3],
  <num>[2486076.5, 1473, 4, 28, 0, 0, 0, 0, 0],
];

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('PersianDate from JD constructs correct date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} gives year ${td[1]}, month ${td[2]}, day ${td[3]}', () {
        final PersianDate d = PersianDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
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

  group('PersianDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final PersianDate d = PersianDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('PersianDate convert', () {
    test('testPersDateAstroConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final PersianDate pd = PersianDate(julianDay: td[0] as double, timezone: 'Etc/UTC');
        expect(pd.getRataDie(), (td[0] as double) - 1948319.5);
        expect(pd.getYears(), td[1] as int);
        expect(pd.getMonths(), td[2] as int);
        expect(pd.getDays(), td[3] as int);
        expect(pd.getDayOfWeek(), td[8] as int);
      }
    });
  });

  group('PersianDate getJulianDay', () {
    test('testPersDateAstroGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final PersianDate pd = PersianDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int,
            timezone: 'Etc/UTC');
        expect(pd.getJulianDay(), td[0]);
        expect(pd.getDayOfWeek(), td[8]);
      }
    });
  });

  group('PersianDate constructor', () {
    test('testPersDateAstroConstructorFull', () {
      final PersianDate pd = PersianDate(
          year: 1392,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(pd.getYears(), 1392);
      expect(pd.getMonths(), 9);
      expect(pd.getDays(), 23);
      expect(pd.getHours(), 16);
      expect(pd.getMinutes(), 7);
      expect(pd.getSeconds(), 12);
      expect(pd.getMilliseconds(), 123);
    });
  });

  group('PersianDate getTime', () {
    test('testPersDateAstroTestGetTimeZero', () {
      final PersianDate pd = PersianDate(year: 1348, month: 10, day: 11, timezone: 'Etc/UTC');
      expect(pd.getTime(), 0);
    });
    test('testPersDateAstroTestGetTimeZeroJD', () {
      final PersianDate pd = PersianDate(julianDay: 2440587.5);
      expect(pd.getTime(), 0);
    });
    test('testPersDateAstroTestGetTime', () {
      final PersianDate pd =
          PersianDate(year: 1348, month: 10, day: 11, hour: 8, minute: 30, timezone: 'Etc/UTC');
      expect(pd.getTime(), 30600000);
    });
    test('testPersDateAstroTestGetTimeTooEarly', () {
      final PersianDate pd = PersianDate(year: 1348, month: 10, day: 10, timezone: 'Etc/UTC');
      expect(pd.getTime(), -1);
    });
    test('testPersDateAstroTestGetTimeTooLate', () {
      final PersianDate pd = PersianDate(year: 1416, month: 11, day: 1, timezone: 'Etc/UTC');
      expect(pd.getTime(), -1);
    });
  });

  group('PersianDate onOrBefore', () {
    // 1388/9/27 is a Friday (dayOfWeek = 5)
    test('testPersDateAstroOnOrBeforeSun', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      expect(pd.getDayOfWeek(), 5);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testPersDateAstroOnOrBeforeMon', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(1).getRataDie(), rd - 4);
    });
    test('testPersDateAstroOnOrBeforeTue', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(2).getRataDie(), rd - 3);
    });
    test('testPersDateAstroOnOrBeforeWed', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(3).getRataDie(), rd - 2);
    });
    test('testPersDateAstroOnOrBeforeThu', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(4).getRataDie(), rd - 1);
    });
    test('testPersDateAstroOnOrBeforeFri', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(5).getRataDie(), rd);
    });
    test('testPersDateAstroOnOrBeforeSat', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(6).getRataDie(), rd - 6);
    });
  });

  group('PersianDate onOrAfter', () {
    test('testPersDateAstroOnOrAfterSun', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(0).getRataDie(), rd + 2);
    });
    test('testPersDateAstroOnOrAfterMon', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(1).getRataDie(), rd + 3);
    });
    test('testPersDateAstroOnOrAfterTue', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(2).getRataDie(), rd + 4);
    });
    test('testPersDateAstroOnOrAfterWed', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(3).getRataDie(), rd + 5);
    });
    test('testPersDateAstroOnOrAfterThu', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(4).getRataDie(), rd + 6);
    });
    test('testPersDateAstroOnOrAfterFri', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(5).getRataDie(), rd);
    });
    test('testPersDateAstroOnOrAfterSat', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(6).getRataDie(), rd + 1);
    });
  });

  group('PersianDate before', () {
    test('testPersDateAstroBeforeSun', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(0).getRataDie(), rd - 5);
    });
    test('testPersDateAstroBeforeMon', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(1).getRataDie(), rd - 4);
    });
    test('testPersDateAstroBeforeTue', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(2).getRataDie(), rd - 3);
    });
    test('testPersDateAstroBeforeWed', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(3).getRataDie(), rd - 2);
    });
    test('testPersDateAstroBeforeThu', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(4).getRataDie(), rd - 1);
    });
    test('testPersDateAstroBeforeFri', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(5).getRataDie(), rd - 7);
    });
    test('testPersDateAstroBeforeSat', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.before(6).getRataDie(), rd - 6);
    });
  });

  group('PersianDate after', () {
    test('testPersDateAstroAfterSun', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(0).getRataDie(), rd + 2);
    });
    test('testPersDateAstroAfterMon', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(1).getRataDie(), rd + 3);
    });
    test('testPersDateAstroAfterTue', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(2).getRataDie(), rd + 4);
    });
    test('testPersDateAstroAfterWed', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(3).getRataDie(), rd + 5);
    });
    test('testPersDateAstroAfterThu', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(4).getRataDie(), rd + 6);
    });
    test('testPersDateAstroAfterFri', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(5).getRataDie(), rd + 7);
    });
    test('testPersDateAstroAfterSat', () {
      final PersianDate pd = PersianDate(year: 1388, month: 9, day: 27, timezone: 'Etc/UTC');
      final double rd = pd.getRataDie();
      expect(pd.after(6).getRataDie(), rd + 1);
    });
  });

  group('PersianDate getWeekOfYear', () {
    test('testPersDateAstroTestGetWeekOfYearThisYear', () {
      final PersianDate pd = PersianDate(year: 1388, month: 2, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 5);
    });
    test('testPersDateAstroTestGetWeekOfYearThisYear2', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 19, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 12);
    });
    test('testPersDateAstroTestGetWeekOfYearThisYear3', () {
      final PersianDate pd = PersianDate(year: 1388, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 52);
    });
    test('testPersDateAstroTestGetWeekOfYearThisYearWithTime', () {
      final PersianDate pd = PersianDate(
          year: 1388,
          month: 12,
          day: 29,
          hour: 16,
          minute: 13,
          second: 12,
          millisecond: 232,
          timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 52);
    });
    test('testPersDateAstroTestGetWeekOfYearPreviousYear', () {
      final PersianDate pd = PersianDate(year: 1388, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 53);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekLeap', () {
      final PersianDate pd = PersianDate(year: 1383, month: 12, day: 30, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekRegular1', () {
      final PersianDate pd = PersianDate(year: 1389, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekRegular2', () {
      final PersianDate pd = PersianDate(year: 1390, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekRegular3', () {
      final PersianDate pd = PersianDate(year: 1391, month: 12, day: 30, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekRegular4', () {
      final PersianDate pd = PersianDate(year: 1392, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 53);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekRegular5', () {
      final PersianDate pd = PersianDate(year: 1393, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 52);
    });
    test('testPersDateAstroTestGetWeekOfYearLastWeekRegular6', () {
      final PersianDate pd = PersianDate(year: 1394, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfYear(), 52);
    });
  });

  group('PersianDate getDayOfYear', () {
    test('testPersDateAstroGetDayOfYearFirstDay', () {
      final PersianDate pd = PersianDate(year: 1388, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(pd.getDayOfYear(), 1);
    });
    test('testPersDateAstroGetDayOfYearMidYear', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 17, timezone: 'Etc/UTC');
      expect(pd.getDayOfYear(), 79);
    });
    test('testPersDateAstroGetDayOfYearLastDay', () {
      final PersianDate pd = PersianDate(year: 1388, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getDayOfYear(), 365);
    });
    test('testPersDateAstroGetDayOfYearLastDayLeapYear', () {
      final PersianDate pd = PersianDate(year: 1387, month: 12, day: 30, timezone: 'Etc/UTC');
      expect(pd.getDayOfYear(), 366);
    });
  });

  group('PersianDate getWeekOfMonth', () {
    setUpAll(() async {
      await ILibLoader.instance.loadILibLocaleData('en-US');
      await ILibLoader.instance.loadILibLocaleData('de-DE');
      await ILibLoader.instance.loadILibLocaleData('fa-IR');
    });
    test('testPersDateAstroGetWeekOfMonth0', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 0);
    });
    test('testPersDateAstroGetWeekOfMonth1', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 4, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 1);
    });
    test('testPersDateAstroGetWeekOfMonth2', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 11, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 2);
    });
    test('testPersDateAstroGetWeekOfMonth3', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 20, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 3);
    });
    test('testPersDateAstroGetWeekOfMonth4', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 4);
    });
    test('testPersDateAstroGetWeekOfMonth5', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 31, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 5);
    });
    test('testPersDateAstroGetWeekOfMonth6', () {
      final PersianDate pd = PersianDate(year: 1388, month: 4, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 1);
    });
    test('testPersDateAstroGetWeekOfMonth7', () {
      final PersianDate pd = PersianDate(year: 1388, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 0);
    });
    test('testPersDateAstroGetWeekOfMonth8', () {
      final PersianDate pd = PersianDate(year: 1388, month: 6, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 1);
    });
    test('testPersDateAstroGetWeekOfMonth9', () {
      final PersianDate pd = PersianDate(year: 1388, month: 7, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 1);
    });
    test('testPersDateAstroGetWeekOfMonthIR0', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 0);
    });
    test('testPersDateAstroGetWeekOfMonthIR1', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 4, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 1);
    });
    test('testPersDateAstroGetWeekOfMonthIR2', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 11, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 2);
    });
    test('testPersDateAstroGetWeekOfMonthIR3', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 20, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 3);
    });
    test('testPersDateAstroGetWeekOfMonthIR4', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 29, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 4);
    });
    test('testPersDateAstroGetWeekOfMonthIR5', () {
      final PersianDate pd = PersianDate(year: 1388, month: 3, day: 31, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 5);
    });
    test('testPersDateAstroGetWeekOfMonthIR6', () {
      final PersianDate pd = PersianDate(year: 1388, month: 4, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 1);
    });
    test('testPersDateAstroGetWeekOfMonthIR7', () {
      final PersianDate pd = PersianDate(year: 1388, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 0);
    });
    test('testPersDateAstroGetWeekOfMonthIR8', () {
      final PersianDate pd = PersianDate(year: 1388, month: 6, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 1);
    });
    test('testPersDateAstroGetWeekOfMonthIR9', () {
      final PersianDate pd = PersianDate(year: 1388, month: 7, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('fa-IR'), 0);
    });
    test('testPersDateAstroGetWeekOfMonthUS', () {
      final PersianDate pd = PersianDate(year: 1388, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('en-US'), 0);
    });
    test('testPersDateAstroGetWeekOfMonthDE', () {
      final PersianDate pd = PersianDate(year: 1388, month: 8, day: 1, timezone: 'Etc/UTC');
      expect(pd.getWeekOfMonth('de-DE'), 0);
    });
  });

  group('PersianDate getEra', () {
    test('testPersDateAstroGetEraAP', () {
      final PersianDate pd = PersianDate(year: 1388, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(pd.getEra(), 1);
    });
    test('testPersDateAstroGetEraBAP', () {
      final PersianDate pd = PersianDate(year: -46, month: 5, day: 1, timezone: 'Etc/UTC');
      expect(pd.getEra(), -1);
    });
    test('testPersDateAstroGetEraAPYear1', () {
      final PersianDate pd = PersianDate(year: 1, month: 1, day: 1, timezone: 'Etc/UTC');
      expect(pd.getEra(), 1);
    });
    test('testPersDateAstroGetEraBAPYear0', () {
      final PersianDate pd = PersianDate(year: 0, month: 12, day: 29, timezone: 'Etc/UTC');
      expect(pd.getEra(), -1);
    });
  });

  group('PersianDate getTimeZone', () {
    test('testPersDateAstroInitWithUnixTimeRightTimeZone', () {
      final PersianDate pd = PersianDate(unixtime: 0);
      expect(pd.timezone, 'local');
    });
    test('testPersDateAstroInitWithJDRightTimeZone', () {
      final PersianDate pd = PersianDate(julianDay: 0);
      expect(pd.timezone, 'local');
    });
    test('testPersDateAstroInitWithRDRightTimeZone', () {
      final PersianDate pd = PersianDate(rd: 0);
      expect(pd.timezone, 'local');
    });
  });

  group('PersianDate getCalendar', () {
    test('returns persian', () {
      final PersianDate pd = PersianDate(year: 1402, month: 1, day: 1);
      expect(pd.getCalendar(), 'persian');
    });
  });

  group('PersianDate round-trip construction', () {
    test('testPersDateAstroRoundTripConstruction', () {
      final PersianDate pd =
          PersianDate(year: 1393, month: 8, day: 12, timezone: 'local');
      final int u = pd.getTime();
      final PersianDate pd2 = PersianDate(unixtime: u, timezone: 'local');
      expect(pd2.timezone, pd.timezone);
      expect(pd2.getYears(), pd.getYears());
      expect(pd2.getMonths(), pd.getMonths());
      expect(pd2.getDays(), pd.getDays());
      expect(pd2.getHours(), pd.getHours());
      expect(pd2.getMinutes(), pd.getMinutes());
      expect(pd2.getSeconds(), pd.getSeconds());
    });
  });

  // JS constructs a PersianDate and calls pd._calcYear(rd). _calcYear is private in
  // Dart, so exercise the same year-from-rd calculation via the public path:
  // PersianDate(rd: ...).getYears() (which _decomposeRd derives from calcYear).
  group('PersianDate calcYear (astronomical)', () {
    test('testPersDateAstroCalcYearPositive1', () {
      expect(PersianDate(rd: 1, timezone: 'Etc/UTC').getYears(), 1);
    });
    test('testPersDateAstroCalcYearPositive2', () {
      expect(PersianDate(rd: 365, timezone: 'Etc/UTC').getYears(), 1);
    });
    test('testPersDateAstroCalcYearPositive3', () {
      expect(PersianDate(rd: 366, timezone: 'Etc/UTC').getYears(), 2);
    });
    test('testPersDateAstroCalcYearPositive4', () {
      expect(PersianDate(rd: 730, timezone: 'Etc/UTC').getYears(), 2);
    });
    test('testPersDateAstroCalcYearPositive5', () {
      expect(PersianDate(rd: 731, timezone: 'Etc/UTC').getYears(), 3);
    });
    test('testPersDateAstroCalcYearPositive6', () {
      expect(PersianDate(rd: 1095, timezone: 'Etc/UTC').getYears(), 3);
    });
    test('testPersDateAstroCalcYearPositive7', () {
      expect(PersianDate(rd: 1096, timezone: 'Etc/UTC').getYears(), 4);
    });
    test('testPersDateAstroCalcYearPositive8', () {
      expect(PersianDate(rd: 1461, timezone: 'Etc/UTC').getYears(), 4);
    });
    test('testPersDateAstroCalcYearPositive9', () {
      expect(PersianDate(rd: 1462, timezone: 'Etc/UTC').getYears(), 5);
    });
    test('testPersDateAstroCalcYearPositive10', () {
      expect(PersianDate(rd: 1826, timezone: 'Etc/UTC').getYears(), 5);
    });
    test('testPersDateAstroCalcYearPositive11', () {
      expect(PersianDate(rd: 1827, timezone: 'Etc/UTC').getYears(), 6);
    });
    test('testPersDateAstroCalcYearNegative0', () {
      expect(PersianDate(rd: 0, timezone: 'Etc/UTC').getYears(), 0);
    });
    test('testPersDateAstroCalcYearNegative1', () {
      expect(PersianDate(rd: -1, timezone: 'Etc/UTC').getYears(), 0);
    });
    test('testPersDateAstroCalcYearNegative2', () {
      expect(PersianDate(rd: -365, timezone: 'Etc/UTC').getYears(), 0);
    });
    test('testPersDateAstroCalcYearNegative3', () {
      expect(PersianDate(rd: -366, timezone: 'Etc/UTC').getYears(), -1);
    });
    test('testPersDateAstroCalcYearNegative4', () {
      expect(PersianDate(rd: -730, timezone: 'Etc/UTC').getYears(), -1);
    });
    test('testPersDateAstroCalcYearNegative5', () {
      expect(PersianDate(rd: -731, timezone: 'Etc/UTC').getYears(), -2);
    });
    test('testPersDateAstroCalcYearNegative6', () {
      expect(PersianDate(rd: -441089, timezone: 'Etc/UTC').getYears(), -1207);
    });
  });

  group('PersRataDie from date components', () {
    PersianRataDie rd(int year, int month, int day) => PersianRataDie(
        year: year, month: month, day: day, hour: 0, minute: 0, second: 0, millisecond: 0);

    test('testPersRataDieAstroConstructorFromDateComponents1', () {
      expect(rd(1, 1, 1).getRataDie(), 1);
    });
    test('testPersRataDieAstroConstructorFromDateComponents2', () {
      expect(rd(0, 12, 30).getRataDie(), 0);
    });
    test('testPersRataDieAstroConstructorFromDateComponents3', () {
      expect(rd(1, 12, 29).getRataDie(), 365);
    });
    test('testPersRataDieAstroConstructorFromDateComponents4', () {
      expect(rd(2, 1, 1).getRataDie(), 366);
    });
    test('testPersRataDieAstroConstructorFromDateComponents5', () {
      expect(rd(1, 1, 31).getRataDie(), 31);
    });
    test('testPersRataDieAstroConstructorFromDateComponents6', () {
      expect(rd(1, 2, 1).getRataDie(), 32);
    });
    test('testPersRataDieAstroConstructorFromDateComponents7', () {
      expect(rd(2, 12, 29).getRataDie(), 730);
    });
    test('testPersRataDieAstroConstructorFromDateComponents8', () {
      expect(rd(3, 1, 1).getRataDie(), 731);
    });
    test('testPersRataDieAstroConstructorFromDateComponents9', () {
      expect(rd(3, 12, 29).getRataDie(), 1095);
    });
    test('testPersRataDieAstroConstructorFromDateComponents10', () {
      expect(rd(4, 1, 1).getRataDie(), 1096);
    });
    test('testPersRataDieAstroConstructorFromDateComponents11', () {
      expect(rd(4, 12, 30).getRataDie(), 1461);
    });
    test('testPersRataDieAstroConstructorFromDateComponents12', () {
      expect(rd(5, 1, 1).getRataDie(), 1462);
    });
    test('testPersRataDieAstroConstructorFromDateComponents13', () {
      expect(rd(5, 12, 29).getRataDie(), 1826);
    });
    test('testPersRataDieAstroConstructorFromDateComponents14', () {
      expect(rd(6, 1, 1).getRataDie(), 1827);
    });
    test('testPersRataDieAstroConstructorFromDateComponents15', () {
      expect(rd(-1207, 5, 1).getRataDie(), -441088);
    });
  });

  group('PersianDate getDayOfWeek', () {
    test('testGetDayOfWeek1', () {
      final PersianDate pd = PersianDate(year: 1393, month: 3, day: 16, timezone: 'Etc/UTC');
      expect(pd.getDayOfWeek(), 5);
    });
    test('testGetDayOfWeekWithTime', () {
      final PersianDate pd = PersianDate(
          year: 1393, month: 3, day: 16, hour: 8, minute: 39, second: 34, timezone: 'Etc/UTC');
      expect(pd.getDayOfWeek(), 5);
    });
  });

  group('PersianDate constructor', () {
    test('testPersDateAstroConstructor', () {
      expect(PersianDate(), isNotNull);
    });

    test('testPersDateAstroConstructorFromJD', () {
      final PersianDate pd = PersianDate(julianDay: 1948685.5, timezone: 'Etc/UTC');
      expect(pd.getRataDie(), 366);
      expect(pd.getYears(), 2);
      expect(pd.getMonths(), 1);
      expect(pd.getDays(), 1);
      expect(pd.getHours(), 0);
      expect(pd.getMinutes(), 0);
      expect(pd.getSeconds(), 0);
      expect(pd.getMilliseconds(), 0);
    });

    test('testPersDateAstroAfterLeapYear', () {
      // Far 1, 0005, 9:36am
      final PersianDate pd = PersianDate(julianDay: 1949781.9, timezone: 'Etc/UTC');
      expect(pd.getRataDie(), 1462.4);
      expect(pd.getYears(), 5);
      expect(pd.getMonths(), 1);
      expect(pd.getDays(), 1);
      expect(pd.getHours(), 9);
      expect(pd.getMinutes(), 36);
      expect(pd.getSeconds(), 0);
      expect(pd.getMilliseconds(), 0);
    });

    test('testPersDateAstroLastDayOfLeapYear', () {
      // Esf 30, 0004, 9:36am
      final PersianDate pd = PersianDate(julianDay: 1949780.9, timezone: 'Etc/UTC');
      expect(pd.getRataDie(), 1461.4);
      expect(pd.getYears(), 4);
      expect(pd.getMonths(), 12);
      expect(pd.getDays(), 30);
      expect(pd.getHours(), 9);
      expect(pd.getMinutes(), 36);
      expect(pd.getSeconds(), 0);
      expect(pd.getMilliseconds(), 0);
    });

    test('testPersDateAstroConstructorCopy', () {
      final PersianDate pd = PersianDate(
          year: 1392,
          month: 9,
          day: 23,
          hour: 16,
          minute: 7,
          second: 12,
          millisecond: 123,
          timezone: 'Etc/UTC');
      expect(pd.getYears(), 1392);
      expect(pd.getMonths(), 9);
      expect(pd.getDays(), 23);
      expect(pd.getHours(), 16);
      expect(pd.getMinutes(), 7);
      expect(pd.getSeconds(), 12);
      expect(pd.getMilliseconds(), 123);
    });

    test('testPersDateAstroConstructorNearDSTWithExplicitTimeZone', () {
      final PersianDate pd = PersianDate(
          year: 1397,
          month: 1,
          day: 3,
          hour: 21,
          minute: 13,
          locale: 'fa-IR',
          timezone: 'Asia/Tehran');
      expect(pd.getJulianDay(), 2458201.238194444);
    });
  });

  group('PersianDate getWeekOfMonth', () {
    setUpAll(() async {
      await ILibLoader.instance.loadILibLocaleData('fa-IR');
    });
    test('testPersDateAstroGetWeekOfMonthIR10', () {
      expect(
          PersianDate(year: 1388, month: 8, day: 1, timezone: 'Etc/UTC').getWeekOfMonth('fa-IR'), 0);
    });
    test('testPersDateAstroGetWeekOfMonthIR11', () {
      expect(
          PersianDate(year: 1388, month: 9, day: 1, timezone: 'Etc/UTC').getWeekOfMonth('fa-IR'), 1);
    });
    test('testPersDateAstroGetWeekOfMonthIR12', () {
      expect(PersianDate(year: 1388, month: 10, day: 1, timezone: 'Etc/UTC').getWeekOfMonth('fa-IR'),
          1);
    });
    test('testPersDateAstroGetWeekOfMonthIR13', () {
      expect(PersianDate(year: 1388, month: 11, day: 1, timezone: 'Etc/UTC').getWeekOfMonth('fa-IR'),
          0);
    });
    test('testPersDateAstroGetWeekOfMonthIR14', () {
      expect(PersianDate(year: 1388, month: 12, day: 1, timezone: 'Etc/UTC').getWeekOfMonth('fa-IR'),
          1);
    });
  });

  group('PersianDate round-trip construction 2', () {
    test('testPersDateAstroRoundTripConstruction2', () {
      final PersianDate pd =
          PersianDate(year: 1393, month: 8, day: 12, timezone: 'America/Los_Angeles');
      final int u = pd.getTime();
      final PersianDate pd2 = PersianDate(unixtime: u, timezone: 'America/Los_Angeles');
      expect(pd2.timezone, pd.timezone);
      expect(pd2.getYears(), pd.getYears());
      expect(pd2.getMonths(), pd.getMonths());
      expect(pd2.getDays(), pd.getDays());
      expect(pd2.getHours(), pd.getHours());
      expect(pd2.getMinutes(), pd.getMinutes());
      expect(pd2.getSeconds(), pd.getSeconds());
    });
  });
}
