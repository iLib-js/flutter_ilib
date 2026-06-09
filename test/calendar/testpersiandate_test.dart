import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// [julianDay, year, month, day, hour, minute, second, millisecond, dayOfWeek]
const List<List<num>> testDates = <List<num>>[
  <num>[1507231.5, -1208, 5, 1, 0, 0, 0, 0, 0],
  <num>[1660037.5, -790, 9, 14, 0, 0, 0, 0, 3],
  <num>[1746893.5, -552, 7, 2, 0, 0, 0, 0, 3],
  <num>[1770641.5, -487, 7, 9, 0, 0, 0, 0, 0],
  <num>[1892731.5, -153, 10, 18, 0, 0, 0, 0, 3],
  <num>[1931579.5, -46, 2, 30, 0, 0, 0, 0, 1],
  <num>[1974851.5, 73, 8, 19, 0, 0, 0, 0, 6],
  <num>[2091164.5, 392, 2, 5, 0, 0, 0, 0, 0],
  <num>[2121509.5, 475, 3, 3, 0, 0, 0, 0, 0],
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

  group('PersianAlgoDate constructor', () {
    test('testPersAlgoDateConstructor', () {
      final PersianAlgoDate pd = PersianAlgoDate();
      expect(pd.getYears(), isNotNull);
    });
  });

  group('PersianAlgoDate from JD', () {
    test('basic JD', () {
      final PersianAlgoDate d = PersianAlgoDate(julianDay: 2450138.5);
      expect(d.getYears(), 1374);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 6);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('PersianAlgoDate from components', () {
    test('basic date', () {
      final PersianAlgoDate d = PersianAlgoDate(
          year: 1402, month: 7, day: 15, hour: 10, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 1402);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 15);
      expect(d.getHours(), 10);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('PersianAlgoDate from JD constructs correct date components', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('JD ${td[0]} gives year ${td[1]}, month ${td[2]}, day ${td[3]}', () {
        final PersianAlgoDate d = PersianAlgoDate(julianDay: td[0] as double);
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

  group('PersianAlgoDate getDayOfWeek', () {
    for (int i = 0; i < testDates.length; i++) {
      final List<num> td = testDates[i];
      test('${td[1]}/${td[2]}/${td[3]} dow=${td[8]}', () {
        final PersianAlgoDate d = PersianAlgoDate(julianDay: td[0] as double);
        expect(d.getDayOfWeek(), td[8] as int);
      });
    }
  });

  group('PersianAlgoDate getCalendar', () {
    test('returns persian-algo', () {
      final PersianAlgoDate d = PersianAlgoDate(year: 1402, month: 1, day: 1);
      expect(d.getCalendar(), 'persian-algo');
    });
  });

  group('PersianAlgoDate constructor', () {
    test('testPersAlgoDateConstructorFull', () {
      final PersianAlgoDate pd = PersianAlgoDate(
          year: 1392, month: 9, day: 23, hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(pd.getYears(), 1392);
      expect(pd.getMonths(), 9);
      expect(pd.getDays(), 23);
      expect(pd.getHours(), 16);
      expect(pd.getMinutes(), 7);
      expect(pd.getSeconds(), 12);
      expect(pd.getMilliseconds(), 123);
    });
  });

  group('PersianAlgoDate convert', () {
    test('testPersAlgoDateConvert', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final PersianAlgoDate pd = PersianAlgoDate(julianDay: td[0] as double);
        expect(pd.getRataDie(), (td[0] as double) - 1948319.5);
        expect(pd.getYears(), td[1] as int);
        expect(pd.getMonths(), td[2] as int);
        expect(pd.getDays(), td[3] as int);
        expect(pd.getDayOfWeek(), td[8] as int);
      }
    });
  });

  group('PersianAlgoDate getJulianDay', () {
    test('testPersAlgoDateGetJulianDay', () {
      for (int i = 0; i < testDates.length; i++) {
        final List<num> td = testDates[i];
        final PersianAlgoDate pd = PersianAlgoDate(
            year: td[1] as int,
            month: td[2] as int,
            day: td[3] as int,
            hour: td[4] as int,
            minute: td[5] as int,
            second: td[6] as int,
            millisecond: td[7] as int);
        expect(pd.getJulianDay(), td[0]);
        expect(pd.getDayOfWeek(), td[8]);
      }
    });
  });

  group('PersianAlgoDate getTime', () {
    test('testPersAlgoDateTestGetTimeZero', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1348, month: 10, day: 11);
      expect(pd.getTime(), 0);
    });
    test('testPersAlgoDateTestGetTimeZeroJD', () {
      final PersianAlgoDate pd = PersianAlgoDate(julianDay: 2440587.5);
      expect(pd.getTime(), 0);
    });
    test('testPersAlgoDateTestGetTime', () {
      final PersianAlgoDate pd =
          PersianAlgoDate(year: 1348, month: 10, day: 11, hour: 8, minute: 30);
      expect(pd.getTime(), 30600000);
    });
    test('testPersAlgoDateTestGetTimeTooEarly', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1348, month: 10, day: 10);
      expect(pd.getTime(), -1);
    });
    test('testPersAlgoDateTestGetTimeTooLate', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1416, month: 11, day: 1);
      expect(pd.getTime(), -1);
    });
  });

  group('PersianAlgoDate onOrBefore', () {
    // 1388/9/27 is a Friday (dayOfWeek = 5)
    test('testPersAlgoDateOnOrBeforeSun', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      expect(pd.getDayOfWeek(), 5);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(0).getRataDie(), rd - 5);
    });
    test('testPersAlgoDateOnOrBeforeMon', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(1).getRataDie(), rd - 4);
    });
    test('testPersAlgoDateOnOrBeforeTue', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(2).getRataDie(), rd - 3);
    });
    test('testPersAlgoDateOnOrBeforeWed', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(3).getRataDie(), rd - 2);
    });
    test('testPersAlgoDateOnOrBeforeThu', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(4).getRataDie(), rd - 1);
    });
    test('testPersAlgoDateOnOrBeforeFri', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(5).getRataDie(), rd);
    });
    test('testPersAlgoDateOnOrBeforeSat', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrBefore(6).getRataDie(), rd - 6);
    });
  });

  group('PersianAlgoDate onOrAfter', () {
    test('testPersAlgoDateOnOrAfterSun', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(0).getRataDie(), rd + 2);
    });
    test('testPersAlgoDateOnOrAfterMon', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(1).getRataDie(), rd + 3);
    });
    test('testPersAlgoDateOnOrAfterTue', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(2).getRataDie(), rd + 4);
    });
    test('testPersAlgoDateOnOrAfterWed', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(3).getRataDie(), rd + 5);
    });
    test('testPersAlgoDateOnOrAfterThu', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(4).getRataDie(), rd + 6);
    });
    test('testPersAlgoDateOnOrAfterFri', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(5).getRataDie(), rd);
    });
    test('testPersAlgoDateOnOrAfterSat', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.onOrAfter(6).getRataDie(), rd + 1);
    });
  });

  group('PersianAlgoDate before', () {
    test('testPersAlgoDateBeforeSun', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(0).getRataDie(), rd - 5);
    });
    test('testPersAlgoDateBeforeMon', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(1).getRataDie(), rd - 4);
    });
    test('testPersAlgoDateBeforeTue', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(2).getRataDie(), rd - 3);
    });
    test('testPersAlgoDateBeforeWed', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(3).getRataDie(), rd - 2);
    });
    test('testPersAlgoDateBeforeThu', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(4).getRataDie(), rd - 1);
    });
    test('testPersAlgoDateBeforeFri', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(5).getRataDie(), rd - 7);
    });
    test('testPersAlgoDateBeforeSat', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.before(6).getRataDie(), rd - 6);
    });
  });

  group('PersianAlgoDate after', () {
    test('testPersAlgoDateAfterSun', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(0).getRataDie(), rd + 2);
    });
    test('testPersAlgoDateAfterMon', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(1).getRataDie(), rd + 3);
    });
    test('testPersAlgoDateAfterTue', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(2).getRataDie(), rd + 4);
    });
    test('testPersAlgoDateAfterWed', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(3).getRataDie(), rd + 5);
    });
    test('testPersAlgoDateAfterThu', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(4).getRataDie(), rd + 6);
    });
    test('testPersAlgoDateAfterFri', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(5).getRataDie(), rd + 7);
    });
    test('testPersAlgoDateAfterSat', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 27);
      final double rd = pd.getRataDie();
      expect(pd.after(6).getRataDie(), rd + 1);
    });
  });

  group('PersianAlgoDate getWeekOfYear', () {
    test('testPersAlgoDateTestGetWeekOfYearThisYear', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 2, day: 1);
      expect(pd.getWeekOfYear(), 5);
    });
    test('testPersAlgoDateTestGetWeekOfYearThisYear2', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 19);
      expect(pd.getWeekOfYear(), 12);
    });
    test('testPersAlgoDateTestGetWeekOfYearThisYear3', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 12, day: 29);
      expect(pd.getWeekOfYear(), 52);
    });
    test('testPersAlgoDateTestGetWeekOfYearThisYearWithTime', () {
      final PersianAlgoDate pd = PersianAlgoDate(
          year: 1388, month: 12, day: 29, hour: 16, minute: 13, second: 12, millisecond: 232);
      expect(pd.getWeekOfYear(), 52);
    });
    test('testPersAlgoDateTestGetWeekOfYearPreviousYear', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 1, day: 1);
      expect(pd.getWeekOfYear(), 53);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekLeap', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1383, month: 12, day: 30);
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekRegular1', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1389, month: 12, day: 29);
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekRegular2', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1390, month: 12, day: 29);
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekRegular3', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1391, month: 12, day: 30);
      expect(pd.getWeekOfYear(), 1);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekRegular4', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1392, month: 12, day: 29);
      expect(pd.getWeekOfYear(), 53);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekRegular5', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1393, month: 12, day: 29);
      expect(pd.getWeekOfYear(), 52);
    });
    test('testPersAlgoDateTestGetWeekOfYearLastWeekRegular6', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1394, month: 12, day: 29);
      expect(pd.getWeekOfYear(), 52);
    });
  });

  group('PersianAlgoDate getDayOfYear', () {
    test('testPersAlgoDateGetDayOfYearFirstDay', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 1, day: 1);
      expect(pd.getDayOfYear(), 1);
    });
    test('testPersAlgoDateGetDayOfYearMidYear', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 17);
      expect(pd.getDayOfYear(), 79);
    });
    test('testPersAlgoDateGetDayOfYearLastDay', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 12, day: 29);
      expect(pd.getDayOfYear(), 365);
    });
    test('testPersAlgoDateGetDayOfYearLastDayLeapYear', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1387, month: 12, day: 30);
      expect(pd.getDayOfYear(), 366);
    });
  });

  group('PersianAlgoDate getWeekOfMonth', () {
    // en-US: firstDayOfWeek = 0 (Sunday)
    test('testPersAlgoDateGetWeekOfMonth0', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 1);
      expect(pd.getWeekOfMonth(0), 0);
    });
    test('testPersAlgoDateGetWeekOfMonth1', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 4);
      expect(pd.getWeekOfMonth(0), 1);
    });
    test('testPersAlgoDateGetWeekOfMonth2', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 11);
      expect(pd.getWeekOfMonth(0), 2);
    });
    test('testPersAlgoDateGetWeekOfMonth3', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 20);
      expect(pd.getWeekOfMonth(0), 3);
    });
    test('testPersAlgoDateGetWeekOfMonth4', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 29);
      expect(pd.getWeekOfMonth(0), 4);
    });
    test('testPersAlgoDateGetWeekOfMonth5', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 31);
      expect(pd.getWeekOfMonth(0), 5);
    });
    test('testPersAlgoDateGetWeekOfMonth6', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 4, day: 1);
      expect(pd.getWeekOfMonth(0), 1);
    });
    test('testPersAlgoDateGetWeekOfMonth7', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 5, day: 1);
      expect(pd.getWeekOfMonth(0), 0);
    });
    test('testPersAlgoDateGetWeekOfMonth8', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 6, day: 1);
      expect(pd.getWeekOfMonth(0), 1);
    });
    test('testPersAlgoDateGetWeekOfMonth9', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 7, day: 1);
      expect(pd.getWeekOfMonth(0), 1);
    });
    // fa-IR: firstDayOfWeek = 6 (Saturday)
    test('testPersAlgoDateGetWeekOfMonthIR0', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 1);
      expect(pd.getWeekOfMonth(6), 0);
    });
    test('testPersAlgoDateGetWeekOfMonthIR1', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 4);
      expect(pd.getWeekOfMonth(6), 1);
    });
    test('testPersAlgoDateGetWeekOfMonthIR2', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 11);
      expect(pd.getWeekOfMonth(6), 2);
    });
    test('testPersAlgoDateGetWeekOfMonthIR3', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 20);
      expect(pd.getWeekOfMonth(6), 3);
    });
    test('testPersAlgoDateGetWeekOfMonthIR4', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 29);
      expect(pd.getWeekOfMonth(6), 4);
    });
    test('testPersAlgoDateGetWeekOfMonthIR5', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 3, day: 31);
      expect(pd.getWeekOfMonth(6), 5);
    });
    test('testPersAlgoDateGetWeekOfMonthIR6', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 4, day: 1);
      expect(pd.getWeekOfMonth(6), 1);
    });
    test('testPersAlgoDateGetWeekOfMonthIR7', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 5, day: 1);
      expect(pd.getWeekOfMonth(6), 0);
    });
    test('testPersAlgoDateGetWeekOfMonthIR8', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 6, day: 1);
      expect(pd.getWeekOfMonth(6), 1);
    });
    test('testPersAlgoDateGetWeekOfMonthIR9', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 7, day: 1);
      expect(pd.getWeekOfMonth(6), 0);
    });
    test('testPersAlgoDateGetWeekOfMonthIR10', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 8, day: 1);
      expect(pd.getWeekOfMonth(6), 0);
    });
    test('testPersAlgoDateGetWeekOfMonthIR11', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 9, day: 1);
      expect(pd.getWeekOfMonth(6), 1);
    });
    test('testPersAlgoDateGetWeekOfMonthIR12', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 10, day: 1);
      expect(pd.getWeekOfMonth(6), 1);
    });
    test('testPersAlgoDateGetWeekOfMonthIR13', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 11, day: 1);
      expect(pd.getWeekOfMonth(6), 0);
    });
    test('testPersAlgoDateGetWeekOfMonthIR14', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 12, day: 1);
      expect(pd.getWeekOfMonth(6), 1);
    });
    test('testPersAlgoDateGetWeekOfMonthUS', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 8, day: 1);
      expect(pd.getWeekOfMonth(0), 0);
    });
    test('testPersAlgoDateGetWeekOfMonthDE', () {
      // de-DE: firstDayOfWeek = 1 (Monday)
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 8, day: 1);
      expect(pd.getWeekOfMonth(1), 0);
    });
  });

  group('PersianAlgoDate getEra', () {
    test('testPersAlgoDateGetEraAP', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1388, month: 5, day: 1);
      expect(pd.getEra(), 1);
    });
    test('testPersAlgoDateGetEraBAP', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: -46, month: 5, day: 1);
      expect(pd.getEra(), -1);
    });
    test('testPersAlgoDateGetEraAPYear1', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1, month: 1, day: 1);
      expect(pd.getEra(), 1);
    });
    test('testPersAlgoDateGetEraBAPYear0', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 0, month: 12, day: 29);
      expect(pd.getEra(), -1);
    });
  });

  group('PersianAlgoDate getTimeZone', () {
    test('testPersAlgoDateInitWithUnixTimeRightTimeZone', () {
      final PersianAlgoDate pd = PersianAlgoDate(unixtime: 0);
      expect(pd.timezone, 'local');
    });
    test('testPersAlgoDateInitWithJDRightTimeZone', () {
      final PersianAlgoDate pd = PersianAlgoDate(julianDay: 0);
      expect(pd.timezone, 'local');
    });
    test('testPersAlgoDateInitWithRDRightTimeZone', () {
      final PersianAlgoDate pd = PersianAlgoDate(rd: 0);
      expect(pd.timezone, 'local');
    });
  });

  group('PersianAlgoDate round-trip construction', () {
    test('testPersDateAlgoRoundTripConstruction', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1393, month: 8, day: 12);
      final int u = pd.getTime();
      final PersianAlgoDate pd2 = PersianAlgoDate(unixtime: u);
      expect(pd2.timezone, pd.timezone);
      expect(pd2.getYears(), pd.getYears());
      expect(pd2.getMonths(), pd.getMonths());
      expect(pd2.getDays(), pd.getDays());
      expect(pd2.getHours(), pd.getHours());
      expect(pd2.getMinutes(), pd.getMinutes());
      expect(pd2.getSeconds(), pd.getSeconds());
    });
    test('testPersDateAlgoRoundTripConstruction2', () {
      final PersianAlgoDate pd = PersianAlgoDate(
          year: 1393, month: 8, day: 12,
          timezone: 'America/Los_Angeles');
      final int u = pd.getTime();
      final PersianAlgoDate pd2 = PersianAlgoDate(
          unixtime: u, timezone: 'America/Los_Angeles');
      expect(pd2.timezone, pd.timezone);
      expect(pd2.getYears(), pd.getYears());
      expect(pd2.getMonths(), pd.getMonths());
      expect(pd2.getDays(), pd.getDays());
      expect(pd2.getHours(), pd.getHours());
      expect(pd2.getMinutes(), pd.getMinutes());
      expect(pd2.getSeconds(), pd.getSeconds());
    });
  });

  group('PersianAlgoDate constructor edge cases', () {
    test('testPersAlgoDateConstructorFromJD', () {
      final PersianAlgoDate pd = PersianAlgoDate(julianDay: 1948685.5);
      expect(pd.getRataDie(), 366);
      expect(pd.getYears(), 2);
      expect(pd.getMonths(), 1);
      expect(pd.getDays(), 1);
    });
    test('testPersAlgoDateAfterLeapYear', () {
      // Far 1, 0005, 9:36am
      final PersianAlgoDate pd = PersianAlgoDate(julianDay: 1949781.9);
      expect(pd.getRataDie(), closeTo(1462.4, 0.001));
      expect(pd.getYears(), 5);
      expect(pd.getMonths(), 1);
      expect(pd.getDays(), 1);
      expect(pd.getHours(), 9);
      expect(pd.getMinutes(), 36);
      expect(pd.getSeconds(), 0);
      expect(pd.getMilliseconds(), 0);
    });
  });

  // JS constructs a PersianAlgoDate and calls pd._calcYear(rd). _calcYear is private in
  // Dart, so exercise the same year-from-rd calculation via the public path:
  // PersianAlgoDate(rd: ...).getYears() (which _decomposeRd derives from calcYear).
  group('PersianAlgoDate calcYear (algorithmic)', () {
    test('testPersAlgoDateCalcYearPositive1', () {
      expect(PersianAlgoDate(rd: 1).getYears(), 1);
    });
    test('testPersAlgoDateCalcYearPositive2', () {
      expect(PersianAlgoDate(rd: 365).getYears(), 1);
    });
    test('testPersAlgoDateCalcYearPositive3', () {
      expect(PersianAlgoDate(rd: 366).getYears(), 2);
    });
    test('testPersAlgoDateCalcYearPositive4', () {
      expect(PersianAlgoDate(rd: 730).getYears(), 2);
    });
    test('testPersAlgoDateCalcYearPositive5', () {
      expect(PersianAlgoDate(rd: 731).getYears(), 3);
    });
    test('testPersAlgoDateCalcYearPositive6', () {
      expect(PersianAlgoDate(rd: 1095).getYears(), 3);
    });
    test('testPersAlgoDateCalcYearPositive7', () {
      expect(PersianAlgoDate(rd: 1096).getYears(), 4);
    });
    test('testPersAlgoDateCalcYearPositive8', () {
      expect(PersianAlgoDate(rd: 1461).getYears(), 4);
    });
    test('testPersAlgoDateCalcYearPositive9', () {
      expect(PersianAlgoDate(rd: 1462).getYears(), 5);
    });
    test('testPersAlgoDateCalcYearPositive10', () {
      expect(PersianAlgoDate(rd: 1826).getYears(), 5);
    });
    test('testPersAlgoDateCalcYearPositive11', () {
      expect(PersianAlgoDate(rd: 1827).getYears(), 6);
    });
    test('testPersAlgoDateCalcYearNegative1', () {
      expect(PersianAlgoDate(rd: 0).getYears(), -1);
    });
    test('testPersAlgoDateCalcYearNegative2', () {
      expect(PersianAlgoDate(rd: -365).getYears(), -1);
    });
    test('testPersAlgoDateCalcYearNegative3', () {
      expect(PersianAlgoDate(rd: -366).getYears(), -2);
    });
    test('testPersAlgoDateCalcYearNegative4', () {
      expect(PersianAlgoDate(rd: -730).getYears(), -2);
    });
    test('testPersAlgoDateCalcYearNegative5', () {
      expect(PersianAlgoDate(rd: -731).getYears(), -3);
    });
    test('testPersAlgoDateCalcYearNegative6', () {
      expect(PersianAlgoDate(rd: -441089).getYears(), -1208);
    });
  });

  group('PersianAlgoDate getDayOfWeek', () {
    test('testGetDayOfWeek1', () {
      final PersianAlgoDate pd = PersianAlgoDate(year: 1393, month: 3, day: 16);
      expect(pd.getDayOfWeek(), 5);
    });
    test('testGetDayOfWeekWithTime', () {
      final PersianAlgoDate pd = PersianAlgoDate(
          year: 1393, month: 3, day: 16, hour: 8, minute: 39, second: 34);
      expect(pd.getDayOfWeek(), 5);
    });
  });

  group('PersAlgoRataDie from date components', () {
    PersianAlgoRataDie rd(int year, int month, int day) => PersianAlgoRataDie(
        year: year, month: month, day: day,
        hour: 0, minute: 0, second: 0, millisecond: 0);

    test('testPersAlgoRataDieConstructorFromDateComponents1', () {
      expect(rd(1, 1, 1).getRataDie(), 1);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents2', () {
      expect(rd(-1, 12, 30).getRataDie(), 0);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents3', () {
      expect(rd(1, 12, 29).getRataDie(), 365);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents4', () {
      expect(rd(2, 1, 1).getRataDie(), 366);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents5', () {
      expect(rd(1, 1, 31).getRataDie(), 31);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents6', () {
      expect(rd(1, 2, 1).getRataDie(), 32);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents7', () {
      expect(rd(2, 12, 29).getRataDie(), 730);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents8', () {
      expect(rd(3, 1, 1).getRataDie(), 731);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents9', () {
      expect(rd(3, 12, 29).getRataDie(), 1095);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents10', () {
      expect(rd(4, 1, 1).getRataDie(), 1096);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents11', () {
      expect(rd(4, 12, 30).getRataDie(), 1461);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents12', () {
      expect(rd(5, 1, 1).getRataDie(), 1462);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents13', () {
      expect(rd(5, 12, 29).getRataDie(), 1826);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents14', () {
      expect(rd(6, 1, 1).getRataDie(), 1827);
    });
    test('testPersAlgoRataDieConstructorFromDateComponents15', () {
      expect(rd(-1208, 5, 1).getRataDie(), -441088);
    });
  });

  group('PersianAlgoDate constructor', () {
    test('testPersAlgoDateConstructorCopy', () {
      final PersianAlgoDate pd = PersianAlgoDate(
          year: 1392, month: 9, day: 23,
          hour: 16, minute: 7, second: 12, millisecond: 123);
      expect(pd.getYears(), 1392);
      expect(pd.getMonths(), 9);
      expect(pd.getDays(), 23);
      expect(pd.getHours(), 16);
      expect(pd.getMinutes(), 7);
      expect(pd.getSeconds(), 12);
      expect(pd.getMilliseconds(), 123);
    });
  });

}
