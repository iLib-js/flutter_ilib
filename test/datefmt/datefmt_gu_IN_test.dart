import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_gu_IN_test.dart] file.");
  group('format()', () {
    test('testDateFmtINSimpleShort_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINSimpleMedium_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 સપ્ટે, 2011");
    });
    test('testDateFmtINSimpleLong_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 સપ્ટેમ્બર, 2011");
    });
    test('testDateFmtINSimpleFull_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 સપ્ટેમ્બર, 2011");
    });
    test('testDateFmtINSimpleTimeShort_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINSimpleTimeShort_gu_IN1', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINSimpleTimeMedium_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINSimpleTimeLong_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINSimpleTimeFull_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINDateTimeSimpleShort_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11 01:45 PM");
    });
    test('testDateFmtINDateTimeSimpleMedium_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 સપ્ટે, 2011 01:45 PM");
    });
    test('testDateFmtINDateTimeSimpleLong_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions),
          "29 સપ્ટેમ્બર, 2011 એ 01:45 PM વાગ્યે");
    });
    test('testDateFmtINDateTimeSimpleFull_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions),
          "29 સપ્ટેમ્બર, 2011 એ 01:45 PM વાગ્યે");
    });
    test('testDateFmtINTypeDate_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINTypeTime_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINTypeDateTime_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11 01:45 PM");
    });
    test('testDateFmtINShortDateComponentsY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtINShortDateComponentsM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtINShortDateComponentsN_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "સ");
    });
    test('testDateFmtINShortDateComponentsD_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtINShortDateComponentsDM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtINShortDateComponentsMY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtINShortDateComponentsDMY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtINShortDateComponentsWDM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ગુ, 29/9");
    });
    test('testDateFmtINShortDateComponentsWDMY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ગુ, 29/9/11");
    });
    test('testDateFmtINFullDateComponentsY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtINFullDateComponentsM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "સપ્ટેમ્બર");
    });
    test('testDateFmtINFullDateComponentsD_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtINFullDateComponentsDM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 સપ્ટેમ્બર");
    });
    test('testDateFmtINFullDateComponentsMY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "સપ્ટેમ્બર, 2011");
    });
    test('testDateFmtINFullDateComponentsDMY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 સપ્ટેમ્બર, 2011");
    });
    test('testDateFmtINFullDateComponentsWDM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ગુરુવાર, 29 સપ્ટેમ્બર");
    });
    test('testDateFmtINFullDateComponentsWDMY_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "ગુરુવાર, 29 સપ્ટેમ્બર, 2011");
    });
    test('testDateFmtINShortTimeComponentsS_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtINShortTimeComponentsM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtINShortTimeComponentsH_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01");
    });
    test('testDateFmtINShortTimeComponentsHM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45");
    });
    test('testDateFmtINShortTimeComponentsHMS_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37");
    });
    test('testDateFmtINShortTimeComponentsHMA_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINShortTimeComponentsHMZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMAZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMSA_gu_IN', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "gu-IN", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM");
    });
    test('testDateFmtINShortTimeComponentsHMSZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINFullTimeComponentsS_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtINFullTimeComponentsM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtINFullTimeComponentsH_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01");
    });
    test('testDateFmtINFullTimeComponentsHM_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINFullTimeComponentsHMS_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM");
    });
    test('testDateFmtINFullTimeComponentsHMA_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45 PM");
    });
    test('testDateFmtINFullTimeComponentsHMAZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          length: "full",
          time: "ahmsz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINFullTimeComponentsHMSA_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM");
    });
    test('testDateFmtINFullTimeComponentsHMSZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
    test('testDateFmtINWithTimeZoneAndNoDST_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "gu-IN",
          type: "time",
          length: "full",
          time: "hmsaz",
          timezone: "Asia/Kolkata");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "gu-IN",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45:37 PM IST");
    });
  });
}
