import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_test.dart] file.');
  late FlutterILib flutterIlibPlugin;
  setUpAll(() async {
    flutterIlibPlugin = FlutterILib.instance;
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
  });
  group('Basic', () {
    test('getVersion', () => expect(flutterIlibPlugin.getVersion, '14.21.0'));
    test('getCLDRVersion',
        () => expect(flutterIlibPlugin.getCLDRVersion, '44.1'));
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
  });
}
