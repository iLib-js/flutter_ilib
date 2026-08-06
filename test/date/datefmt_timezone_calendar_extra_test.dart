import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

/// ILibDateFmt.format() when the input date and formatter differ in calendar
/// and/or timezone.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_timezone_calendar_extra_test.dart] file.');

  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('en-US');
    await ILibLoader.instance.loadILibLocaleData('am-ET');
    await ILibLoader.instance.loadILibLocaleData('ko-KR');
  });

  group('cross-calendar conversion with timezone', () {
    // gregorian components with timezone formatted as ethiopic
    test('testDateFmtCrossCalGregToEthiopic_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: 'am-ET',
        length: 'short',
        type: 'datetime',
        timezone: 'Africa/Addis_Ababa',
      );
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      // 2024-06-27 13:00 in Africa/Addis_Ababa (UTC+3)
      final ILibDateOptions dateOptions = ILibDateOptions(
        year: 2024,
        month: 6,
        day: 27,
        hour: 13,
        minute: 0,
        second: 0,
        calendar: 'gregorian',
        timezone: 'Africa/Addis_Ababa',
      );

      // JS iLib: "20/10/2016 7:00 ከሰዓት"
      final String result = fmt.format(dateOptions);
      expect(result, '20/10/2016 7:00 ከሰዓት');
    });

    // gregorian components with same timezone as formatter -
    // verify components path matches unixtime path for same instant
    test('testDateFmtCrossCalComponentsVsUnixtime_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: 'am-ET',
        length: 'short',
        type: 'datetime',
        timezone: 'Africa/Addis_Ababa',
      );
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      // Same wall-clock time in same timezone - should give same result
      // whether constructed from components or from unixtime
      final ILibDateOptions fromComponents = ILibDateOptions(
        year: 2024,
        month: 6,
        day: 27,
        hour: 13,
        minute: 0,
        second: 0,
        calendar: 'gregorian',
        timezone: 'Africa/Addis_Ababa',
      );

      // 2024-06-27 13:00 Addis Ababa = 2024-06-27 10:00 UTC
      // Unix time: 1719482400000
      final ILibDateOptions fromUnixtime = ILibDateOptions(
        unixtime: 1719482400000,
      );

      final String resultComponents = fmt.format(fromComponents);
      final String resultUnixtime = fmt.format(fromUnixtime);

      // JS iLib: both produce "20/10/2016 7:00 ከሰዓት"
      expect(resultComponents, '20/10/2016 7:00 ከሰዓት');
      expect(resultUnixtime, '20/10/2016 7:00 ከሰዓት');
    });
  });

  group('same calendar, different timezone', () {
    // NY time formatted with Seoul formatter
    test('testDateFmtTzConvNYToSeoul_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: 'ko-KR',
        length: 'short',
        type: 'datetime',
        timezone: 'Asia/Seoul',
        useNative: false,
      );
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      // 2024-06-27 13:00 New York (EDT, UTC-4) = 2024-06-28 02:00 Seoul (KST, UTC+9)
      final ILibDateOptions dateNY = ILibDateOptions(
        year: 2024,
        month: 6,
        day: 27,
        hour: 13,
        minute: 0,
        second: 0,
        timezone: 'America/New_York',
        calendar: 'gregorian',
      );

      // Same instant via unixtime
      // 2024-06-27 13:00 EDT = 2024-06-27 17:00 UTC = unix 1719507600000
      final ILibDateOptions dateUnix = ILibDateOptions(
        unixtime: 1719507600000,
      );

      final String resultNY = fmt.format(dateNY);
      final String resultUnix = fmt.format(dateUnix);

      // JS iLib: both produce "24. 6. 28. 오전 2:00"
      expect(resultNY, '24. 6. 28. 오전 2:00');
      expect(resultUnix, '24. 6. 28. 오전 2:00');
    });

    // explicit timezone on date differs from formatter timezone
    test('testDateFmtTzConvSeoulToLA_en_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: 'en-US',
        length: 'full',
        type: 'datetime',
        timezone: 'America/Los_Angeles',
        useNative: false,
      );
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      // 2024-01-15 09:00 in Asia/Seoul (KST, UTC+9)
      // = 2024-01-15 00:00 UTC
      // = 2024-01-14 16:00 Los Angeles (PST, UTC-8)
      final ILibDateOptions dateSeoul = ILibDateOptions(
        year: 2024,
        month: 1,
        day: 15,
        hour: 9,
        minute: 0,
        second: 0,
        timezone: 'Asia/Seoul',
        calendar: 'gregorian',
      );

      // Same instant as unixtime: 2024-01-15 00:00 UTC = 1705276800000
      final ILibDateOptions dateUnix = ILibDateOptions(
        unixtime: 1705276800000,
      );

      final String resultSeoul = fmt.format(dateSeoul);
      final String resultUnix = fmt.format(dateUnix);

      // JS iLib: "January 14, 2024 at 4:00\u202FPM" (U+202F = narrow no-break space)
      expect(resultSeoul, 'January 14, 2024 at 4:00\u202FPM');
      expect(resultUnix, 'January 14, 2024 at 4:00\u202FPM');
    });
  });

  group('different timezone AND different calendar', () {
    // NY gregorian to Addis Ababa ethiopic
    test('testDateFmtTzCalConvNYGregToAddisEthiopic_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: 'am-ET',
        length: 'short',
        type: 'datetime',
        timezone: 'Africa/Addis_Ababa',
      );
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      // 2024-06-27 13:00 New York (EDT, UTC-4)
      // = 2024-06-27 17:00 UTC
      // = 2024-06-27 20:00 Addis Ababa (EAT, UTC+3)
      final ILibDateOptions dateNY = ILibDateOptions(
        year: 2024,
        month: 6,
        day: 27,
        hour: 13,
        minute: 0,
        second: 0,
        timezone: 'America/New_York',
        calendar: 'gregorian',
      );

      // Same instant from unixtime
      final ILibDateOptions dateUnix = ILibDateOptions(
        unixtime: 1719507600000,
      );

      final String resultNY = fmt.format(dateNY);
      final String resultUnix = fmt.format(dateUnix);

      // JS iLib: both produce "20/10/2016 2:00 ከምሽቱ"
      expect(resultNY, '20/10/2016 2:00 ከምሽቱ');
      expect(resultUnix, '20/10/2016 2:00 ከምሽቱ');
    });
  });
}
