import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_ilib/flutter_ilib_platform_interface.dart';
import 'package:flutter_ilib/flutter_ilib_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final FlutterIlibPlatform initialPlatform = FlutterIlibPlatform.instance;

  test('$MethodChannelFlutterIlib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIlib>());
  });

  test('getVersion', () async {
    FlutterIlib flutterIlibPlugin = FlutterIlib();
    expect(await flutterIlibPlugin.getVersion(), '14.21.0');
  });

  test('getCLDRVersion', () async {
    FlutterIlib flutterIlibPlugin = FlutterIlib();
    expect(await flutterIlibPlugin.getCLDRVersion(), '44.1');
  });

    test('getDateTimeFormat_datetime_full_ko_KR', () async {
    FlutterIlib flutterIlibPlugin = FlutterIlib();

    DateOptions dateOptions = DateOptions(year:'2024', month: '3',day:'23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "full", type: "datetime");
    expect(await flutterIlibPlugin.getDateTimeFormat(dateOptions, fmtOptions), '2024년 3월 23일 오전 10:42');
  });
}
