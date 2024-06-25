import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_bs_Latn_BA_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011.");
    });
    test('testDateFmtSimpleMedium_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sep 2011.");
    });
    test('testDateFmtSimpleLong_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011.");
    });
    test('testDateFmtSimpleFull_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011.");
    });
    test('testDateFmtSimpleTimeShort_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011. u 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sep 2011. u 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(await fmt.format(dateOptions), "29. septembar 2011. u 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011. u 13:45");
    });

    test('testDateFmtTypeDate_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011.");
    });
    test('testDateFmtTypeTime_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011. u 13:45");
    });
    test('testDateFmtShortDateComponentsY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsN_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9");
    });
    test('testDateFmtShortDateComponentsMY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9. 2011.");
    });
    test('testDateFmtShortDateComponentsDMY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011.");
    });
    test('testDateFmtShortDateComponentsWDM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Č, 29. 9");
    });
    test('testDateFmtShortDateComponentsWDMY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Č, 29. 9. 2011.");
    });
    test('testDateFmtFullDateComponentsY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembar");
    });
    test('testDateFmtFullDateComponentsD_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar");
    });
    test('testDateFmtFullDateComponentsMY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembar 2011.");
    });
    test('testDateFmtFullDateComponentsDMY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011.");
    });
    test('testDateFmtFullDateComponentsWDM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "četvrtak, 29. septembar");
    });
    test('testDateFmtFullDateComponentsWDMY_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "četvrtak, 29. septembar 2011.");
    });
    test('testDateFmtShortTimeComponentsS_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bs-Latn-BA", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bs-Latn-BA", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bs-Latn-BA",
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
