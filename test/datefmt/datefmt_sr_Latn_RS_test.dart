import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_sr_Latn_RS_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11.");
    });
    test('testDateFmtSimpleMedium_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011.");
    });
    test('testDateFmtSimpleLong_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011.");
    });
    test('testDateFmtSimpleFull_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011.");
    });
    test('testDateFmtSimpleTimeShort_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "short",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "medium",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "long",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "short",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11. 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "medium",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. 9. 2011. 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "long",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011. 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011. 13:45");
    });

    test('testDateFmtTypeDate_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11.");
    });
    test('testDateFmtTypeTime_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11. 13:45");
    });
    test('testDateFmtShortDateComponentsY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsN_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9");
    });
    test('testDateFmtShortDateComponentsMY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9.11.");
    });
    test('testDateFmtShortDateComponentsDMY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11.");
    });
    test('testDateFmtShortDateComponentsWDM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "č, 29.9");
    });
    test('testDateFmtShortDateComponentsWDMY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "č, 29.9.11.");
    });
    test('testDateFmtFullDateComponentsY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembar");
    });
    test('testDateFmtFullDateComponentsD_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar");
    });
    test('testDateFmtFullDateComponentsMY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembar 2011.");
    });
    test('testDateFmtFullDateComponentsDMY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29. septembar 2011.");
    });
    test('testDateFmtFullDateComponentsWDM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "četvrtak, 29. septembar");
    });
    test('testDateFmtFullDateComponentsWDMY_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          length: "full",
          date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "četvrtak, 29. septembar 2011.");
    });
    test('testDateFmtShortTimeComponentsS_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS", calendar: "gregorian", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "ahmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sr-Latn-RS",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sr-Latn-RS",
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
