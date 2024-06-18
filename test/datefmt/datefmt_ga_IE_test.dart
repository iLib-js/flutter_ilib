import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ga_IE_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtSimpleMedium_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 MFómh 2011");
    });
    test('testDateFmtSimpleLong_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Meán Fómhair 2011");
    });
    test('testDateFmtSimpleFull_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Meán Fómhair 2011");
    });
    test('testDateFmtSimpleTimeShort_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 MFómh 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Meán Fómhair 2011 ag 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Meán Fómhair 2011 ag 13:45");
    });
    test('testDateFmtDateTimeFullwithUseNativeFalse_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE",
          length: "full",
          type: "datetime",
          date: "dmwy",
          time: "hma",
          useNative: false);

      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2015,
          month: 4,
          day: 8,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "Dé Céadaoin 8 Aibreán 2015 ag 13:45");
    });

    test('testDateFmtShortDateComponentsY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "M");
    });
    test('testDateFmtShortDateComponentsD_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/2011");
    });
    test('testDateFmtShortDateComponentsDMY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtShortDateComponentsWDM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "D 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "D 29/09/2011");
    });
    test('testDateFmtFullDateComponentsY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Meán Fómhair");
    });
    test('testDateFmtFullDateComponentsD_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Meán Fómhair");
    });
    test('testDateFmtFullDateComponentsMY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Meán Fómhair 2011");
    });
    test('testDateFmtFullDateComponentsDMY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Meán Fómhair 2011");
    });
    test('testDateFmtFullDateComponentsWDM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Déardaoin 29 Meán Fómhair");
    });
    test('testDateFmtFullDateComponentsWDMY_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Déardaoin 29 Meán Fómhair 2011");
    });
    test('testDateFmtShortTimeComponentsS_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsHM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 IST/GMT");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtShortTimeComponentsHMSA_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ga-IE", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtFullTimeComponentsS_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsHM_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 IST/GMT");
    });
    test('testDateFmtFullTimeComponentsHMSA_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ga-IE", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ga-IE",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
  });
}
