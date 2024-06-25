import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_sw_KE_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtSimpleMedium_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sep 2011");
    });
    test('testDateFmtSimpleLong_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Septemba 2011");
    });
    test('testDateFmtSimpleFull_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Septemba 2011");
    });
    test('testDateFmtSimpleTimeShort_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 Sep 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(await fmt.format(dateOptions), '29 Septemba 2011 saa 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 Septemba 2011 saa 13:45');
    });

    test('testDateFmtTypeDate_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtTypeTime_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtShortDateComponentsY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtShortDateComponentsD_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/2011");
    });
    test('testDateFmtShortDateComponentsDMY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtShortDateComponentsDMW_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T, 29/09");
    });
    test('testDateFmtShortDateComponentsDMWY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T, 29/09/2011");
    });
    test('testDateFmtFullDateComponentsY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Septemba");
    });
    test('testDateFmtFullDateComponentsD_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Septemba");
    });
    test('testDateFmtFullDateComponentsMY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Septemba 2011");
    });
    test('testDateFmtFullDateComponentsDMY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Septemba 2011");
    });
    test('testDateFmtFullDateComponentsDMW_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", length: "full", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Alhamisi, 29 Septemba");
    });
    test('testDateFmtFullDateComponentsDMWY_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", length: "full", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Alhamisi, 29 Septemba 2011");
    });
    test('testDateFmtShortTimeComponentsS_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EAT");
    });
    test('testDateFmtShortTimeComponentsHMAZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EAT");
    });
    test('testDateFmtShortTimeComponentsHMSA_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EAT");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sw-Latn-KE", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EAT");
    });
    test('testDateFmtFullTimeComponentsS_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EAT");
    });
    test('testDateFmtFullTimeComponentsHMAZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EAT");
    });
    test('testDateFmtFullTimeComponentsHMSA_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EAT");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EAT");
    });
    test('testDateFmtWithTimeZoneAndNoDST_sw_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sw-Latn-KE", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sw-Latn-KE",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EAT");
    });
  });
}
