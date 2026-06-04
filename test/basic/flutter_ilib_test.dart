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
    test('getCLDRVersion',
        () => expect(flutterIlibPlugin.getCLDRVersion, '46.0'));
    test('isILibReady', () => expect(flutterIlibPlugin.isILibReady, true));
  });
}
