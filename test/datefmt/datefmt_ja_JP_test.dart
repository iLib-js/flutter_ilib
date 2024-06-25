import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ja_JP_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29");
    });
    test('testDateFmtSimpleMedium_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29");
    });
    test('testDateFmtSimpleLong_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleFull_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtSimpleTimeShort_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日 13:45");
    });

    test('testDateFmtTypeDate_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29");
    });
    test('testDateFmtTypeTime_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29 13:45");
    });
    test('testDateFmtShortDateComponentsY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtShortDateComponentsM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09月");
    });
    test('testDateFmtShortDateComponentsN_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsD_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtShortDateComponentsDM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/29");
    });
    test('testDateFmtShortDateComponentsMY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09");
    });
    test('testDateFmtShortDateComponentsDMY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29");
    });
    test('testDateFmtShortDateComponentsWDM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/29木");
    });
    test('testDateFmtShortDateComponentsWDMY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011/09/29木");
    });
    test('testDateFmtFullDateComponentsY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年");
    });
    test('testDateFmtFullDateComponentsM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月");
    });
    test('testDateFmtFullDateComponentsD_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29日");
    });
    test('testDateFmtFullDateComponentsDM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日");
    });
    test('testDateFmtFullDateComponentsMY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月");
    });
    test('testDateFmtFullDateComponentsDMY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日");
    });
    test('testDateFmtFullDateComponentsWDM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9月29日木曜日");
    });
    test('testDateFmtFullDateComponentsWDMY_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011年9月29日木曜日");
    });
    test('testDateFmtShortTimeComponentsS_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", time: "hmz", timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 JST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", time: "hmaz", timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 JST");
    });
    test('testDateFmtShortTimeComponentsHMSA_ja_JP', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ja-JP", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", time: "hmsz", timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 JST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", time: "hmsaz", timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 JST");
    });
    test('testDateFmtFullTimeComponentsS_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 JST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 JST");
    });
    test('testDateFmtFullTimeComponentsHMSA_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 JST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 JST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ja-JP",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Tokyo");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ja-JP",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 JST");
    });
  });
}
