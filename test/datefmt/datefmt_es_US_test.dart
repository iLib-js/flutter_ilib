import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_es_US_test.dart] file.");
  group('format()', () {
    test('SimpleShort_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011");
    });
    test('SimpleMedium_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept 2011");
    });
    test('SimpleLong_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('SimpleFull_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('SimpleTimeShort_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('SimpleTimeMedium_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('SimpleTimeLong_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('SimpleTimeFull_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('DateTimeSimpleShort_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011, 1:45 p.m.");
    });
    test('DateTimeSimpleMedium_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept 2011, 1:45 p.m.");
    });
    test('DateTimeSimpleLong_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011, 1:45 p.m.");
    });
    test('DateTimeSimpleFull_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011, 1:45 p.m.");
    });
    test('TypeDate_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011");
    });
    test('TypeTime_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('TypeDateTime_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011, 1:45 p.m.");
    });
    test('ShortDateComponentsY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('ShortDateComponentsM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('ShortDateComponentsN_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('ShortDateComponentsD_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('ShortDateComponentsDM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('ShortDateComponentsMY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/2011");
    });
    test('ShortDateComponentsDMY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/2011");
    });
    test('ShortDateComponentsWDM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J, 29/9");
    });
    test('ShortDateComponentsWDMY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J, 29/9/2011");
    });
    test('FullDateComponentsY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('FullDateComponentsM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septiembre");
    });
    test('FullDateComponentsD_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('FullDateComponentsDM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre");
    });
    test('FullDateComponentsMY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septiembre de 2011");
    });
    test('FullDateComponentsDMY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de septiembre de 2011");
    });
    test('FullDateComponentsWDM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "jueves, 29 de septiembre");
    });
    test('FullDateComponentsWDMY_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
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
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('ShortTimeComponentsM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('ShortTimeComponentsH_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('ShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('ShortTimeComponentsHM_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('ShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('ShortTimeComponentsHMA_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('ShortTimeComponentsHMZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          time: "hmz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 EDT");
    });
    test('ShortTimeComponentsHMAZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          time: "hmaz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m. EDT");
    });
    test('ShortTimeComponentsHMSA_es_US', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "es-US", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
        locale: "es-US",
        year: 2011,
        month: 9,
        day: 29,
        hour: 13,
        minute: 45,
        second: 37,
        millisecond: 0,
      );
      expect(await fmt.format(dateOptions), "1:45:37 p.m.");
    });
    test('ShortTimeComponentsHMSZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          time: "hmsz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EDT");
    });
    test('ShortTimeComponentsHMSAZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          time: "hmsaz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 p.m. EDT");
    });
    test('FullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('FullTimeComponentsM_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('FullTimeComponentsH_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('FullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('FullTimeComponentsHM_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('FullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('FullTimeComponentsHMA_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m.");
    });
    test('FullTimeComponentsHMZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 EDT");
    });
    test('FullTimeComponentsHMAZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 p.m. EDT");
    });
    test('FullTimeComponentsHMSA_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 p.m.");
    });
    test('FullTimeComponentsHMSZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EDT");
    });
    test('FullTimeComponentsHMSAZ_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 p.m. EDT");
    });
    test('WithTimeZoneAndNoDST_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "es-US",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "America/New_York");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "es-US",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EST");
    });
  });
}
