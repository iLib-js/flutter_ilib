import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_zh_CN_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011");
    });
    test('testDateFmtSimpleMedium_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleLong_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleFull_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleTimeShort_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtSimpleTimeMedium_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtSimpleTimeLong_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtSimpleTimeFull_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtDateTimeSimpleShort_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011 下午1:45");
    });
    test('testDateFmtDateTimeSimpleMedium_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 下午1:45");
    });
    test('testDateFmtDateTimeSimpleLong_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 下午1:45");
    });
    test('testDateFmtDateTimeSimpleFull_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 下午1:45");
    });

    test('testDateFmtTypeDate_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011");
    });
    test('testDateFmtTypeTime_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtTypeDateTime_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011 下午1:45");
    });
    test('testDateFmtShortDateComponentsY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtShortDateComponentsM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtShortDateComponentsN_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsD_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtShortDateComponentsDM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtShortDateComponentsMY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/2011");
    });
    test('testDateFmtShortDateComponentsDMY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011");
    });
    test('testDateFmtShortDateComponentsWDM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9四");
    });
    test('testDateFmtShortDateComponentsWDMY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011四");
    });
    test('testDateFmtFullDateComponentsY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtFullDateComponentsM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtFullDateComponentsD_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtFullDateComponentsDM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日");
    });
    test('testDateFmtFullDateComponentsMY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月");
    });
    test('testDateFmtFullDateComponentsDMY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtFullDateComponentsWDM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日星期四");
    });
    test('testDateFmtFullDateComponentsWDMY_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日星期四");
    });
    test('testDateFmtShortTimeComponentsS_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          time: "hmz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 [HKST]");
    });
    test('testDateFmtShortTimeComponentsHMAZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45 [HKST]");
    });
    test('testDateFmtShortTimeComponentsHMSA_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-HK", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 [HKST]");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37 [HKST]");
    });
    test('testDateFmtFullTimeComponentsS_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 [HKST]");
    });
    test('testDateFmtFullTimeComponentsHMAZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45 [HKST]");
    });
    test('testDateFmtFullTimeComponentsHMSA_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 [HKST]");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37 [HKST]");
    });
    test('testDateFmtTimeFrameDefaultWeeHours_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "上午1:45");
    });
    test('testDateFmtTimeFrameDefaultEarlyMorning_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 8,
          minute: 30,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "上午8:30");
    });
    test('testDateFmtTimeFrameDefaultLateMorning_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 11,
          minute: 30,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "上午11:30");
    });
    test('testDateFmtTimeFrameDefaultNoonHour_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 12,
          minute: 37,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午12:37");
    });
    test('testDateFmtTimeFrameDefaultAfterNoon_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 15,
          minute: 37,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午3:37");
    });
    test('testDateFmtTimeFrameDefaultEvening_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 19,
          minute: 47,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午7:47");
    });
    test('testDateFmtTimeFrameDefaultNight_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 22,
          minute: 53,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午10:53");
    });

    test('testDateFmtWithTimeZoneAndNoDST_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-HK",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Hong_Kong");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-HK",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 [HKST]");
    });
  });
}
