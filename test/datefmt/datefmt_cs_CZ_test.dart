import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_cs_CZ_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtSimpleMedium_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011");
    });
    test('testDateFmtSimpleLong_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. září 2011");
    });
    test('testDateFmtSimpleFull_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. září 2011");
    });
    test('testDateFmtSimpleTimeShort_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. září 2011 v 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. září 2011 v 13:45");
    });
    test('testDateFmtShortDateComponentsY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "zá");
    });
    test('testDateFmtShortDateComponentsN_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "z");
    });
    test('testDateFmtShortDateComponentsD_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.11");
    });
    test('testDateFmtShortDateComponentsDMY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtShortDateComponentsWDM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Č 29.09");
    });
    test('testDateFmtShortDateComponentsWDMY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Č 29.09.11");
    });
    test('testDateFmtFullDateComponentsY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "září");
    });
    test('testDateFmtFullDateComponentsD_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. září");
    });
    test('testDateFmtFullDateComponentsMY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "září 2011");
    });
    test('testDateFmtFullDateComponentsDMY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. září 2011");
    });
    test('testDateFmtFullDateComponentsWDM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "čtvrtek 29. září");
    });
    test('testDateFmtFullDateComponentsWDMY_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "čtvrtek 29. září 2011");
    });
    test('testDateFmtShortTimeComponentsS_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsHM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "cs-CZ", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsHM_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "cs-CZ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "cs-CZ",
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
