import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_or_IN_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibDurationFmt or-IN', () {
    test('testDurFmtORFormatShortDefaultStyle', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'or-IN', length: 'short'),
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
          '1ବର୍ଷ 1ମାସ 1ସପ୍ 1ଦିନ 1ଘଣ୍ଟା 1ମିନିଟ୍‌ 1ସେକ୍');
    });

    test('testDurFmtORFormatShortText', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'or-IN', length: 'short', style: 'text'),
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
          '1ବର୍ଷ 1ମାସ 1ସପ୍ 1ଦିନ 1ଘଣ୍ଟା 1ମିନିଟ୍‌ 1ସେକ୍');
    });

    test('testDurFmtORFormatShortClock', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'or-IN', length: 'short', style: 'clock'),
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
      expect(fmt.format(dateOptions), '1ବର୍ଷ 1ମାସ 1ସପ୍ 1ଦିନ 1:01:01');
    });

    test('testDurFmtORFormatMedium', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'or-IN', length: 'medium'),
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
          '1ବର୍ଷ 1ମାସ 1ସପ୍ 1ଦିନ 1ଘଣ୍ଟା 1ମିନିଟ୍‌ 1ସେକ୍');
    });

    test('testDurFmtORFormatLong', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'or-IN', length: 'long'),
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
          '1 ବର୍ଷ, 1 ମାସ, 1 ସପ୍ତାହ, 1 ଦିନ, 1 ଘଣ୍ଟା, 1 ମିନିଟ୍‌, 1 ସେକେଣ୍ଡ');
    });

    test('testDurFmtORFormatFull', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'or-IN', length: 'full'),
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
          '1 ବର୍ଷ, 1 ମାସ, 1 ସପ୍ତାହ, 1 ଦିନ, 1 ଘଣ୍ଟା, 1 ମିନିଟ୍‌, 1 ସେକେଣ୍ଡ');
    });
  });
}
