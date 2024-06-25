import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_zh_Hant_TW_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29");
    });
    test('testDateFmtSimpleMedium_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleLong_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleFull_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleTimeShort_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtSimpleTimeMedium_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtSimpleTimeLong_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtSimpleTimeFull_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtDateTimeSimpleShort_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29 下午1:45");
    });
    test('testDateFmtDateTimeSimpleMedium_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 下午1:45");
    });
    test('testDateFmtDateTimeSimpleLong_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 下午1:45");
    });
    test('testDateFmtDateTimeSimpleFull_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 下午1:45");
    });

    test('testDateFmtTypeDate_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29");
    });
    test('testDateFmtTypeTime_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtTypeDateTime_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29 下午1:45");
    });
    test('testDateFmtShortDateComponentsY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtShortDateComponentsM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtShortDateComponentsN_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsD_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtShortDateComponentsDM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/29");
    });
    test('testDateFmtShortDateComponentsMY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9");
    });
    test('testDateFmtShortDateComponentsDMY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29");
    });
    test('testDateFmtShortDateComponentsWDM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/29 四");
    });
    test('testDateFmtShortDateComponentsWDMY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29 四");
    });
    test('testDateFmtFullDateComponentsY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtFullDateComponentsM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtFullDateComponentsD_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtFullDateComponentsDM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日");
    });
    test('testDateFmtFullDateComponentsMY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月");
    });
    test('testDateFmtFullDateComponentsDMY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtFullDateComponentsWDM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日 星期四");
    });
    test('testDateFmtFullDateComponentsWDMY_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 星期四");
    });
    test('testDateFmtShortTimeComponentsS_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          time: "hmz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 [CST]");
    });
    test('testDateFmtShortTimeComponentsHMAZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45 [CST]");
    });
    test('testDateFmtShortTimeComponentsHMSA_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hant-TW", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 [CST]");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37 [CST]");
    });
    test('testDateFmtFullTimeComponentsS_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 [CST]");
    });
    test('testDateFmtFullTimeComponentsHMAZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45 [CST]");
    });
    test('testDateFmtFullTimeComponentsHMSA_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 [CST]");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午1:45:37 [CST]");
    });
    test('testDateFmtTimeFrameDefaultWeeHours_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "凌晨1:45");
    });
    test('testDateFmtTimeFrameDefaultEarlyMorning_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 8,
          minute: 30,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "上午8:30");
    });
    test('testDateFmtTimeFrameDefaultLateMorning_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 11,
          minute: 30,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "上午11:30");
    });
    test('testDateFmtTimeFrameDefaultNoonHour_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 12,
          minute: 37,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "中午12:37");
    });
    test('testDateFmtTimeFrameDefaultAfterNoon_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 15,
          minute: 37,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "下午3:37");
    });
    test('testDateFmtTimeFrameDefaultEvening_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 19,
          minute: 47,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "晚上7:47");
    });
    test('testDateFmtTimeFrameDefaultNight_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 9,
          day: 29,
          hour: 22,
          minute: 53,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "晚上10:53");
    });

    test('testDateFmtWithTimeZoneAndNoDST_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hant-TW",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Taipei");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hant-TW",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "Asia/Taipei");
      expect(await fmt.format(dateOptions), "1:45:37 [CST]");
    });
  });
}
