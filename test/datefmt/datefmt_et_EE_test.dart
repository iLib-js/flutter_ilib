import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_et_EE_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtSimpleMedium_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sept 2011");
    });
    test('testDateFmtSimpleLong_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtSimpleFull_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtSimpleTimeShort_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sept 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011, kell 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011, kell 13:45");
    });

    test('testDateFmtShortDateComponentsY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.11");
    });
    test('testDateFmtShortDateComponentsDMY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtShortDateComponentsWDM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "N, 29.09");
    });
    test('testDateFmtShortDateComponentsWDMY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "N, 29.09.11");
    });
    test('testDateFmtFullDateComponentsY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september");
    });
    test('testDateFmtFullDateComponentsD_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september");
    });
    test('testDateFmtFullDateComponentsMY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september 2011");
    });
    test('testDateFmtFullDateComponentsDMY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtFullDateComponentsWDM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "neljapäev, 29. september");
    });
    test('testDateFmtFullDateComponentsWDMY_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "neljapäev, 29. september 2011");
    });
    test('testDateFmtShortTimeComponentsS_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsHM_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "et-EE", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtFullTimeComponentsS_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsHM_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "et-EE", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "et-EE",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EET");
    });
  });
}
