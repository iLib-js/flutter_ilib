import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_bg_BG_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11 г.");
    });
    test('testDateFmtSimpleMedium_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.2011 г.");
    });
    test('testDateFmtSimpleLong_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011 г.");
    });
    test('testDateFmtSimpleFull_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011 г.");
    });
    test('testDateFmtSimpleTimeShort_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.11 г., 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.2011 г., 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 септември 2011 г. в 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 септември 2011 г. в 13:45');
    });

    test('testDateFmtTypeDate_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11 г.");
    });
    test('testDateFmtTypeTime_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29.09.11 г., 13:45');
    });
    test('testDateFmtShortDateComponentsY_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09");
    });
    test('testDateFmtShortDateComponentsN_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "с");
    });
    test('testDateFmtShortDateComponentsD_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    /*
    test('testDateFmtShortDateComponentsMY_bg_BG', () async {
        ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: "bg-BG", date: "my");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "bg-BG",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "9.11 г.");
        
    });
    */
    test('testDateFmtShortDateComponentsDMY_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11 г.");
    });
    test('testDateFmtShortDateComponentsWDM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ч, 29.09");
    });
    /*
    test('testDateFmtShortDateComponentsWDMY_bg_BG', () async {
        ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: "bg-BG", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "bg-BG",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "ч, 29.09.11 г.");
        
    });
    */
    test('testDateFmtFullDateComponentsY_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "септември");
    });
    test('testDateFmtFullDateComponentsD_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември");
    });
    test('testDateFmtFullDateComponentsMY_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "септември 2011 г.");
    });
    test('testDateFmtFullDateComponentsDMY_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 септември 2011 г.");
    });
    test('testDateFmtFullDateComponentsWDM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "четвъртък, 29 септември");
    });
    /*
    test('testDateFmtFullDateComponentsWDMY_bg_BG', () async {
        ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: "bg-BG", length: "full", date: "wdmy");
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "bg-BG",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "четвъртък, 29 септ. 2011 г.");
        
    });
    */

    test('testDateFmtShortTimeComponentsS_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtShortTimeComponentsHM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", time: "hmz", timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          time: "hmaz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_bg_BG', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bg-BG", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          time: "hmsz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          time: "hmsaz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsS_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsMS_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          length: "full",
          time: "hmz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          length: "full",
          time: "hmaz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bg-BG",
          type: "time",
          length: "full",
          time: "hmsz",
          timezone: "Europe/Sofia");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bg-BG",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '13:45:37 EET');
    });
  });
}
