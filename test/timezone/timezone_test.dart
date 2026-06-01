import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [timezone_test.dart] file.');

  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('nl-NL');
  });

  group('getId()', () {
    test('testTZConstructor', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getId(), 'America/Los_Angeles');
    });

    test('testTZGetUnknown', () {
      final ILibTimeZone tz = ILibTimeZone('America/asdfasdfasdf');
      expect(tz.getId(), 'America/asdfasdfasdf');
    });
  });

  group('getRawOffset()', () {
    test('testTZGet', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getRawOffset(), <String, int>{'h': -8});
      expect(tz.getDSTSavings(), <String, int>{'h': 1});
    });

    test('testTZGetRawOffsetDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getRawOffset(), <String, int>{'h': -8});
    });

    test('testTZGetRawOffsetNonDSTZone', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      expect(tz.getRawOffset(), <String, int>{'h': -7});
    });

    test('testTZGetUnknownRawOffset', () {
      final ILibTimeZone tz = ILibTimeZone('America/asdfasdfasdf');
      expect(tz.getRawOffset(), <String, int>{'h': 0});
      expect(tz.getDSTSavings(), <String, int>{'h': 0});
    });
  });

  group('getRawOffsetStr()', () {
    test('testTZGetStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getRawOffsetStr(), '-8:0');
      expect(tz.getDSTSavingsStr(), '1:0');
    });

    test('testTZGetRawOffsetDSTStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getRawOffsetStr(), '-8:0');
    });

    test('testTZGetRawOffsetNonDSTZoneStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      expect(tz.getRawOffsetStr(), '-7:0');
    });

    test('testTZGetUnknownStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/asdfasdfasdf');
      expect(tz.getRawOffsetStr(), '0:0');
      expect(tz.getDSTSavingsStr(), '0:0');
    });
  });

  group('getDSTSavings()', () {
    test('testTZGetDSTSavingsDSTZone', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getDSTSavings(), <String, int>{'h': 1});
    });

    test('testTZGetDSTSavingsDSTZoneOdd', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Lord_Howe');
      expect(tz.getDSTSavings(), <String, int>{'h': 0, 'm': 30});
    });

    test('testTZGetDSTSavingsNonDSTZone', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      expect(tz.getDSTSavings(), <String, int>{'h': 0});
    });

    test('testTZGetDSTSavingsUnknown', () {
      final ILibTimeZone tz = ILibTimeZone('x/y');
      expect(tz.getDSTSavings(), <String, int>{'h': 0});
    });
  });

  group('getDSTSavingsStr()', () {
    test('testTZGetDSTSavingsDSTZoneStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getDSTSavingsStr(), '1:0');
    });

    test('testTZGetDSTSavingsDSTZoneOddStr', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Lord_Howe');
      expect(tz.getDSTSavingsStr(), '0:30');
    });

    test('testTZGetDSTSavingsNonDSTZoneStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      expect(tz.getDSTSavingsStr(), '0:0');
    });

    test('testTZGetDSTSavingsUnknownStr', () {
      final ILibTimeZone tz = ILibTimeZone('x/y');
      expect(tz.getDSTSavingsStr(), '0:0');
    });
  });

  group('getDisplayName()', () {
    test('testTZDisplayNameDSTStandardStyle', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'PDT');
    });

    test('testTZDisplayNameDSTStyleRFC', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC-0700');
    });

    test('testTZDisplayNameDSTDaylightLongStyle', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'long'), 'Pacific Daylight Time');
    });

    test('testTZDisplayNameStandardTime', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'PST');
    });

    test('testTZDisplayNameStandardTimeRFC', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC-0800');
    });

    test('testTZDisplayNameStandardTimeLong', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'long'), 'Pacific Standard Time');
    });

    test('testTZDisplayNameStandardTimeESWithNoDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'CET');
    });

    test('testTZDisplayNameStandardTimeESWithDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Madrid');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'CEST');
    });

    test('testTZDisplayNameNoDST1', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'MST');
    });

    test('testTZDisplayNameNoDST2', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'MST');
    });

    test('testTZDisplayNameEasternRFCWithDST', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Broken_Hill');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+1030');
    });

    test('testTZDisplayNameEasternRFCWithoutDST', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Broken_Hill');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+0930');
    });

    test('testTZDisplayNameNoLetterForDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37);
      expect(tz.getDisplayName(gd, 'standard'), 'CET');
    });

    test('testTZDisplayNameStandardID', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Jakarta');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37);
      expect(tz.getDisplayName(gd, 'standard'), 'WIB');
    });

    test('testTZDisplayNameLongID', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Jakarta');
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

  group('getOffset()', () {
    test('testTZGetOffsetDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetNoDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -8});
    });

    test('testTZGetOffsetRightBeforeDSTStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 1, minute: 59, second: 59);
      expect(tz.getOffset(gd), <String, int>{'h': -8});
    });

    test('testTZGetOffsetRightAfterDSTStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 2, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetRightBeforeDSTEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 1, minute: 59, second: 59);
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetRightAfterDSTEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 2, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -8});
    });

    test('testTZGetOffsetRightAfterDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 3, day: 9, hour: 3, minute: 1, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetNonDSTZone1', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });

    test('testTZGetOffsetNonDSTZone2', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -7});
    });
  });

  group('getOffsetStr()', () {
    test('testTZGetOffsetDSTStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetStr(gd), '-7:0');
    });

    test('testTZGetOffsetNoDSTStr', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetStr(gd), '-8:0');
    });

    test('testTZGetOffsetNonDSTZone1Str', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetStr(gd), '-7:0');
    });

    test('testTZGetOffsetNonDSTZone2Str', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetStr(gd), '-7:0');
    });
  });

  group('inDaylightTime()', () {
    test('testTZInDaylightTimeTrue', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeFalse', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeNonDSTZone', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeUnknown', () {
      final ILibTimeZone tz = ILibTimeZone('x/y');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustBeforeStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 1, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustAfterStart', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 3, day: 13, hour: 2, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustBeforeEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 1, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustAfterEnd', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 11, day: 2, hour: 2, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustBeforeStartDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 10, day: 5, hour: 1, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZInDaylightTimeJustAfterStartDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2014, month: 10, day: 5, hour: 2, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustBeforeEndDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 4, day: 3, hour: 2, minute: 59, second: 59);
      expect(tz.inDaylightTime(gd), true);
    });

    test('testTZInDaylightTimeJustAfterEndDownUnder', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 4, day: 3, hour: 3, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });
  });

  group('useDaylightTime()', () {
    test('testTZUseDaylightTime', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.useDaylightTime(), true);
    });

    test('testTZUseDaylightTimeNonDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      expect(tz.useDaylightTime(), false);
    });

    test('testTZUseDaylightTimeUnknown', () {
      final ILibTimeZone tz = ILibTimeZone('x/y');
      expect(tz.useDaylightTime(), false);
    });

    test('testTZUseDaylightTimeID', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Jakarta');
      expect(tz.useDaylightTime(), false);
    });
  });

  group('getCountry()', () {
    test('testTZGetCountry1', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getCountry(), 'US');
    });

    test('testTZGetCountry2', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Berlin');
      expect(tz.getCountry(), 'DE');
    });

    test('testTZGetCountry3', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Kiev');
      expect(tz.getCountry(), 'UA');
    });
  });

  group('linked zones', () {
    test('testTZLinkedZonesUseDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Zagreb');
      expect(tz.useDaylightTime(), true);
    });

    test('testTZLinkedZonesInDST', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Zagreb');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(jan1), false);
      expect(tz.inDaylightTime(jul1), true);
    });

    test('testTZLinkedZonesRightOffset', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Zagreb');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(jan1), <String, int>{'h': 1});
      expect(tz.getOffset(jul1), <String, int>{'h': 2});
    });

    test('testTZLinkedZonesUseDST2', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Bratislava');
      expect(tz.useDaylightTime(), true);
    });

    test('testTZLinkedZonesInDST2', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Bratislava');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(jan1), false);
      expect(tz.inDaylightTime(jul1), true);
    });

    test('testTZLinkedZonesRightOffset2', () {
      final ILibTimeZone tz = ILibTimeZone('Europe/Bratislava');
      final ILibDateOptions jan1 = ILibDateOptions(
          year: 2014, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final ILibDateOptions jul1 = ILibDateOptions(
          year: 2014, month: 7, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(jan1), <String, int>{'h': 1});
      expect(tz.getOffset(jul1), <String, int>{'h': 2});
    });

    test('testTZMultiLevelZoneName', () {
      final ILibTimeZone tz = ILibTimeZone('America/Indiana/Marengo');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffset(gd), <String, int>{'h': -5});
    });
  });

  group('fromOffset()', () {
    test('testTZOffsetGetRawOffset', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(420);
      expect(tz.getRawOffset(), <String, int>{'h': 7});
    });

    test('testTZOffsetGetRawOffsetNegative', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(-450);
      final Map<String, int> offset = tz.getRawOffset();
      expect(offset['h'], -7);
      expect(offset['m'], 30);
    });

    test('testTZOffsetGetRawOffsetStr', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(420);
      expect(tz.getRawOffsetStr(), '7:0');
    });

    test('testTZOffsetGetOffsetWinter', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      final Map<String, int> offset = tz.getOffset(gd);
      expect(offset['h'], 7);
      expect(offset['m'], 30);
    });

    test('testTZOffsetGetOffsetSummer', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      final Map<String, int> offset = tz.getOffset(gd);
      expect(offset['h'], 7);
      expect(offset['m'], 30);
    });

    test('testTZOffsetGetDisplayNameStandard', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'standard'), 'UTC+0730');
    });

    test('testTZOffsetGetDisplayNameRFC', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC+0730');
    });

    test('testTZOffsetGetDisplayNameRFCNegative', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(-510);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getDisplayName(gd, 'rfc822'), 'UTC-0830');
    });

    test('testTZOffsetGetId', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      expect(tz.getId(), 'UTC+0730');
    });

    test('testTZOffsetGetDSTSavings', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      expect(tz.getDSTSavings()['h'], 0);
    });

    test('testTZOffsetGetDSTSavingsStr', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      expect(tz.getDSTSavingsStr(), '0:0');
    });

    test('testTZOffsetGetUseDaylightTime', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      expect(tz.useDaylightTime(), false);
    });

    test('testTZOffsetInDaylightTimeWinter', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 1, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });

    test('testTZOffsetInDaylightTimeSummer', () {
      final ILibTimeZone tz = ILibTimeZone.fromOffset(450);
      final ILibDateOptions gd = ILibDateOptions(
          year: 2012, month: 6, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.inDaylightTime(gd), false);
    });
  });

  group('getOffsetMillis()', () {
    test('testTZGetOffsetMillisDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMillis(gd), -25200000);
    });

    test('testTZGetOffsetMillisNoDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMillis(gd), -28800000);
    });

    test('testTZGetOffsetMillisDSTSouthern', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMillis(gd), 39600000);
    });

    test('testTZGetOffsetMillisNoDSTSouthern', () {
      final ILibTimeZone tz = ILibTimeZone('Australia/Sydney');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMillis(gd), 36000000);
    });

    test('testTZGetOffsetMillisNonDSTZone1', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 8, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMillis(gd), -25200000);
    });

    test('testTZGetOffsetMillisNonDSTZone2', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      final ILibDateOptions gd = ILibDateOptions(
          year: 2011, month: 12, day: 1, hour: 0, minute: 0, second: 0);
      expect(tz.getOffsetMillis(gd), -25200000);
    });
  });

  group('getRawOffsetMillis()', () {
    test('testTZGetRawOffsetMillisDST', () {
      final ILibTimeZone tz = ILibTimeZone('America/Los_Angeles');
      expect(tz.getRawOffsetMillis(), -28800000);
    });

    test('testTZGetRawOffsetMillisDSTEastern', () {
      final ILibTimeZone tz = ILibTimeZone('Asia/Shanghai');
      expect(tz.getRawOffsetMillis(), 28800000);
    });

    test('testTZGetRawOffsetMillisNonDSTZone', () {
      final ILibTimeZone tz = ILibTimeZone('America/Phoenix');
      expect(tz.getRawOffsetMillis(), -25200000);
    });
  });

  group('fromLocale()', () {
    test('testTZGetDefaultForLocale', () {
      final ILibTimeZone tz = ILibTimeZone.fromLocale('nl-NL');
      expect(tz.getId(), 'Europe/Amsterdam');
      expect(tz.getRawOffset(), <String, int>{'h': 1});
      expect(tz.getDSTSavings(), <String, int>{'h': 1});
    });

    test('testTZGetDefaultForLocaleStr', () {
      final ILibTimeZone tz = ILibTimeZone.fromLocale('nl-NL');
      expect(tz.getId(), 'Europe/Amsterdam');
      expect(tz.getRawOffsetStr(), '1:0');
      expect(tz.getDSTSavingsStr(), '1:0');
    });

    test('testTZGetTimeZoneForLocale', () {
      final ILibTimeZone tz = ILibTimeZone.fromLocale('nl-NL');
      expect(tz.getId(), 'Europe/Amsterdam');
    });

    test('testTZGetTimeZoneForLocaleUnknown', () {
      final ILibTimeZone tz = ILibTimeZone.fromLocale('zz-YY');
      expect(tz.getId(), 'Etc/UTC');
    });
  });

  group('getAvailableIds()', () {
    test('testTZGetAvailableIds', () {
      final List<String> zones = ILibTimeZone.getAvailableIds();
      expect(zones.isNotEmpty, true);
    });

    test('testTZGetAvailableIdsRightValues', () {
      final List<String> zones = ILibTimeZone.getAvailableIds();
      expect(zones.contains('Europe/London'), true);
      expect(zones.contains('America/Los_Angeles'), true);
      expect(zones.contains('Australia/Sydney'), true);
      expect(zones.contains('Asia/Tokyo'), true);
      expect(zones.contains('Africa/Cairo'), true);
    });

    test('testTZGetAvailableIdsNoFilterContainsLocal', () {
      final List<String> zones = ILibTimeZone.getAvailableIds();
      expect(zones.contains('local'), true);
    });

    test('testTZGetAvailableIdsWithFilterContainsNoLocal', () {
      final List<String> zones = ILibTimeZone.getAvailableIds('US');
      expect(zones.contains('local'), false);
    });

    test('testTZGetAvailableIdsByCountryRightLength', () {
      final List<String> zones = ILibTimeZone.getAvailableIds('US');
      expect(zones.length, 40);
    });

    // Skip: zonetab.json not included in assets, deprecated aliases missing
    test('testTZGetAvailableIdsByCountry2RightLength', () {
      final List<String> zones = ILibTimeZone.getAvailableIds('SG');
      expect(zones.length, 2);
    }, skip: 'zonetab.json not included — no deprecated aliases');

    test('testTZGetAvailableIdsByCountry2RightContents', () {
      final List<String> zones = ILibTimeZone.getAvailableIds('SG');
      expect(zones.contains('Asia/Singapore'), true);
      expect(zones.contains('Singapore'), true);
    }, skip: 'zonetab.json not included — no deprecated aliases');

    test('testTZGetAvailableIdsByCountry3RightLength', () {
      final List<String> zones = ILibTimeZone.getAvailableIds('IN');
      expect(zones.length, 2);
    }, skip: 'zonetab.json not included — no deprecated aliases');

    test('testTZGetAvailableIdsByCountry3RightContents', () {
      final List<String> zones = ILibTimeZone.getAvailableIds('IN');
      expect(zones.contains('Asia/Kolkata'), true);
      expect(zones.contains('Asia/Calcutta'), true);
    }, skip: 'zonetab.json not included — no deprecated aliases');
  });
}
