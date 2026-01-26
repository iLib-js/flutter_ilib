import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_sw_KE_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibDurationFmt sw-KE', () {
    test('testDurFmtKEFormatShortDefaultStyle', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'sw-Latn-KE', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1);
      expect(fmt.format(dateOptions),
          'mwaka 1, mwezi 1, wiki 1, siku 1, saa 1, dak 1, sek 1');
    });

    test('testDurFmtKEFormatShortText', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'sw-Latn-KE', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1);
      expect(fmt.format(dateOptions),
          'mwaka 1, mwezi 1, wiki 1, siku 1, saa 1, dak 1, sek 1');
    });

    test('testDurFmtKEFormatShortClock', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'sw-Latn-KE', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1);
      expect(fmt.format(dateOptions),
          'mwaka 1, mwezi 1, wiki 1, siku 1, 01:01:01');
    });

    test('testDurFmtKEFormatMedium', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'sw-Latn-KE', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1);
      expect(fmt.format(dateOptions),
          'mwaka 1, mwezi 1, wiki 1, siku 1, saa 1, dak 1, sek 1');
    });

    test('testDurFmtKEFormatLong', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'sw-Latn-KE', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1);
      expect(fmt.format(dateOptions),
          'mwaka 1, mwezi 1, wiki 1, siku 1, saa 1, dakika 1, sekunde 1');
    });

    test('testDurFmtKEFormatFull', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'sw-Latn-KE', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1);
      expect(fmt.format(dateOptions),
          'mwaka 1, mwezi 1, wiki 1, siku 1, saa 1, dakika 1 na sekunde 1');
    });
  });
}
