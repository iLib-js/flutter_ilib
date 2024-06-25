import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_mn_Cyrl_MN_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011.09.29");
    });
    test('testDateFmtSimpleMedium_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 оны 9-р сарын 29");
    });
    test('testDateFmtSimpleLong_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011 оны есдүгээр сарын 29');
    });
    test('testDateFmtSimpleFull_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011 оны есдүгээр сарын 29');
    });
    test('testDateFmtSimpleTimeShort_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011.09.29 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 оны 9-р сарын 29 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011 оны есдүгээр сарын 29 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011 оны есдүгээр сарын 29 13:45');
    });

    test('testDateFmtTypeDate_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011.09.29");
    });
    test('testDateFmtTypeTime_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011.09.29 13:45");
    });
    test('testDateFmtShortDateComponentsY_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsD_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.29");
    });
    test('testDateFmtShortDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011.09");
    });
    test('testDateFmtShortDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011.09.29");
    });
    test('testDateFmtShortDateComponentsWDM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '09.29, Пү гараг');
    });
    test('testDateFmtShortDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011.09.29, Пү гараг');
    });
    test('testDateFmtFullDateComponentsY_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'Есдүгээр сар');
    });
    test('testDateFmtFullDateComponentsD_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'есдүгээр сарын 29');
    });
    test('testDateFmtFullDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011 оны есдүгээр сар');
    });
    test('testDateFmtFullDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011 оны есдүгээр сарын 29');
    });
    test('testDateFmtFullDateComponentsWDM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'есдүгээр сарын 29, пүрэв гараг');
    });
    test('testDateFmtFullDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions),
          '2011 оны есдүгээр сарын 29, пүрэв гараг');
    });
    test('testDateFmtShortTimeComponentsS_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          time: "hmz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+08/+09)");
    });
    test('testDateFmtShortTimeComponentsHMAZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+08/+09)");
    });
    test('testDateFmtShortTimeComponentsHMSA_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mn-Cyrl-MN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+08/+09)");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+08/+09)");
    });
    test('testDateFmtFullTimeComponentsS_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+08/+09)");
    });
    test('testDateFmtFullTimeComponentsHMAZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 (+08/+09)");
    });
    test('testDateFmtFullTimeComponentsHMSA_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+08/+09)");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+08/+09)");
    });
    test('testDateFmtWithTimeZoneAndNoDST_mn_Cyrl_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mn-Cyrl-MN",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Ulaanbaatar");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mn-Cyrl-MN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 (+08/+09)");
    });
  });
}
