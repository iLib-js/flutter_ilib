import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_test.dart] file.");
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib();
  });

  test('getVersion', () async {
    expect(await flutterIlibPlugin.getVersion(), '14.21.0');
  });

  test('getCLDRVersion', () async {
    expect(await flutterIlibPlugin.getCLDRVersion(), '44.1');
  });

  test('evaluateILib', () async {
    String jscode1 = 'new LocaleInfo("ko-KR").getCalendar()';
    String jscode2 = 'new LocaleInfo("es-ES").getCalendar()';
    String jscode3 = 'new LocaleInfo("th-TH").getCalendar()';
    String jscode4 = 'new LocaleInfo("fa-IR").getCalendar()';
    String jscode5 = 'new LocaleInfo("am-ET").getCalendar()';

    expect(await flutterIlibPlugin.evaluateILib(jscode1), 'gregorian');
    expect(await flutterIlibPlugin.evaluateILib(jscode2), 'gregorian');
    expect(await flutterIlibPlugin.evaluateILib(jscode3), 'thaisolar');
    expect(await flutterIlibPlugin.evaluateILib(jscode4), 'persian');
    expect(await flutterIlibPlugin.evaluateILib(jscode5), 'ethiopic');
  });
}