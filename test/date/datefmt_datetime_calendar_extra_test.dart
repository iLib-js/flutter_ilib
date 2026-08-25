// ILibDateOptions absolute-instant inputs (dateTime, unixtime, julianday, rd)
// must be converted to the formatter's calendar. Also covers locale-driven
// calendar selection via toCalendarDate().

import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  String testPlatform = '';
  debugPrint('Testing [datefmt_datetime_calendar_extra_test.dart] file.');
  TestWidgetsFlutterBinding.ensureInitialized();
  final ILibLoader loader = ILibLoader.instance;

  setUpAll(() async {
    testPlatform = getTestPlatform();
    await loader.loadJSON();
    await loader.loadILibLocaleData('am-ET');
    await loader.loadILibLocaleData('fa-IR');
    await loader.loadILibLocaleData('en-US');
    await loader.loadILibLocaleData('th-TH');
    await loader.loadILibLocaleData('ko-KR');
  });

  // 2026-06-23 12:00 UTC → ethiopic 2018, persian 1405 (year is tz-independent).
  void expectConverted(String locale, String expectYear, String? timezone) {
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime.utc(2026, 6, 23, 12));
    final String out = ILibDateFmt(ILibDateFmtOptions(
      locale: locale,
      length: 'long',
      type: 'date',
      useNative: false,
      timezone: timezone,
    )).format(date);
    // Label only — 'unset' means the `timezone` argument was not passed (null)
    final String tzLabel = timezone ?? 'unset';
    expect(out, contains(expectYear), reason: '$locale tz=$tzLabel → "$out"');
    expect(out, isNot(contains('2026')),
        reason: '$locale tz=$tzLabel → "$out"');
  }

  // Locale's timezone is host-independent, so exact dates are deterministic.
  // fa-IR (astronomical Persian) is year-only: day can vary by ±1 across platforms.
  test('exact converted date — timezone unset, 2026-06-23 12:00', () {
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime.utc(2026, 6, 23, 12));
    ILibDateFmt fmt(String locale) => ILibDateFmt(ILibDateFmtOptions(
          locale: locale,
          length: 'long',
          type: 'date',
          useNative: false,
        ));
    expect(fmt('am-ET').format(date), '16 ሰኔ 2018'); // ethiopic (integer)
    expect(fmt('en-US').format(date), 'June 23, 2026'); // gregorian
  });

  // am-ET (ethiopic) → year 2018, across timezone variants.
  test('am-ET (ethiopic) converts a DateTime — tz=Etc/UTC', () {
    expectConverted('am-ET', '2018', 'Etc/UTC');
  });
  test('am-ET (ethiopic) converts a DateTime — tz=local', () {
    expectConverted('am-ET', '2018', 'local');
  });
  test('am-ET (ethiopic) converts a DateTime — tz unset (no timezone arg)', () {
    expectConverted('am-ET', '2018', null);
  });

  // fa-IR (persian) → year 1405, across timezone variants.
  test('fa-IR (persian) converts a DateTime — tz=Etc/UTC', () {
    expectConverted('fa-IR', '1405', 'Etc/UTC');
  });
  test('fa-IR (persian) converts a DateTime — tz=local', () {
    expectConverted('fa-IR', '1405', 'local');
  });
  test('fa-IR (persian) converts a DateTime — tz unset (no timezone arg)', () {
    expectConverted('fa-IR', '1405', null);
  });

  // unixtime input is also a Gregorian instant and must convert the same way.
  test('unixtime input converts to the locale calendar (am-ET / fa-IR)', () {
    final int ms = DateTime.utc(2026, 6, 23, 12).millisecondsSinceEpoch;
    final ILibDateOptions date = ILibDateOptions(unixtime: ms);
    String fmt(String locale) => ILibDateFmt(ILibDateFmtOptions(
          locale: locale,
          length: 'long',
          type: 'date',
          useNative: false,
        )).format(date);
    expect(fmt('am-ET'), '16 ሰኔ 2018'); // ethiopic (was '1 መስከረም 0000')
    expect(fmt('en-US'), 'June 23, 2026'); // gregorian
    // fa-IR: day can vary by ±1 across platforms — year only.
    expect(fmt('fa-IR'), contains('1405'));
    expect(fmt('fa-IR'), isNot(contains('2026')));
  });

  test('Gregorian formatter leaves a DateTime unchanged (no spurious convert)',
      () {
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime.utc(2026, 6, 23, 12));
    final String out = ILibDateFmt(ILibDateFmtOptions(
      locale: 'en-US',
      length: 'long',
      type: 'date',
    )).format(date);
    expect(out, contains('2026'));
  });

  // ILibCalendarDate passed directly to format() with a different timezone than
  // the formatter — re-created via Julian Day in the formatter's timezone.
  group('ILibCalendarDate timezone mismatch re-conversion', () {
    test('GregorianDate Asia/Seoul → formatter America/New_York', () {
      // 2024-07-04 13:00 Seoul (UTC+9) = 2024-07-04 04:00 UTC = 2024-07-04 00:00 NYC
      final GregorianDate d = GregorianDate(
          year: 2024, month: 7, day: 4, hour: 13, timezone: 'Asia/Seoul');
      final String out = ILibDateFmt(ILibDateFmtOptions(
        locale: 'en-US',
        length: 'long',
        type: 'datetime',
        useNative: false,
        timezone: 'America/New_York',
      )).format(d);
      expect(out, 'July 4, 2024 at 12:00 AM');
    });

    test('EthiopicDate Africa/Addis_Ababa → formatter Etc/UTC', () {
      // 2016-10-27 13:00 Addis (UTC+3) = UTC 10:00
      final EthiopicDate e = EthiopicDate(
          year: 2016,
          month: 10,
          day: 27,
          hour: 13,
          timezone: 'Africa/Addis_Ababa');
      final String out = ILibDateFmt(ILibDateFmtOptions(
        locale: 'am-ET',
        length: 'long',
        type: 'datetime',
        useNative: false,
        timezone: 'Etc/UTC',
      )).format(e);
      final String expected = (testPlatform == 'webOS')
          ? '27 ሰኔ 2016 ቀትር 10:00'
          : '27 ሰኔ 2016 10:00 ከሰዓት';
      expect(out, expected);
    });
  });

  // local DateTime (isUtc=false) components are wall-clock — no UTC offset applied.
  group('local DateTime converts to non-gregorian calendar', () {
    // DateTime(2026, 5, 23) local — date-only check is host-independent.
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime(2026, 5, 23, 12));

    ILibDateFmt fmtDate(String locale) => ILibDateFmt(ILibDateFmtOptions(
          locale: locale,
          length: 'long',
          type: 'date',
          useNative: false,
        ));

    test('am-ET (ethiopic) — date is 15 ግንቦት 2018', () {
      expect(fmtDate('am-ET').format(date), '15 ግንቦት 2018');
    });

    test('fa-IR (persian) — date is ‏2 خرداد 1405', () {
      expect(fmtDate('fa-IR').format(date), '‏2 خرداد 1405');
    });
  });

  // julianday / rd input on ILibDateOptions.
  group('ILibDateOptions julianday / rd input', () {
    // JD 2460495.5 = 2024-07-04 00:00 UTC (Gregorian RD 739071).
    const double kJd = 2460495.5;
    const double kRd = 739071.0;

    // For julianday/rd inputs, timezone belongs on ILibDateFmtOptions, not ILibDateOptions.
    ILibDateFmt fmtLong(String locale) => ILibDateFmt(ILibDateFmtOptions(
          locale: locale,
          length: 'long',
          type: 'date',
          useNative: false,
          timezone: 'Etc/UTC',
        ));

    test('julianday formats as Gregorian en-US', () {
      expect(fmtLong('en-US').format(ILibDateOptions(julianday: kJd)),
          'July 4, 2024');
    });

    test('rd formats as Gregorian en-US', () {
      expect(fmtLong('en-US').format(ILibDateOptions(rd: kRd)), 'July 4, 2024');
    });

    test('julianday converts to ethiopic calendar (am-ET)', () {
      // 2024-07-04 Gregorian = 26 ሰኔ 2016 Ethiopic.
      expect(fmtLong('am-ET').format(ILibDateOptions(julianday: kJd)),
          '26 ሰኔ 2016');
    });

    test('rd converts to ethiopic calendar (am-ET)', () {
      expect(fmtLong('am-ET').format(ILibDateOptions(rd: kRd)), '26 ሰኔ 2016');
    });

    test('julianday converts to Persian calendar (fa-IR)', () {
      // 2024-07-04 Gregorian = 14 Tir 1403 Persian.
      expect(fmtLong('fa-IR').format(ILibDateOptions(julianday: kJd)),
          '‏14 تیر 1403');
    });

    test('rd converts to Persian calendar (fa-IR)', () {
      // Same instant as kJd — rd path must convert identically.
      expect(fmtLong('fa-IR').format(ILibDateOptions(rd: kRd)), '‏14 تیر 1403');
    });

    test('julianday getJulianDay round-trip preserves the value', () {
      // Use kJd directly: avoids local-timezone ambiguity that would arise
      // from computing jd via ILibDateOptions(year/month/day) with no timezone.
      expect(ILibDateOptions(julianday: kJd).getJulianDay(), kJd);
    });

    test('rd getJulianDay round-trip preserves the value', () {
      expect(ILibDateOptions(rd: kRd).getJulianDay(), kJd);
    });
  });

  // locale on ILibDateOptions drives calendar selection in toCalendarDate().
  group('ILibDateOptions locale-driven calendar via julianday', () {
    // 2024-07-04 Gregorian UTC
    final ILibDateOptions gregDate = ILibDateOptions(
        type: 'gregorian', year: 2024, month: 7, day: 4, timezone: 'Etc/UTC');

    test('locale th-TH selects thaisolar calendar', () {
      final ILibDateOptions localDate =
          ILibDateOptions(julianday: gregDate.getJulianDay(), locale: 'th-TH');
      expect(localDate.getCalendar(), 'thaisolar');
      // 2024-07-04 Gregorian = 2567-07-04 Thai Solar
      final ILibCalendarDate cd = localDate.toCalendarDate();
      expect(cd.getCalendar(), 'thaisolar');
      expect(cd.getYears(), 2567);
      expect(cd.getMonths(), 7);
      expect(cd.getDays(), 4);
    });

    test('locale am-ET selects ethiopic calendar', () {
      final ILibDateOptions localDate =
          ILibDateOptions(julianday: gregDate.getJulianDay(), locale: 'am-ET');
      expect(localDate.getCalendar(), 'ethiopic');
      // 2024-07-04 Gregorian = 2016-10-26 Ethiopic
      final ILibCalendarDate cd = localDate.toCalendarDate();
      expect(cd.getCalendar(), 'ethiopic');
      expect(cd.getYears(), 2016);
    });

    test('locale ko-KR keeps gregorian calendar', () {
      final ILibDateOptions localDate =
          ILibDateOptions(julianday: gregDate.getJulianDay(), locale: 'ko-KR');
      expect(localDate.getCalendar(), 'gregorian');
      final ILibCalendarDate cd = localDate.toCalendarDate();
      expect(cd.getYears(), 2024);
      expect(cd.getMonths(), 7);
      expect(cd.getDays(), 4);
    });
  });

  // Two-step pattern: build a Gregorian date, extract its Julian Day, then
  // create a locale-specific date via toCalendarDate() with a fixed timezone.
  group('two-step gregorian → julianday → locale calendar', () {
    // 2024-07-04 13:45 Africa/Addis_Ababa (UTC+3)
    final ILibDateOptions gregDate = ILibDateOptions(
      type: 'gregorian',
      year: 2024,
      month: 7,
      day: 4,
      hour: 13,
      minute: 45,
      timezone: 'Africa/Addis_Ababa',
    );

    test('am-ET → ethiopic with timezone preserved', () {
      final ILibCalendarDate localDate = ILibDateOptions(
        julianday: gregDate.getJulianDay(),
        locale: 'am-ET',
        timezone: 'Africa/Addis_Ababa',
      ).toCalendarDate();
      expect(localDate.getCalendar(), 'ethiopic');
      // 2024-07-04 13:45 Addis Ababa = 2016-10-27 13:45 Ethiopic
      expect(localDate.getYears(), 2016);
      expect(localDate.getMonths(), 10);
      expect(localDate.getDays(), 27);
      expect(localDate.getHours(), 7);
      expect(localDate.getMinutes(), 45);
    });

    test('th-TH → thaisolar with timezone preserved', () {
      // 2024-07-04 13:45 Addis Ababa = 2024-07-04 17:45 Bangkok (UTC+7)
      final ILibCalendarDate localDate = ILibDateOptions(
        julianday: gregDate.getJulianDay(),
        locale: 'th-TH',
        timezone: 'Asia/Bangkok',
      ).toCalendarDate();
      expect(localDate.getCalendar(), 'thaisolar');
      // 2024-07-04 Gregorian = 2567-07-04 Thai Solar
      expect(localDate.getYears(), 2567);
      expect(localDate.getMonths(), 7);
      expect(localDate.getDays(), 4);
      expect(localDate.getHours(), 17);
      expect(localDate.getMinutes(), 45);
    });
  });

  // An absolute instant is Gregorian; the formatter's calendar (not the
  // caller's type/calendar) decides how it renders.
  group('absolute instant with caller type/calendar', () {
    // 2024-07-04 00:00 UTC
    final int ut = DateTime.utc(2024, 7, 4).millisecondsSinceEpoch;

    test('unixtime + type:islamic → gregorian formatter stays 2024-07-04', () {
      final ILibDateOptions date =
          ILibDateOptions(unixtime: ut, type: 'islamic');
      final String out = ILibDateFmt(ILibDateFmtOptions(
        locale: 'en-US',
        length: 'long',
        type: 'date',
        useNative: false,
        timezone: 'Etc/UTC',
      )).format(date);
      expect(out, 'July 4, 2024');
    });

    test('unixtime → islamic formatter renders islamic date', () {
      final ILibDateOptions date = ILibDateOptions(unixtime: ut);
      final String out = ILibDateFmt(ILibDateFmtOptions(
        locale: 'en-US',
        calendar: 'islamic',
        length: 'long',
        type: 'date',
        useNative: false,
        timezone: 'Etc/UTC',
      )).format(date);
      // 2024-07-04 Gregorian = 1445-12-27 Islamic
      expect(out, 'Ḏu al-Ḥijja 27, 1445');
    });
  });
}
