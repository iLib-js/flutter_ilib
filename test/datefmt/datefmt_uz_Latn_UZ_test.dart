import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_uz_Latn_UZ_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtSimpleMedium_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sen, 2011");
    });
    test('testDateFmtSimpleLong_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sentabr, 2011");
    });
    test('testDateFmtSimpleFull_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sentabr, 2011");
    });
    test('testDateFmtSimpleTimeShort_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sen, 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sentabr, 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sentabr, 2011, 13:45");
    });
    test('testDateFmtTypeDate_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtTypeTime_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13:45");
    });
    test('testDateFmtShortDateComponentsY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Se");
    });
    test('testDateFmtShortDateComponentsN_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/11");
    });
    test('testDateFmtShortDateComponentsDMY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtShortDateComponentsWDM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "P, 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "P, 29/09/11");
    });
    test('testDateFmtFullDateComponentsY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Sentabr");
    });
    test('testDateFmtFullDateComponentsD_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sentabr");
    });
    test('testDateFmtFullDateComponentsMY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "sentabr, 2011");
    });
    test('testDateFmtFullDateComponentsDMY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29-sentabr, 2011");
    });
    test('testDateFmtFullDateComponentsWDM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "payshanba, 29-sentabr");
    });
    test('testDateFmtFullDateComponentsWDMY_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "payshanba, 29-sentabr, 2011");
    });
    test('testDateFmtShortTimeComponentsS_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+05)");
    });
    test('testDateFmtShortTimeComponentsHMAZ_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+05)");
    });
    test('testDateFmtShortTimeComponentsHMSA_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+05)");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "uz-Latn-UZ", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+05)");
    });
    test('testDateFmtFullTimeComponentsS_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+05)");
    });
    test('testDateFmtFullTimeComponentsHMAZ_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+05)");
    });
    test('testDateFmtFullTimeComponentsHMSA_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "uz-Latn-UZ", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "uz-Latn-UZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
  });
}
