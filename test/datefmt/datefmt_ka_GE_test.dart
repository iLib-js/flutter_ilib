import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ka_GE_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtSimpleMedium_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 სექ. 2011");
    });
    test('testDateFmtSimpleLong_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 სექტემბერი, 2011");
    });
    test('testDateFmtSimpleFull_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 სექტემბერი, 2011');
    });
    test('testDateFmtSimpleTimeShort_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '01:45');
    });
    test('testDateFmtDateTimeSimpleShort_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.11, 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 სექ. 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 სექტემბერი, 2011, 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 სექტემბერი, 2011, 13:45');
    });

    test('testDateFmtTypeDate_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtTypeTime_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.11, 13:45');
    });
    test('testDateFmtShortDateComponentsY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ს');
    });
    test('testDateFmtShortDateComponentsD_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '09.11');
    });
    test('testDateFmtShortDateComponentsDMY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtShortDateComponentsWDM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ხ, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ხ, 29.09.11');
    });
    test('testDateFmtLongDateComponentsWDM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", date: "wdm", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ხუთ, 29 სექტემბერი');
    });
    test('testDateFmtFullDateComponentsY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "სექტემბერი");
    });
    test('testDateFmtFullDateComponentsD_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 სექტემბერი');
    });
    test('testDateFmtFullDateComponentsMY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'სექტემბერი, 2011');
    });
    test('testDateFmtFullDateComponentsDMY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 სექტემბერი, 2011');
    });
    test('testDateFmtFullDateComponentsWDM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ხუთშაბათი, 29 სექტემბერი');
    });
    test('testDateFmtFullDateComponentsWDMY_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ხუთშაბათი, 29 სექტემბერი, 2011');
    });
    test('testDateFmtShortTimeComponentsS_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", time: "hmz", timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          time: "hmaz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04");
    });
    test('testDateFmtShortTimeComponentsHMSA_ka_GE', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ka-GE", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          time: "hmsz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04");
    });
    test('testDateFmtFullTimeComponentsS_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +04");
    });
    test('testDateFmtFullTimeComponentsHMSA_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ka_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ka-GE",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Asia/Tbilisi");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ka-GE",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +04");
    });
  });
}
