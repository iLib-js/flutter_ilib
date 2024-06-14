import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_de_DE_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "short");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtSimpleMedium_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "medium");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtSimpleLong_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "long");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29. September 2011");
    });
    test('testDateFmtSimpleFull_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29. September 2011");
    });
    test('testDateFmtSimpleTimeShort_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "short", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "medium", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "long", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "short", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "medium", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "long", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29. September 2011 um 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29. September 2011 um 13:45");
    });
    test('testDateFmtTypeDate_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "date");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtTypeTime_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.11, 13:45");
    });
    test('testDateFmtShortDateComponentsY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "y");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "Se");
    });
    test('testDateFmtShortDateComponentsN_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "n");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtShortDateComponentsD_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "d");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "dm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "09.11");
    });
    test('testDateFmtShortDateComponentsDMY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "dmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtShortDateComponentsWDM', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "wdm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "D, 29.09");
    });
    test('testDateFmtShortDateComponentsWDMY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "D, 29.09.11");
    });
    test('testDateFmtFullDateComponentsY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "y");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "September");
    });
    test('testDateFmtFullDateComponentsD_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "d");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "dm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29. September");
    });
    test('testDateFmtFullDateComponentsMY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "September 2011");
    });
    test('testDateFmtFullDateComponentsDMY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "dmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29. September 2011");
    });
    test('testDateFmtFullDateComponentsWDM', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "wdm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "Donnerstag, 29. September");
    });
    test('testDateFmtFullDateComponentsWDMY_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", length: "full", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "Donnerstag, 29. September 2011");
    });
    test('testDateFmtShortTimeComponentsS_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "s");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "h");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "ms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "hm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "hms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "hma");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            time: "hmz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            time: "hmaz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", time: "hmsa");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            time: "hmsz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            time: "hmsaz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "s");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "h");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "ms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "hm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "hms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "hma");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            length: "full",
            time: "hmz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            length: "full",
            time: "hmaz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "de-DE", type: "time", length: "full", time: "hmsa");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            length: "full",
            time: "hmsz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            length: "full",
            time: "hmsaz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_de_DE', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "de-DE",
            type: "time",
            length: "full",
            time: "hmsz",
            timezone: "Europe/Berlin"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "de-DE",
            year: 2011,
            month: 12,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "13:45:37 CET");
    });
  });
}