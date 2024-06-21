import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_en_MY_test.dart] file.");
  group('format()', () {
    test('testDateFmtMYSimpleShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtMYSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sept 2011");
    });
    test('testDateFmtMYSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtMYSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtMYSimpleTimeShort', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYSimpleTimeMedium', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYSimpleTimeLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYSimpleTimeFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYDateTimeSimpleShort', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011, 1:45 pm");
    });
    test('testDateFmtMYDateTimeSimpleMedium', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sept 2011, 1:45 pm");
    });
    test('testDateFmtMYDateTimeSimpleLong', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 at 1:45 pm");
    });
    test('testDateFmtMYDateTimeSimpleFull', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 at 1:45 pm");
    });
    test('testDateFmtMYTypeDate', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtMYTypeTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYTypeDateTime', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011, 1:45 pm");
    });
    test('testDateFmtMYShortDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtMYShortDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtMYShortDateComponentsN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtMYShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtMYShortDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtMYShortDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/2011");
    });
    test('testDateFmtMYShortDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtMYShortDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T, 29/09");
    });
    test('testDateFmtMYShortDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T, 29/09/2011");
    });
    test('testDateFmtMYFullDateComponentsY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtMYFullDateComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September");
    });
    test('testDateFmtMYFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtMYFullDateComponentsDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September");
    });
    test('testDateFmtMYFullDateComponentsMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September 2011");
    });
    test('testDateFmtMYFullDateComponentsDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtMYFullDateComponentsWDM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thursday, 29 September");
    });
    test('testDateFmtMYFullDateComponentsWDMY', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Thursday, 29 September 2011");
    });
    test('testDateFmtMYShortTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtMYShortTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtMYShortTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtMYShortTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtMYShortTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtMYShortTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtMYShortTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYShortTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          time: "hmz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 +08");
    });
    test('testDateFmtMYShortTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm +08");
    });
    test('testDateFmtMYShortTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "en-MY", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 pm");
    });
    test('testDateFmtMYShortTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +08");
    });
    test('testDateFmtMYShortTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 pm +08");
    });
    test('testDateFmtMYFullTimeComponentsS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtMYFullTimeComponentsM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtMYFullTimeComponentsH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtMYFullTimeComponentsMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtMYFullTimeComponentsHM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtMYFullTimeComponentsHMS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtMYFullTimeComponentsHMA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtMYFullTimeComponentsHMZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 +08");
    });
    test('testDateFmtMYFullTimeComponentsHMAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm +08");
    });
    test('testDateFmtMYFullTimeComponentsHMSA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 pm");
    });
    test('testDateFmtMYFullTimeComponentsHMSZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +08");
    });
    test('testDateFmtMYFullTimeComponentsHMSAZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 pm +08");
    });
    test('testDateFmtMYWithTimeZoneAndNoDST', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "en-MY",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Kuala_Lumpur");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "en-MY",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 +08");
    });
  });
}
