import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_sq_AL_test.dart] file.");
  group('format()', () {
    test('testDateFmtINSimpleShort_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11");
    });
    test('testDateFmtINSimpleMedium_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sht 2011");
    });
    test('testDateFmtINSimpleLong_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 shtator 2011");
    });
    test('testDateFmtINSimpleFull_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 shtator 2011");
    });
    test('testDateFmtINSimpleTimeShort_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINSimpleTimeShort_sq_AL1', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINSimpleTimeMedium_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINSimpleTimeLong_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINSimpleTimeFull_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINDateTimeSimpleShort_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11, 1:45 e pasdites");
    });
    test('testDateFmtINDateTimeSimpleMedium_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sht 2011, 1:45 e pasdites");
    });
    test('testDateFmtINDateTimeSimpleLong_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "29 shtator 2011 në 1:45 e pasdites");
    });
    test('testDateFmtINDateTimeSimpleFull_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "29 shtator 2011 në 1:45 e pasdites");
    });

    test('testDateFmtINTypeDate_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11");
    });
    test('testDateFmtINTypeTime_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINTypeDateTime_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11, 1:45 e pasdites");
    });
    test('testDateFmtINShortDateComponentsY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtINShortDateComponentsM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtINShortDateComponentsN_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtINShortDateComponentsD_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtINShortDateComponentsDM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9");
    });
    test('testDateFmtINShortDateComponentsMY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9.11");
    });
    test('testDateFmtINShortDateComponentsDMY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11");
    });
    test('testDateFmtINShortDateComponentsWDM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "e, 29.9");
    });
    test('testDateFmtINShortDateComponentsWDMY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "e, 29.9.11");
    });
    test('testDateFmtINFullDateComponentsY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtINFullDateComponentsM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "shtator");
    });
    test('testDateFmtINFullDateComponentsD_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtINFullDateComponentsDM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 shtator");
    });
    test('testDateFmtINFullDateComponentsMY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "shtator 2011");
    });
    test('testDateFmtINFullDateComponentsDMY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 shtator 2011");
    });
    test('testDateFmtINFullDateComponentsWDM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "e enjte, 29 shtator");
    });
    test('testDateFmtINFullDateComponentsWDMY_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "e enjte, 29 shtator 2011");
    });
    test('testDateFmtINShortTimeComponentsS_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtINShortTimeComponentsM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtINShortTimeComponentsH_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtINShortTimeComponentsHM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtINShortTimeComponentsHMS_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtINShortTimeComponentsHMA_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINShortTimeComponentsHMZ_sq_AL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sq-AL", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites CEST");
    });

    test('testDateFmtINFullTimeComponentsHM_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINFullTimeComponentsHMS_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites");
    });
    test('testDateFmtINFullTimeComponentsHMA_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 e pasdites");
    });
    test('testDateFmtINFullTimeComponentsHMAZ_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites CEST");
    });
    test('testDateFmtINFullTimeComponentsHMSA_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites");
    });
    test('testDateFmtINFullTimeComponentsHMSZ_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites CEST");
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites CEST");
    });
    test('testDateFmtINWithTimeZoneAndNoDST_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sq-AL", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sq-AL",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 e pasdites CET");
    });
  });
}
