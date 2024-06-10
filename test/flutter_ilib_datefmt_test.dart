import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_datefmt_test.dart] file.");
  //late FlutterIlib flutterIlibPlugin;
  //setUp(() {
  //flutterIlibPlugin = FlutterIlib();
  //});

  test('tempAAA', () async {
    DateOptions dateOptions = DateOptions(
        year: '2024',
        month: '3',
        day: '23',
        hour: '10',
        minute: '42',
        second: '11');

    DateFormatOptions fmtOptions = DateFormatOptions(
        locale: "ko-KR", useNative: false, length: "full", type: "datetime");
    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions), '2024년 3월 23일 오전 10:42');
  });

  test('getDateTimeFormat_datetime_full_ko_KR', () async {
    DateOptions dateOptions = DateOptions(
        year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(
        locale: "ko-KR", useNative: false, length: "full", type: "datetime");

    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'2024년 3월 23일 오전 10:42');
  });

  test('getDateTimeFormat_datetime_short_ko_KR', () async {
    DateOptions dateOptions = DateOptions(
        year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions =
        DateFormatOptions(locale: "ko-KR", length: "short", type: "datetime");
    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'24. 3. 23. 오전 10:42');
  });

  test('getDateTimeFormat_date_full_ko_KR', () async {
    DateOptions dateOptions = DateOptions(
      year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "full");
    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'2024년 3월 23일');
  });

  test('getDateTimeFormat_date_short_ko_KR', () async {
    DateOptions dateOptions = DateOptions( year: '2024', month: '3', day: '23', hour: '10', minute: '42');
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "short");
    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'24. 3. 23.');
  });

  test('getDateTimeFormat_with_flutter_date_short_ko_KR', () async {
    DateTime setdate = DateTime(2024, 5, 31, 13, 20);
    DateOptions dateOptions = DateOptions(dateTime: setdate);
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "short");

    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'24. 5. 31.');
  });

  test('getDateTimeFormat_with_flutter_date_full_ko_KR', () async {
    DateTime setdate = DateTime(2024, 5, 31, 13, 20);
    DateOptions dateOptions = DateOptions(dateTime: setdate);
    DateFormatOptions fmtOptions = DateFormatOptions(locale: "ko-KR", length: "full");
    DateFmt fmt = DateFmt(fmtOptions);
    expect(await fmt.format(dateOptions),'2024년 5월 31일');
  });
}