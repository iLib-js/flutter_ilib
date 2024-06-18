import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_pl_PL_test.dart] file.");
  group('format()', () {
    test('testDateFmtPLSimpleShort_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtPLSimpleMedium_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 wrz 2011");
    });
    test('testDateFmtPLSimpleLong_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 września 2011");
    });
    test('testDateFmtPLSimpleFull_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 września 2011");
    });
    test('testDateFmtPLSimpleTimeShort_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLSimpleTimeMedium_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLSimpleTimeLong_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLSimpleTimeFull_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLDateTimeSimpleShort_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011, 13:45");
    });
    test('testDateFmtPLDateTimeSimpleMedium_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 wrz 2011, 13:45");
    });
    test('testDateFmtPLDateTimeSimpleLong_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 września 2011 13:45");
    });
    test('testDateFmtPLDateTimeSimpleFull_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 września 2011 13:45");
    });

    test('testDateFmtPLTypeDate_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtPLTypeTime_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLTypeDateTime_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011, 13:45");
    });
    test('testDateFmtPLShortDateComponentsY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtPLShortDateComponentsM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "wr");
    });
    test('testDateFmtPLShortDateComponentsN_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "w");
    });
    test('testDateFmtPLShortDateComponentsD_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtPLShortDateComponentsDM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtPLShortDateComponentsMY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.2011");
    });
    test('testDateFmtPLShortDateComponentsDMY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtPLShortDateComponentsWDM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "c, 29.09");
    });
    test('testDateFmtPLShortDateComponentsWDMY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "c, 29.09.2011");
    });
    test('testDateFmtPLFullDateComponentsY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtPLFullDateComponentsM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "wrzesień");
    });
    test('testDateFmtPLFullDateComponentsD_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtPLFullDateComponentsDM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 września");
    });
    test('testDateFmtPLFullDateComponentsMY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "wrzesień 2011");
    });
    test('testDateFmtPLFullDateComponentsDMY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 września 2011");
    });
    test('testDateFmtPLFullDateComponentsWDM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "czwartek, 29 września");
    });
    test('testDateFmtPLFullDateComponentsWDMY_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "czwartek, 29 września 2011");
    });
    test('testDateFmtPLShortTimeComponentsS_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtPLShortTimeComponentsM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtPLShortTimeComponentsH_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtPLShortTimeComponentsMS_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtPLShortTimeComponentsHM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLShortTimeComponentsHMS_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPLShortTimeComponentsHMA_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLShortTimeComponentsHMZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtPLShortTimeComponentsHMAZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtPLShortTimeComponentsHMSA_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPLShortTimeComponentsHMSZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtPLShortTimeComponentsHMSAZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pl-PL", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtPLFullTimeComponentsS_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtPLFullTimeComponentsM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtPLFullTimeComponentsH_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtPLFullTimeComponentsMS_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtPLFullTimeComponentsHM_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLFullTimeComponentsHMS_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPLFullTimeComponentsHMA_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPLFullTimeComponentsHMZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtPLFullTimeComponentsHMAZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtPLFullTimeComponentsHMSA_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPLFullTimeComponentsHMSZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtPLFullTimeComponentsHMSAZ_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtPLWithTimeZoneAndNoDST_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pl-PL", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pl-PL",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CET");
    });
  });
}
