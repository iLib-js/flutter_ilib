import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_localeinfo_test.dart] file.");
  // 0:sun, 1:mon, 2:tue, 3:wed, 4:thu, 5:fri, 6:sat
  test('LocaleInfo_getFirstDayOfWeek_ko_KR', () async {
    String lo = "ko-KR";

    ILibLocaleInfo locInfo = ILibLocaleInfo(lo);
    expect(await locInfo.getFirstDayOfWeek(),'0');
  });
  test('LocaleInfo_getWeekEndStart_ko_KR', () async {
    String lo = "ko-KR";

    ILibLocaleInfo locInfo = ILibLocaleInfo(lo);
    expect(await locInfo.getWeekEndStart(),'6');
  });
  test('LocaleInfo_getWeekEndStart_ko_KR', () async {
    String lo = "ko-KR";

    ILibLocaleInfo locInfo = ILibLocaleInfo(lo);
    expect(await locInfo.getWeekEndEnd(),'0');
  });
}