import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ar_SA_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtSimpleMedium_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٠٩/٢٠١١');
    });
    test('testDateFmtSimpleLong_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtSimpleFull_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtSimpleTimeShort_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "short", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtSimpleTimeMedium_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "medium", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtSimpleTimeLong_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "long", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtSimpleTimeFull_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtDateTimeSimpleShort_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", length: "short", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleMedium_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", length: "medium", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٠٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleLong_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "long", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١ في ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleFull_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١ في ‏١:٤٥ م');
    });
    test('testDateFmtTypeDate_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtTypeTime_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtTypeDateTime_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtShortDateComponentsY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٢٠١١");
    });
    test('testDateFmtShortDateComponentsM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٩");
    });
    test('testDateFmtShortDateComponentsN_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "س");
    });
    test('testDateFmtShortDateComponentsD_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٢٩");
    });
    test('testDateFmtShortDateComponentsDM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏٢٩/٩");
    });
    test('testDateFmtShortDateComponentsMY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٩/٢٠١١');
    });
    test('testDateFmtShortDateComponentsDMY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtShortDateComponentsWDM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'خ، ‏٢٩/٩');
    });
    test('testDateFmtShortDateComponentsWDMY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'خ، ٢٩/٩/٢٠١١');
    });
    test('testDateFmtFullDateComponentsY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٢٠١١");
    });
    test('testDateFmtFullDateComponentsM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "سبتمبر");
    });
    test('testDateFmtFullDateComponentsD_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٢٩");
    });
    test('testDateFmtFullDateComponentsDM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏٢٩ سبتمبر");
    });
    test('testDateFmtFullDateComponentsMY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsDMY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsWDM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "wdm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "الخميس، ‏٢٩ سبتمبر");
    });
    test('testDateFmtFullDateComponentsWDMY_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", length: "full", date: "wdmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'الخميس، ٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtShortTimeComponentsS_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٣٧");
    });
    test('testDateFmtShortTimeComponentsM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٤٥");
    });
    test('testDateFmtShortTimeComponentsH_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "١");
    });
    test('testDateFmtShortTimeComponentsMS_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٤٥:٣٧");
    });
    test('testDateFmtShortTimeComponentsHM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥");
    });
    test('testDateFmtShortTimeComponentsHMS_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧");
    });
    test('testDateFmtShortTimeComponentsHMA_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtShortTimeComponentsHMZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ +٠٣");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م +٠٣");
    });
    test('testDateFmtShortTimeComponentsHMSA_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ م");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ +٠٣");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: "ar-SA", type: "time", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ م +٠٣");
    });
    test('testDateFmtFullTimeComponentsS_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٣٧");
    });
    test('testDateFmtFullTimeComponentsM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٤٥");
    });
    test('testDateFmtFullTimeComponentsH_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "١");
    });
    test('testDateFmtFullTimeComponentsMS_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "٤٥:٣٧");
    });
    test('testDateFmtFullTimeComponentsHM_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥");
    });
    test('testDateFmtFullTimeComponentsHMS_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧");
    });
    test('testDateFmtFullTimeComponentsHMA_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hma");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م");
    });
    test('testDateFmtFullTimeComponentsHMZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ +٠٣");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥ م +٠٣");
    });
    test('testDateFmtFullTimeComponentsHMSA_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hmsa");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ م");
    });
    test('testDateFmtFullTimeComponentsHMSZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ +٠٣");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ م +٠٣");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ar-SA", type: "time", length: "full", time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ar-SA",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "‏١:٤٥:٣٧ +٠٣");
    });
  });
}
