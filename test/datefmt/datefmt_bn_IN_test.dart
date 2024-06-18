import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_bn_IN_test.dart] file.");
  group('format()', () {
    test('testDateFmtINSimpleShort_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯/৯/১১");
    });
    test('testDateFmtINSimpleMedium_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '২৯ সেপ্টেঃ, ২০১১');
    });
    test('testDateFmtINSimpleLong_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ সেপ্টেম্বর, ২০১১");
    });
    test('testDateFmtINSimpleFull_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ সেপ্টেম্বর, ২০১১");
    });
    test('testDateFmtINSimpleTimeShort_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINSimpleTimeShort_bn_IN1', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINSimpleTimeMedium_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINSimpleTimeLong_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINSimpleTimeFull_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINDateTimeSimpleShort_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯/৯/১১, ১:৪৫ PM");
    });
    test('testDateFmtINDateTimeSimpleMedium_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '২৯ সেপ্টেঃ, ২০১১, ১:৪৫ PM');
    });
    test('testDateFmtINDateTimeSimpleLong_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১ এ ১:৪৫ PM');
    });
    test('testDateFmtINDateTimeSimpleFull_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১ এ ১:৪৫ PM');
    });

    test('testDateFmtINTypeDate_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯/৯/১১");
    });
    test('testDateFmtINTypeTime_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINTypeDateTime_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '২৯/৯/১১, ১:৪৫ PM');
    });
    test('testDateFmtINShortDateComponentsY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১১");
    });
    test('testDateFmtINShortDateComponentsM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "সে");
    });
    test('testDateFmtINShortDateComponentsN_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "স");
    });
    test('testDateFmtINShortDateComponentsD_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯");
    });
    test('testDateFmtINShortDateComponentsDM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯/৯");
    });
    test('testDateFmtINShortDateComponentsMY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৯/১১");
    });
    test('testDateFmtINShortDateComponentsDMY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯/৯/১১");
    });
    test('testDateFmtINShortDateComponentsWDM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "বৃ, ২৯/৯");
    });
    test('testDateFmtINShortDateComponentsWDMY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "বৃ, ২৯/৯/১১");
    });
    test('testDateFmtINFullDateComponentsY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২০১১");
    });
    test('testDateFmtINFullDateComponentsM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "সেপ্টেম্বর");
    });
    test('testDateFmtINFullDateComponentsD_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯");
    });
    test('testDateFmtINFullDateComponentsDM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ সেপ্টেম্বর");
    });
    test('testDateFmtINFullDateComponentsMY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "সেপ্টেম্বর, ২০১১");
    });
    test('testDateFmtINFullDateComponentsDMY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ সেপ্টেম্বর, ২০১১");
    });
    test('testDateFmtINFullDateComponentsWDM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "বৃহস্পতিবার, ২৯ সেপ্টেম্বর");
    });
    test('testDateFmtINFullDateComponentsWDMY_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "বৃহস্পতিবার, ২৯ সেপ্টেম্বর, ২০১১");
    });
    test('testDateFmtINShortTimeComponentsS_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৩৭");
    });
    test('testDateFmtINShortTimeComponentsM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৪৫");
    });
    test('testDateFmtINShortTimeComponentsH_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১");
    });
    test('testDateFmtINShortTimeComponentsHM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫");
    });
    test('testDateFmtINShortTimeComponentsHMS_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭");
    });
    test('testDateFmtINShortTimeComponentsHMA_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINShortTimeComponentsHMZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMAZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMSA_bn_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "bn-IN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM");
    });
    test('testDateFmtINShortTimeComponentsHMSZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINFullTimeComponentsS_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৩৭");
    });
    test('testDateFmtINFullTimeComponentsM_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৪৫");
    });
    test('testDateFmtINFullTimeComponentsH_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১");
    });

    test('testDateFmtINFullTimeComponentsHMA_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });
    test('testDateFmtINFullTimeComponentsHMSA_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM");
    });
    test('testDateFmtINFullTimeComponentsHMSAWestern_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          length: "full",
          time: "hmsa",
          useNative: false);
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "1:45:37 PM");
    });
    test('testDateFmtINFullTimeComponentsHMA_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫ PM");
    });

    test('testDateFmtINFullTimeComponentsHMAZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          length: "full",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINFullTimeComponentsHMSA_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM");
    });
    test('testDateFmtINFullTimeComponentsHMSZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
    test('testDateFmtINWithTimeZoneAndNoDST_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "bn-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "bn-IN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১:৪৫:৩৭ PM IST");
    });
  });
}
