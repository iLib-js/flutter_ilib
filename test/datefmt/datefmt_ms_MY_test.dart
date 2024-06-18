import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ms_MY_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtSimpleMedium_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sep 2011");
    });
    test('testDateFmtSimpleLong_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtSimpleFull_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtSimpleTimeShort_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtSimpleTimeMedium_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtSimpleTimeLong_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtSimpleTimeFull_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtDateTimeSimpleShort_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 1:45 PTG");
    });
    test('testDateFmtDateTimeSimpleMedium_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sep 2011, 1:45 PTG");
    });
    test('testDateFmtDateTimeSimpleLong_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 pada 1:45 PTG");
    });
    test('testDateFmtDateTimeSimpleFull_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 pada 1:45 PTG");
    });

    test('testDateFmtTypeDate_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtTypeTime_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtTypeDateTime_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 1:45 PTG");
    });
    test('testDateFmtShortDateComponentsY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtShortDateComponentsD_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/11");
    });
    test('testDateFmtShortDateComponentsDMY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtShortDateComponentsWDM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "K, 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "K, 29/09/11");
    });
    test('testDateFmtFullDateComponentsY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September");
    });
    test('testDateFmtFullDateComponentsD_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September");
    });
    test('testDateFmtFullDateComponentsMY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September 2011");
    });
    test('testDateFmtFullDateComponentsDMY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtFullDateComponentsWDM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Isnin, 29 Ogos");
    });
    test('testDateFmtFullDateComponentsWDMY_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Isnin, 29 Ogos 2011");
    });
    test('testDateFmtShortTimeComponentsS_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtShortTimeComponentsHMZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          time: "hmz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 +08");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG +08");
    });
    test('testDateFmtShortTimeComponentsHMSA_ms_MY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ms-MY", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PTG");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +08");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PTG +08");
    });
    test('testDateFmtFullTimeComponentsS_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG");
    });
    test('testDateFmtFullTimeComponentsHMZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 +08");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PTG +08");
    });
    test('testDateFmtFullTimeComponentsHMSA_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PTG");
    });
    test('testDateFmtFullTimeComponentsHMSZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +08");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PTG +08");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ms-MY",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ms-MY",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +08");
    });
  });
}
