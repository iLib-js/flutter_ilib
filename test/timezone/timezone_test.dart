import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [timezone_test.dart] file.');

  late Map<String, dynamic> zoneInfo;

  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    ILibLoader.instance.initILib();
    await ILibLoader.instance.loadILibLocaleData('en-US');
    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData('en-US');
    zoneInfo =
        (localeData?['ilib.data.zoneinfo'] as Map<String, dynamic>?) ??
            <String, dynamic>{};
  });

  group('getId()', () {
    test('testTZGetId', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      expect(tz.getId(), 'America/Los_Angeles');
    });

    test('testTZGetIdEuropeBerlin', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin', zoneInfo);
      expect(tz.getId(), 'Europe/Berlin');
    });

    test('testTZGetIdAsiaTokyo', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Tokyo', zoneInfo);
      expect(tz.getId(), 'Asia/Tokyo');
    });

    test('testTZGetIdAustraliasSydney', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      expect(tz.getId(), 'Australia/Sydney');
    });
  });

  group('getOffsetMinutes()', () {
    test('testTZGetOffsetDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), -420);
    });

    test('testTZGetOffsetNoDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), -480);
    });

    test('testTZGetOffsetNonDSTZoneSummer', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), -420);
    });

    test('testTZGetOffsetNonDSTZoneWinter', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), -420);
    });

    test('testTZGetOffsetDSTSouthernSummer', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), 660);
    });

    test('testTZGetOffsetNoDSTSouthernWinter', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), 600);
    });

    test('testTZGetOffsetRightBeforeDSTStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 1, minute: 59, second: 59);
      expect(tz.getOffsetMinutes(gd), -480);
    });

    test('testTZGetOffsetRightAfterDSTStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 2, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), -420);
    });

    test('testTZGetOffsetRightBeforeDSTEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 1, minute: 59, second: 59);
      expect(tz.getOffsetMinutes(gd), -420);
    });

    test('testTZGetOffsetRightAfterDSTEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 2, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), -480);
    });

    test('testTZGetOffsetEuropeMadridDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), 120);
    });

    test('testTZGetOffsetEuropeMadridNoDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), 60);
    });

    test('testTZGetOffsetAsiaShanghai', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Shanghai', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMinutes(gd), 480);
    });
  });

  group('getDisplayName()', () {
    test('testTZDisplayNameDSTStandard', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'PDT');
    });

    test('testTZDisplayNameNoDSTStandard', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'PST');
    });

    test('testTZDisplayNameDSTRfc822', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC-0700');
    });

    test('testTZDisplayNameNoDSTRfc822', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC-0800');
    });

    test('testTZDisplayNameDSTLong', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'long'), 'Pacific Daylight Time');
    });

    test('testTZDisplayNameNoDSTLong', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'long'), 'Pacific Standard Time');
    });

    test('testTZDisplayNameESWithDSTStandard', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'CEST');
    });

    test('testTZDisplayNameESNoDSTStandard', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'CET');
    });

    test('testTZDisplayNameNoDSTZoneSummer', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'MST');
    });

    test('testTZDisplayNameNoDSTZoneWinter', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'MST');
    });

    test('testTZDisplayNameEasternRFCWithDST', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Broken_Hill', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+1030');
    });

    test('testTZDisplayNameEasternRFCWithoutDST', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Broken_Hill', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+0930');
    });

    test('testTZDisplayNameEuropeBerlinNoDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37);
      expect(tz.getDisplayName(gd, 'standard'), 'CET');
    });

    test('testTZDisplayNameAsiaJakartaStandard', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Jakarta', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37);
      expect(tz.getDisplayName(gd, 'standard'), 'WIB');
    });

    test('testTZDisplayNameAsiaJakartaLong', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Jakarta', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37);
      expect(tz.getDisplayName(gd, 'long'), 'SE Asia Standard Time');
    });
  });

  group('inDaylightTime()', () {
    test('testTZInDaylightTimeTrue', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeFalse', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeNonDSTZone', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustBeforeStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 1, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustAfterStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 2, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustBeforeEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 1, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustAfterEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 2, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustBeforeStartDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 10, day: 5, hour: 1, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustAfterStartDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 10, day: 5, hour: 2, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustBeforeEndDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 4, day: 3, hour: 2, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustAfterEndDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 4, day: 3, hour: 3, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeEuropeBerlinSummer', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeEuropeBerlinWinter', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin', zoneInfo);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeLinkedZoneZagreb', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Zagreb', zoneInfo);
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(jan1), false);
      expect(tz.inDaylightTime(jul1), true);
    });
  });
}
