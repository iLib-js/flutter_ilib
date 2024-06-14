import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ko_KR_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9. 29.");
    });
    test('testDateFmtSimpleMedium_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011. 9. 29.");
    });
    test('testDateFmtSimpleLong_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월 29일");
    });
    test('testDateFmtSimpleFull_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월 29일");
    });
    test('testDateFmtSimpleTimeShort_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45");
    });

    test('testDateFmtSimpleTimeMedium_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45");
    });
    test('testDateFmtSimpleTimeLong_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45");
    });
    test('testDateFmtSimpleTimeFull_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오전 1:45");
    });
    test('testDateFmtDateTimeSimpleShort_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9. 29. 오후 1:45");
    });
    test('testDateFmtDateTimeSimpleMedium_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011. 9. 29. 오후 1:45");
    });
    test('testDateFmtDateTimeSimpleLong_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월 29일 오후 1:45");
    });
    test('testDateFmtDateTimeSimpleFull_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월 29일 오후 1:45");
    });
    test('testDateFmtTypeDate_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9. 29.");
    });
    test('testDateFmtTypeTime_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45");
    });
    test('testDateFmtTypeDateTime_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9. 29. 오후 1:45");
    });
    test('testDateFmtShortDateComponentsY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11년");
    });
    test('testDateFmtShortDateComponentsM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9월");
    });
    test('testDateFmtShortDateComponentsN_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9월");
    });
    test('testDateFmtShortDateComponentsD_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29일");
    });
    test('testDateFmtShortDateComponentsDM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9. 29.");
    });
    test('testDateFmtShortDateComponentsMY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9.");
    });
    test('testDateFmtShortDateComponentsDMY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9. 29.");
    });
    test('testDateFmtShortDateComponentsWDM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9. 29. 목");
    });
    test('testDateFmtShortDateComponentsWDMY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11. 9. 29. 목");
    });
    test('testDateFmtLongDateComponentsWDM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", date: "wdm", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9월 29일 목");
    });
    test('testDateFmtFullDateComponentsY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년");
    });
    test('testDateFmtFullDateComponentsM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9월");
    });
    test('testDateFmtFullDateComponentsD_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29일");
    });
    test('testDateFmtFullDateComponentsDM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9월 29일");
    });
    test('testDateFmtFullDateComponentsMY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월");
    });
    test('testDateFmtFullDateComponentsDMY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월 29일");
    });
    test('testDateFmtFullDateComponentsWDM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9월 29일 목요일");
    });
    test('testDateFmtFullDateComponentsWDMY_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011년 9월 29일 목요일");
    });

    test('testDateFmtShortTimeComponentsS_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", time: "hmz", timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 KST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", time: "hmaz", timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45 KST");
    });
    test('testDateFmtShortTimeComponentsHMSA_ko_KR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ko-KR", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", time: "hmsz", timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 KST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", time: "hmsaz", timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45:37 KST");
    });
    test('testDateFmtFullTimeComponentsS_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 KST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45 KST");
    });
    test('testDateFmtFullTimeComponentsHMSA_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 KST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "오후 1:45:37 KST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ko-KR",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Seoul");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ko-KR",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 KST");
    });
    test('DateFmt_datetime_short_ko_KR', () async {
      ILibDateOptions dateOptions = ILibDateOptions(
        year: 2024, month: 3, day: 23, hour: 10, minute: 42);
      ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: "ko-KR", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.format(dateOptions),'24. 3. 23. 오전 10:42');
    });
    test('DateFmt_date_full_ko_KR', () async {
      ILibDateOptions dateOptions = ILibDateOptions(
        year: 2024, month: 3, day: 23, hour: 10, minute: 42);
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.format(dateOptions),'2024년 3월 23일');
    });
    test('DateFmt_date_short_ko_KR', () async {
      ILibDateOptions dateOptions = ILibDateOptions(year: 2024, month: 3, day: 23, hour: 10, minute: 42);
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.format(dateOptions),'24. 3. 23.');
    });
    test('DateFmt_with_flutter_date_short_ko_KR', () async {
      DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "short");

      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.format(dateOptions),'24. 5. 31.');
    });

    test('DateFmt_with_flutter_date_full_ko_KR', () async {
      DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.format(dateOptions),'2024년 5월 31일');
    });
  });
}
