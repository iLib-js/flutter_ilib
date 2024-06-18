import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_sw_SE_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtSimpleMedium_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sep. 2011");
    });
    test('testDateFmtSimpleLong_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 september 2011");
    });
    test('testDateFmtSimpleFull_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 september 2011");
    });
    test('testDateFmtSimpleTimeShort_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          length: "short",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          length: "medium",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          length: "short",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          length: "medium",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sep. 2011 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          length: "long",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 september 2011 kl. 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          length: "full",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 september 2011 kl. 13:45");
    });

    test('testDateFmtTypeDate_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtTypeTime_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29 13:45");
    });
    test('testDateFmtShortDateComponentsY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sv-SE", calendar: "gregorian", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sv-SE", calendar: "gregorian", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_sv_SE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sv-SE", calendar: "gregorian", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_sv_SE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "sv-SE", calendar: "gregorian", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09-29");
    });
    test('testDateFmtShortDateComponentsMY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09");
    });
    test('testDateFmtShortDateComponentsDMY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtShortDateComponentsWDM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T 09-29");
    });
    test('testDateFmtShortDateComponentsWDMY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "T 2011-09-29");
    });
    test('testDateFmtFullDateComponentsY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september");
    });
    test('testDateFmtFullDateComponentsD_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 september");
    });
    test('testDateFmtFullDateComponentsMY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "september 2011");
    });
    test('testDateFmtFullDateComponentsDMY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 september 2011");
    });
    test('testDateFmtFullDateComponentsWDM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "torsdag 29 september");
    });
    test('testDateFmtFullDateComponentsWDMY_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "torsdag 29 september 2011");
    });
    test('testDateFmtShortTimeComponentsS_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE", calendar: "gregorian", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "ahmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "sv-SE",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "sv-SE",
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
