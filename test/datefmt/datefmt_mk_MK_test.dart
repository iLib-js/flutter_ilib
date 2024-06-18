import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_mk_MK_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11");
    });
    test('testDateFmtSimpleMedium_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.2011");
    });
    test('testDateFmtSimpleLong_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011");
    });
    test('testDateFmtSimpleFull_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011");
    });
    test('testDateFmtSimpleTimeShort_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11, во 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.2011, во 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011, во 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011, во 13:45");
    });

    test('testDateFmtShortDateComponentsY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "с");
    });
    test('testDateFmtShortDateComponentsD_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9");
    });
    test('testDateFmtShortDateComponentsMY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9.11");
    });
    test('testDateFmtShortDateComponentsDMY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.9.11");
    });
    test('testDateFmtShortDateComponentsWDM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ч, 29.9");
    });
    test('testDateFmtShortDateComponentsWDMY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ч, 29.9.11");
    });
    test('testDateFmtFullDateComponentsY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "септември");
    });
    test('testDateFmtFullDateComponentsD_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември");
    });
    test('testDateFmtFullDateComponentsMY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "септември 2011");
    });
    test('testDateFmtFullDateComponentsDMY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011");
    });
    test('testDateFmtFullDateComponentsWDM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "четврток, 29 септември");
    });
    test('testDateFmtFullDateComponentsWDMY_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "четврток, 29 септември 2011");
    });
    test('testDateFmtShortTimeComponentsS_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsHM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mk-MK", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsS_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsHM_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 CEST");
    });
    test('testDateFmtWithTimeZoneAndNoDST_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mk-MK", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mk-MK",
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
