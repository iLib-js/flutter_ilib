import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_zh_CN_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29");
    });
    test('testDateFmtSimpleMedium_zh_Hans_CN  ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleLong_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleFull_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleTimeShort_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 13:45");
    });
    test('testDateFmtTypeDate_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29");
    });
    test('testDateFmtTypeTime_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29 13:45");
    });

    test('testDateFmtShortDateComponentsY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtShortDateComponentsM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtShortDateComponentsN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsD_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtShortDateComponentsDM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/29");
    });
    test('testDateFmtShortDateComponentsMY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9");
    });
    test('testDateFmtShortDateComponentsDMY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29");
    });
    test('testDateFmtShortDateComponentsWDM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/29四");
    });
    test('testDateFmtShortDateComponentsWDMY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/9/29四");
    });

    test('testDateFmtFullDateComponentsY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtFullDateComponentsM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtFullDateComponentsD_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtFullDateComponentsDM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日");
    });
    test('testDateFmtFullDateComponentsMY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月");
    });
    test('testDateFmtFullDateComponentsDMY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtFullDateComponentsWDM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日星期四");
    });
    test('testDateFmtFullDateComponentsWDMY_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日星期四");
    });

    test('testDateFmtShortTimeComponentsS_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          time: "hmz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45");
    });
    test('testDateFmtShortTimeComponentsHMAZ_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45");
    });
    test('testDateFmtShortTimeComponentsHMSA_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "zh-Hans-CN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45:37");
    });

    test('testDateFmtFullTimeComponentsS_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45");
    });
    test('testDateFmtFullTimeComponentsHMSA_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN", type: "time", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMSZ_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_zh_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45:37");
    });
    test('testDateFmtWithTimeZoneAndNoDST_zh_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "zh-Hans-CN",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Shanghai");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "zh-Hans-CN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "CST 13:45:37");
    });
  });
}
