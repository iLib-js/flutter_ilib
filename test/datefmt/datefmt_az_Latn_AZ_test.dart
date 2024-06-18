import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_az_Latn_AZ_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtSimpleMedium_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sen 2011");
    });

    test('testDateFmtSimpleLong_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr 2011");
    });
    test('testDateFmtSimpleFull_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr 2011");
    });
    test('testDateFmtSimpleTimeShort_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sen 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(await fmt.format(dateOptions), "29 sentyabr 2011 at 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr 2011/13:45");
    });
    test('testDateFmtTypeDate_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtTypeTime_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11, 13:45");
    });
    test('testDateFmtShortDateComponentsY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "se");
    });
    test('testDateFmtShortDateComponentsN_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.11");
    });
    test('testDateFmtShortDateComponentsDMY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtShortDateComponentsDMW_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09, 4");
    });
    test('testDateFmtShortDateComponentsDMWY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11, 4");
    });
    test('testDateFmtFullDateComponentsY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "sentyabr");
    });
    test('testDateFmtFullDateComponentsD_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr");
    });
    test('testDateFmtFullDateComponentsMY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "sentyabr 2011");
    });
    test('testDateFmtFullDateComponentsDMY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr 2011");
    });
    test('testDateFmtFullDateComponentsDMW_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", length: "full", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr, cümə axşamı");
    });
    test('testDateFmtFullDateComponentsDMWY_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", length: "full", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sentyabr 2011, cümə axşamı");
    });
    test('testDateFmtShortTimeComponentsS_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04/+05");
    });
    test('testDateFmtShortTimeComponentsHMAZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04/+05");
    });
    test('testDateFmtShortTimeComponentsHMSA_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04/+05");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "az-Latn-AZ", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04/+05");
    });
    test('testDateFmtFullTimeComponentsS_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04/+05");
    });
    test('testDateFmtFullTimeComponentsHMAZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04/+05");
    });
    test('testDateFmtFullTimeComponentsHMSA_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04/+05");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04/+05");
    });
    test('testDateFmtWithTimeZoneAndNoDST_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "az-Latn-AZ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "az-Latn-AZ",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04/+05");
    });
  });
}
