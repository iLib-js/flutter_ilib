import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_sl_SI_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 11");
    });
    test('testDateFmtSimpleMedium_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sep. 2011");
    });
    test('testDateFmtSimpleLong_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtSimpleFull_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtSimpleTimeShort_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          length: "short",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          length: "medium",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          length: "short",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          length: "medium",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sep. 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          length: "long",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011 ob 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          length: "full",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011 ob 13:45");
    });

    test('testDateFmtTypeDate_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 11");
    });
    test('testDateFmtTypeTime_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 11, 13:45");
    });
    test('testDateFmtShortDateComponentsY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sl-SI", calendar: "gregorian", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sl-SI", calendar: "gregorian", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_sl_SI', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sl-SI", calendar: "gregorian", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_sl_SI', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sl-SI", calendar: "gregorian", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9");
    });
    test('testDateFmtShortDateComponentsMY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9. 11");
    });
    test('testDateFmtShortDateComponentsDMY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 11");
    });
    test('testDateFmtShortDateComponentsWDM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "č, 29. 9");
    });
    test('testDateFmtShortDateComponentsWDMY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "č, 29. 9. 11");
    });
    test('testDateFmtFullDateComponentsY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september");
    });
    test('testDateFmtFullDateComponentsD_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september");
    });
    test('testDateFmtFullDateComponentsMY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september 2011");
    });
    test('testDateFmtFullDateComponentsDMY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtFullDateComponentsWDM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "četrtek, 29. september");
    });
    test('testDateFmtFullDateComponentsWDMY_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "četrtek, 29. september 2011");
    });
    test('testDateFmtShortTimeComponentsS_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI", calendar: "gregorian", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sl-SI",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sl-SI",
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
