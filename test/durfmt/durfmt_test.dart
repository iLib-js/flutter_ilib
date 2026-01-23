import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_Clock_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('getClock()', () {
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
                test.equal(duration.toString(), '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות');
            }  else if(Number(cldrVersion) <= 41) {
                test.equal(duration.toString(), '‏20 שנים, 20 חודשים, 20 שבועות, 20 יום, 20 שעות, 20 דקות ו-20 שניות');
            } else if (Number(cldrVersion) < 43) { // The `many` category has been removed since CLDR 42.
                test.equal(duration.toString(), '‏20 שנים, 20 חודשים, 20 שבועות, 20 יום, 20 שעות, 20 דקות ו-‏20 שניות');
            } else {
                test.equal(duration.toString(), '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות');
            }
        } else if (platform === 'browser') {
            var browser = ilib._getBrowser();
            var expected = '‏20 שנים, 20 חודשים, 20 שבועות, 20 יום, 20 שעות, 20 דקות ו-‏20 שניות';
            if (browser === 'chrome' && getChromeVersion() >= 110) {
                expected = '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות';
            }
            test.equal(duration.toString(), expected);
        } else {
            test.equal(duration.toString(), '‏20 שנים, 20 חודשים, 20 שבועות, 20 ימים, 20 שעות, 20 דקות ו-20 שניות');
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
  });
}
