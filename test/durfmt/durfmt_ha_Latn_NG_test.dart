import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_ha_Latn_NG_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ILibJS.instance.loadILibLocaleData('ha-Latn-NG');
  });

  group('ILibDurationFmt ha-Latn-NG', () {
    test('testDurFmtHAFormatShortDefaultStyle', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ha-Latn-NG', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), 'shkr 1, w1, m1, r1, s1, minti1, d 1');
    });

    test('testDurFmtHAFormatShortText', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ha-Latn-NG', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), 'shkr 1, w1, m1, r1, s1, minti1, d 1');
    });

    test('testDurFmtHAFormatShortClock', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ha-Latn-NG', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? 'shkr 1, w1, m1, r1, 1:01:01'
          : 'shkr 1, w1, m1, r1, 01:01:01';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtHAFormatMedium', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ha-Latn-NG', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), 'shkr 1, w1, m1, r1, s1, minti1, d 1');
    });

    test('testDurFmtHAFormatLong', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ha-Latn-NG', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          'shkr 1, wat 1, mk 1, rana 1, s 1, mnt 1, d 1');
    });

    test('testDurFmtHAFormatFull', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ha-Latn-NG', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          'shekara 1, wata 1, mako 1, rana 1, sa′a 1, minti 1, daƙiƙa 1');
    });
  });
}
