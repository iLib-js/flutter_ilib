import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_el_GR_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtSimpleMedium_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Σεπ 2011");
    });
    test('testDateFmtSimpleLong_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Σεπτεμβρίου 2011");
    });
    test('testDateFmtSimpleFull_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Σεπτεμβρίου 2011");
    });
    test('testDateFmtSimpleTimeShort_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 μ.μ.");
    });
    test('testDateFmtSimpleTimeMedium_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 μ.μ.");
    });
    test('testDateFmtSimpleTimeLong_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 μ.μ.");
    });
    test('testDateFmtSimpleTimeFull_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 μ.μ.");
    });
    test('testDateFmtDateTimeSimpleShort_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 1:45 μ.μ.");
    });
    test('testDateFmtDateTimeSimpleMedium_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Σεπ 2011, 1:45 μ.μ.");
    });
    test('testDateFmtDateTimeSimpleLong_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "29 Σεπτεμβρίου 2011 στις 1:45 μ.μ.");
    });
    test('testDateFmtDateTimeSimpleFull_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "29 Σεπτεμβρίου 2011 στις 1:45 μ.μ.");
    });
    test('testDateFmtShortDateComponentsY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Σ");
    });
    test('testDateFmtShortDateComponentsD_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtShortDateComponentsMY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtShortDateComponentsDMY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtShortDateComponentsWDM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Π 29/9");
    });
    test('testDateFmtShortDateComponentsWDMY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Π 29/9/11");
    });
    test('testDateFmtFullDateComponentsY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Σεπτεμβρίου");
    });
    test('testDateFmtFullDateComponentsD_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Σεπτεμβρίου");
    });
    test('testDateFmtFullDateComponentsMY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Σεπτέμβριος 2011");
    });
    test('testDateFmtFullDateComponentsDMY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Σεπτεμβρίου 2011");
    });
    test('testDateFmtFullDateComponentsWDM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Πέμπτη 29 Σεπτεμβρίου");
    });
    test('testDateFmtFullDateComponentsWDMY_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Πέμπτη 29 Σεπτεμβρίου 2011");
    });
    test('testDateFmtShortTimeComponentsS_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsHM_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 μ.μ.");
    });
    test('testDateFmtShortTimeComponentsHMZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 EEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 μ.μ. EEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 μ.μ.");
    });
    test('testDateFmtShortTimeComponentsHMSZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "el-GR", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 μ.μ. EEST");
    });
    test('testDateFmtFullTimeComponentsS_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsHM_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 μ.μ.");
    });
    test('testDateFmtFullTimeComponentsHMZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 EEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 μ.μ.");
    });
    test('testDateFmtFullTimeComponentsHMSZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 μ.μ. EEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "el-GR", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "el-GR",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EET");
    });
  });
}
