import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [timezone_extra_test.dart] file.');

  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('getRawOffsetMinutes() extra', () {
    test('testTZGetRawOffsetPositive', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Shanghai');
      expect(tz.getRawOffsetMinutes(), 480);
    });

    test('testTZGetRawOffsetHalfHour', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Lord_Howe');
      expect(tz.getRawOffsetMinutes(), 630);
    });

    test('testTZGetRawOffsetUnknown', () {
      final ILibTimeZone tz = ILibTimeZone('Unknown/Zone');
      expect(tz.getRawOffsetMinutes(), 0);
    });

    test('testTZGetRawOffsetEuropeBerlin', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      expect(tz.getRawOffsetMinutes(), 60);
    });

    test('testTZGetRawOffsetAustraliaBrokenHill', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Broken_Hill');
      expect(tz.getRawOffsetMinutes(), 570);
    });
  });

  group('getDSTSavingsMinutes() extra', () {
    test('testTZGetDSTSavingsEuropeBerlin', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      expect(tz.getDSTSavingsMinutes(), 60);
    });

    test('testTZGetDSTSavingsAsiaTokyo', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Tokyo');
      expect(tz.getDSTSavingsMinutes(), 0);
    });
  });

  group('useDaylightTime() extra', () {
    test('testTZUseDaylightTimeEuropeBerlin', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      expect(tz.useDaylightTime(), true);
    });

    test('testTZUseDaylightTimeAustraliaSydney', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      expect(tz.useDaylightTime(), true);
    });
  });

  group('getCountry() extra', () {
    test('testTZGetCountryUnknown', () {
      final ILibTimeZone tz = ILibTimeZone('Unknown/Zone');
      expect(tz.getCountry(), '');
    });

    test('testTZGetCountryAustralia', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      expect(tz.getCountry(), 'AU');
    });
  });

  group('inDaylightTime() extra', () {
    test('testTZInDaylightTimeEuropeBerlinSummer', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeEuropeBerlinWinter', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeLinkedZoneBratislava', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Bratislava');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(jan1), false);
      expect(tz.inDaylightTime(jul1), true);
    });

    test('testTZInDaylightTimeMultiLevelZoneName', () {
      final ILibTimeZone tz = ILibTimeZone('America/Indiana/Marengo');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(jan1), false);
      expect(tz.inDaylightTime(jul1), true);
    });
  });

  group('getOffsetMinutes() extra', () {
    test('testTZLinkedZonesRightOffset2', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Bratislava');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(jan1), 60);
      expect(tz.getOffsetMinutes(jul1), 120);
    });

    test('testTZMultiLevelZoneOffset', () {
      final ILibTimeZone tz = ILibTimeZone('America/Indiana/Marengo');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(jan1), -300);
      expect(tz.getOffsetMinutes(jul1), -240);
    });
  });

  group('getDisplayName() extra', () {
    test('testTZDisplayNameESWithDSTRfc822', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+0200');
    });

    test('testTZDisplayNameESNoDSTRfc822', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+0100');
    });

    test('testTZDisplayNameLordHoweDSTRfc822', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Lord_Howe');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+1100');
    });

    test('testTZDisplayNameLordHoweNoDSTRfc822', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Lord_Howe');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+1030');
    });

    test('testTZDisplayNameUnknownZone', () {
      final ILibTimeZone tz = ILibTimeZone('Unknown/Zone');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'UTC');
    });
  });

  // flutter_ilib-specific: a Flutter DateTime passed via ILibDateOptions(dateTime:) is the
  // Dart equivalent of JS's "NonIDate" tests (a native JS Date converted internally by
  // DateFactory._dateToIlib). The instant flows through unixtime, so getOffset /
  // inDaylightTime / getDisplayName must yield the same result as the IDate (components)
  // versions. America/Los_Angeles is data-driven (zoneinfo), so these are host-independent.
  group('DateTime input (ILibDateOptions.dateTime)', () {
    test('testTZGetOffsetDateTimeSummer', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd =
          ILibDateOptions(dateTime: DateTime.utc(2011, 8, 1));
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetDateTimeWinter', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd =
          ILibDateOptions(dateTime: DateTime.utc(2011, 12, 1));
      expect(tz.getOffset(gd), <String, int>{'h': -8});
    });

    test('testTZInDaylightTimeDateTimeSummer', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd =
          ILibDateOptions(dateTime: DateTime.utc(2011, 8, 1));
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeDateTimeWinter', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd =
          ILibDateOptions(dateTime: DateTime.utc(2011, 12, 1));
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZDisplayNameDateTimeSummer', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd =
          ILibDateOptions(dateTime: DateTime.utc(2011, 8, 1));
      expect(tz.getDisplayName(gd, 'standard'), 'PDT');
    });

    test('testTZDisplayNameDateTimeWinter', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd =
          ILibDateOptions(dateTime: DateTime.utc(2011, 12, 1));
      expect(tz.getDisplayName(gd, 'standard'), 'PST');
    });
  });

  // flutter_ilib-specific: system-timezone ('local') tests with no 1:1 JS counterpart.
  // America/Los_Angeles is emulated hermetically via the injectable offset hooks so the
  // tests are deterministic on any host (PST -480 in winter, PDT -420 in summer).
  group('local timezone (system) extra', () {
    late double Function(int, int, int, int, int) savedSysOffset;
    late double Function(int) savedSysOffsetForInstant;
    late int Function() savedSampleYear;

    bool laIsDst(int month) => month > 3 && month < 11;

    setUp(() {
      savedSysOffset = ILibTimeZone.sysWallOffsetMinutes;
      savedSysOffsetForInstant = ILibTimeZone.sysOffsetMinutesForInstant;
      savedSampleYear = ILibTimeZone.sampleYear;
      ILibTimeZone.sysWallOffsetMinutes =
          (int y, int m, int d, int h, int mi) => laIsDst(m) ? -420.0 : -480.0;
      ILibTimeZone.sysOffsetMinutesForInstant = (int ms) {
        final DateTime d = DateTime.fromMillisecondsSinceEpoch(ms, isUtc: true);
        return laIsDst(d.month) ? -420.0 : -480.0;
      };
      ILibTimeZone.sampleYear = () => 2011;
    });

    tearDown(() {
      ILibTimeZone.sysWallOffsetMinutes = savedSysOffset;
      ILibTimeZone.sysOffsetMinutesForInstant = savedSysOffsetForInstant;
      ILibTimeZone.sampleYear = savedSampleYear;
    });

    test('testTZUseDaylightTimeLocal', () {
      final ILibTimeZone tz = ILibTimeZone('local');
      expect(tz.useDaylightTime(), true);
    });

    test('testTZGetOffsetLocalSummer', () {
      final ILibTimeZone tz = ILibTimeZone('local');
      final ILibDateOptions gd = ILibDateOptions(
          timezone: 'local', unixtime: 1309478400000); // 2011-07-01 00:00 UTC
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetLocalWinter', () {
      final ILibTimeZone tz = ILibTimeZone('local');
      final ILibDateOptions gd = ILibDateOptions(
          timezone: 'local', unixtime: 1325376000000); // 2012-01-01 00:00 UTC
      expect(tz.getOffset(gd), <String, int>{'h': -8});
    });
  });

  // flutter_ilib-specific: DST spring-forward gap (a non-existent wall time). Mirrors the
  // JS GregorianDate._init hBefore correction — the typed wall time inside the missing hour
  // is interpreted with the pre-transition (standard) offset. Emulates the real 2011
  // America/Los_Angeles transition (PST->PDT at Mar 13 02:00) so it is deterministic.
  group('local timezone spring-forward gap extra', () {
    late double Function(int, int, int, int, int) savedSysOffset;
    late double Function(int) savedSysOffsetForInstant;
    late int Function() savedSampleYear;

    // 2011 LA DST window: wall Mar 13 02:00 .. Nov 6 02:00 is PDT (-420); else PST (-480).
    double laWall(int y, int mo, int d, int h, int mi) {
      final bool afterStart =
          mo > 3 || (mo == 3 && d > 13) || (mo == 3 && d == 13 && h >= 2);
      final bool beforeEnd =
          mo < 11 || (mo == 11 && d < 6) || (mo == 11 && d == 6 && h < 2);
      return (afterStart && beforeEnd) ? -420.0 : -480.0;
    }

    setUp(() {
      savedSysOffset = ILibTimeZone.sysWallOffsetMinutes;
      savedSysOffsetForInstant = ILibTimeZone.sysOffsetMinutesForInstant;
      savedSampleYear = ILibTimeZone.sampleYear;
      ILibTimeZone.sysWallOffsetMinutes = laWall;
      final int dstStart = DateTime.utc(2011, 3, 13, 10).millisecondsSinceEpoch;
      final int dstEnd = DateTime.utc(2011, 11, 6, 9).millisecondsSinceEpoch;
      ILibTimeZone.sysOffsetMinutesForInstant =
          (int ms) => (ms >= dstStart && ms < dstEnd) ? -420.0 : -480.0;
      ILibTimeZone.sampleYear = () => 2011;
    });

    tearDown(() {
      ILibTimeZone.sysWallOffsetMinutes = savedSysOffset;
      ILibTimeZone.sysOffsetMinutesForInstant = savedSysOffsetForInstant;
      ILibTimeZone.sampleYear = savedSampleYear;
    });

    test('testTZLocalSpringForwardGapUsesStandardOffset', () {
      // 2011-03-13 02:30 local does not exist. JS uses the pre-transition PST (-8h):
      // 02:30 -> 10:30 UTC, NOT the post-transition PDT (-7h -> 09:30 UTC).
      final GregorianDate gd = GregorianDate(
          year: 2011,
          month: 3,
          day: 13,
          hour: 2,
          minute: 30,
          timezone: 'local');
      expect(gd.getTime(),
          DateTime.utc(2011, 3, 13, 10, 30).millisecondsSinceEpoch);
    });

    test('testTZLocalNonGapUsesEngineOffset', () {
      // A normal summer wall time is not in a gap: PDT (-7h), 02:30 -> 09:30 UTC.
      final GregorianDate gd = GregorianDate(
          year: 2011, month: 7, day: 1, hour: 2, minute: 30, timezone: 'local');
      expect(
          gd.getTime(), DateTime.utc(2011, 7, 1, 9, 30).millisecondsSinceEpoch);
    });
  });
}
