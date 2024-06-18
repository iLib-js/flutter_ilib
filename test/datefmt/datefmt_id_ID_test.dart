import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_id_ID_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtSimpleMedium_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sep 2011");
    });
    test('testDateFmtSimpleLong_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtSimpleFull_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtSimpleTimeShort_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtSimpleTimeMedium_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtSimpleTimeLong_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtSimpleTimeFull_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtDateTimeSimpleShort_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13.45");
    });
    test('testDateFmtDateTimeSimpleMedium_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sep 2011, 13.45");
    });
    test('testDateFmtDateTimeSimpleLong_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 pukul 13.45");
    });
    test('testDateFmtDateTimeSimpleFull_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011 pukul 13.45");
    });

    test('testDateFmtTypeDate_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtTypeTime_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtTypeDateTime_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11, 13.45");
    });
    test('testDateFmtShortDateComponentsY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/11");
    });
    test('testDateFmtShortDateComponentsDMY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/11");
    });
    test('testDateFmtShortDateComponentsWDM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "K, 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "K, 29/09/11");
    });
    test('testDateFmtFullDateComponentsY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September");
    });
    test('testDateFmtFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September");
    });
    test('testDateFmtFullDateComponentsMY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "September 2011");
    });
    test('testDateFmtFullDateComponentsDMY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 September 2011");
    });
    test('testDateFmtFullDateComponentsWDM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Kamis, 29 September");
    });
    test('testDateFmtFullDateComponentsWDMY_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Kamis, 29 September 2011");
    });
    test('testDateFmtShortTimeComponentsS_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45.37");
    });
    test('testDateFmtShortTimeComponentsHM_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtShortTimeComponentsHMS_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtShortTimeComponentsHMA_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtShortTimeComponentsHMZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", time: "hmz", timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 WIB");
    });
    test('testDateFmtShortTimeComponentsHMAZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 WIB");
    });
    test('testDateFmtShortTimeComponentsHMSA_id_ID', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "id-ID", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 WIB");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 WIB");
    });
    test('testDateFmtFullTimeComponentsS_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45.37");
    });
    test('testDateFmtFullTimeComponentsHM_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtFullTimeComponentsHMS_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtFullTimeComponentsHMA_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45");
    });
    test('testDateFmtFullTimeComponentsHMZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 WIB");
    });
    test('testDateFmtFullTimeComponentsHMAZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45 WIB");
    });
    test('testDateFmtFullTimeComponentsHMSA_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 WIB");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13.45.37 WIB");
    });
    test('testDateFmtWithTimeZoneAndNoDST_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "id-ID",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Jakarta");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "id-ID",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      // does not observe DST, so no difference in the TZ spec
      expect(await fmt.format(dateOptions), "13.45.37 WIB");
    });
  });
}
