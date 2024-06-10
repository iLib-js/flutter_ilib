import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_datefmt_test.dart] file.");

  test('getDateTimeFormat_datetime_full_ko_KR', () async {
    ILibDateOptions dateOptions = ILibDateOptions(
        year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ko-KR", useNative: false, length: "full", type: "datetime");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'2024년 3월 23일 오전 10:42');
  });

  test('getDateTimeFormat_datetime_short_ko_KR', () async {
    ILibDateOptions dateOptions = ILibDateOptions(
        year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: "ko-KR", length: "short", type: "datetime");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'24. 3. 23. 오전 10:42');
  });

  test('getDateTimeFormat_date_full_ko_KR', () async {
    ILibDateOptions dateOptions = ILibDateOptions(
      year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "full");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'2024년 3월 23일');
  });

  test('getDateTimeFormat_date_short_ko_KR', () async {
    ILibDateOptions dateOptions = ILibDateOptions(year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "short");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'24. 3. 23.');
  });

  test('getDateTimeFormat_with_flutter_date_short_ko_KR', () async {
    DateTime setdate = DateTime(2024, 5, 31, 13, 20);
    ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "short");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'24. 5. 31.');
  });

  test('getDateTimeFormat_with_flutter_date_full_ko_KR', () async {
    DateTime setdate = DateTime(2024, 5, 31, 13, 20);
    ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "full");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'2024년 5월 31일');
  });

  test('getClock_ko_KR', () async {
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "full");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expect(await fmt.getClock(),'12');
  });
}