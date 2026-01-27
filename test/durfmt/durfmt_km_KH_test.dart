import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_km_KH_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ILibJS.instance.loadILibLocaleData('km-KH');
  });

  group('ILibDurationFmt km-KH', () {
    test('testDurFmtKHFormatShortDefaultStyle', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'km-KH', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ 1 ម៉ោង 1 នាទី 1 វិនាទី');
    });

    test('testDurFmtKHFormatShortText', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'km-KH', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ 1 ម៉ោង 1 នាទី 1 វិនាទី');
    });

    test('testDurFmtKHFormatShortClock', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'km-KH', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ 1:01:01');
    });

    test('testDurFmtKHFormatMedium', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'km-KH', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ 1 ម៉ោង 1 នាទី 1 វិនាទី');
    });

    test('testDurFmtKHFormatLong', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'km-KH', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ 1 ម៉ោង 1 នាទី 1 វិនាទី');
    });

    test('testDurFmtKHFormatFull', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'km-KH', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ 1 ម៉ោង 1 នាទី 1 វិនាទី');
    });
  });
}
