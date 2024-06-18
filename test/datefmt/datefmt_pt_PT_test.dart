import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_pt_PT_test.dart] file.");
  group('format()', () {
    test('testDateFmtPTSimpleShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtPTSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtPTSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de setembro de 2011");
    });
    test('testDateFmtPTSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de setembro de 2011");
    });
    test('testDateFmtPTSimpleTimeShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTSimpleTimeMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTSimpleTimeLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTSimpleTimeFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTDateTimeSimpleShort', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13:45");
    });
    test('testDateFmtPTDateTimeSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtPTDateTimeSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de setembro de 2011 às 13:45");
    });
    test('testDateFmtPTDateTimeSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de setembro de 2011 às 13:45");
    });

    test('testDateFmtPTTypeDate', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtPTTypeTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTTypeDateTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13:45");
    });
    test('testDateFmtPTShortDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtPTShortDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtPTShortDateComponentsN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtPTShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtPTShortDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtPTShortDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/11");
    });
    test('testDateFmtPTShortDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtPTShortDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Q, 29/09");
    });
    test('testDateFmtPTShortDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Q, 29/09/11");
    });
    test('testDateFmtPTFullDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtPTFullDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "setembro");
    });
    test('testDateFmtPTFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtPTFullDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de setembro");
    });
    test('testDateFmtPTFullDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "setembro de 2011");
    });
    test('testDateFmtPTFullDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 de setembro de 2011");
    });
    test('testDateFmtPTFullDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "quinta-feira, 29 de setembro");
    });
    test('testDateFmtPTFullDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions),
          "quinta-feira, 29 de setembro de 2011");
    });
    test('testDateFmtPTShortTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtPTShortTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtPTShortTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtPTShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtPTShortTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPTShortTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTShortTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          time: "hmz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WEST");
    });
    test('testDateFmtPTShortTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          time: "hmaz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WEST");
    });
    test('testDateFmtPTShortTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "pt-PT", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPTShortTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          time: "hmsz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WEST");
    });
    test('testDateFmtPTShortTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          time: "hmsaz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WEST");
    });
    test('testDateFmtPTFullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtPTFullTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtPTFullTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtPTFullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtPTFullTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTFullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPTFullTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtPTFullTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WEST");
    });
    test('testDateFmtPTFullTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WEST");
    });
    test('testDateFmtPTFullTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtPTFullTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WEST");
    });
    test('testDateFmtPTFullTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WEST");
    });
    test('testDateFmtPTWithTimeZoneAndNoDST', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "pt-PT",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Lisbon");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "pt-PT",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WET");
    });
  });
}
