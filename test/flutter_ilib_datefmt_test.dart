import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_datefmt_test.dart] file.");
  group('format()', () {
    test('ILibDateFmt_no_Options', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions();
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions =
          ILibDateOptions(dateTime: DateTime.parse('2024-03-23 10:42'));
      expect(await fmt.format(dateOptions), '3/23/24');
    });
    test('ILibDateFmt_Options', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2024,
          month: 7,
          day: 4,
          hour: 13,
          minute: 45,
          second: 0);
      expect(await fmt.format(dateOptions), '2024년 7월 4일 오후 1:45');
    });
    test('ILibDateFmt_DateTimeObj_datetime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      expect(await fmt.format(dateOptions), '2024년 5월 31일 오후 1:20');
    });
    test('ILibDateFmt_DateTimeObj_time', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      expect(await fmt.format(dateOptions), '오후 1:20');
    });
    test('ILibDateFmt_DateTimeObj_date', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      expect(await fmt.format(dateOptions), '2024년 5월 31일');
    });
    test('ILibDateFmt_DateTimeObj_date2', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", length: "full", type: "datetime", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      ILibDateOptions dateOptions =
          ILibDateOptions(dateTime: DateTime.parse('2024-06-27 10:42'));
      expect(await fmt.format(dateOptions), '2024년 6월 27일 오전 10:42');
    });
  });
  group('getClock()', () {
    test('getClock_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('getClock_en_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-US", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('getClock_en_GB', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-GB", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
  });
}
