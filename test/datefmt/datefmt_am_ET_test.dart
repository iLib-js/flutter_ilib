import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_am_ET_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtSimpleMedium_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011");
    });
    test('testDateFmtSimpleLong_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011");
    });
    test('testDateFmtSimpleFull_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011");
    });
    test('testDateFmtSimpleTimeShort_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtSimpleTimeMedium_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtSimpleTimeLong_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtSimpleTimeFull_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtDateTimeSimpleShort_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011 1:45 ከምሽቱ");
    });
    test('testDateFmtDateTimeSimpleMedium_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011 1:45 ከምሽቱ");
    });
    test('testDateFmtDateTimeSimpleLong_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011 1:45 ከምሽቱ");
    });
    test('testDateFmtDateTimeSimpleFull_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011 1:45 ከምሽቱ");
    });
    test('testDateFmtTypeDate_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtTypeTime_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtTypeDateTime_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011 1:45 ከምሽቱ");
    });
    test('testDateFmtShortDateComponentsY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtShortDateComponentsM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ግ");
    });
    test('testDateFmtShortDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09");
    });
    test('testDateFmtShortDateComponentsMY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09/2011");
    });
    test('testDateFmtShortDateComponentsDMY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/09/2011");
    });
    test('testDateFmtShortDateComponentsWDM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ሐ፣ 29/09");
    });
    test('testDateFmtShortDateComponentsWDMY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ሐ፣ 29/09/2011");
    });
    test('testDateFmtFullDateComponentsY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ግንቦት");
    });
    test('testDateFmtFullDateComponentsD', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት");
    });
    test('testDateFmtFullDateComponentsMY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ግንቦት 2011");
    });
    test('testDateFmtFullDateComponentsDMY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 ግንቦት 2011");
    });
    test('testDateFmtFullDateComponentsWDM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ሐሙስ፣ 29 ግንቦት");
    });
    test('testDateFmtFullDateComponentsWDMY_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ሐሙስ፣ 29 ግንቦት 2011");
    });
    test('testDateFmtShortTimeComponentsS_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtShortTimeComponentsMS_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtShortTimeComponentsHMS_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtShortTimeComponentsHMZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          time: "hmz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 EAT");
    });
    test('testDateFmtShortTimeComponentsHMAZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          time: "hmaz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ EAT");
    });
    test('testDateFmtShortTimeComponentsHMSA_am_ET', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "am-ET", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 ከምሽቱ");
    });
    test('testDateFmtShortTimeComponentsHMSZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          time: "hmsz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EAT");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          time: "hmsaz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 ከምሽቱ EAT");
    });
    test('testDateFmtFullTimeComponentsS_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtFullTimeComponentsMS_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtFullTimeComponentsHMS_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ");
    });
    test('testDateFmtFullTimeComponentsHMZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 EAT");
    });
    test('testDateFmtFullTimeComponentsHMAZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ከምሽቱ EAT");
    });
    test('testDateFmtFullTimeComponentsHMSA_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 ከምሽቱ");
    });
    test('testDateFmtFullTimeComponentsHMSZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 EAT");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 ከምሽቱ EAT");
    });
    test('testDateFmtWithTimeZoneAndNoDST_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      // does not observe DST, so no difference in the TZ spec
      expect(await fmt.format(dateOptions), "1:45:37 EAT");
    });
    test('testDateFmtTimeMeridiem0_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "long",
          time: "hma",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 ጥዋት");
    });
    test('testDateFmtTimeMeridiem1_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "long",
          time: "hma",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 6,
          minute: 0,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "6:00 ቀትር");
    });
    test('testDateFmtTimeMeridiem2_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "long",
          time: "hma",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 8,
          minute: 22,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "8:22 ከሰዓት");
    });
    test('testDateFmtTimeMeridiem3_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "long",
          time: "hma",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 22,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:22 ከምሽቱ");
    });
    test('testDateFmtTimeMeridiem4_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "am-ET",
          type: "time",
          length: "long",
          time: "hma",
          timezone: "Africa/Addis_Ababa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "am-ET",
          year: 2011,
          month: 9,
          day: 29,
          hour: 19,
          minute: 22,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "7:22 ከሌሊቱ");
    });
  });
}
