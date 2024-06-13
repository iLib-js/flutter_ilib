import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_es_ES_test.dart] file.");
  group('format()', () {
    test('SimpleShort_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('SimpleMedium_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept 2011");
    });
    test('SimpleLong_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('SimpleFull_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('SimpleTimeShort_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('SimpleTimeMedium_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('SimpleTimeLong_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('SimpleTimeFull_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('DateTimeSimpleShort_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 13:45");
    });
    test('DateTimeSimpleMedium_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept 2011, 13:45");
    });
    test('DateTimeSimpleLong_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011, 13:45");
    });
    test('DateTimeSimpleFull_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011, 13:45");
    });
    test('TypeDate_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('TypeTime_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('TypeDateTime_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 13:45");
    });
    test('ShortDateComponentsY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('ShortDateComponentsM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('ShortDateComponentsN_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('ShortDateComponentsD_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('ShortDateComponentsDM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('ShortDateComponentsMY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('ShortDateComponentsDMY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('ShortDateComponentsWDM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J, 29/9");
    });
    test('ShortDateComponentsWDMY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J, 29/9/11");
    });
    test('FullDateComponentsY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('FullDateComponentsM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septiembre");
    });
    test('FullDateComponentsD_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('FullDateComponentsDM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre");
    });
    test('FullDateComponentsMY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septiembre de 2011");
    });
    test('FullDateComponentsDMY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('FullDateComponentsWDM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "jueves, 29 de septiembre");
    });
    test('FullDateComponentsWDMY_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "jueves, 29 de septiembre de 2011");
    });
    test('ShortTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('ShortTimeComponentsM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('ShortTimeComponentsH_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('ShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('ShortTimeComponentsHM_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('ShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('ShortTimeComponentsHMA_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('ShortTimeComponentsHMZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          time: "hmz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('ShortTimeComponentsHMAZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          time: "hmaz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('ShortTimeComponentsHMSA_es_ES', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-ES", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
        locale: "es-ES",
        year: 2011,
        month: 9,
        day: 29,
        hour: 13,
        minute: 45,
        second: 37,
        millisecond: 0,
      );
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('ShortTimeComponentsHMSZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          time: "hmsz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('ShortTimeComponentsHMSAZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          time: "hmsaz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('FullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('FullTimeComponentsM_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('FullTimeComponentsH_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('FullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('FullTimeComponentsHM_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('FullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('FullTimeComponentsHMA_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('FullTimeComponentsHMZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('FullTimeComponentsHMAZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('FullTimeComponentsHMSA_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('FullTimeComponentsHMSZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('FullTimeComponentsHMSAZ_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('WithTimeZoneAndNoDST_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-ES",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Madrid");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-ES",
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
