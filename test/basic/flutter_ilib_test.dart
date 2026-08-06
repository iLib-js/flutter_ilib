import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_test.dart] file.');
  late FlutterILib flutterIlibPlugin;
  setUpAll(() async {
    flutterIlibPlugin = FlutterILib.instance;
    await ILibLoader.instance.loadJSON();
  });
  group('Basic', () {
    test('getILibVersion',
        () => expect(flutterIlibPlugin.getILibVersion, '15.0.0'));
    test('getCLDRVersion',
        () => expect(flutterIlibPlugin.getCLDRVersion, '48.2'));
    test('isILibReady', () => expect(flutterIlibPlugin.isILibReady, true));
  });
}
