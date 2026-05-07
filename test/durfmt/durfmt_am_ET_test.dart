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
    await ILibJS.instance.loadILibLocaleData('am-ET');
  });

  group('ILibDurationFmt am-ET', () {
    test('testDurFmtAMFormatShortDefaultStyle1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? '1 ዓ፣ 1 ወ፣ 1 ሳ፣ 1 ቀ፣ 1 ሰ፣ 1 ደ፣ 1 ሰ'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀ፣ 1 ሰ፣ 1 ደ፣ 1 ሰ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortText1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? '1 ዓ፣ 1 ወ፣ 1 ሳ፣ 1 ቀ፣ 1 ሰ፣ 1 ደ፣ 1 ሰ'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀ፣ 1 ሰ፣ 1 ደ፣ 1 ሰ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortClock1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'am-ET', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? '1 ዓ፣ 1 ወ፣ 1 ሳ፣ 1 ቀ፣ 1:01:01'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀ፣ 1:01:01';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatMedium1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? '1 ዓ፣ 1 ወ፣ 1 ሳ፣ 1 ቀ፣ 1 ሰ፣ 1 ደ፣ 1 ሰ'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀ፣ 1 ሰ፣ 1 ደ፣ 1 ሰ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatLong1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? '1 ዓመ፣ 1 ወር፣ 1 ሳም፣ 1 ቀናት፣ 1 ሰዓ፣ 1 ደቂ፣ 1 ሰከ'
          : '1 ዓመት፣ 1 ወራት፣ 1 ሳምንት፣ 1 ቀናት፣ 1 ሰዓ፣ 1 ደቂ፣ 1 ሰከ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatFull1', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 1, month: 1, week: 1, day: 1, hour: 1, minute: 1, second: 1);

      final String result = (testPlatform == 'webOS')
          ? '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀን፣ 1 ሰዓት፣ 1 ደቂቃ እና 1 ሰከንድ'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀናት፣ 1 ሰዓት፣ 1 ደቂቃ እና 1 ሰከንድ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortDefaultStyle2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);

      final String result = (testPlatform == 'webOS')
          ? '2 ዓ፣ 2 ወ፣ 2 ሳ፣ 2 ቀ፣ 2 ሰ፣ 2 ደ፣ 2 ሰ'
          : '2 ዓ፣ 2 ወር፣ 2 ሳምንት፣ 2 ቀ፣ 2 ሰ፣ 2 ደ፣ 2 ሰ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortText2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      final String result = (testPlatform == 'webOS')
          ? '2 ዓ፣ 2 ወ፣ 2 ሳ፣ 2 ቀ፣ 2 ሰ፣ 2 ደ፣ 2 ሰ'
          : '2 ዓ፣ 2 ወር፣ 2 ሳምንት፣ 2 ቀ፣ 2 ሰ፣ 2 ደ፣ 2 ሰ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortClock2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'am-ET', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);

      final String result = (testPlatform == 'webOS')
          ? '2 ዓ፣ 2 ወ፣ 2 ሳ፣ 2 ቀ፣ 2:02:02'
          : '2 ዓ፣ 2 ወር፣ 2 ሳምንት፣ 2 ቀ፣ 2:02:02';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatMedium2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);

      final String result = (testPlatform == 'webOS')
          ? '2 ዓ፣ 2 ወ፣ 2 ሳ፣ 2 ቀ፣ 2 ሰ፣ 2 ደ፣ 2 ሰ'
          : '2 ዓ፣ 2 ወር፣ 2 ሳምንት፣ 2 ቀ፣ 2 ሰ፣ 2 ደ፣ 2 ሰ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatLong2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);

      final String result = (testPlatform == 'webOS')
          ? '2 ዓመ፣ 2 ወራ፣ 2 ሳም፣ 2 ቀናት፣ 2 ሰዓ፣ 2 ደቂ፣ 2 ሰከ'
          : '2 ዓመታት፣ 2 ወራት፣ 2 ሳምንታት፣ 2 ቀናት፣ 2 ሰዓ፣ 2 ደቂቃ፣ 2 ሰከ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatFull2', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 2, month: 2, week: 2, day: 2, hour: 2, minute: 2, second: 2);
      final String result = (testPlatform == 'webOS')
          ? '2 ዓመታት፣ 2 ወራት፣ 2 ሳምንታት፣ 2 ቀናት፣ 2 ሰዓት፣ 2 ደቂቃ እና 2 ሰከንድ'
          : '2 ዓመታት፣ 2 ወራት፣ 2 ሳምንታት፣ 2 ቀናት፣ 2 ሰዓቶች፣ 2 ደቂቃዎች እና 2 ሰከንዶች';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortDefaultStyle3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);

      final String result = (testPlatform == 'webOS')
          ? '3 ዓ፣ 3 ወ፣ 3 ሳ፣ 3 ቀ፣ 3 ሰ፣ 3 ደ፣ 3 ሰ'
          : '3 ዓ፣ 3 ወር፣ 3 ሳምንት፣ 3 ቀ፣ 3 ሰ፣ 3 ደ፣ 3 ሰ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortText3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short', style: 'text'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);

      final String result = (testPlatform == 'webOS')
          ? '3 ዓ፣ 3 ወ፣ 3 ሳ፣ 3 ቀ፣ 3 ሰ፣ 3 ደ፣ 3 ሰ'
          : '3 ዓ፣ 3 ወር፣ 3 ሳምንት፣ 3 ቀ፣ 3 ሰ፣ 3 ደ፣ 3 ሰ';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortClock3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'am-ET', length: 'short', style: 'clock'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);

      final String result = (testPlatform == 'webOS')
          ? '3 ዓ፣ 3 ወ፣ 3 ሳ፣ 3 ቀ፣ 3:03:03'
          : '3 ዓ፣ 3 ወር፣ 3 ሳምንት፣ 3 ቀ፣ 3:03:03';

      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatMedium3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'medium'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      final String result = (testPlatform == 'webOS')
          ? '3 ዓ፣ 3 ወ፣ 3 ሳ፣ 3 ቀ፣ 3 ሰ፣ 3 ደ፣ 3 ሰ'
          : '3 ዓ፣ 3 ወር፣ 3 ሳምንት፣ 3 ቀ፣ 3 ሰ፣ 3 ደ፣ 3 ሰ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatLong3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'long'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      final String result = (testPlatform == 'webOS')
          ? '3 ዓመ፣ 3 ወራ፣ 3 ሳም፣ 3 ቀናት፣ 3 ሰዓ፣ 3 ደቂ፣ 3 ሰከ'
          : '3 ዓመታት፣ 3 ወራት፣ 3 ሳምንታት፣ 3 ቀናት፣ 3 ሰዓ፣ 3 ደቂቃ፣ 3 ሰከ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatFull3', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'full'),
      );
      expect(fmt, isNotNull);
      final ILibDateOptions dateOptions = ILibDateOptions(
          year: 3, month: 3, week: 3, day: 3, hour: 3, minute: 3, second: 3);
      final String result = (testPlatform == 'webOS')
          ? '3 ዓመታት፣ 3 ወራት፣ 3 ሳምንታት፣ 3 ቀናት፣ 3 ሰዓት፣ 3 ደቂቃ እና 3 ሰከንድ'
          : '3 ዓመታት፣ 3 ወራት፣ 3 ሳምንታት፣ 3 ቀናት፣ 3 ሰዓቶች፣ 3 ደቂቃዎች እና 3 ሰከንዶች';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortDefaultStyle11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short'),
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
      final String result = (testPlatform == 'webOS')
          ? '11 ዓ፣ 11 ወ፣ 11 ሳ፣ 11 ቀ፣ 11 ሰ፣ 11 ደ፣ 11 ሰ'
          : '11 ዓ፣ 11 ወር፣ 11 ሳምንት፣ 11 ቀ፣ 11 ሰ፣ 11 ደ፣ 11 ሰ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortText11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'short', style: 'text'),
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
      final String result = (testPlatform == 'webOS')
          ? '11 ዓ፣ 11 ወ፣ 11 ሳ፣ 11 ቀ፣ 11 ሰ፣ 11 ደ፣ 11 ሰ'
          : '11 ዓ፣ 11 ወር፣ 11 ሳምንት፣ 11 ቀ፣ 11 ሰ፣ 11 ደ፣ 11 ሰ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatShortClock11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(
            locale: 'am-ET', length: 'short', style: 'clock'),
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
      final String result = (testPlatform == 'webOS')
          ? '11 ዓ፣ 11 ወ፣ 11 ሳ፣ 11 ቀ፣ 11:11:11'
          : '11 ዓ፣ 11 ወር፣ 11 ሳምንት፣ 11 ቀ፣ 11:11:11';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatMedium11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'medium'),
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
      final String result = (testPlatform == 'webOS')
          ? '11 ዓ፣ 11 ወ፣ 11 ሳ፣ 11 ቀ፣ 11 ሰ፣ 11 ደ፣ 11 ሰ'
          : '11 ዓ፣ 11 ወር፣ 11 ሳምንት፣ 11 ቀ፣ 11 ሰ፣ 11 ደ፣ 11 ሰ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatLong11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'long'),
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
      final String result = (testPlatform == 'webOS')
          ? '11 ዓመ፣ 11 ወራ፣ 11 ሳም፣ 11 ቀናት፣ 11 ሰዓ፣ 11 ደቂ፣ 11 ሰከ'
          : '11 ዓመታት፣ 11 ወራት፣ 11 ሳምንታት፣ 11 ቀናት፣ 11 ሰዓ፣ 11 ደቂቃ፣ 11 ሰከ';
      expect(fmt.format(dateOptions), result);
    });

    test('testDurFmtAMFormatFull11', () {
      final ILibDurationFmt fmt = ILibDurationFmt(
        ILibDurationFmtOptions(locale: 'am-ET', length: 'full'),
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
      final String result = (testPlatform == 'webOS')
          ? '11 ዓመታት፣ 11 ወራት፣ 11 ሳምንታት፣ 11 ቀናት፣ 11 ሰዓት፣ 11 ደቂቃ እና 11 ሰከንድ'
          : '11 ዓመታት፣ 11 ወራት፣ 11 ሳምንታት፣ 11 ቀናት፣ 11 ሰዓቶች፣ 11 ደቂቃዎች እና 11 ሰከንዶች';
      expect(fmt.format(dateOptions), result);
    });
  });
}
