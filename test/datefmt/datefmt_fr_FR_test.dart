import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [flutter_ilib_datefmt_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "short");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtSimpleMedium_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "medium");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 sept. 2011");
    });
    test('testDateFmtSimpleLong_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "long");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 septembre 2011");
    });
    test('testDateFmtSimpleFull_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 septembre 2011");
    });
    test('testDateFmtSimpleTimeShort_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "short", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtSimpleTimeMedium_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "medium", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtSimpleTimeLong_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "long", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtSimpleTimeFull_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtDateTimeSimpleShort_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "short", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/2011 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "medium", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 sept. 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "long", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 septembre 2011 à 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 septembre 2011 à 13:45");
    });
    test('testDateFmtTypeDate_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "date");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtTypeTime_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtTypeDateTime_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/2011 13:45");
    });
    test('testDateFmtShortDateComponentsY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "y");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortDateComponentsM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "n");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "d");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortDateComponentsDM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "dm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "09/2011");
    });
    test('testDateFmtShortDateComponentsDMY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "dmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtShortDateComponentsWDM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "wdm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "J 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "J 29/09/2011");
    });
    test('testDateFmtFullDateComponentsY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "y");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullDateComponentsM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "septembre");
    });
    test('testDateFmtFullDateComponentsD_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "d");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullDateComponentsDM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "dm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 septembre");
    });
    test('testDateFmtFullDateComponentsMY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "septembre 2011");
    });
    test('testDateFmtFullDateComponentsDMY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "dmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 septembre 2011");
    });
    test('testDateFmtFullDateComponentsWDM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "wdm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "jeudi 29 septembre");
    });
    test('testDateFmtFullDateComponentsWDMY_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", length: "full", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "jeudi 29 septembre 2011");
    });
    test('testDateFmtShortTimeComponentsS_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "s");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsH_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "h");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsMS_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "ms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "hm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMS_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "hms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMA_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "hma");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            time: "hmz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMAZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            time: "hmaz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMSA_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", time: "hmsa");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMSZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            time: "hmsz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtShortTimeComponentsHMSAZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            time: "hmsaz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsS_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "s");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsH_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "h");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsMS_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "ms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHM_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "hm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMS_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "hms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMA_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "hma");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            length: "full",
            time: "hmz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMAZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            length: "full",
            time: "hmaz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMSA_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR", type: "time", length: "full", time: "hmsa");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMSZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            length: "full",
            time: "hmsz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtFullTimeComponentsHMSAZ_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            length: "full",
            time: "hmsaz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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
    test('testDateFmtWithTimeZoneAndNoDST_fr_FR', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: "fr-FR",
            type: "time",
            length: "full",
            time: "hmsz",
            timezone: "Europe/Paris"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fr-FR",
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