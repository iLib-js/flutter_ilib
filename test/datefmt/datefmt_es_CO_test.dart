import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_es_CO_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_es_CO', () async {
        ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-CO", length: "short");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtSimpleMedium_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "medium");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtSimpleLong_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "long");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('testDateFmtSimpleFull_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('testDateFmtSimpleTimeShort_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "short", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtSimpleTimeMedium_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "medium", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtSimpleTimeLong_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "long", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtSimpleTimeFull_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtDateTimeSimpleShort_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "short", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/11, 1:45 p. m.");
    });
    test('testDateFmtDateTimeSimpleMedium_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "medium", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 9,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "9/09/2011, 1:45 p. m.");
    });
    test('testDateFmtDateTimeSimpleLong_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "long", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 de septiembre de 2011, 1:45 p. m.");
    });
    test('testDateFmtDateTimeSimpleFull_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 de septiembre de 2011, 1:45 p. m.");
    });
    test('testDateFmtTypeDate_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "date");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtTypeTime_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtTypeDateTime_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "datetime");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/11, 1:45 p. m.");
    });
    test('testDateFmtShortDateComponentsY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "y");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortDateComponentsM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "se");
    });
    test('testDateFmtShortDateComponentsN_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "n");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortDateComponentsD_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "d");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortDateComponentsDM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "dm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortDateComponentsMY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "09/11");
    });
    test('testDateFmtShortDateComponentsDMY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "dmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtShortDateComponentsWDM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "wdm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "J, 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "J, 29/09/11");
    });
    test('testDateFmtFullDateComponentsY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "y");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtFullDateComponentsM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "septiembre");
    });
    test('testDateFmtFullDateComponentsD_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "d");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtFullDateComponentsDM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "dm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 de septiembre");
    });
    test('testDateFmtFullDateComponentsMY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "septiembre de 2011");
    });
    test('testDateFmtFullDateComponentsDMY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "dmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('testDateFmtFullDateComponentsWDM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "wdm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "jueves, 29 de septiembre");
    });
    test('testDateFmtFullDateComponentsWDMY_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", length: "full", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "jueves, 29 de septiembre de 2011");
    });
    test('testDateFmtShortTimeComponentsS_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "s");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortTimeComponentsM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortTimeComponentsH_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "h");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "ms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtShortTimeComponentsHM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "hm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "hms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "hma");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtShortTimeComponentsHMZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            time: "hmz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 -05/-04");
    });
    test('testDateFmtShortTimeComponentsHMAZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            time: "hmaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m. -05/-04");
    });
    test('testDateFmtShortTimeComponentsHMSA_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", time: "hmsa");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 p. m.");
    });
    test('testDateFmtShortTimeComponentsHMSZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            time: "hmsz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 -05/-04");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            time: "hmsaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 p. m. -05/-04");
    });
    test('testDateFmtFullTimeComponentsS_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "s");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtFullTimeComponentsM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "m");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtFullTimeComponentsH_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "h");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "ms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
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
    test('testDateFmtFullTimeComponentsHM_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "hm");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "hms");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "hma");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m.");
    });
    test('testDateFmtFullTimeComponentsHMZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            length: "full",
            time: "hmz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 -05/-04");
    });
    test('testDateFmtFullTimeComponentsHMAZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            length: "full",
            time: "hmaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45 p. m. -05/-04");
    });
    test('testDateFmtFullTimeComponentsHMSA_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-CO", type: "time", length: "full", time: "hmsa");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 p. m.");
    });
    test('testDateFmtFullTimeComponentsHMSZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            length: "full",
            time: "hmsz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 -05/-04");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            length: "full",
            time: "hmsaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 p. m. -05/-04");
    });
    test('testDateFmtWithTimeZoneAndNoDST_es_CO', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "es-CO",
            type: "time",
            length: "full",
            time: "hmsz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    
        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "es-CO",
            year: 2011,
            month: 12,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "1:45:37 -05/-04");
    });
  });  
}