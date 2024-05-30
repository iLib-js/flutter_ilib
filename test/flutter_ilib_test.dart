import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_ilib/flutter_ilib_platform_interface.dart';
import 'package:flutter_ilib/flutter_ilib_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIlibPlatform
    with MockPlatformInterfaceMixin
    implements FlutterIlibPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterIlibPlatform initialPlatform = FlutterIlibPlatform.instance;

  test('$MethodChannelFlutterIlib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIlib>());
  });

  test('getCLDRVersion', () async {
    FlutterIlib flutterIlibPlugin = FlutterIlib();
    //MockFlutterIlibPlatform fakePlatform = MockFlutterIlibPlatform();
    //FlutterIlibPlatform.instance = fakePlatform;

    expect(await flutterIlibPlugin.getCLDRVersion(), '42');
  });
}
