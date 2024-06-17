import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_zh_CN_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtSimpleMedium_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ก.ย. 2011");
    });
    test('testDateFmtSimpleLong_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011");
    });
    test('testDateFmtSimpleFull_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011");
    });
    test('testDateFmtSimpleTimeShort_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "short",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "medium",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "short",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "medium",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ก.ย. 2011 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "long",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011 เวลา 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "full",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011 เวลา 13:45");
    });

    test('testDateFmtTypeDate_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtTypeTime_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11 13:45");
    });
    test('testDateFmtShortDateComponentsY_th_TH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "th-TH", calendar: "thaisolar", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_th_TH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "th-TH", calendar: "thaisolar", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", date: "m", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "กันยายน");
    });
    test('testDateFmtShortDateComponentsD_th_TH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "th-TH", calendar: "thaisolar", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtShortDateComponentsMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtShortDateComponentsDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtShortDateComponentsWDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤที่ 29/9");
    });
    test('testDateFmtShortDateComponentsWDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤที่ 29/9/54");
    });
    test('testDateFmtFullDateComponentsY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "กันยายน");
    });
    test('testDateFmtFullDateComponentsD_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน");
    });
    test('testDateFmtFullDateComponentsMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "กันยายน 2011");
    });
    test('testDateFmtFullDateComponentsDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011");
    });
    test('testDateFmtFullDateComponentsWDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "วันพฤหัสบดีที่ 29 กันยายน");
    });
    test('testDateFmtFullDateComponentsWDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "วันพฤหัสบดีที่ 29 กันยายน 2554");
    });
    test('testDateFmtShortTimeComponentsS_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtShortTimeComponentsHMAZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtShortTimeComponentsHMSA_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtFullTimeComponentsS_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtFullTimeComponentsHMAZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +07");
    });
    test('testDateFmtFullTimeComponentsHMSA_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });
    test('testDateFmtWithTimeZoneAndNoDST_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +07");
    });

    test('testDateFmtShortDMWY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "short",
          date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤที่ 29/9/54");
    });
    test('testDateFmtMediumDMWY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "medium",
          date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤ.ที่ 29 ก.ย. 2554");
    });
    test('testDateFmtLongDMWY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤ.ที่ 29 กันยายน 2554");
    });
    test('testDateFmtFullDMWY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "วันพฤหัสบดีที่ 29 กันยายน 2554");
    });
    test('testDateFmtShortDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "short", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtMediumDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "medium",
          date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ก.ย. 2011");
    });
    test('testDateFmtLongDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011");
    });
    test('testDateFmtFullDMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน 2011");
    });
    test('testDateFmtShortDMW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "short", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤที่ 29/9");
    });
    test('testDateFmtMediumDMW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH",
          calendar: "thaisolar",
          length: "medium",
          date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤ.ที่ 29 ก.ย.");
    });
    test('testDateFmtLongDMW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤ.ที่ 29 กันยายน");
    });
    test('testDateFmtFullDMW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "วันพฤหัสบดีที่ 29 กันยายน");
    });
    test('testDateFmtShortDMW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "short", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtMediumDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "medium", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ก.ย.");
    });
    test('testDateFmtLongDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน");
    });
    test('testDateFmtFullDM_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 กันยายน");
    });
    test('testDateFmtShortMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "short", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/54");
    });
    test('testDateFmtMediumMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "medium", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ก.ย. 2554");
    });
    test('testDateFmtLongMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "กันยายน 2554");
    });
    test('testDateFmtFullMY_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "กันยายน 2554");
    });
    test('testDateFmtShortDW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "short", date: "dw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤที่ 29");
    });
    test('testDateFmtMediumDW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "medium", date: "dw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤ.ที่ 29");
    });
    test('testDateFmtLongDW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "long", date: "dw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "พฤ.ที่ 29");
    });
    test('testDateFmtFullDW_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "th-TH", calendar: "thaisolar", length: "full", date: "dw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "th-TH",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "วันพฤหัสบดีที่ 29");
    });
  });
}
