import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_test.dart] file.');
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib.instance;
  });
  group('Basic', () {
    test('getVersion', () {
      flutterIlibPlugin
          .addListener(() => expect(flutterIlibPlugin.getVersion, '14.21.0'));
    });
    test('getCLDRVersion', () {
      flutterIlibPlugin
          .addListener(() => expect(flutterIlibPlugin.getCLDRVersion, '44.1'));
    });

    test('evaluateILib', () {
      const String loko = 'ko-KR';
      const String loes = 'es-ES';
      const String jscode1 = 'new LocaleInfo("$loko").getCalendar()';
      const String jscode2 = 'new LocaleInfo("$loes").getCalendar()';
      const String jscode3 = 'new LocaleInfo("th-TH").getCalendar()';
      const String jscode4 = 'new LocaleInfo("fa-IR").getCalendar()';
      const String jscode5 = 'new LocaleInfo("am-ET").getCalendar()';

      flutterIlibPlugin
          .addListener(() => expect(evaluateIlib(jscode1), 'gregorian'));
      flutterIlibPlugin
          .addListener(() => expect(evaluateIlib(jscode2), 'gregorian'));
      flutterIlibPlugin
          .addListener(() => expect(evaluateIlib(jscode3), 'thaisolar'));
      flutterIlibPlugin
          .addListener(() => expect(evaluateIlib(jscode4), 'persian'));
      flutterIlibPlugin
          .addListener(() => expect(evaluateIlib(jscode5), 'ethiopic'));
    });
    test('evaluateILib_emptyString', () {
      const String str = '';
      flutterIlibPlugin.addListener(() => expect(evaluateIlib(str), null));
    });
  });
}
