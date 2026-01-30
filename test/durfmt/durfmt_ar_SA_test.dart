import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_ar_SA_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ILibJS.instance.loadILibLocaleData('ar-SA');
  });

  group('ILibDurationFmt ar-SA', () {
    test('testDurFmtARFormatShortDefaultStyle1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و١ أ و١ ي و١ س و١ د و١ ث');
    });

    test('testDurFmtARFormatShortText1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و١ أ و١ ي و١ س و١ د و١ ث');
    });

    test('testDurFmtARFormatShortClock1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و١ أ و١ ي و‏١:٠١:٠١');
    });

    test('testDurFmtARFormatMedium1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و١ أ و١ ي و١ س و١ د و١ ث');
    });

    test('testDurFmtARFormatLong1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏سنة، وشهر، وأسبوع، ويوم، و١ س، و١ د، و١ ث');
    });

    test('testDurFmtARFormatFull1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏سنة، وشهر، وأسبوع، ويوم، وساعة، ودقيقة، وثانية');
    });

    test('testDurFmtARFormatShortDefaultStyle2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      expect(fmt.format(dateOptions), '‏سنتان وشهران و٢ أ و٢ ي و٢ س و٢ د و٢ ث');
    });

    test('testDurFmtARFormatShortText2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      expect(fmt.format(dateOptions), '‏سنتان وشهران و٢ أ و٢ ي و٢ س و٢ د و٢ ث');
    });

    test('testDurFmtARFormatShortClock2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      expect(fmt.format(dateOptions), '‏سنتان وشهران و٢ أ و٢ ي و‏٢:٠٢:٠٢');
    });

    test('testDurFmtARFormatMedium2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      expect(fmt.format(dateOptions), '‏سنتان وشهران و٢ أ و٢ ي و٢ س و٢ د و٢ ث');
    });

    test('testDurFmtARFormatLong2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      expect(fmt.format(dateOptions),
          '‏سنتان، وشهران، وأسبوعان، ويومان، و٢ س، و٢ د، و٢ ث');
    });

    test('testDurFmtARFormatFull2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      expect(fmt.format(dateOptions),
          '‏سنتان، وشهران، وأسبوعان، ويومان، وساعتان، ودقيقتان، وثانيتان');
    });

    test('testDurFmtARFormatShortDefaultStyle3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      expect(
          fmt.format(dateOptions), '‏٣ سنوات و٣ أشهر و٣ أ و٣ ي و٣ س و٣ د و٣ ث');
    });

    test('testDurFmtARFormatShortText3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      expect(
          fmt.format(dateOptions), '‏٣ سنوات و٣ أشهر و٣ أ و٣ ي و٣ س و٣ د و٣ ث');
    });

    test('testDurFmtARFormatShortClock3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      expect(fmt.format(dateOptions), '‏٣ سنوات و٣ أشهر و٣ أ و٣ ي و‏٣:٠٣:٠٣');
    });

    test('testDurFmtARFormatMedium3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      expect(
          fmt.format(dateOptions), '‏٣ سنوات و٣ أشهر و٣ أ و٣ ي و٣ س و٣ د و٣ ث');
    });

    test('testDurFmtARFormatLong3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      expect(fmt.format(dateOptions),
          '‏٣ سنوات، و٣ أشهر، و٣ أسابيع، و٣ أيام، و٣ س، و٣ د، و٣ ث');
    });

    test('testDurFmtARFormatFull3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      expect(fmt.format(dateOptions),
          '‏٣ سنوات، و٣ أشهر، و٣ أسابيع، و٣ أيام، و٣ ساعات، و٣ دقائق، و٣ ثوانٍ');
    });

    test('testDurFmtARFormatShortDefaultStyle11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 11,
          month: 11,
          week: 11,
          day: 11,
          hour: 11,
          minute: 11,
          second: 11);
      expect(fmt.format(dateOptions),
          '‏١١ سنة و١١ شهرًا و١١ أ و١١ ي و١١ س و١١ د و١١ ث');
    });

    test('testDurFmtARFormatShortText11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 11,
          month: 11,
          week: 11,
          day: 11,
          hour: 11,
          minute: 11,
          second: 11);
      expect(fmt.format(dateOptions),
          '‏١١ سنة و١١ شهرًا و١١ أ و١١ ي و١١ س و١١ د و١١ ث');
    });

    test('testDurFmtARFormatShortClock11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 11,
          month: 11,
          week: 11,
          day: 11,
          hour: 11,
          minute: 11,
          second: 11);
      expect(
          fmt.format(dateOptions), '‏١١ سنة و١١ شهرًا و١١ أ و١١ ي و‏١١:١١:١١');
    });

    test('testDurFmtARFormatMedium11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 11,
          month: 11,
          week: 11,
          day: 11,
          hour: 11,
          minute: 11,
          second: 11);
      expect(fmt.format(dateOptions),
          '‏١١ سنة و١١ شهرًا و١١ أ و١١ ي و١١ س و١١ د و١١ ث');
    });

    test('testDurFmtARFormatLong11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 11,
          month: 11,
          week: 11,
          day: 11,
          hour: 11,
          minute: 11,
          second: 11);
      expect(fmt.format(dateOptions),
          '‏١١ سنة، و١١ شهرًا، و١١ أسبوعًا، و١١ يومًا، و١١ س، و١١ د، و١١ ث');
    });

    test('testDurFmtARFormatFull11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'ar-SA', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 11,
          month: 11,
          week: 11,
          day: 11,
          hour: 11,
          minute: 11,
          second: 11);
      expect(fmt.format(dateOptions),
          '‏١١ سنة، و١١ شهرًا، و١١ أسبوعًا، و١١ يومًا، و١١ ساعة، و١١ دقيقة، و١١ ثانية');
    });

    test('testDurFmtARFormatWesternShortDefaultStyle1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', useNative: false),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و1 أ و1 ي و1 س و1 د و1 ث');
    });

    test('testDurFmtARFormatWesternShortText1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', style: 'text', useNative: false),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و1 أ و1 ي و1 س و1 د و1 ث');
    });

    test('testDurFmtARFormatWesternShortClock1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'short', style: 'clock', useNative: false),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و1 أ و1 ي و‏1:01:01');
    });

    test('testDurFmtARFormatWesternMedium1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'medium', useNative: false),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏سنة وشهر و1 أ و1 ي و1 س و1 د و1 ث');
    });

    test('testDurFmtARFormatWesternLong1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'long', useNative: false),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏سنة، وشهر، وأسبوع، ويوم، و1 س، و1 د، و1 ث');
    });

    test('testDurFmtARFormatWesternFull1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'ar-SA', length: 'full', useNative: false),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏سنة، وشهر، وأسبوع، ويوم، وساعة، ودقيقة، وثانية');
    });
  });
}
