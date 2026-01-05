import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_test.dart] file.');
  late FlutterILib flutterIlibPlugin;
  setUpAll(() async {
    flutterIlibPlugin = FlutterILib.instance;
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('th-TH');
    await ILibJS.instance.loadILibLocaleData('fa-IR');
    await ILibJS.instance.loadILibLocaleData('am-ET');
    await ILibJS.instance.loadILibLocaleData('ko-KR');
    await ILibJS.instance.loadILibLocaleData('en-US');
    await ILibJS.instance.loadILibLocaleData('es-ES');
  });
  group('Basic', () {
    test('getVersion', () => expect(flutterIlibPlugin.getVersion, '14.21.0'));
    test('getCLDRVersion',
        () => expect(flutterIlibPlugin.getCLDRVersion, '46.0'));
    test('isILibReady', () => expect(flutterIlibPlugin.isILibReady, true));
    test('evaluateILib', () {
      const String loko = 'ko-KR';
      const String loes = 'es-ES';
      const String jscode1 = 'new LocaleInfo("$loko").getCalendar()';
      const String jscode2 = 'new LocaleInfo("$loes").getCalendar()';
      const String jscode3 = 'new LocaleInfo("th-TH").getCalendar()';
      const String jscode4 = 'new LocaleInfo("fa-IR").getCalendar()';
      const String jscode5 = 'new LocaleInfo("am-ET").getCalendar()';

      expect(flutterIlibPlugin.evaluateILib(jscode1), 'gregorian');
      expect(flutterIlibPlugin.evaluateILib(jscode2), 'gregorian');
      expect(flutterIlibPlugin.evaluateILib(jscode3), 'thaisolar');
      expect(flutterIlibPlugin.evaluateILib(jscode4), 'persian');
      expect(flutterIlibPlugin.evaluateILib(jscode5), 'ethiopic');
    });
    test('evaluateILib_emptyString', () {
      const String str = '';
      expect(flutterIlibPlugin.evaluateILib(str), null);
    });

    test('evaluateILib_DurationFmt', () {
      const String str = 'new DurationFmt()';
      expect(flutterIlibPlugin.evaluateILib(str), isNotNull);
    });

    test('evaluateILib_DurationFmt_ko_KR', () {
      const String str =
          'new DurationFmt({locale:"ko-KR", length: "full"}).format({hour: 1, minute: 2, second: 30}).toString()';
      expect(flutterIlibPlugin.evaluateILib(str), '1시간 2분 30초');
    });

    test('evaluateILib_DurationFmt_ko_KR2', () {
      const String loc = 'ko-KR';
      const String length = 'short';
      const int year = 2;
      const int month = 3;
      const int day = 16;
      const int hour = 5;
      const int minute = 23;
      const int second = 10;
      const String str =
          'new DurationFmt({locale:"$loc", length: "$length"}).format({year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}).toString()';

      expect(flutterIlibPlugin.evaluateILib(str), '2년 3개월 16일 5시간 23분 10초');
    });
    test('evaluateILib_DurationFmt_en_US', () {
      const String loc = 'en-US';
      const String length = 'full';
      const int year = 1;
      const int month = 1;
      const int day = 1;
      const int hour = 1;
      const int minute = 1;
      const int second = 1;
      const String str =
          'new DurationFmt({locale:"$loc", length: "$length"}).format({year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}).toString()';

      expect(flutterIlibPlugin.evaluateILib(str),
          '1 year, 1 month, 1 day, 1 hour, 1 minute, 1 second');
    });
    test('evaluateILib_DurationFmt_en_US2', () {
      const String loc = 'en-US';
      const String length = 'full';
      const int year = 2;
      const int month = 2;
      const int day = 2;
      const int hour = 2;
      const int minute = 2;
      const int second = 2;
      const String str =
          'new DurationFmt({locale:"$loc", length: "$length"}).format({year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}).toString()';

      expect(flutterIlibPlugin.evaluateILib(str),
          '2 years, 2 months, 2 days, 2 hours, 2 minutes, 2 seconds');
    });
    test('evaluateILib_DurationFmt_es_ES', () {
      const String loc = 'es-ES';
      const String length = 'full';
      const int year = 2;
      const int month = 2;
      const int day = 2;
      const int hour = 2;
      const int minute = 2;
      const int second = 2;
      const String str =
          'new DurationFmt({locale:"$loc", length:"$length"}).format({year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}).toString()';

      expect(flutterIlibPlugin.evaluateILib(str),
          '2 años, 2 meses, 2 días, 2 horas, 2 minutos y 2 segundos');
    });

    test('evaluateILib_DurationFmt_th_TH', () {
      const String loc = 'th-TH';
      const String length = 'short';
      const int year = 1;
      const int month = 1;
      const int day = 1;
      const int hour = 1;
      const int minute = 1;
      const int second = 1;
      const String str =
          'new DurationFmt({locale:"$loc", length:"$length"}).format({year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}).toString()';

      expect(flutterIlibPlugin.evaluateILib(str),
          '1ปี 1เดือน 1วัน 1ชม. 1นาที 1วิ');
    });

    test('evaluateILib_DurationFmt_am_ET', () {
      const String loc = 'am-ET';
      const String length = 'full';
      const int year = 2;
      const int month = 2;
      const int day = 2;
      const int hour = 2;
      const int minute = 2;
      const int second = 2;
      const String str =
          'new DurationFmt({locale:"$loc", length:"$length"}).format({year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second}).toString()';

      expect(flutterIlibPlugin.evaluateILib(str),
          '2 ዓመታት፣ 2 ወራት፣ 2 ቀናት፣ 2 ሰዓቶች፣ 2 ደቂቃዎች እና 2 ሰከንዶች');
    });
  });
}
