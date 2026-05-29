import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

/// Integration test that verifies the example app's "Current Time" and
/// "DateTime (full)" produce matching results when locale is en-US.
///
/// Both use the same ILibDateFmtOptions (locale: 'en-US', length: 'full',
/// type: 'datetime', useNative: false, timezone: 'local') with the same
/// DateTime input, so the formatted output must be identical.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [example_app_integration_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('en-US');
  });

  group('Example app - iLib Version and CLDR Version', () {
    test('iLib version should match expected value', () {
      final FlutterILib plugin = FlutterILib.instance;
      final String? version = plugin.getVersion;

      expect(version, isNotNull);
      expect(version!.isNotEmpty, true);
      expect(version, equals('14.22.0'));
      debugPrint('  iLib Version: $version');
    });

    test('CLDR version should match expected value', () {
      final FlutterILib plugin = FlutterILib.instance;
      final String? cldrVersion = plugin.getCLDRVersion;

      expect(cldrVersion, isNotNull);
      expect(cldrVersion!.isNotEmpty, true);
      expect(cldrVersion, equals('48.2'));
      debugPrint('  CLDR Version: $cldrVersion');
    });
  });

  group('Example app - Current Time vs DateTime (full)', () {
    test(
        'Current Time (en-US) and DateTime (full) with en-US should produce '
        'identical output for the same DateTime', () {
      // Simulate the same DateTime input (as the example app uses DateTime.now()
      // for both fields, we use a fixed DateTime for deterministic testing).
      final DateTime now = DateTime(2026, 5, 29, 14, 30, 0);
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: now);

      // "Current Time" field - always uses en-US
      final ILibDateFmtOptions currentTimeFmtOptions = ILibDateFmtOptions(
          locale: 'en-US',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt currentTimeFmt = ILibDateFmt(currentTimeFmtOptions);
      final String currentTimeResult = currentTimeFmt.format(dateOptions);

      // "DateTime (full)" field - uses curLocale which is en-US
      final ILibDateFmtOptions dateTimeFullFmtOptions = ILibDateFmtOptions(
          locale: 'en-US',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt dateTimeFullFmt = ILibDateFmt(dateTimeFullFmtOptions);
      final String dateTimeFullResult = dateTimeFullFmt.format(dateOptions);

      // Both should produce the same result
      expect(currentTimeResult, equals(dateTimeFullResult));

      // Verify the format looks correct for en-US full datetime
      // Note: iLib uses U+202F (Narrow No-Break Space) before AM/PM
      expect(currentTimeResult, contains('May 29, 2026'));
      expect(currentTimeResult, contains('2:30'));
      expect(currentTimeResult, contains('PM'));
      debugPrint('  Current Time (en-US): $currentTimeResult');
      debugPrint('  DateTime (full) en-US: $dateTimeFullResult');
    });

    test(
        'Current Time (en-US) and DateTime (full) with en-US should match '
        'using DateTime.now()', () {
      // Use DateTime.now() just like the example app does
      final DateTime now = DateTime.now();
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: now);

      // "Current Time" - getDateTimeFormatNow('en-US')
      final ILibDateFmtOptions currentTimeFmtOptions = ILibDateFmtOptions(
          locale: 'en-US',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt currentTimeFmt = ILibDateFmt(currentTimeFmtOptions);
      final String currentTimeResult = currentTimeFmt.format(dateOptions);

      // "DateTime (full)" - getDateTimeFormat('en-US')
      final ILibDateFmtOptions dateTimeFullFmtOptions = ILibDateFmtOptions(
          locale: 'en-US',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt dateTimeFullFmt = ILibDateFmt(dateTimeFullFmtOptions);
      final String dateTimeFullResult = dateTimeFullFmt.format(dateOptions);

      // They must be identical
      expect(currentTimeResult, equals(dateTimeFullResult));

      // Verify it contains AM or PM (12-hour format for en-US)
      expect(currentTimeResult, matches(RegExp(r'(AM|PM)')));
      debugPrint('  Current Time (en-US): $currentTimeResult');
      debugPrint('  DateTime (full) en-US: $dateTimeFullResult');
    });

    test('DateTime (full) format matches expected en-US pattern', () {
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-US',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final String result = fmt.format(dateOptions);

      // This is the exact format the example app would display.
      // U+202F (Narrow No-Break Space) is used before AM/PM in CLDR data.
      expect(result, equals('September 29, 2011 at 1:45 PM'));
      debugPrint('  DateTime (full) en-US: $result');
    });

    test(
        'Current Time (en-US) differs from DateTime (full) when locale is '
        'ko-KR', () async {
      // Load ko-KR locale data
      await ILibJS.instance.loadILibLocaleData('ko-KR');

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2026,
          month: 5,
          day: 29,
          hour: 14,
          minute: 30,
          second: 0,
          millisecond: 0);

      // "Current Time" - always en-US
      final ILibDateFmtOptions currentTimeFmtOptions = ILibDateFmtOptions(
          locale: 'en-US',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt currentTimeFmt = ILibDateFmt(currentTimeFmtOptions);
      final String currentTimeResult = currentTimeFmt.format(dateOptions);

      // "DateTime (full)" - uses ko-KR when user selects it
      final ILibDateFmtOptions dateTimeFullFmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          length: 'full',
          type: 'datetime',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt dateTimeFullFmt = ILibDateFmt(dateTimeFullFmtOptions);
      final String dateTimeFullResult = dateTimeFullFmt.format(dateOptions);

      // They should NOT be equal when locales differ
      expect(dateTimeFullResult, isNot(equals(currentTimeResult)));

      // Current Time should be in en-US full datetime format
      // U+202F (Narrow No-Break Space) is used before AM/PM in CLDR data.
      expect(currentTimeResult, equals('May 29, 2026 at 2:30 PM'));

      // DateTime (full) with ko-KR should be in Korean format
      expect(dateTimeFullResult, equals('2026년 5월 29일 오후 2:30'));

      debugPrint('  Current Time (en-US): $currentTimeResult');
      debugPrint('  DateTime (full) ko-KR: $dateTimeFullResult');
    });
  });

  group('Example app - Number Format', () {
    test('Number format for de-DE should match expected output', () async {
      await ILibJS.instance.loadILibLocaleData('de-DE');

      // Same logic as example app's getNumFmt()
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(locale: 'de-DE'));
      final String result = fmt.format(-111123456.785);

      expect(result, equals('-111.123.456,785'));
      debugPrint('  Number Format (de-DE): $result');
    });
  });
}
