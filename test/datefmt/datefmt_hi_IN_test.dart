import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_hi_IN_test.dart] file.");
  group('format()', () {
    test('testDateFmtINSimpleShort_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINSimpleMedium_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सित॰ 2011");
    });
    test('testDateFmtINSimpleLong_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सितंबर 2011");
    });
    test('testDateFmtINSimpleFull_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सितंबर 2011");
    });
    test('testDateFmtINSimpleTimeShort_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45 pm');
    });
    test('testDateFmtINSimpleTimeShort_hi_IN1', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45 pm');
    });
    test('testDateFmtINSimpleTimeMedium_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45 pm');
    });
    test('testDateFmtINSimpleTimeLong_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45 pm');
    });
    test('testDateFmtINSimpleTimeFull_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45 pm');
    });
    test('testDateFmtINDateTimeSimpleShort_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 1:45 pm");
    });
    test('testDateFmtINDateTimeSimpleMedium_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सित॰ 2011, 1:45 pm");
    });
    test('testDateFmtINDateTimeSimpleLong_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सितंबर 2011 को 1:45 pm बजे");
    });
    test('testDateFmtINDateTimeSimpleFull_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सितंबर 2011 को 1:45 pm बजे");
    });

    test('testDateFmtINTypeDate_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINTypeTime_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtINTypeDateTime_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 1:45 pm");
    });
    test('testDateFmtINShortDateComponentsY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtINShortDateComponentsM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtINShortDateComponentsN_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "स");
    });
    test('testDateFmtINShortDateComponentsD_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtINShortDateComponentsDM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtINShortDateComponentsMY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtINShortDateComponentsDMY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINShortDateComponentsWDM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गु, 29/9");
    });
    test('testDateFmtINShortDateComponentsWDMY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गु, 29/9/11");
    });
    test('testDateFmtINFullDateComponentsY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtINFullDateComponentsM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "सितंबर");
    });
    test('testDateFmtINFullDateComponentsD_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtINFullDateComponentsDM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सितंबर");
    });
    test('testDateFmtINFullDateComponentsMY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "सितंबर 2011");
    });
    test('testDateFmtINFullDateComponentsDMY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सितंबर 2011");
    });
    test('testDateFmtINFullDateComponentsWDM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गुरुवार, 29 सितंबर");
    });
    test('testDateFmtINFullDateComponentsWDMY_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गुरुवार, 29 सितंबर 2011");
    });
    test('testDateFmtINShortTimeComponentsS_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtINShortTimeComponentsM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtINShortTimeComponentsH_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtINShortTimeComponentsHM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45");
    });
    test('testDateFmtINShortTimeComponentsHMS_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37");
    });
    test('testDateFmtINShortTimeComponentsHMA_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtINShortTimeComponentsHMZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINShortTimeComponentsHMAZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINShortTimeComponentsHMSA_hi_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "hi-IN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm');
    });
    test('testDateFmtINShortTimeComponentsHMSZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINFullTimeComponentsS_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtINFullTimeComponentsM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtINFullTimeComponentsH_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1");
    });
    test('testDateFmtINFullTimeComponentsHM_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtINFullTimeComponentsHMS_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm');
    });
    test('testDateFmtINFullTimeComponentsHMA_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 pm");
    });
    test('testDateFmtINFullTimeComponentsHMAZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          length: "full",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINFullTimeComponentsHMSA_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm');
    });
    test('testDateFmtINFullTimeComponentsHMSZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
    test('testDateFmtINWithTimeZoneAndNoDST_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "hi-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "hi-IN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '1:45:37 pm IST');
    });
  });
}
