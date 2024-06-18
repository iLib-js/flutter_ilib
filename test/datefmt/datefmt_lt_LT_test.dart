import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_lt_LT_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtSimpleMedium_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtSimpleLong_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 m. rugsėjo 29 d.");
    });
    test('testDateFmtSimpleFull_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 m. rugsėjo 29 d.");
    });
    test('testDateFmtSimpleTimeShort_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 m. rugsėjo 29 d. 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 m. rugsėjo 29 d. 13:45");
    });

    test('testDateFmtTypeDate_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtTypeTime_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29 13:45");
    });
    test('testDateFmtShortDateComponentsY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ru");
    });
    test('testDateFmtShortDateComponentsN_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "r");
    });
    test('testDateFmtShortDateComponentsD_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09-29");
    });
    test('testDateFmtShortDateComponentsMY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09");
    });
    test('testDateFmtShortDateComponentsDMY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29");
    });
    test('testDateFmtShortDateComponentsWDM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09-29, K");
    });
    test('testDateFmtShortDateComponentsWDMY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011-09-29, K");
    });
    test('testDateFmtFullDateComponentsY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "rugsėjis");
    });
    test('testDateFmtFullDateComponentsD_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "rugsėjo 29 d.");
    });
    test('testDateFmtFullDateComponentsMY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 m. rugsėjis");
    });
    test('testDateFmtFullDateComponentsDMY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 m. rugsėjo 29 d.");
    });
    test('testDateFmtFullDateComponentsWDM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "rugsėjo 29 d., ketvirtadienis");
    });
    test('testDateFmtFullDateComponentsWDMY_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions),
          "2011 m. rugsėjo 29 d., ketvirtadienis");
    });
    test('testDateFmtShortTimeComponentsS_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_lt_LT', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "lt-LT", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtFullTimeComponentsS_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "lt-LT", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "lt-LT",
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
