import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_fr_CA_test.dart] file.");
  group('format()', () {
    test('testDateFmtfrCASimpleShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtfrCASimpleMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept. 2011");
    });
    test('testDateFmtfrCASimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembre 2011");
    });
    test('testDateFmtfrCASimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembre 2011");
    });
    test('testDateFmtfrCASimpleTimeShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCASimpleTimeMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCASimpleTimeLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCASimpleTimeFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCADateTimeSimpleShort', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011-09-29 13 h 45');
    });
    test('testDateFmtfrCADateTimeSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept. 2011, 13 h 45");
    });
    test('testDateFmtfrCADateTimeSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembre 2011 à 13 h 45");
    });
    test('testDateFmtfrCADateTimeSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembre 2011 à 13 h 45");
    });
    test('testDateFmtfrCATypeDate', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtfrCATypeTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCATypeDateTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011-09-29 13 h 45');
    });
    test('testDateFmtfrCAShortDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011');
    });
    test('testDateFmtfrCAShortDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtfrCAShortDateComponentsN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtfrCAShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtfrCAShortDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09-29");
    });
    test('testDateFmtfrCAShortDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011-09');
    });
    test('testDateFmtfrCAShortDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtfrCAShortDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J 09-29");
    });
    test('testDateFmtfrCAShortDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'J 2011-09-29');
    });
    test('testDateFmtfrCAFullDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtfrCAFullDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembre");
    });
    test('testDateFmtfrCAFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtfrCAFullDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembre");
    });
    test('testDateFmtfrCAFullDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembre 2011");
    });
    test('testDateFmtfrCAFullDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembre 2011");
    });
    test('testDateFmtfrCAFullDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "jeudi 29 septembre");
    });
    test('testDateFmtfrCAFullDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "jeudi 29 septembre 2011");
    });
    test('testDateFmtfrCAShortTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtfrCAShortTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtfrCAShortTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtfrCAShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '45 min 37');
    });
    test('testDateFmtfrCAShortTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCAShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s");
    });
    test('testDateFmtfrCAShortTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCAShortTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          time: "hmz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 EDT");
    });
    test('testDateFmtfrCAShortTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          time: "hmaz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 EDT");
    });
    test('testDateFmtfrCAShortTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "fr-CA", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s");
    });
    test('testDateFmtfrCAShortTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          time: "hmsz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s EDT");
    });
    test('testDateFmtfrCAShortTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          time: "hmsaz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s EDT");
    });
    test('testDateFmtfrCAFullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtfrCAFullTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtfrCAFullTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtfrCAFullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '45 min 37');
    });
    test('testDateFmtfrCAFullTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCAFullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s");
    });
    test('testDateFmtfrCAFullTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45");
    });
    test('testDateFmtfrCAFullTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 EDT");
    });
    test('testDateFmtfrCAFullTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 EDT");
    });
    test('testDateFmtfrCAFullTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s");
    });
    test('testDateFmtfrCAFullTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s EDT");
    });
    test('testDateFmtfrCAFullTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s EDT");
    });
    test('testDateFmtfrCAWithTimeZoneAndNoDST', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "fr-CA",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "America/Montreal");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "fr-CA",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: "America/Montreal");
      expect(await fmt.format(dateOptions), "13 h 45 min 37 s EST");
    });
  });
}
