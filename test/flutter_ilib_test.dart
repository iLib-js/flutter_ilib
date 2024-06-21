import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_test.dart] file.");
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib();
  });
  group('Basic', () {
    test('getVersion', () async {
      expect(await flutterIlibPlugin.getVersion(), '14.21.0');
    });
    test('getCLDRVersion', () async {
      expect(await flutterIlibPlugin.getCLDRVersion(), '44.1');
    });

    test('evaluateILib', () async {
      String loko = "ko-KR";
      String loes = "es-ES";
      String jscode1 = 'new LocaleInfo("$loko").getCalendar()';
      String jscode2 = 'new LocaleInfo("$loes").getCalendar()';
      String jscode3 = 'new LocaleInfo("th-TH").getCalendar()';
      String jscode4 = 'new LocaleInfo("fa-IR").getCalendar()';
      String jscode5 = 'new LocaleInfo("am-ET").getCalendar()';

      expect(await evaluateILib(jscode1), 'gregorian');
      expect(await evaluateILib(jscode2), 'gregorian');
      expect(await evaluateILib(jscode3), 'thaisolar');
      expect(await evaluateILib(jscode4), 'persian');
      expect(await evaluateILib(jscode5), 'ethiopic');
    });
    test('evaluateILib_emptyString', () async {
      String str = "";
      expect(await evaluateILib(str), null);
    });
  });
}
