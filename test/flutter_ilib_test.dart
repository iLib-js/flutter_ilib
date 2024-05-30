import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

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

  test('getDateTimeFormat_datetime_full_ko_KR', () async {
    DateOptions dateOptions = DateOptions(year:'2024', month: '3',day:'23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "full", type: "datetime");
    expect(await flutterIlibPlugin.getDateTimeFormat(dateOptions, fmtOptions), '2024년 3월 23일 오전 10:42');
  });

  test('getDateTimeFormat_datetime_short_ko_KR', () async {
    DateOptions dateOptions = DateOptions(year:'2024', month: '3',day:'23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "short", type: "datetime");
    expect(await flutterIlibPlugin.getDateTimeFormat(dateOptions, fmtOptions), '24. 3. 23. 오전 10:42');
  });

  test('getDateTimeFormat_date_full_ko_KR', () async {
    DateOptions dateOptions = DateOptions(year:'2024', month: '3',day:'23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "full");
    expect(await flutterIlibPlugin.getDateTimeFormat(dateOptions, fmtOptions), '2024년 3월 23일');
  });

  test('getDateTimeFormat_date_short_ko_KR', () async {
    DateOptions dateOptions = DateOptions(year:'2024', month: '3',day:'23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "short");
    expect(await flutterIlibPlugin.getDateTimeFormat(dateOptions, fmtOptions), '24. 3. 23.');
  });
}
