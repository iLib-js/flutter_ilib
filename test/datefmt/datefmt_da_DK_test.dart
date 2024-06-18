import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_da_DK_test.dart] file.");
  group('format()', () {
    test('testDateFmtDADKSimpleShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtDADKSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sep. 2011");
    });
    test('testDateFmtDADKSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtDADKSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtDADKSimpleTimeShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKSimpleTimeMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKSimpleTimeLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKSimpleTimeFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKDateTimeSimpleShort', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011, 13.45");
    });
    test('testDateFmtDADKDateTimeSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. sep. 2011, 13.45");
    });
    test('testDateFmtDADKDateTimeSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011 kl. 13.45");
    });
    test('testDateFmtDADKDateTimeSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011 kl. 13.45");
    });

    test('testDateFmtDADKTypeDate', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtDADKTypeTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKTypeDateTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011, 13.45");
    });
    test('testDateFmtDADKShortDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtDADKShortDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtDADKShortDateComponentsN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtDADKShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtDADKShortDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtDADKShortDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.2011");
    });
    test('testDateFmtDADKShortDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtDADKShortDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T den 29.09");
    });
    test('testDateFmtDADKShortDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T den 29.09.2011");
    });
    test('testDateFmtDADKFullDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtDADKFullDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september");
    });
    test('testDateFmtDADKFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtDADKFullDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september");
    });
    test('testDateFmtDADKFullDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september 2011");
    });
    test('testDateFmtDADKFullDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. september 2011");
    });
    test('testDateFmtDADKFullDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "torsdag den 29. september");
    });
    test('testDateFmtDADKFullDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "torsdag den 29. september 2011");
    });
    test('testDateFmtDADKShortTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtDADKShortTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtDADKShortTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtDADKShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45.37");
    });
    test('testDateFmtDADKShortTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtDADKShortTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKShortTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 CEST");
    });
    test('testDateFmtDADKShortTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 CEST");
    });
    test('testDateFmtDADKShortTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtDADKShortTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 CEST");
    });
    test('testDateFmtDADKShortTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "da-DK", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 CEST");
    });
    test('testDateFmtDADKFullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtDADKFullTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtDADKFullTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtDADKFullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45.37");
    });
    test('testDateFmtDADKFullTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKFullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtDADKFullTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDADKFullTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 CEST");
    });
    test('testDateFmtDADKFullTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 CEST");
    });
    test('testDateFmtDADKFullTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtDADKFullTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 CEST");
    });
    test('testDateFmtDADKFullTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 CEST");
    });
    test('testDateFmtDADKWithTimeZoneAndNoDST', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "da-DK", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "da-DK",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 CET");
    });
  });
}
