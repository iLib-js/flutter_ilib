import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_vi_VN_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtSimpleMedium_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 thg 9, 2011");
    });
    test('testDateFmtSimpleLong_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 tháng 9, 2011");
    });
    test('testDateFmtSimpleFull_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 tháng 9, 2011");
    });
    test('testDateFmtAllComponentsShort_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "short", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T5, 29/9/11");
    });
    test('testDateFmtAllComponentsMedium_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "medium", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T5, 29 thg 9, 2011");
    });
    test('testDateFmtAllComponentsLong_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "long", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Th 5, 29 tháng 9, 2011");
    });
    test('testDateFmtAllComponentsFull_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thứ Năm, 29 tháng 9, 2011");
    });
    test('testDateFmtSimpleTimeShort_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 29/9/11");
    });
    test('testDateFmtDateTimeSimpleMedium_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 29 thg 9, 2011");
    });
    test('testDateFmtDateTimeSimpleLong_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "lúc 13:45 29 tháng 9, 2011");
    });
    test('testDateFmtDateTimeSimpleFull_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "lúc 13:45 29 tháng 9, 2011");
    });

    test('testDateFmtTypeDate_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtTypeTime_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 29/9/11");
    });
    test('testDateFmtShortDateComponentsY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T9");
    });
    test('testDateFmtShortDateComponentsN_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "t9");
    });
    test('testDateFmtShortDateComponentsD_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtShortDateComponentsMY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtShortDateComponentsDMY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtShortDateComponentsWDM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T5, 29/9");
    });
    test('testDateFmtShortDateComponentsWDMY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T5, 29/9/11");
    });
    test('testDateFmtFullDateComponentsY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Tháng 9");
    });
    test('testDateFmtFullDateComponentsD_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 tháng 9");
    });
    test('testDateFmtFullDateComponentsMY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "tháng 9, 2011");
    });
    test('testDateFmtFullDateComponentsDMY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 tháng 9, 2011");
    });
    test('testDateFmtFullDateComponentsWDM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thứ Năm, 29 tháng 9");
    });
    test('testDateFmtFullDateComponentsWDMY_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thứ Năm, 29 tháng 9, 2011");
    });
    test('testDateFmtShortTimeComponentsS_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtShortTimeComponentsHMAZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtShortTimeComponentsHMSA_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "vi-VN", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtFullTimeComponentsS_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtFullTimeComponentsHMAZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtFullTimeComponentsHMSA_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtWithTimeZoneAndNoDST_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "vi-VN",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Ho_Chi_Minh");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "vi-VN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
  });
}
