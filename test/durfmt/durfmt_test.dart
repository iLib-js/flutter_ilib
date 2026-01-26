import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('test_ILibDurationFmt', () {
    test('testDurFmtConstructorEmpty', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions();
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
    });
    test('testDurFmtConstructorDefaultLocale', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions();
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getLocale(), 'en-US');
    });
    test('testDurFmtGetLength', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getLength(), 'full');
    });

    test('testDurFmtGetLengthDefault', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions();
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);
      expect(fmt.getLength(), 'short');
    });
    test('testDurFmtGetLengthBogus', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'asdf');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getLength(), 'short');
    });
    test('testDurFmtGetLocale', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getLocale(), 'de-DE');
    });
    test('testDurFmtGetLocaleDefault', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions();
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getLocale(), 'en-US');
    });
    test('testDurFmtGetLocaleBogus', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zyy-XX');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getLocale(), 'zyy-XX');
    });
    test('testDurFmtGetStyleDefault', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions();
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getStyle(), 'text');
    });
    test('testDurFmtGetStyleText', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getStyle(), 'text');
    });
    test('testDurFmtGetStyleClock', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getStyle(), 'clock');
    });
    test('testDurFmtGetStyleBogus', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(style: 'asdf');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      expect(fmt.getStyle(), 'text');
    });
    test('testDurFmtFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y 1m 1w 1d 1h 1m 1s 1ms');
    });

    test('testDurFmtFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y 1m 1w 1d 1:01:01');
    });
    test('testDurFmtFormatShortExceedClockLimitsNoWrap', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 36, minute: 65, second: 66);
      expect(fmt.format(dateOptions), '1y 1m 1w 1d 36:65:66');
    });
    test('testDurFmtFormatShortClockNoMinutesSeconds', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 1, month: 1, week: 1, day: 1, hour: 1);
      expect(fmt.format(dateOptions), '1y 1m 1w 1d 1:00');
    });
    test('testDurFmtFormatShortTextNoMinutesSeconds', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 1, month: 1, week: 1, day: 1, hour: 1);
      expect(fmt.format(dateOptions), '1y 1m 1w 1d 1h');
    });
    test('testDurFmtFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y, 1m, 1w, 1d, 1h, 1m, 1s, 1ms');
    });
    test('testDurFmtFormatLongSingle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 yr, 1 mth, 1 wk, 1 day, 1 hr, 1 min, 1 sec, 1 ms');
    });
    test('testDurFmtFormatFullSingle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 year, 1 month, 1 week, 1 day, 1 hour, 1 minute, 1 second, 1 millisecond');
    });
    test('testDurFmtFormatFullSingle_en_GB', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full', locale: 'en-GB');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 year, 1 month, 1 week, 1 day, 1 hour, 1 minute, 1 second, 1 millisecond');
    });
    test('testDurFmtFormatFullSingleNotAllFields', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 1, week: 1, day: 1, minute: 1);
      expect(fmt.format(dateOptions), '1 year, 1 week, 1 day, 1 minute');
    });
    test('testDurFmtFormatFullSingleNotAllFields_en_GB', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full', locale: 'en-GB');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 1, week: 1, day: 1, minute: 1);
      expect(fmt.format(dateOptions), '1 year, 1 week, 1 day, 1 minute');
    });
    test('testDurFmtFormatLongPlural', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2,
          month: 2,
          week: 2,
          day: 2,
          hour: 2,
          minute: 2,
          second: 2,
          millisecond: 2);
      expect(fmt.format(dateOptions),
          '2 yrs, 2 mths, 2 wks, 2 days, 2 hr, 2 min, 2 sec, 2 ms');
    });
    test('testDurFmtFormatFullPlural', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2,
          month: 2,
          week: 2,
          day: 2,
          hour: 2,
          minute: 2,
          second: 2,
          millisecond: 2);
      expect(fmt.format(dateOptions),
          '2 years, 2 months, 2 weeks, 2 days, 2 hours, 2 minutes, 2 seconds, 2 milliseconds');
    });
    test('testDurFmtFormatFullPlural_en_GB', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(length: 'full', locale: 'en-GB');

      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2,
          month: 2,
          week: 2,
          day: 2,
          hour: 2,
          minute: 2,
          second: 2,
          millisecond: 2);
      expect(fmt.format(dateOptions),
          '2 years, 2 months, 2 weeks, 2 days, 2 hours, 2 minutes, 2 seconds, 2 milliseconds');
    });
    test('testDurFmtFormatShortDEDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 J, 1 M, 1 W, 1 T, 1 Std., 1 Min., 1 Sek., 1 ms');
    });
    test('testDurFmtFormatShortDEText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'de-DE', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 J, 1 M, 1 W, 1 T, 1 Std., 1 Min., 1 Sek., 1 ms');
    });
    test('testDurFmtFormatShortDEClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'de-DE', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1 J, 1 M, 1 W, 1 T, 01:01:01');
    });
    test('testDurFmtFormatMediumDE', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE', length: 'medium');

      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 J, 1 M, 1 W, 1 T, 1 Std., 1 Min., 1 Sek., 1 ms');
    });
    test('testDurFmtFormatLongDESingle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 J, 1 Mon., 1 Wo., 1 Tg., 1 Std., 1 Min., 1 Sek., 1 ms');
    });
    test('testDurFmtFormatFullDESingle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 Jahr, 1 Monat, 1 Woche, 1 Tag, 1 Stunde, 1 Minute, 1 Sekunde und 1 Millisekunde');
    });
    test('testDurFmtFormatLongDEPlural', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2,
          month: 2,
          week: 2,
          day: 2,
          hour: 2,
          minute: 2,
          second: 2,
          millisecond: 2);
      expect(fmt.format(dateOptions),
          '2 J, 2 Mon., 2 Wo., 2 Tg., 2 Std., 2 Min., 2 Sek., 2 ms');
    });
    test('testDurFmtFormatFullDEPlural', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'de-DE', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2,
          month: 2,
          week: 2,
          day: 2,
          hour: 2,
          minute: 2,
          second: 2,
          millisecond: 2);
      expect(fmt.format(dateOptions),
          '2 Jahre, 2 Monate, 2 Wochen, 2 Tage, 2 Stunden, 2 Minuten, 2 Sekunden und 2 Millisekunden');
    });
    test('testDurFmtFormatShortZHDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hans-CN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天1小时1分钟1秒1毫秒');
    });
    test('testDurFmtFormatShortZHText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'zh-Hans-CN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天1小时1分钟1秒1毫秒');
    });
    test('testDurFmtFormatShortZHClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'zh-Hans-CN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天01:01:01');
    });
    test('testDurFmtFormatMediumZH', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hans-CN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天1小时1分钟1秒1毫秒');
    });
    test('testDurFmtFormatLongZH', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hans-CN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天1小时1分钟1秒1毫秒');
    });
    test('testDurFmtFormatFullZH', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hans-CN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天1小时1分钟1秒钟1毫秒');
    });
    test('testDurFmtFormatFullzh_Hans_MY', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hans-MY', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1年1个月1周1天1小时1分钟1秒钟1毫秒');
    });
    test('testDurFmtFormatShortFRDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-FR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1a 1m. 1sem. 1j 1h 1min 1s 1ms');
    });
    test('testDurFmtFormatShortFRText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fr-FR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1a 1m. 1sem. 1j 1h 1min 1s 1ms');
    });
    test('testDurFmtFormatShortFRClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fr-FR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1a 1m. 1sem. 1j 01:01:01');
    });
    test('testDurFmtFormatMediumFR', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-FR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1a, 1m., 1sem., 1j, 1h, 1min, 1s, 1ms');
    });
    test('testDurFmtFormatLongFR', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-FR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 an, 1 m., 1 sem., 1 j, 1 h, 1 min, 1 s, 1 ms');
    });
    test('testDurFmtFormatFullFR', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-FR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions),
          '1 an, 1 mois, 1 semaine, 1 jour, 1 heure, 1 minute, 1 seconde et 1 milliseconde');
    });
    //test cases for bg-BG
    test('testDurFmtBGFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bg-BG', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 г., 1 мес., 1 седм., 1 д, 1 ч, 1 мин, 1 с');
    });
    test('testDurFmtBGFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bg-BG', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 г., 1 мес., 1 седм., 1 д, 1 ч, 1 мин, 1 с');
    });
    test('testDurFmtBGFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bg-BG', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г., 1 мес., 1 седм., 1 д, 1:01:01');
    });
    test('testDurFmtBGFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bg-BG', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 г., 1 мес., 1 седм., 1 д, 1 ч, 1 мин, 1 с');
    });
    test('testDurFmtBGFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bg-BG', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 год., 1 мес., 1 седм., 1 д, 1 ч, 1 мин, 1 сек');
    });
    test('testDurFmtBGFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bg-BG', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 година, 1 месец, 1 седмица, 1 ден, 1 час, 1 минута и 1 секунда');
    });
    //test cases for bs-Latn-BA
    test('testDurFmtBSLatnFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bs-Latn-BA', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 god., 1 mj., 1 sedm., 1 d., 1 h, 1 m, 1 s');
    });
    test('testDurFmtBSLatnFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bs-Latn-BA', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 god., 1 mj., 1 sedm., 1 d., 1 h, 1 m, 1 s');
    });
    test('testDurFmtBSLatnFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bs-Latn-BA', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 god., 1 mj., 1 sedm., 1 d., 01:01:01');
    });
    test('testDurFmtBSLatnFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bs-Latn-BA', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 god., 1 mj., 1 sedm., 1 d., 1 h, 1 m, 1 s');
    });
    test('testDurFmtBSLatnFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bs-Latn-BA', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 god., 1 mj., 1 sedm., 1 dan, 1 h, 1 min., 1 sek.');
    });
    test('testDurFmtBSLatnFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bs-Latn-BA', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 godina, 1 mjesec, 1 sedmica, 1 dan, 1 sat, 1 minuta i 1 sekunda');
    });
    //test cases for cs-CZ
    test('testDurFmtCSFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'cs-CZ', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 r. 1 m. 1 t. 1 d. 1 h 1 m 1 s');
    });
    test('testDurFmtCSFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'cs-CZ', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 r. 1 m. 1 t. 1 d. 1 h 1 m 1 s');
    });
    test('testDurFmtCSFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'cs-CZ', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 r. 1 m. 1 t. 1 d. 1:01:01');
    });
    test('testDurFmtCSFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'cs-CZ', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 r., 1 m., 1 t., 1 d., 1 h, 1 m, 1 s');
    });
    test('testDurFmtCSFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'cs-CZ', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 rok, 1 měs., 1 týd., 1 den, 1 h, 1 min, 1 s');
    });
    test('testDurFmtCSFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'cs-CZ', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 rok, 1 měsíc, 1 týden, 1 den, 1 hodina, 1 minuta a 1 sekunda');
    });
    //test cases for da-DK
    test('testDurFmtDAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'da-DK', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 år, 1 m, 1 u, 1 d, 1 t, 1 m, 1 s');
    });
    test('testDurFmtDAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'da-DK', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 år, 1 m, 1 u, 1 d, 1 t, 1 m, 1 s');
    });
    test('testDurFmtDAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'da-DK', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 år, 1 m, 1 u, 1 d, 01.01.01');
    });
    test('testDurFmtDAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'da-DK', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 år, 1 m, 1 u, 1 d, 1 t, 1 m, 1 s');
    });
    test('testDurFmtDAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'da-DK', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 år, 1 md., 1 uge, 1 dag, 1 t., 1 min., 1 sek.');
    });
    test('testDurFmtDAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'da-DK', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 år, 1 måned, 1 uge, 1 dag, 1 time, 1 minut og 1 sekund');
    });
    //test cases for el-GR
    test('testDurFmtGRFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'el-GR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 έ 1 μ 1 ε 1 η 1 ώ 1 λ 1 δ');
    });
    test('testDurFmtGRFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'el-GR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 έ 1 μ 1 ε 1 η 1 ώ 1 λ 1 δ');
    });
    test('testDurFmtGRFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'el-GR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 έ 1 μ 1 ε 1 η 1:01:01');
    });
    test('testDurFmtGRFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'el-GR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 έ, 1 μ, 1 ε, 1 η, 1 ώ, 1 λ, 1 δ');
    });
    test('testDurFmtGRFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'el-GR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 έτ., 1 μήν., 1 εβδ., 1 ημέρα, 1 ώ., 1 λ., 1 δευτ.');
    });
    test('testDurFmtGRFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'el-GR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 έτος, 1 μήνας, 1 εβδομάδα, 1 ημέρα, 1 ώρα, 1 λεπτό, 1 δευτερόλεπτο');
    });
    //test cases for es-CO
    test('testDurFmtESFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'es-CO', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a. 1 mes 1 sem. 1 día 1 h 1 min 1 s');
    });
    test('testDurFmtESFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'es-CO', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a. 1 mes 1 sem. 1 día 1 h 1 min 1 s');
    });
    test('testDurFmtESFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'es-CO', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a. 1 mes 1 sem. 1 día 1:01:01');
    });
    test('testDurFmtESFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'es-CO', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 a., 1 mes, 1 sem., 1 día, 1 h, 1 min, 1 s');
    });
    test('testDurFmtESFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'es-CO', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 a., 1 mes, 1 sem., 1 día, 1 h, 1 min, 1 s');
    });
    test('testDurFmtESFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'es-CO', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 año, 1 mes, 1 semana, 1 día, 1 hora, 1 minuto y 1 segundo');
    });
    //test cases for estonian
    test('testDurFmtETFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'et-EE', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a 1 k 1 n 1 p 1 t 1 min 1 s');
    });
    test('testDurFmtETFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'et-EE', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a 1 k 1 n 1 p 1 t 1 min 1 s');
    });
    test('testDurFmtETFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'et-EE', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a 1 k 1 n 1 p 01:01:01');
    });
    test('testDurFmtETFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'et-EE', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a, 1 k, 1 n, 1 p, 1 t, 1 min, 1 s');
    });
    test('testDurFmtETFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'et-EE', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 a, 1 kuu, 1 näd, 1 päev, 1 t, 1 min, 1 sek');
    });
    test('testDurFmtETFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'et-EE', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 aasta, 1 kuu, 1 nädal, 1 ööpäev, 1 tund, 1 minut, 1 sekund');
    });
    //test cases for fa-IR
    test('testDurFmtFAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fa-IR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال ۱ ماه ۱ هفته ۱ روز ۱ ساعت ۱ دقیقه ۱ ث');
    });
    test('testDurFmtFAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fa-IR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال ۱ ماه ۱ هفته ۱ روز ۱ ساعت ۱ دقیقه ۱ ث');
    });
    test('testDurFmtFAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fa-IR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏۱ سال ۱ ماه ۱ هفته ۱ روز ‏۱:۰۱:۰۱');
    });
    test('testDurFmtFAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fa-IR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال ۱ ماه ۱ هفته ۱ روز ۱ ساعت ۱ دقیقه ۱ ث');
    });
    test('testDurFmtFAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fa-IR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال،‏ ۱ ماه،‏ ۱ هفته،‏ ۱ روز،‏ ۱ ساعت،‏ ۱ دقیقه،‏ ۱ ثانیه');
    });
    test('testDurFmtFAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fa-IR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال،‏ ۱ ماه،‏ ۱ هفته،‏ ۱ روز،‏ ۱ ساعت،‏ ۱ دقیقه، و ۱ ثانیه');
    });
    //test cases for fi-FI
    test('testDurFmtFIFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fi-FI', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1v 1kk 1vk 1pv 1t 1min 1s');
    });
    test('testDurFmtFIFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fi-FI', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1v 1kk 1vk 1pv 1t 1min 1s');
    });
    test('testDurFmtFIFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fi-FI', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1v 1kk 1vk 1pv 1.01.01');
    });
    test('testDurFmtFIFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fi-FI', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1v, 1kk, 1vk, 1pv, 1t, 1min, 1s');
    });
    test('testDurFmtFIFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fi-FI', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 v, 1 kk, 1 vk, 1 pv, 1 t, 1 min, 1 s');
    });
    test('testDurFmtFIFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fi-FI', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 vuosi, 1 kuukausi, 1 viikko, 1 päivä, 1 tunti, 1 minuutti ja 1 sekunti');
    });
    //test cases for fr-CA
    test('testDurFmtFRCAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-CA', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1a 1m 1sem 1j 1h 1m 1s');
    });
    test('testDurFmtFRCAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fr-CA', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1a 1m 1sem 1j 1h 1m 1s');
    });
    test('testDurFmtFRCAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'fr-CA', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1a 1m 1sem 1j 01 H 01 min 01 s');
    });
    test('testDurFmtFRCAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-CA', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1a, 1m, 1sem, 1j, 1h, 1m, 1s');
    });
    test('testDurFmtFRCAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-CA', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 an, 1 m., 1 sem., 1 j, 1 h, 1 min, 1 s');
    });
    test('testDurFmtFRCAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'fr-CA', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 an, 1 mois, 1 semaine, 1 jour, 1 heure, 1 minute et 1 seconde');
    });
    //test cases for ga-IE
    test('testDurFmtGAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ga-IE', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 bl 1m 1 scht 1 lá 1 u 1 nóim 1 soic');
    });
    test('testDurFmtGAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ga-IE', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 bl 1m 1 scht 1 lá 1 u 1 nóim 1 soic');
    });
    test('testDurFmtGAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ga-IE', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 bl 1m 1 scht 1 lá 01:01:01');
    });
    test('testDurFmtGAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ga-IE', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 bl, 1m, 1 scht, 1 lá, 1 u, 1 nóim, 1 soic');
    });
    test('testDurFmtGAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ga-IE', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 bl, 1 mí, 1 scht, 1 lá, 1 u, 1 nóim, 1 soic');
    });
    test('testDurFmtGAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ga-IE', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 bhliain, 1 mhí, 1 scht, 1 lá, 1 u, 1 nóim agus 1 soic');
    });
    //test cases for hebrew
    test('testDurFmtHEFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏1 ש′ 1 ח׳ 1 ש′ 1 י׳ 1 שע׳ 1 דק׳ 1 שנ׳');
    });
    test('testDurFmtHEFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'he-IL', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏1 ש′ 1 ח׳ 1 ש′ 1 י׳ 1 שע׳ 1 דק׳ 1 שנ׳');
    });
    test('testDurFmtHEFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'he-IL', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏1 ש′ 1 ח׳ 1 ש′ 1 י׳ ‏1:01:01');
    });
    test('testDurFmtHEFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏1 ש′ 1 ח׳ 1 ש′ 1 י׳ 1 שע׳ 1 דק׳ 1 שנ׳');
    });
    test('testDurFmtHEFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏1 שנה, 1 ח׳, 1 שבוע, 1 יום, 1 שעה, 1 דק׳, 1 שנ׳');
    });
    test('testDurFmtHEFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏1 שנה, 1 חודש, 1 שבוע, 1 יום, 1 שעה, 1 דקה ו-1 שניה');
    });
    test('testDurFmtHEFormatShortManyNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 20,
          month: 20,
          week: 20,
          day: 20,
          hour: 20,
          minute: 20,
          second: 20);
      expect(fmt.format(dateOptions),
          '‏20 ש′ 20 ח׳ 20 ש′ 20 י׳ 20 שע׳ 20 דק׳ 20 שנ׳');
    });
    test('testDurFmtHEFormatMediumManyNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 20,
          month: 20,
          week: 20,
          day: 20,
          hour: 20,
          minute: 20,
          second: 20);
      expect(fmt.format(dateOptions),
          '‏20 ש′ 20 ח׳ 20 ש′ 20 י׳ 20 שע׳ 20 דק׳ 20 שנ׳');
    });
    test('testDurFmtHEFormatLongManyNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 20,
          month: 20,
          week: 20,
          day: 20,
          hour: 20,
          minute: 20,
          second: 20);
      expect(fmt.format(dateOptions),
          '‏20 שנים, 20 ח׳, 20 שבועות, 20 ימ׳, 20 שע׳, 20 דק׳, 20 שנ׳');
    });
    /*test('testDurFmtHEFormatFullManyNumber', () {
        final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
            locale: 'he-IL',
            length: 'full'
        );
        final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);       
        expect(fmt, isNotNull);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 20,
            month: 20,
            week: 20,
            day: 20,
            hour: 20,
            minute: 20,
            second: 20
        });

        // The `many` category has been removed since CLDR 42.
        var platform = ilib._getPlatform();
        if (platform === 'nodejs') {
            var cldrVersion = Number(process.versions['cldr']);
            if (Number(cldrVersion) < 36) { // Intl.PluralRules doesn't support this locale until this version.
                expect(fmt.format(dateOptions),, '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות');
            }  else if(Number(cldrVersion) <= 41) {
                expect(fmt.format(dateOptions),, '‏20 שנים, 20 חודשים, 20 שבועות, 20 יום, 20 שעות, 20 דקות ו-20 שניות');
            } else if (Number(cldrVersion) < 43) { // The `many` category has been removed since CLDR 42.
                expect(fmt.format(dateOptions),, '‏20 שנים, 20 חודשים, 20 שבועות, 20 יום, 20 שעות, 20 דקות ו-‏20 שניות');
            } else {
                expect(fmt.format(dateOptions),, '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות');
            }
        } else if (platform === 'browser') {
            var browser = ilib._getBrowser();
            var expected = '‏20 שנים, 20 חודשים, 20 שבועות, 20 יום, 20 שעות, 20 דקות ו-‏20 שניות';
            if (browser === 'chrome' && getChromeVersion() >= 110) {
                expected = '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות';
            }
            expect(fmt.format(dateOptions),, expected);
        } else {
            expect(fmt.format(dateOptions),, '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות');
        }
        test.done();
    },*/
    test('testDurFmtHEFormatShortOtherNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 19,
          month: 19,
          week: 19,
          day: 19,
          hour: 19,
          minute: 19,
          second: 19);
      expect(fmt.format(dateOptions),
          '‏19 ש′ 19 ח׳ 19 ש′ 19 י׳ 19 שע׳ 19 דק׳ 19 שנ׳');
    });
    test('testDurFmtHEFormatMediumOtherNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 19,
          month: 19,
          week: 19,
          day: 19,
          hour: 19,
          minute: 19,
          second: 19);
      expect(fmt.format(dateOptions),
          '‏19 ש′ 19 ח׳ 19 ש′ 19 י׳ 19 שע׳ 19 דק׳ 19 שנ׳');
    });
    test('testDurFmtHEFormatLongOtherNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 19,
          month: 19,
          week: 19,
          day: 19,
          hour: 19,
          minute: 19,
          second: 19);
      expect(fmt.format(dateOptions),
          '‏19 שנים, 19 ח׳, 19 שבועות, 19 ימ׳, 19 שע׳, 19 דק׳, 19 שנ׳');
    });
    test('testDurFmtHEFormatFullOtherNumber', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'he-IL', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 19,
          month: 19,
          week: 19,
          day: 19,
          hour: 19,
          minute: 19,
          second: 19);
      expect(fmt.format(dateOptions),
          '‏19 שנים, 19 חודשים, 19 שבועות, 19 ימים, 19 שעות, 19 דקות ו-19 שניות');
    });
    //test cases for hi-IN
    test('testDurFmtHIFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hi-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 व, 1 माह, 1 सप्ताह, 1 दि, 1 घं, 1 मि, 1 से');
    });
    test('testDurFmtHIFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'hi-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 व, 1 माह, 1 सप्ताह, 1 दि, 1 घं, 1 मि, 1 से');
    });
    test('testDurFmtHIFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'hi-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 व, 1 माह, 1 सप्ताह, 1 दि, 1:01:01');
    });
    test('testDurFmtHIFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hi-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 व, 1 माह, 1 सप्ताह, 1 दि, 1 घं, 1 मि, 1 से');
    });
    test('testDurFmtHIFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hi-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 वर्ष, 1 माह, 1 सप्ताह, 1 दिन, 1 घं॰, 1 मि॰, 1 से॰');
    });
    test('testDurFmtHIFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hi-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 वर्ष, 1 महीना, 1 सप्ताह, 1 दिन, 1 घंटा, 1 मिनट, और 1 सेकंड');
    });
    //test cases for marathi mr-IN
    test('testDurFmtMRFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mr-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '१व १म १आ १दि १ता १मि १से');
    });
    test('testDurFmtMRFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'mr-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '१व १म १आ १दि १ता १मि १से');
    });
    test('testDurFmtMRFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'mr-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '१व १म १आ १दि १:०१:०१');
    });
    test('testDurFmtMRFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mr-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '१व १म १आ १दि १ता १मि १से');
    });
    test('testDurFmtMRFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mr-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '१ वर्ष, १ महिना, १ आ, १ दिवस, १ ता, १ मिनि, १ से');
    });
    test('testDurFmtMRFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mr-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '१ वर्ष, १ महिना, १ आठवडा, १ दिवस, १ तास, १ मिनिट, १ सेकंद');
    });
    //testa cases for Telugu (te-IN)
    test('testDurFmtTEFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'te-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1సం, 1నె, 1వా, 1రో, 1గం, 1ని, 1సె');
    });
    test('testDurFmtTEFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'te-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1సం, 1నె, 1వా, 1రో, 1గం, 1ని, 1సె');
    });
    test('testDurFmtTEFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'te-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1సం, 1నె, 1వా, 1రో, 1:01:01');
    });
    test('testDurFmtTEFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'te-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1సం, 1నె, 1వా, 1రో, 1గం, 1ని, 1సె');
    });
    test('testDurFmtTEFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'te-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 సం., 1 నె., 1 వా., 1 రోజు, 1 గం., 1 నిమి., 1 సె.');
    });
    test('testDurFmtTEFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'te-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 సంవత్సరం, 1 నెల, 1 వారం, 1 రోజు, 1 గంట, 1 నిమిషం, 1 సెకను');
    });
    //test cases for kannada(kn-IN)
    test('testDurFmtKNFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kn-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1ವ, 1ತಿಂ., 1ವಾ, 1ದಿ, 1ಗಂ., 1ನಿಮಿ, 1ಸೆಕೆಂ');
    });
    test('testDurFmtKNFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'kn-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1ವ, 1ತಿಂ., 1ವಾ, 1ದಿ, 1ಗಂ., 1ನಿಮಿ, 1ಸೆಕೆಂ');
    });
    test('testDurFmtKNFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'kn-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1ವ, 1ತಿಂ., 1ವಾ, 1ದಿ, 1:01:01');
    });
    test('testDurFmtKNFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kn-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1ವ, 1ತಿಂ., 1ವಾ, 1ದಿ, 1ಗಂ., 1ನಿಮಿ, 1ಸೆಕೆಂ');
    });
    test('testDurFmtKNFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kn-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ವರ್ಷ, 1 ತಿಂ., 1 ವಾರ, 1 ದಿನ, 1 ಗಂ., 1 ನಿಮಿ, 1 ಸೆಕೆಂ');
    });
    test('testDurFmtKNFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kn-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ವರ್ಷವು, 1 ತಿಂಗಳು, 1 ವಾರವು, 1 ದಿನವು, 1 ಗಂಟೆಯು, 1 ನಿಮಿಷವು, 1 ಸೆಕೆಂಡ್');
    });
    //test cases for tamil(ta-IN)
    test('testDurFmtTAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ta-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 ஆ 1 மா 1 வா 1 நா 1 ம.நே. 1 நிமி. 1 வி.');
    });
    test('testDurFmtTAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ta-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 ஆ 1 மா 1 வா 1 நா 1 ம.நே. 1 நிமி. 1 வி.');
    });
    test('testDurFmtTAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ta-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ஆ 1 மா 1 வா 1 நா 1:01:01');
    });
    test('testDurFmtTAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ta-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 ஆ 1 மா 1 வா 1 நா 1 ம.நே. 1 நிமி. 1 வி.');
    });
    test('testDurFmtTAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ta-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ஆண்டு, 1 மாதம், 1 வாரம், 1 நாள், 1 மணிநேரம், 1 நிமிடம், 1 விநாடி');
    });
    test('testDurFmtTAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ta-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ஆண்டு, 1 மாதம், 1 வாரம், 1 நாள், 1 மணிநேரம், 1 நிமிடம், 1 விநாடி');
    });
    //test cases for Malaylam(ml-IN)
    test('testDurFmtMLFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ml-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 വ 1 മാ 1 ആ 1 ദി 1 മ 1 മി. 1 സെ.');
    });
    test('testDurFmtMLFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ml-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 വ 1 മാ 1 ആ 1 ദി 1 മ 1 മി. 1 സെ.');
    });
    test('testDurFmtMLFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ml-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 വ 1 മാ 1 ആ 1 ദി 1:01:01');
    });
    test('testDurFmtMLFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ml-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 വ 1 മാ 1 ആ 1 ദി 1 മ 1 മി. 1 സെ.');
    });
    test('testDurFmtMLFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ml-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 വ, 1 മാസം, 1 ആ, 1 ദിവസം‌, 1 മ, 1 മി., 1 സെ.');
    });
    test('testDurFmtMLFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ml-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 വർഷം, 1 മാസം, 1 ആഴ്ച, 1 ദിവസം, 1 മണിക്കൂർ, 1 മിനിറ്റ്, 1 സെക്കൻഡ്');
    });
    //test cases for Gujrati(gu-IN)
    test('testDurFmtGUFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'gu-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 વ, 1 મ, 1 અઠ., 1 દિ, 1 ક, 1 મિ, 1 સે');
    });
    test('testDurFmtGUFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'gu-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 વ, 1 મ, 1 અઠ., 1 દિ, 1 ક, 1 મિ, 1 સે');
    });
    test('testDurFmtGUFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'gu-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 વ, 1 મ, 1 અઠ., 1 દિ, 1:01:01');
    });
    test('testDurFmtGUFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'gu-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 વ, 1 મ, 1 અઠ., 1 દિ, 1 ક, 1 મિ, 1 સે');
    });
    test('testDurFmtGUFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'gu-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 વર્ષ, 1 મહિનો, 1 અઠ., 1 દિવસ, 1 કલાક, 1 મિનિટ, 1 સેકંડ');
    });
    test('testDurFmtGUFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'gu-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 વર્ષ, 1 મહિનો, 1 અઠવાડિયું, 1 દિવસ, 1 કલાક, 1 મિનિટ, 1 સેકંડ');
    });
    //test cases for Bengali(bn-IN)
    test('testDurFmtBNFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bn-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১ ঘঃ, ১ মিঃ, ১ সেঃ');
    });
    test('testDurFmtBNFormatShortDefaultStyleNative', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bn-IN', length: 'short', useNative: true);
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১ ঘঃ, ১ মিঃ, ১ সেঃ');
    });
    test('testDurFmtBNFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bn-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১ ঘঃ, ১ মিঃ, ১ সেঃ');
    });
    test('testDurFmtBNFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bn-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১:০১:০১');
    });
    test('testDurFmtBNFormatShortClockNative', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bn-IN', length: 'short', style: 'clock', useNative: true);
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১:০১:০১');
    });
    test('testDurFmtBNFormatShortClockWestern', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'bn-IN', length: 'short', style: 'clock', useNative: false);
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 বছর, 1 মাস, 1 সপ্তাহ, 1 দিন, 1:01:01');
    });
    test('testDurFmtBNFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bn-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১ ঘঃ, ১ মিঃ, ১ সেঃ');
    });
    test('testDurFmtBNFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bn-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১ ঘন্টা, ১ মিনিট, ১ সেকেন্ড');
    });
    test('testDurFmtBNFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'bn-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছর, ১ মাস, ১ সপ্তাহ, ১ দিন, ১ ঘন্টা, ১ মিনিট, ১ সেকেন্ড');
    });
    test('testDurFmtASFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'as-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছৰ ১ মাহ ১ সপ্তাহ ১ দিন ১ ঘণ্টা ১ মিনিট ১ ছেকেণ্ড');
    });
    test('testDurFmtASFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'as-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছৰ ১ মাহ ১ সপ্তাহ ১ দিন ১ ঘণ্টা ১ মিনিট ১ ছেকেণ্ড');
    });
    test('testDurFmtASFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'as-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '১ বছৰ ১ মাহ ১ সপ্তাহ ১ দিন ১.০১.০১');
    });
    test('testDurFmtASFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'as-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছৰ ১ মাহ ১ সপ্তাহ ১ দিন ১ ঘণ্টা ১ মিনিট ১ ছেকেণ্ড');
    });
    test('testDurFmtASFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'as-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছৰ, ১ মাহ, ১ সপ্তাহ, ১ দিন, ১ ঘণ্টা, ১ মিনিট, ১ ছেকেণ্ড');
    });
    test('testDurFmtASFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'as-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '১ বছৰ, ১ মাহ, ১ সপ্তাহ, ১ দিন, ১ ঘণ্টা, ১ মিনিট, ১ ছেকেণ্ড');
    });
    //test cases for Punjabi(pa-Guru-IN)
    test('testDurFmtPAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pa-Guru-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ਸਾਲ 1 ਮਹੀਨਾ 1 ਹਫ਼ਤਾ 1 ਦਿਨ 1 ਘੰਟਾ 1 ਮਿੰਟ 1 ਸਕਿੰਟ');
    });
    test('testDurFmtPAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pa-Guru-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ਸਾਲ 1 ਮਹੀਨਾ 1 ਹਫ਼ਤਾ 1 ਦਿਨ 1 ਘੰਟਾ 1 ਮਿੰਟ 1 ਸਕਿੰਟ');
    });
    test('testDurFmtPAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pa-Guru-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ਸਾਲ 1 ਮਹੀਨਾ 1 ਹਫ਼ਤਾ 1 ਦਿਨ 1:01:01');
    });
    test('testDurFmtPAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pa-Guru-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ਸਾਲ 1 ਮਹੀਨਾ 1 ਹਫ਼ਤਾ 1 ਦਿਨ 1 ਘੰਟਾ 1 ਮਿੰਟ 1 ਸਕਿੰਟ');
    });
    test('testDurFmtPAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pa-Guru-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ਸਾਲ, 1 ਮਹੀਨਾ, 1 ਹਫ਼ਤਾ, 1 ਦਿਨ, 1 ਘੰਟਾ, 1 ਮਿੰਟ, 1 ਸਕਿੰਟ');
    });
    test('testDurFmtPAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pa-Guru-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ਸਾਲ, 1 ਮਹੀਨਾ, 1 ਹਫ਼ਤਾ, 1 ਦਿਨ, 1 ਘੰਟਾ, 1 ਮਿੰਟ, 1 ਸਕਿੰਟ');
    });
    //test cases for Urdu(ur-IN)
    test('testDurFmtURFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ur-IN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال، ۱ مہینہ، ۱ ہفتہ، ۱ دن، ۱ گھنٹہ، ۱ منٹ، ۱ سیکنڈ');
    });
    test('testDurFmtURFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ur-IN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال، ۱ مہینہ، ۱ ہفتہ، ۱ دن، ۱ گھنٹہ، ۱ منٹ، ۱ سیکنڈ');
    });
    test('testDurFmtURFormatShortTextWestern', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ur-IN', length: 'short', style: 'text', useNative: false);
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن، 1 گھنٹہ، 1 منٹ، 1 سیکنڈ');
    });
    test('testDurFmtURFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ur-IN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '‏۱ سال، ۱ مہینہ، ۱ ہفتہ، ۱ دن، ‏۱:۰۱:۰۱');
    });
    test('testDurFmtURFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ur-IN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال، ۱ مہینہ، ۱ ہفتہ، ۱ دن، ۱ گھنٹہ، ۱ منٹ، ۱ سیکنڈ');
    });
    test('testDurFmtURFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ur-IN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال، ۱ مہینہ، ۱ ہفتہ، ۱ دن، ۱ گھنٹہ، ۱ منٹ، ۱ سیکنڈ');
    });
    test('testDurFmtURFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ur-IN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏۱ سال, ۱ مہینہ, ۱ ہفتہ, ۱ دن, ۱ گھنٹہ, ۱ منٹ، اور ۱ سیکنڈ');
    });
    //test cases for croation
    test('testDurFmtHRFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hr-HR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g. 1 mj. 1 tj. 1 d. 1 h 1 m 1 s');
    });
    test('testDurFmtHRFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'hr-HR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g. 1 mj. 1 tj. 1 d. 1 h 1 m 1 s');
    });
    test('testDurFmtHRFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'hr-HR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g. 1 mj. 1 tj. 1 d. 01:01:01');
    });
    test('testDurFmtHRFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hr-HR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 g., 1 mj., 1 tj., 1 d., 1 h, 1 m, 1 s');
    });
    test('testDurFmtHRFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hr-HR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 g., 1 mj., 1 tj., 1 dan, 1 h, 1 min, 1 s');
    });
    test('testDurFmtHRFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hr-HR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 godina, 1 mjesec, 1 tjedan, 1 dan, 1 sat, 1 minuta i 1 sekunda');
    });
    //test cases for hungarian
    test('testDurFmtHUFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hu-HU', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 év, 1 h., 1 hét, 1 nap, 1 ó, 1 p, 1 mp');
    });
    test('testDurFmtHUFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'hu-HU', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 év, 1 h., 1 hét, 1 nap, 1 ó, 1 p, 1 mp');
    });
    test('testDurFmtHUFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'hu-HU', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 év, 1 h., 1 hét, 1 nap, 1:01:01');
    });
    test('testDurFmtHUFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hu-HU', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 év, 1 h., 1 hét, 1 nap, 1 ó, 1 p, 1 mp');
    });
    test('testDurFmtHUFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hu-HU', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 év, 1 hónap, 1 hét, 1 nap, 1 ó, 1 p, 1 mp');
    });
    test('testDurFmtHUFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'hu-HU', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 év, 1 hónap, 1 hét, 1 nap, 1 óra, 1 perc és 1 másodperc');
    });
    //test cases for indonesia
    test('testDurFmtIDFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'id-ID', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 thn, 1 bln, 1 mgg, 1 hr, 1 j, 1 mnt, 1 dtk');
    });
    test('testDurFmtIDFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'id-ID', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 thn, 1 bln, 1 mgg, 1 hr, 1 j, 1 mnt, 1 dtk');
    });
    test('testDurFmtIDFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'id-ID', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 thn, 1 bln, 1 mgg, 1 hr, 01.01.01');
    });
    test('testDurFmtIDFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'id-ID', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 thn, 1 bln, 1 mgg, 1 hr, 1 j, 1 mnt, 1 dtk');
    });
    test('testDurFmtIDFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'id-ID', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 thn, 1 bln, 1 mgg, 1 hr, 1 j, 1 mnt, 1 dtk');
    });
    test('testDurFmtIDFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'id-ID', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 tahun, 1 bulan, 1 minggu, 1 hari, 1 jam, 1 menit, 1 detik');
    });
    //test cases for Italy
    test('testDurFmtITFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'it-IT', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1anno 1 mese 1sett. 1g 1h 1min 1s');
    });
    test('testDurFmtITFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'it-IT', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1anno 1 mese 1sett. 1g 1h 1min 1s');
    });
    test('testDurFmtITFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'it-IT', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1anno 1 mese 1sett. 1g 01:01:01');
    });
    test('testDurFmtITFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'it-IT', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1anno, 1 mese, 1sett., 1g, 1h, 1min, 1s');
    });
    test('testDurFmtITFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'it-IT', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 anno, 1 mese, 1 sett., 1 giorno, 1 h, 1 min, 1 s');
    });
    test('testDurFmtITFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'it-IT', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 anno, 1 mese, 1 settimana, 1 giorno, 1 ora, 1 minuto e 1 secondo');
    });
    //test cases for japanese
    test('testDurFmtJAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ja-JP', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y1m1w1d1h1m1s1ms');
    });
    test('testDurFmtJAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ja-JP', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y1m1w1d1h1m1s1ms');
    });
    test('testDurFmtJAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ja-JP', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y1m1w1d1:01:01');
    });
    test('testDurFmtJAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ja-JP', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1y1m1w1d1h1m1s1ms');
    });
    test('testDurFmtJAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ja-JP', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1 年 1 か月 1 週間 1 日 1 時間 1 分 1 秒 1 ms');
    });
    test('testDurFmtJAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ja-JP', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1 年 1 か月 1 週間 1 日 1 時間 1 分 1 秒 1 ミリ秒');
    });
    //test cases for kk-Cyrl-KZ
    test('testDurFmtKKFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kk-Cyrl-KZ', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ж. 1 ай 1 ап. 1 к. 1 сағ 1 мин 1 с');
    });
    test('testDurFmtKKFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'kk-Cyrl-KZ', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ж. 1 ай 1 ап. 1 к. 1 сағ 1 мин 1 с');
    });
    test('testDurFmtKKFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'kk-Cyrl-KZ', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ж. 1 ай 1 ап. 1 к. 01:01:01');
    });
    test('testDurFmtKKFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kk-Cyrl-KZ', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ж. 1 ай 1 ап. 1 күн 1 сағ 1 мин 1 с');
    });
    test('testDurFmtKKFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'kk-Cyrl-KZ', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 жыл 1 ай 1 апта 1 күн 1 сағат 1 минут 1 секунд');
    });
    //test cases for ko-KR
    test('testDurFmtKOFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ko-KR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1년 1개월 1주 1일 1시간 1분 1초 1밀리초');
    });
    test('testDurFmtKOFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ko-KR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1년 1개월 1주 1일 1시간 1분 1초 1밀리초');
    });
    test('testDurFmtKOFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ko-KR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1년 1개월 1주 1일 1:01:01');
    });
    test('testDurFmtKOFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ko-KR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1년 1개월 1주 1일 1시간 1분 1초 1밀리초');
    });
    test('testDurFmtKOFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ko-KR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1년 1개월 1주 1일 1시간 1분 1초 1밀리초');
    });
    test('testDurFmtKOFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ko-KR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1,
          month: 1,
          week: 1,
          day: 1,
          hour: 1,
          minute: 1,
          second: 1,
          millisecond: 1);
      expect(fmt.format(dateOptions), '1년 1개월 1주 1일 1시간 1분 1초 1밀리초');
    });
    test('testDurFmtKUFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ku-Arab-IQ', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏١س ١م ١ﻪـ ١ر ١ک ١خ ١چ');
    });
    test('testDurFmtKUFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ku-Arab-IQ', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏١س ١م ١ﻪـ ١ر ١ک ١خ ١چ');
    });
    test('testDurFmtKUFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ku-Arab-IQ', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏١س ١م ١ﻪـ ١ر ‏١:٠١:٠١');
    });
    test('testDurFmtKUFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ku-Arab-IQ', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '‏١س ١م ١ﻪـ ١ر ١ک ١خ ١چ');
    });
    test('testDurFmtKUFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ku-Arab-IQ', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏١ ساڵ ١ مانگ ١ هەفتە ١ رۆژ ١ کاتژ ١ خول ١ چرک');
    });
    test('testDurFmtKUFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ku-Arab-IQ', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '‏١ ساڵ, ١ مانگ, ١ هەفتە, ١ رۆژ, ١ کاتژمێر, ١ خولەک,  ١ چرکە');
    });
    //test cases for lt-LT
    test('testDurFmtLTFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lt-LT', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 m. 1 mėn. 1 sav. 1 d. 1 h 1 min. 1 s');
    });
    test('testDurFmtLTFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'lt-LT', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 m. 1 mėn. 1 sav. 1 d. 1 h 1 min. 1 s');
    });
    test('testDurFmtLTFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'lt-LT', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 m. 1 mėn. 1 sav. 1 d. 01:01:01');
    });
    test('testDurFmtLTFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lt-LT', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 m. 1 mėn. 1 sav. 1 d. 1 h 1 min. 1 s');
    });
    test('testDurFmtLTFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lt-LT', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 m. 1 mėn. 1 sav. 1 d. 1 val. 1 min. 1 sek.');
    });
    test('testDurFmtLTFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lt-LT', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 metai 1 mėnuo 1 savaitė 1 diena 1 valanda 1 minutė ir 1 sekundė');
    });
    //test cases for lv-LV
    test('testDurFmtLVFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lv-LV', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g. 1 m. 1 n. 1 d. 1 h 1 min 1 s');
    });
    test('testDurFmtLVFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'lv-LV', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g. 1 m. 1 n. 1 d. 1 h 1 min 1 s');
    });
    test('testDurFmtLVFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'lv-LV', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g. 1 m. 1 n. 1 d. 01:01:01');
    });
    test('testDurFmtLVFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lv-LV', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 g., 1 m., 1 n., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtLVFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lv-LV', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 g., 1 mēn., 1 ned., 1 d., 1 st., 1 min, 1 sek.');
    });
    test('testDurFmtLVFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'lv-LV', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 gads, 1 mēnesis, 1 nedēļa, 1 diena, 1 stunda, 1 minūte un 1 sekunde');
    });
    //test cases for mk-MK
    test('testDurFmtMKFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mk-MK', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 г., 1 м., 1 с., 1 д., 1 ч., 1 м., 1 с.');
    });
    test('testDurFmtMKFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'mk-MK', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 г., 1 м., 1 с., 1 д., 1 ч., 1 м., 1 с.');
    });
    test('testDurFmtMKFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'mk-MK', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г., 1 м., 1 с., 1 д., 01:01:01');
    });
    test('testDurFmtMKFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mk-MK', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 г., 1 м., 1 с., 1 д., 1 ч., 1 м., 1 с.');
    });
    test('testDurFmtMKFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mk-MK', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 год., 1 мес., 1 сед., 1 ден, 1 ч., 1 мин., 1 сек.');
    });
    test('testDurFmtMKFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mk-MK', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 година, 1 месец, 1 седмица, 1 ден, 1 час, 1 минута и 1 секунда');
    });
    //test cases for mn-Cyrl-MN
    test('testDurFmtMNFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mn-Cyrl-MN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1ж 1с 1 д.х 1 хоног 1 ц 1 мин 1 сек');
    });
    test('testDurFmtMNFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1ж 1с 1 д.х 1 хоног 1 ц 1 мин 1 сек');
    });
    test('testDurFmtMNFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'mn-Cyrl-MN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1ж 1с 1 д.х 1 хоног 01:01:01');
    });
    test('testDurFmtMNFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mn-Cyrl-MN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1ж 1с 1 д.х 1 хоног 1 ц 1 мин 1 сек');
    });
    test('testDurFmtMNFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mn-Cyrl-MN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 жил 1 сар 1 д.х 1 хоног 1 цаг 1 мин 1 сек');
    });
    test('testDurFmtMNFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'mn-Cyrl-MN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 жил 1 сар 1 долоо хоног 1 хоног 1 цаг 1 минут 1 секунд');
    });
    //test cases for ms-Latn-MY
    test('testDurFmtMSFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ms-Latn-MY', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 thn 1 bln 1 mgu 1 h 1 j 1 min 1 s');
    });
    test('testDurFmtMSFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ms-Latn-MY', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 thn 1 bln 1 mgu 1 h 1 j 1 min 1 s');
    });
    test('testDurFmtMSFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ms-Latn-MY', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 thn 1 bln 1 mgu 1 h 1:01:01');
    });
    test('testDurFmtMSFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ms-Latn-MY', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 thn, 1 bln, 1 mgu, 1 h, 1 j, 1 min, 1 s');
    });
    test('testDurFmtMSFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ms-Latn-MY', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 thn, 1 bln, 1 mgu, 1 hari, 1 j, 1 min, 1 saat');
    });
    test('testDurFmtMSFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ms-Latn-MY', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 tahun, 1 bulan, 1 minggu, 1 hari, 1 jam, 1 minit, 1 saat');
    });
    //test cases for nb-NO
    test('testDurFmtNBFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nb-NO', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å, 1 m, 1u, 1d, 1t, 1m, 1s');
    });
    test('testDurFmtNBFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'nb-NO', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å, 1 m, 1u, 1d, 1t, 1m, 1s');
    });
    test('testDurFmtNBFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'nb-NO', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å, 1 m, 1u, 1d, 01:01:01');
    });
    test('testDurFmtNBFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nb-NO', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å, 1 m, 1u, 1d, 1t, 1m, 1s');
    });
    test('testDurFmtNBFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nb-NO', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 år, 1 md., 1 u, 1 d, 1 t, 1 min, 1 sek');
    });
    test('testDurFmtNBFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nb-NO', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 år, 1 måned, 1 uke, 1 døgn, 1 time, 1 minutt og 1 sekund');
    });
    //test cases for nl-NL
    test('testDurFmtNLFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nl-NL', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 jr, 1 m, 1 w, 1 d, 1 u, 1 m, 1 s');
    });
    test('testDurFmtNLFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'nl-NL', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 jr, 1 m, 1 w, 1 d, 1 u, 1 m, 1 s');
    });
    test('testDurFmtNLFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'nl-NL', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 jr, 1 m, 1 w, 1 d, 01:01:01');
    });
    test('testDurFmtNLFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nl-NL', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 jr, 1 m, 1 w, 1 d, 1 u, 1 m, 1 s');
    });
    test('testDurFmtNLFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nl-NL', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 jr, 1 mnd, 1 wk, 1 dag, 1 uur, 1 min, 1 sec');
    });
    test('testDurFmtNLFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'nl-NL', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 jaar, 1 maand, 1 week, 1 dag, 1 uur, 1 minuut en 1 seconde');
    });
    //test cases for pl-PL
    test('testDurFmtPLFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pl-PL', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 r., 1 m-c, 1 t., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtPLFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pl-PL', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 r., 1 m-c, 1 t., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtPLFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pl-PL', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 r., 1 m-c, 1 t., 1 d., 01:01:01');
    });
    test('testDurFmtPLFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pl-PL', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 r., 1 m-c, 1 t., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtPLFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pl-PL', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 rok, 1 mies., 1 tydz., 1 dzień, 1 godz., 1 min, 1 sek.');
    });
    test('testDurFmtPLFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pl-PL', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 rok, 1 miesiąc, 1 tydzień, 1 dzień, 1 godzina, 1 minuta i 1 sekunda');
    });
    //test cases for pt-BR
    test('testDurFmtPTFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-BR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ano 1 mês 1 sem. 1 dia 1 h 1 min 1 s');
    });
    test('testDurFmtPTFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pt-BR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ano 1 mês 1 sem. 1 dia 1 h 1 min 1 s');
    });
    test('testDurFmtPTFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pt-BR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ano 1 mês 1 sem. 1 dia 01:01:01');
    });
    test('testDurFmtPTFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-BR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 sem., 1 dia, 1 h, 1 min, 1 s');
    });
    test('testDurFmtPTFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-BR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 sem., 1 dia, 1 h, 1 min, 1 s');
    });
    test('testDurFmtPTFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-BR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 semana, 1 dia, 1 hora, 1 minuto e 1 segundo');
    });
    //test cases for ro-RO
    test('testDurFmtROFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ro-RO', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a, 1 l, 1 săpt., 1 z, 1 h, 1 m, 1 s');
    });
    test('testDurFmtROFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ro-RO', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a, 1 l, 1 săpt., 1 z, 1 h, 1 m, 1 s');
    });
    test('testDurFmtROFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ro-RO', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a, 1 l, 1 săpt., 1 z, 01:01:01');
    });
    test('testDurFmtROFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ro-RO', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 a, 1 l, 1 săpt., 1 z, 1 h, 1 m, 1 s');
    });
    test('testDurFmtROFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ro-RO', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 an, 1 lună, 1 săpt., 1 zi, 1 oră, 1 min., 1 s');
    });
    test('testDurFmtROFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ro-RO', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 an, 1 lună, 1 săptămână, 1 zi, 1 oră, 1 minut, 1 secundă');
    });
    //test cases for ru-RU
    test('testDurFmtRUFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ru-RU', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г. 1 м. 1 н. 1 д. 1 ч 1 мин 1 с');
    });
    test('testDurFmtRUFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ru-RU', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г. 1 м. 1 н. 1 д. 1 ч 1 мин 1 с');
    });
    test('testDurFmtRUFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ru-RU', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г. 1 м. 1 н. 1 д. 01:01:01');
    });
    test('testDurFmtRUFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ru-RU', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г. 1 м. 1 н. 1 д. 1 ч 1 мин 1 с');
    });
    test('testDurFmtRUFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ru-RU', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 г. 1 мес. 1 нед. 1 дн. 1 ч 1 мин 1 с');
    });
    test('testDurFmtRUFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'ru-RU', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 год 1 месяц 1 неделя 1 день 1 час 1 минута 1 секунда');
    });
    //test cases for sk-SK
    test('testDurFmtSKFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sk-SK', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 r., 1 m., 1 t., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtSKFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sk-SK', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 r., 1 m., 1 t., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtSKFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sk-SK', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 r., 1 m., 1 t., 1 d., 1:01:01');
    });
    test('testDurFmtSKFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sk-SK', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 r., 1 m., 1 t., 1 d., 1 h, 1 min, 1 s');
    });
    test('testDurFmtSKFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sk-SK', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 r., 1 mes., 1 týž., 1 deň, 1 h, 1 min, 1 s');
    });
    test('testDurFmtSKFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sk-SK', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 rok, 1 mesiac, 1 týždeň, 1 deň, 1 hodina, 1 minúta, 1 sekunda');
    });
    //test cases for sq-AL
    test('testDurFmtSQFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sq-AL', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 vit, 1 muaj, 1 javë, 1 ditë, 1 orë, 1 min., 1 sek.');
    });
    test('testDurFmtSQFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sq-AL', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 vit, 1 muaj, 1 javë, 1 ditë, 1 orë, 1 min., 1 sek.');
    });
    test('testDurFmtSQFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sq-AL', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 vit, 1 muaj, 1 javë, 1 ditë, 1:01:01');
    });
    test('testDurFmtSQFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sq-AL', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 vit, 1 muaj, 1 javë, 1 ditë, 1 orë, 1 min., 1 sek.');
    });
    test('testDurFmtSQFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sq-AL', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 vit, 1 muaj, 1 javë, 1 ditë, 1 orë, 1 min., 1 sek.');
    });
    test('testDurFmtSQFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sq-AL', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 vit, 1 muaj, 1 javë, 1 ditë, 1 orë, 1 minutë e 1 sekondë');
    });
    //test cases for sr-Latn-RS
    test('testDurFmtSRFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sr-Latn-RS', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g, 1 m, 1 n, 1 d, 1 č, 1 m, 1 s');
    });
    test('testDurFmtSRFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sr-Latn-RS', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g, 1 m, 1 n, 1 d, 1 č, 1 m, 1 s');
    });
    test('testDurFmtSRFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sr-Latn-RS', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 g, 1 m, 1 n, 1 d, 01:01:01');
    });
    test('testDurFmtSRFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sr-Latn-RS', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 god, 1 mes., 1 ned., 1 dan, 1 sat, 1 min, 1 sek');
    });
    test('testDurFmtSRFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sr-Latn-RS', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 godina, 1 mesec, 1 nedelja, 1 dan, 1 sat, 1 minut i 1 sekunda');
    });
    //test cases for th-TH
    test('testDurFmtTHFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'th-TH', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1ปี 1เดือน 1สัปดาห์ 1วัน 1ชม. 1นาที 1วิ');
    });
    test('testDurFmtTHFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'th-TH', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1ปี 1เดือน 1สัปดาห์ 1วัน 1ชม. 1นาที 1วิ');
    });
    test('testDurFmtTHFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'th-TH', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1ปี 1เดือน 1สัปดาห์ 1วัน 01:01:01');
    });
    test('testDurFmtTHFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'th-TH', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1ปี 1เดือน 1สัปดาห์ 1วัน 1ชม. 1นาที 1วิ');
    });
    test('testDurFmtTHFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'th-TH', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ปี 1 เดือน 1 สัปดาห์ 1 วัน 1 ชม. 1 นาที 1 วิ');
    });
    test('testDurFmtTHFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'th-TH', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ปี 1 เดือน 1 สัปดาห์ 1 วัน 1 ชั่วโมง 1 นาที และ 1 วินาที');
    });
    //test cases for uk-UA
    test('testDurFmtUKUAFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uk-UA', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1р, 1м, 1т, 1д, 1г, 1х, 1с');
    });
    test('testDurFmtUKUAFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'uk-UA', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1р, 1м, 1т, 1д, 1г, 1х, 1с');
    });
    test('testDurFmtUKUAFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'uk-UA', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1р, 1м, 1т, 1д, 01:01:01');
    });
    test('testDurFmtUKUAFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uk-UA', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1р, 1м, 1т, 1д, 1г, 1х, 1с');
    });
    test('testDurFmtUKUAFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uk-UA', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 р., 1 міс., 1 тиж., 1 дн., 1 год, 1 хв, 1 с');
    });
    test('testDurFmtUKUAFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uk-UA', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 рік, 1 місяць, 1 тиждень, 1 день, 1 година, 1 хвилина і 1 секунда');
    });
    //test cases for uz-Latn-UZ
    test('testDurFmtUZLATNFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uz-Latn-UZ', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 yil 1 oy 1 hafta 1 kun 1 soat 1 daq. 1 s');
    });
    test('testDurFmtUZLATNFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'uz-Latn-UZ', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 yil 1 oy 1 hafta 1 kun 1 soat 1 daq. 1 s');
    });
    test('testDurFmtUZLATNFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'uz-Latn-UZ', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 yil 1 oy 1 hafta 1 kun 01:01:01');
    });
    test('testDurFmtUZLATNFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uz-Latn-UZ', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 yil 1 oy 1 hafta 1 kun 1 soat 1 daq. 1 s');
    });
    test('testDurFmtUZLATNFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uz-Latn-UZ', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 yil 1 oy 1 hafta 1 kun 1 soat 1 daq. 1 son.');
    });
    test('testDurFmtUZLATNFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'uz-Latn-UZ', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 yil 1 oy 1 hafta 1 kun 1 soat 1 daqiqa 1 soniya');
    });
    //test cases for vietnemese
    test('testDurFmtVIFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'vi-VN', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 năm 1 tháng 1 tuần 1 ngày 1 giờ 1 phút 1 giây');
    });
    test('testDurFmtVIFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'vi-VN', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 năm 1 tháng 1 tuần 1 ngày 1 giờ 1 phút 1 giây');
    });
    test('testDurFmtVIFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'vi-VN', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 năm 1 tháng 1 tuần 1 ngày 01:01:01');
    });
    test('testDurFmtVIFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'vi-VN', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 năm, 1 tháng, 1 tuần, 1 ngày, 1 giờ, 1 phút, 1 giây');
    });
    test('testDurFmtVIFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'vi-VN', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 năm, 1 tháng, 1 tuần, 1 ngày, 1 giờ, 1 phút, 1 giây');
    });
    test('testDurFmtVIFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'vi-VN', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 năm, 1 tháng, 1 tuần, 1 ngày, 1 giờ, 1 phút, 1 giây');
    });
    //test cases for zh-Hant-TW
    test('testDurFmtZHFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-TW', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年1 個月1 週1 天1 小時1 分鐘1 秒');
    });
    test('testDurFmtZHFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'zh-Hant-TW', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年1 個月1 週1 天1 小時1 分鐘1 秒');
    });
    test('testDurFmtZHFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'zh-Hant-TW', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年1 個月1 週1 天1:01:01');
    });
    test('testDurFmtZHFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-TW', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年1 個月1 週1 天1 小時1 分鐘1 秒');
    });
    test('testDurFmtZHFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-TW', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年 1 個月 1 週 1 天 1 小時 1 分鐘 1 秒');
    });
    test('testDurFmtZHFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-TW', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年 1 個月 1 週 1 天 1 小時 1 分鐘 1 秒');
    });
    //test cases for zh-Hank-HK
    test('testDurFmtZHHKFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-HK', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1年1個月1週1日1小時1分1秒');
    });
    test('testDurFmtZHHKFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'zh-Hant-HK', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1年1個月1週1日1小時1分1秒');
    });
    test('testDurFmtZHHKFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'zh-Hant-HK', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1年1個月1週1日1:01:01');
    });
    test('testDurFmtZHHKFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-HK', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1年1個月1週1日1小時1分1秒');
    });
    test('testDurFmtZHHKFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-HK', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年 1 個月 1 星期 1 日 1 小時 1 分鐘 1 秒');
    });
    test('testDurFmtZHHKFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'zh-Hant-HK', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 年 1 個月 1 星期 1 日 1 小時 1 分鐘 1 秒');
    });
    //test cases for tr-TR
    test('testDurFmtTRFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'tr-TR', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1y 1a 1h 1g 1 sa 1d 1sn');
    });
    test('testDurFmtTRFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'tr-TR', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1y 1a 1h 1g 1 sa 1d 1sn');
    });
    test('testDurFmtTRFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'tr-TR', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1y 1a 1h 1g 01:01:01');
    });
    test('testDurFmtTRFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'tr-TR', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1y 1a 1h 1g 1 sa 1d 1sn');
    });
    test('testDurFmtTRFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'tr-TR', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 yıl 1 ay 1 hf. 1 gün 1 sa. 1 dk. 1 sn.');
    });
    test('testDurFmtTRFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'tr-TR', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 yıl 1 ay 1 hafta 1 gün 1 saat 1 dakika 1 saniye');
    });
    //test cases for swedish
    test('testDurFmtSVFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sv-SE', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å 1m 1v 1d 1h 1m 1s');
    });
    test('testDurFmtSVFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sv-SE', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å 1m 1v 1d 1h 1m 1s');
    });
    test('testDurFmtSVFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sv-SE', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å 1m 1v 1d 01:01:01');
    });
    test('testDurFmtSVFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sv-SE', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1å, 1m, 1v, 1d, 1h, 1m, 1s');
    });
    test('testDurFmtSVFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sv-SE', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(
          fmt.format(dateOptions), '1 år, 1 mån, 1 v, 1 d, 1 tim, 1 min, 1 s');
    });
    test('testDurFmtSVFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sv-SE', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 år, 1 månad, 1 vecka, 1 dygn, 1 timme, 1 minut, 1 sekund');
    });
    //test cases for sl-SI
    test('testDurFmtSLFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sl-SI', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 l, 1 m, 1 t, 1 d, 1 h, 1 min, 1 s');
    });
    test('testDurFmtSLFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sl-SI', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 l, 1 m, 1 t, 1 d, 1 h, 1 min, 1 s');
    });
    test('testDurFmtSLFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'sl-SI', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 l, 1 m, 1 t, 1 d, 01:01:01');
    });
    test('testDurFmtSLFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sl-SI', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 l, 1 m, 1 t, 1 d, 1 h, 1 min, 1 s');
    });
    test('testDurFmtSLFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sl-SI', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 l, 1 m, 1 t, 1 d, 1 h, 1 min, 1 sek.');
    });
    test('testDurFmtSLFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'sl-SI', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 leto, 1 mesec, 1 teden, 1 dan, 1 ura, 1 minuta in 1 sekunda');
    });
    //test cases for portuguese pt-PU
    test('testDurFmtPTPTFormatShortDefaultStyle', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-PT', length: 'short');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 sem., 1 dia, 1 h, 1 min, 1 s');
    });
    test('testDurFmtPTPTFormatShortText', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pt-PT', length: 'short', style: 'text');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 sem., 1 dia, 1 h, 1 min, 1 s');
    });
    test('testDurFmtPTPTFormatShortClock', () {
      final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'pt-PT', length: 'short', style: 'clock');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions), '1 ano, 1 mês, 1 sem., 1 dia, 01:01:01');
    });
    test('testDurFmtPTPTFormatMedium', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-PT', length: 'medium');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 sem., 1 dia, 1 h, 1 min, 1 s');
    });
    test('testDurFmtPTPTFormatLong', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-PT', length: 'long');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 sem., 1 dia, 1 h, 1 min, 1 s');
    });
    test('testDurFmtPTPTFormatFull', () {
      final ILibDurationFmtOptions fmtOptions =
          ILibDurationFmtOptions(locale: 'pt-PT', length: 'full');
      final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);
      expect(fmt, isNotNull);

      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);
      expect(fmt.format(dateOptions),
          '1 ano, 1 mês, 1 semana, 1 dia, 1 hora, 1 minuto e 1 segundo');
    });
  });
}
