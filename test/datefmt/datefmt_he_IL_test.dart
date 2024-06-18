import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_he_IL_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29.9.2011');
    });
    test('testDateFmtSimpleMedium_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏29 בספט׳ 2011");
    });
    test('testDateFmtSimpleLong_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏29 בספטמבר 2011");
    });
    test('testDateFmtSimpleFull_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏29 בספטמבר 2011");
    });
    test('testDateFmtSimpleTimeShort_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtSimpleTimeMedium_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtSimpleTimeLong_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtSimpleTimeFull_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtDateTimeSimpleShort_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29.9.2011, ‏13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏29 בספט׳ 2011, ‏13:45");
    });
    test('testDateFmtDateTimeSimpleLong_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29 בספטמבר 2011 בשעה ‏13:45');
    });
    test('testDateFmtDateTimeSimpleFull_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29 בספטמבר 2011 בשעה ‏13:45');
    });
    test('testDateFmtTypeDate_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29.9.2011');
    });
    test('testDateFmtTypeTime_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtTypeDateTime_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29.9.2011, ‏13:45');
    });
    test('testDateFmtShortDateComponentsY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ס");
    });
    test('testDateFmtShortDateComponentsD_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29.9');
    });
    test('testDateFmtShortDateComponentsMY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏9.2011');
    });
    test('testDateFmtShortDateComponentsDMY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏29.9.2011');
    });
    test('testDateFmtShortDateComponentsWDM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ה׳, ‏29.9');
    });
    test('testDateFmtShortDateComponentsWDMY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ה׳, 29.9.2011');
    });
    test('testDateFmtFullDateComponentsY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ספטמבר");
    });
    test('testDateFmtFullDateComponentsD_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏29 בספטמבר");
    });
    test('testDateFmtFullDateComponentsMY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ספטמבר 2011");
    });
    test('testDateFmtFullDateComponentsDMY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏29 בספטמבר 2011");
    });
    test('testDateFmtFullDateComponentsWDM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "יום חמישי, ‏29 בספטמבר");
    });
    test('testDateFmtFullDateComponentsWDMY_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "יום חמישי, 29 בספטמבר 2011");
    });
    test('testDateFmtShortTimeComponentsS_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45 IDT");
    });
    test('testDateFmtShortTimeComponentsHMAZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45 IDT");
    });
    test('testDateFmtShortTimeComponentsHMSA_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37 IDT");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "he-IL", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37 IDT");
    });
    test('testDateFmtFullTimeComponentsS_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45 IDT");
    });
    test('testDateFmtFullTimeComponentsHMAZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45 IDT");
    });
    test('testDateFmtFullTimeComponentsHMSA_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37 IDT");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37 IDT");
    });
    test('testDateFmtWithTimeZoneAndNoDST_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "he-IL", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "he-IL",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏13:45:37 IST");
    });
  });
}
