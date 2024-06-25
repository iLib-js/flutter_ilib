import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ro_RO_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtSimpleMedium_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept. 2011");
    });
    test('testDateFmtSimpleLong_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembrie 2011");
    });
    test('testDateFmtSimpleFull_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembrie 2011");
    });
    test('testDateFmtSimpleTimeShort_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 sept. 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembrie 2011 la 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembrie 2011 la 13:45");
    });

    test('testDateFmtTypeDate_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtTypeTime_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011, 13:45");
    });
    test('testDateFmtShortDateComponentsY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "s");
    });
    test('testDateFmtShortDateComponentsD_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.2011");
    });
    test('testDateFmtShortDateComponentsDMY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011");
    });
    test('testDateFmtShortDateComponentsWDM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J, 29.09");
    });
    test('testDateFmtShortDateComponentsWDMY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "J, 29.09.2011");
    });
    test('testDateFmtFullDateComponentsY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembrie");
    });
    test('testDateFmtFullDateComponentsD_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembrie");
    });
    test('testDateFmtFullDateComponentsMY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "septembrie 2011");
    });
    test('testDateFmtFullDateComponentsDMY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 septembrie 2011");
    });
    test('testDateFmtFullDateComponentsWDM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "joi, 29 septembrie");
    });
    test('testDateFmtFullDateComponentsWDMY_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "joi, 29 septembrie 2011");
    });
    test('testDateFmtShortTimeComponentsS_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSA_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ro_RO', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ro-RO", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 EEST");
    });
    test('testDateFmtFullTimeComponentsS_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 EEST");
    });
    test('testDateFmtFullTimeComponentsHMSA_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ro-RO", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ro-RO",
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
