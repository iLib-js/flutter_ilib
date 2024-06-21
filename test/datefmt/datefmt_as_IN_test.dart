import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_as_IN_test.dart] file.");
  group('format()', () {
    test('testDateINSimpleShort_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-৯-২০১১");
    });
    test('testDateINSimpleMedium_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-০৯-২০১১");
    });
    test('testDateINSimpleLong_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ ছেপ্তেম্বৰ, ২০১১");
    });
    test('testDateINSimpleFull_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ ছেপ্তেম্বৰ, ২০১১");
    });
    test('testDateINSimpleTimeShort_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINSimpleTimeShort_as_IN1', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINSimpleTimeMedium_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINSimpleTimeLong_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINSimpleTimeFull_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINDateTimeSimpleShort_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-৯-২০১১, অপৰাহ্ন ১.৪৫");
    });
    test('testDateINDateTimeSimpleMedium_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-০৯-২০১১, অপৰাহ্ন ১.৪৫");
    });
    test('testDateINDateTimeSimpleLong_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "২৯ ছেপ্তেম্বৰ, ২০১১ at অপৰাহ্ন ১.৪৫");
    });
    test('testDateINDateTimeSimpleFull_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(
          await fmt.format(dateOptions), "২৯ ছেপ্তেম্বৰ, ২০১১ at অপৰাহ্ন ১.৪৫");
    });
    test('testDateINTypeDate_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-৯-২০১১");
    });
    test('testDateINTypeTime_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINTypeDateTime_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '২৯-৯-২০১১, অপৰাহ্ন ১.৪৫');
    });
    test('testDateINShortDateComponentsY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২০১১");
    });
    test('testDateINShortDateComponentsM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৯");
    });
    test('testDateINShortDateComponentsN_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ছ");
    });
    test('testDateINShortDateComponentsD_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯");
    });
    test('testDateINShortDateComponentsDM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-৯");
    });
    test('testDateINShortDateComponentsMY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৯-২০১১");
    });
    test('testDateINShortDateComponentsDMY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯-৯-২০১১");
    });
    test('testDateINShortDateComponentsWDM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ব, ২৯-৯");
    });
    test('testDateINShortDateComponentsWDMY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ব, ২৯-৯-২০১১");
    });
    test('testDateINFullDateComponentsY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২০১১");
    });
    test('testDateINFullDateComponentsM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ছেপ্তেম্বৰ");
    });
    test('testDateINFullDateComponentsD_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯");
    });
    test('testDateINFullDateComponentsDM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ ছেপ্তেম্বৰ");
    });
    test('testDateINFullDateComponentsMY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ছেপ্তেম্বৰ, ২০১১");
    });
    test('testDateINFullDateComponentsDMY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "২৯ ছেপ্তেম্বৰ, ২০১১");
    });
    test('testDateINFullDateComponentsWDM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "বৃহস্পতিবাৰ, ২৯ ছেপ্তেম্বৰ");
    });
    test('testDateINFullDateComponentsWDMY_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "বৃহস্পতিবাৰ, ২৯ ছেপ্তেম্বৰ, ২০১১");
    });
    test('testDateINShortTimeComponentsS_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৩৭");
    });
    test('testDateINShortTimeComponentsM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৪৫");
    });
    test('testDateINShortTimeComponentsH_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১");
    });
    test('testDateINShortTimeComponentsHM_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১.৪৫");
    });
    test('testDateINShortTimeComponentsHMS_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১.৪৫.৩৭");
    });
    test('testDateINShortTimeComponentsHMA_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINShortTimeComponentsHMZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINShortTimeComponentsHMAZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINShortTimeComponentsHMSA_as_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "as-IN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭");
    });
    test('testDateINShortTimeComponentsHMSZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINShortTimeComponentsHMSAZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINFullTimeComponentsS_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৩৭");
    });
    test('testDateINFullTimeComponentsM_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "৪৫");
    });
    test('testDateINFullTimeComponentsH_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "১");
    });

    test('testDateINFullTimeComponentsHM_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINFullTimeComponentsHMS_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭");
    });
    test('testDateINFullTimeComponentsHMA_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫");
    });
    test('testDateINFullTimeComponentsHMAZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          length: "full",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINFullTimeComponentsHMSA_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭");
    });
    test('testDateINFullTimeComponentsHMSZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINFullTimeComponentsHMSAZ_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
    test('testDateINWithTimeZoneAndNoDST_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "as-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "as-IN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "অপৰাহ্ন ১.৪৫.৩৭ IST");
    });
  });
}
