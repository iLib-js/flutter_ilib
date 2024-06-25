import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_en_IE_test.dart] file.");
  group('format()', () {
    test('testDateFmtIESimpleShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtIESimpleMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sept 2011");
    });
    test('testDateFmtIESimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtIESimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtIESimpleTimeShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIESimpleTimeMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIESimpleTimeLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIESimpleTimeFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIEDateTimeSimpleShort', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011, 13:45");
    });
    test('testDateFmtIEDateTimeSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sept 2011, 13:45");
    });
    test('testDateFmtIEDateTimeSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 at 13:45");
    });
    test('testDateFmtIEDateTimeSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 at 13:45");
    });
    test('testDateFmtIETypeDate', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtIETypeTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIETypeDateTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011, 13:45");
    });
    test('testDateFmtIEShortDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtIEShortDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtIEShortDateComponentsN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtIEShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtIEShortDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtIEShortDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/2011");
    });
    test('testDateFmtIEShortDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtIEShortDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T 29/09");
    });
    test('testDateFmtIEShortDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T 29/09/2011");
    });
    test('testDateFmtIEFullDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtIEFullDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September");
    });
    test('testDateFmtIEFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtIEFullDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September");
    });
    test('testDateFmtIEFullDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September 2011");
    });
    test('testDateFmtIEFullDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtIEFullDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thursday 29 September");
    });
    test('testDateFmtIEFullDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thursday 29 September 2011");
    });
    test('testDateFmtIEShortTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtIEShortTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtIEShortTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtIEShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtIEShortTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIEShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtIEShortTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIEShortTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          time: "hmz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 IST/GMT");
    });
    test('testDateFmtIEShortTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          time: "hmaz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 IST/GMT");
    });
    test('testDateFmtIEShortTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-IE", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtIEShortTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          time: "hmsz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtIEShortTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          time: "hmsaz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtIEFullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtIEFullTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtIEFullTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtIEFullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtIEFullTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIEFullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtIEFullTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtIEFullTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 IST/GMT");
    });
    test('testDateFmtIEFullTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 IST/GMT");
    });
    test('testDateFmtIEFullTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtIEFullTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtIEFullTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
    test('testDateFmtIEWithTimeZoneAndNoDST', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-IE",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Dublin");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-IE",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 IST/GMT");
    });
  });
}
