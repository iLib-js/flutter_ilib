import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ar_EG_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtSimpleMedium_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٠٩/٢٠١١');
    });
    test('testDateFmtSimpleLong_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtSimpleFull_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtSimpleTimeShort_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtSimpleTimeMedium_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtSimpleTimeLong_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtSimpleTimeFull_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleShort_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleMedium_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٠٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleLong_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١ في ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleFull_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١ في ‏١:٤٥ م');
    });
    test('testDateFmtTypeDate_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtTypeTime_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtTypeDateTime_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtShortDateComponentsY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٠١١');
    });
    test('testDateFmtShortDateComponentsM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٩');
    });
    test('testDateFmtShortDateComponentsN_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'س');
    });
    test('testDateFmtShortDateComponentsD_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٩');
    });
    test('testDateFmtShortDateComponentsDM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩');
    });
    test('testDateFmtShortDateComponentsMY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٩/٢٠١١');
    });
    test('testDateFmtShortDateComponentsDMY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtShortDateComponentsWDM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'خ، ‏٢٩/٩');
    });
    test('testDateFmtShortDateComponentsWDMY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'خ، ٢٩/٩/٢٠١١');
    });
    test('testDateFmtFullDateComponentsY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٠١١');
    });
    test('testDateFmtFullDateComponentsM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'سبتمبر');
    });
    test('testDateFmtFullDateComponentsD_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٩');
    });
    test('testDateFmtFullDateComponentsDM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر');
    });
    test('testDateFmtFullDateComponentsMY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsDMY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsWDM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'الخميس، ‏٢٩ سبتمبر');
    });
    test('testDateFmtFullDateComponentsWDMY_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'الخميس، ٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsW1_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'خميس');
    });
    test('testDateFmtFullDateComponentsW2_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 28,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'أربعاء');
    });
    test('testDateFmtFullDateComponentsW3_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 27,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ثلاثاء');
    });
    test('testDateFmtFullDateComponentsW4_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 26,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'إثنين');
    });
    test('testDateFmtFullDateComponentsW5_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 25,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'أحد');
    });
    test('testDateFmtFullDateComponentsW6_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 24,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'سبت');
    });
    test('testDateFmtFullDateComponentsW7_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', length: 'medium', date: 'w');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 23,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'جمعة');
    });
    test('testDateFmtShortTimeComponentsS_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٣٧');
    });
    test('testDateFmtShortTimeComponentsM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥');
    });
    test('testDateFmtShortTimeComponentsH_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '١');
    });
    test('testDateFmtShortTimeComponentsMS_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥:٣٧');
    });
    test('testDateFmtShortTimeComponentsHM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥');
    });
    test('testDateFmtShortTimeComponentsHMS_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
    });
    test('testDateFmtShortTimeComponentsHMA_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtShortTimeComponentsHMZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م EEST');
    });
    test('testDateFmtFullTimeComponentsS_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٣٧');
    });
    test('testDateFmtFullTimeComponentsM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥');
    });
    test('testDateFmtFullTimeComponentsH_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '١');
    });
    test('testDateFmtFullTimeComponentsMS_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥:٣٧');
    });
    test('testDateFmtFullTimeComponentsHM_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥');
    });
    test('testDateFmtFullTimeComponentsHMS_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
    });
    test('testDateFmtFullTimeComponentsHMA_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtFullTimeComponentsHMZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ EEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ EEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م EEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ EET');
    });
    test('testDateFmtNativeSimpleShort_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29/9/2011');
    });
    test('testDateFmtNativeSimpleMedium_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29/09/2011');
    });
    test('testDateFmtNativeSimpleLong_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', useNative: false, length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 سبتمبر 2011');
    });
    test('testDateFmtNativeSimpleFull_ar_EG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-EG', useNative: false, length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 سبتمبر 2011');
    });
    test('testDateFmtNativeSimpleTimeShort_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏1:45 م');
    });
    test('testDateFmtNativeSimpleTimeMedium_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏1:45 م');
    });
    test('testDateFmtNativeSimpleTimeLong_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏1:45 م');
    });
    test('testDateFmtNativeSimpleTimeFull_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleShort_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29/9/2011، ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleMedium_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG',
          useNative: false,
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29/09/2011، ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleLong_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 سبتمبر 2011 في ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleFull_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 سبتمبر 2011 في ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleFullIslamic_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 1439,
          month: 8,
          day: 22,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'islamic');
      expect(fmt.format(dateOptions), '‏8 مايو 2018 في ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleLongIslamic_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 1439,
          month: 8,
          day: 22,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'islamic');
      expect(fmt.format(dateOptions), '‏8 مايو 2018 في ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleMediumIslamic_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG',
          useNative: false,
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 1439,
          month: 8,
          day: 22,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'islamic');
      expect(fmt.format(dateOptions), '‏08/05/2018، ‏1:45 م');
    });
    test('testDateFmtNativeDateTimeSimpleShortIslamic_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-EG', useNative: false, length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-EG',
          year: 1439,
          month: 8,
          day: 22,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'islamic');
      expect(fmt.format(dateOptions), '‏8/5/2018، ‏1:45 م');
    });
  });
}
