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
}
