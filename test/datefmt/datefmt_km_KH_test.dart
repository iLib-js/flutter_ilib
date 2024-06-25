import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_km_KH_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtSimpleMedium_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011");
    });
    test('testDateFmtSimpleLong_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011");
    });
    test('testDateFmtSimpleFull_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011");
    });
    test('testDateFmtSimpleTimeShort_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtSimpleTimeMedium_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtSimpleTimeLong_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtSimpleTimeFull_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtDateTimeSimpleShort_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 1:45 PM");
    });
    test('testDateFmtDateTimeSimpleMedium_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011, 1:45 PM");
    });
    test('testDateFmtDateTimeSimpleLong_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011 នៅ​ម៉ោង 1:45 PM");
    });
    test('testDateFmtDateTimeSimpleFull_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011 នៅ​ម៉ោង 1:45 PM");
    });

    test('testDateFmtTypeDate_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtTypeTime_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtTypeDateTime_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 1:45 PM");
    });
    test('testDateFmtShortDateComponentsY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ក");
    });
    test('testDateFmtShortDateComponentsD_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtShortDateComponentsMY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtShortDateComponentsDMY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtShortDateComponentsDMW_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ព 29/9");
    });
    test('testDateFmtShortDateComponentsDMWY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ព 29/9/11");
    });
    test('testDateFmtFullDateComponentsY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "កញ្ញា");
    });
    test('testDateFmtFullDateComponentsD_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា");
    });
    test('testDateFmtFullDateComponentsMY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "កញ្ញា 2011");
    });
    test('testDateFmtFullDateComponentsDMY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 កញ្ញា 2011");
    });
    test('testDateFmtFullDateComponentsDMW_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ព្រហស្បតិ៍ 29 កញ្ញា");
    });
    test('testDateFmtFullDateComponentsDMWY_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", length: "full", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ព្រហស្បតិ៍ 29 កញ្ញា 2011");
    });
    test('testDateFmtShortTimeComponentsS_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtShortTimeComponentsHMZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 +07");
    });
    test('testDateFmtShortTimeComponentsHMAZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM +07");
    });
    test('testDateFmtShortTimeComponentsHMSA_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PM");
    });
    test('testDateFmtShortTimeComponentsHMSZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +07");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "km-KH", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PM +07");
    });
    test('testDateFmtFullTimeComponentsS_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtFullTimeComponentsHMZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 +07");
    });
    test('testDateFmtFullTimeComponentsHMAZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM +07");
    });
    test('testDateFmtFullTimeComponentsHMSA_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PM");
    });
    test('testDateFmtFullTimeComponentsHMSZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +07");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PM +07");
    });
    test('testDateFmtWithTimeZoneAndNoDST_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "km-KH", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "km-KH",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +07");
    });
  });
}
