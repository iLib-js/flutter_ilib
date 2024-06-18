import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_mr_IN_test.dart] file.");
  group('format()', () {
    test('testDateFmtINSimpleShort_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "short", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINSimpleMedium_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९ सप्टें, २०११");
    });
    test('testDateFmtINSimpleLong_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "long", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 सप्टेंबर, 2011");
    });
    test('testDateFmtINSimpleFull_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९ सप्टेंबर, २०११");
    });
    test('testDateFmtINSimpleTimeShort_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५ PM");
    });
    test('testDateFmtINSimpleTimeShort_mr_IN1', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "short", type: "time", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtINSimpleTimeMedium_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "medium", type: "time", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtINSimpleTimeLong_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५ PM");
    });
    test('testDateFmtINSimpleTimeFull_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "full", type: "time", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45 PM");
    });
    test('testDateFmtINDateTimeSimpleShort_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९/९/११, १:४५ PM");
    });
    test('testDateFmtINDateTimeSimpleMedium_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९ सप्टें, २०११, १:४५ PM");
    });
    test('testDateFmtINDateTimeSimpleLong_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", length: "long", type: "datetime", useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '29 सप्टेंबर, 2011 रोजी 1:45 PM');
    });
    test('testDateFmtINDateTimeSimpleFull_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '२९ सप्टेंबर, २०११ रोजी १:४५ PM');
    });

    test('testDateFmtINTypeDate_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९/९/११");
    });
    test('testDateFmtINTypeTime_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५ PM");
    });
    test('testDateFmtINTypeDateTime_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९/९/११, १:४५ PM");
    });
    test('testDateFmtINShortDateComponentsY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "११");
    });
    test('testDateFmtINShortDateComponentsM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "९");
    });
    test('testDateFmtINShortDateComponentsN_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "स");
    });
    test('testDateFmtINShortDateComponentsD_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९");
    });
    test('testDateFmtINShortDateComponentsDM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९/९");
    });
    test('testDateFmtINShortDateComponentsMY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "९/११");
    });
    test('testDateFmtINShortDateComponentsDMY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९/९/११");
    });
    test('testDateFmtINShortDateComponentsWDM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गु, २९/९");
    });
    test('testDateFmtINShortDateComponentsWDMY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गु, २९/९/११");
    });
    test('testDateFmtINFullDateComponentsY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२०११");
    });
    test('testDateFmtINFullDateComponentsM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "सप्टेंबर");
    });
    test('testDateFmtINFullDateComponentsD_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९");
    });
    test('testDateFmtINFullDateComponentsDM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९ सप्टेंबर");
    });
    test('testDateFmtINFullDateComponentsMY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "सप्टेंबर, २०११");
    });
    test('testDateFmtINFullDateComponentsDMY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "२९ सप्टेंबर, २०११");
    });
    test('testDateFmtINFullDateComponentsWDM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गुरुवार, २९ सप्टेंबर");
    });
    test('testDateFmtINFullDateComponentsWDMY_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "गुरुवार, २९ सप्टेंबर, २०११");
    });
    test('testDateFmtINShortTimeComponentsS_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "३७");
    });
    test('testDateFmtINShortTimeComponentsM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "४५");
    });
    test('testDateFmtINShortTimeComponentsH_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१");
    });
    test('testDateFmtINShortTimeComponentsHM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५");
    });
    test('testDateFmtINShortTimeComponentsHMS_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७");
    });
    test('testDateFmtINShortTimeComponentsHMA_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५ PM");
    });
    test('testDateFmtINShortTimeComponentsHMZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMAZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMSA_mr_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "mr-IN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM");
    });
    test('testDateFmtINShortTimeComponentsHMSZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINFullTimeComponentsS_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "३७");
    });
    test('testDateFmtINFullTimeComponentsM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "४५");
    });
    test('testDateFmtINFullTimeComponentsH_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१");
    });
    test('testDateFmtINFullTimeComponentsHM_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५ PM");
    });
    test('testDateFmtINFullTimeComponentsHMS_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM");
    });
    test('testDateFmtINFullTimeComponentsHMA_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५ PM");
    });
    test('testDateFmtINFullTimeComponentsHMAZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          length: "full",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINFullTimeComponentsHMSA_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM");
    });
    test('testDateFmtINFullTimeComponentsHMSZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
    test('testDateFmtINWithTimeZoneAndNoDST_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "mr-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "mr-IN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "१:४५:३७ PM IST");
    });
  });
}
