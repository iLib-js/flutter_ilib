import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_kk_Cyrl_KZ_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtSimpleMedium_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыр.");
    });
    test('testDateFmtSimpleLong_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыркүйек");
    });
    test('testDateFmtSimpleFull_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыркүйек");
    });
    test('testDateFmtSimpleTimeShort_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeMedium_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыр., 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыркүйек, 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыркүйек, 13:45");
    });

    test('testDateFmtShortDateComponentsY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "қы");
    });
    test('testDateFmtShortDateComponentsN_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "қ");
    });
    test('testDateFmtShortDateComponentsD_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09");
    });
    test('testDateFmtShortDateComponentsMY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "09.11");
    });
    test('testDateFmtShortDateComponentsDMY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11");
    });
    test('testDateFmtShortDateComponentsWDM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09, Б");
    });
    test('testDateFmtShortDateComponentsWDMY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29.09.11, Б");
    });
    test('testDateFmtFullDateComponentsY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Қыркүйек");
    });
    test('testDateFmtFullDateComponentsD_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 қыркүйек");
    });
    test('testDateFmtFullDateComponentsMY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. қыркүйек");
    });
    test('testDateFmtFullDateComponentsDMY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыркүйек");
    });
    test('testDateFmtFullDateComponentsWDM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 қыркүйек, бейсенбі");
    });
    test('testDateFmtFullDateComponentsWDMY_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011 ж. 29 қыркүйек, бейсенбі");
    });
    test('testDateFmtShortTimeComponentsS_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsHM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMS_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMA_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtShortTimeComponentsHMZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +05");
    });
    test('testDateFmtShortTimeComponentsHMAZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +05");
    });
    test('testDateFmtShortTimeComponentsHMSA_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtShortTimeComponentsHMSZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +05");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "kk-Cyrl-KZ", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +05");
    });
    test('testDateFmtFullTimeComponentsS_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtFullTimeComponentsH_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtFullTimeComponentsHM_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMA_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 +05");
    });
    test('testDateFmtFullTimeComponentsHMSA_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });
    test('testDateFmtFullTimeComponentsHMSZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +05");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +05");
    });
    test('testDateFmtWithTimeZoneAndNoDST_kk_Cyrl_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "kk-Cyrl-KZ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "kk-Cyrl-KZ",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 +05");
    });
  });
}
