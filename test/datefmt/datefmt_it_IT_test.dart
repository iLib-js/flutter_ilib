import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_it_IT_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtSimpleMedium_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 set 2011");
    });
    test('testDateFmtSimpleLong_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 settembre 2011");
    });
    test('testDateFmtSimpleFull_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 settembre 2011");
    });
    test('testDateFmtSimpleTimeShort_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 set 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 settembre 2011 alle ore 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 settembre 2011 alle ore 13:45");
    });

    test('testDateFmtTypeDate_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtTypeTime_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13:45");
    });
    test('testDateFmtShortDateComponentsY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/11");
    });
    test('testDateFmtShortDateComponentsDMY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtShortDateComponentsWDM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "G 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "G 29/09/11");
    });
    test('testDateFmtFullDateComponentsY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "settembre");
    });
    test('testDateFmtFullDateComponentsD_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 settembre");
    });
    test('testDateFmtFullDateComponentsMY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "settembre 2011");
    });
    test('testDateFmtFullDateComponentsDMY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 settembre 2011");
    });
    test('testDateFmtFullDateComponentsWDM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "giovedì 29 settembre");
    });
    test('testDateFmtFullDateComponentsWDMY_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "giovedì 29 settembre 2011");
    });
    test('testDateFmtShortTimeComponentsS_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", time: "hmz", timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", time: "hmaz", timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_it_IT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "it-IT", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", time: "hmsz", timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT",
          type: "time",
          time: "hmsaz",
          timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "it-IT",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Rome");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "it-IT",
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
