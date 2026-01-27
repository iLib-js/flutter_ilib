import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_az_Latn_AZ_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ILibJS.instance.loadILibLocaleData('az-LAtn-AZ');
  });

  group('ILibDurationFmt az-Latn-AZ', () {
    test('testDurFmtAZFormatShortDefaultStyle', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'az-Latn-AZ', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 il, 1 ay, 1 hft, 1 gün, 1 saat, 1 dəq, 1 san');
    });

    test('testDurFmtAZFormatShortText', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'az-Latn-AZ', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 il, 1 ay, 1 hft, 1 gün, 1 saat, 1 dəq, 1 san');
    });

    test('testDurFmtAZFormatShortClock', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'az-Latn-AZ', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 il, 1 ay, 1 hft, 1 gün, 01:01:01');
    });

    test('testDurFmtAZFormatMedium', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'az-Latn-AZ', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 il, 1 ay, 1 hft, 1 gün, 1 saat, 1 dəq, 1 san');
    });

    test('testDurFmtAZFormatLong', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'az-Latn-AZ', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 il, 1 ay, 1 hft, 1 gün, 1 saat, 1 dəq, 1 san');
    });

    test('testDurFmtAZFormatFull', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'az-Latn-AZ', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 il, 1 ay, 1 həftə, 1 gün, 1 saat, 1 dəqiqə, 1 saniyə');
    });
  });
}
