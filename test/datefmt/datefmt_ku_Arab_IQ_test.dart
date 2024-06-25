import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ku_Arab_IQ_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
    });
    test('testDateFmtSimpleMedium_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
    });
    test('testDateFmtSimpleLong_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ی ئەیلوولی ٢٠١١');
    });
    test('testDateFmtSimpleFull_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
    });
    test('testDateFmtSimpleTimeShort_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtSimpleTimeMedium_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtSimpleTimeLong_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtSimpleTimeFull_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtDateTimeSimpleShort_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن');
    });
    test('testDateFmtDateTimeSimpleMedium_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن');
    });
    test('testDateFmtDateTimeSimpleLong_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ی ئەیلوولی ٢٠١١ ‏١:٤٥ د.ن');
    });
    test('testDateFmtDateTimeSimpleFull_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن');
    });
    test('testDateFmtTypeDate_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
    });
    test('testDateFmtTypeTime_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtTypeDateTime_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن');
    });
    test('testDateFmtShortDateComponentsY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٢٠١١');
    });
    test('testDateFmtShortDateComponentsM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٠٩');
    });
    test('testDateFmtShortDateComponentsD_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٢٩');
    });
    test('testDateFmtShortDateComponentsDM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٠٩-٢٩');
    });
    test('testDateFmtShortDateComponentsMY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩');
    });
    test('testDateFmtShortDateComponentsDMY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
    });
    test('testDateFmtShortDateComponentsWDM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٠٩-٢٩, پ');
    });
    test('testDateFmtShortDateComponentsWDMY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩, پ');
    });
    test('testDateFmtFullDateComponentsY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٢٠١١');
    });
    test('testDateFmtFullDateComponentsM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ئەیلوول');
    });
    test('testDateFmtFullDateComponentsD_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٢٩');
    });
    test('testDateFmtFullDateComponentsDM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ئەیلوول ٢٩');
    });
    test('testDateFmtFullDateComponentsMY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول');
    });
    test('testDateFmtFullDateComponentsDMY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
    });
    test('testDateFmtFullDateComponentsWDM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'ئەیلوول ٢٩, پێنجشەممە');
    });
    test('testDateFmtFullDateComponentsWDMY_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩, پێنجشەممە');
    });
    test('testDateFmtShortTimeComponentsS_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٣٧');
    });
    test('testDateFmtShortTimeComponentsM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٤٥');
    });
    test('testDateFmtShortTimeComponentsH_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '١');
    });
    test('testDateFmtShortTimeComponentsMS_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٤٥:٣٧');
    });
    test('testDateFmtShortTimeComponentsHM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥');
    });
    test('testDateFmtShortTimeComponentsHMS_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧');
    });
    test('testDateFmtShortTimeComponentsHMA_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtShortTimeComponentsHMZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ +٠٣/+٠٤');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن +٠٣/+٠٤');
    });
    test('testDateFmtShortTimeComponentsHMSA_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ku-Arab-IQ", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤');
    });
    test('testDateFmtFullTimeComponentsS_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٣٧');
    });
    test('testDateFmtFullTimeComponentsM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٤٥');
    });
    test('testDateFmtFullTimeComponentsH_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '١');
    });
    test('testDateFmtFullTimeComponentsMS_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '٤٥:٣٧');
    });
    test('testDateFmtFullTimeComponentsHM_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥');
    });
    test('testDateFmtFullTimeComponentsHMS_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧');
    });
    test('testDateFmtFullTimeComponentsHMA_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن');
    });
    test('testDateFmtFullTimeComponentsHMZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ +٠٣/+٠٤');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥ د.ن +٠٣/+٠٤');
    });
    test('testDateFmtFullTimeComponentsHMSA_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ku_Arab_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ku-Arab-IQ", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ku-Arab-IQ",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
    });
  });
}
