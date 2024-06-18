import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_tr_TR_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtSimpleMedium_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eyl 2011");
    });
    test('testDateFmtSimpleLong_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül 2011");
    });
    test('testDateFmtSimpleFull_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül 2011");
    });
    test('testDateFmtSimpleTimeShort_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eyl 2011 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül 2011 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül 2011 13:45");
    });

    test('testDateFmtTypeDate_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtTypeTime_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011 13:45");
    });
    test('testDateFmtShortDateComponentsY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "E");
    });
    test('testDateFmtShortDateComponentsD_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.2011");
    });
    test('testDateFmtShortDateComponentsDMY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtShortDateComponentsWDM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09 P");
    });
    test('testDateFmtShortDateComponentsWDMY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011 P");
    });
    test('testDateFmtFullDateComponentsY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Eylül");
    });
    test('testDateFmtFullDateComponentsD_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül");
    });
    test('testDateFmtFullDateComponentsMY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Eylül 2011");
    });
    test('testDateFmtFullDateComponentsDMY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül 2011");
    });
    test('testDateFmtFullDateComponentsWDM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül Perşembe");
    });
    test('testDateFmtFullDateComponentsWDMY_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Eylül 2011 Perşembe");
    });
    test('testDateFmtShortTimeComponentsS_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +03");
    });
    test('testDateFmtShortTimeComponentsHMAZ_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +03");
    });
    test('testDateFmtShortTimeComponentsHMSA_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +03");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_tr_TR', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "tr-TR", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +03");
    });
    test('testDateFmtFullTimeComponentsS_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +03");
    });
    test('testDateFmtFullTimeComponentsHMAZ_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +03");
    });
    test('testDateFmtFullTimeComponentsHMSA_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "tr-TR", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "tr-TR",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
  });
}
