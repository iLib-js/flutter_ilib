import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ar_SA_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtSimpleMedium_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٠٩/٢٠١١');
    });
    test('testDateFmtSimpleLong_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtSimpleFull_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtSimpleTimeShort_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtSimpleTimeMedium_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtSimpleTimeLong_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtSimpleTimeFull_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleShort_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleMedium_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٠٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleLong_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١ في ‏١:٤٥ م');
    });
    test('testDateFmtDateTimeSimpleFull_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١ في ‏١:٤٥ م');
    });
    test('testDateFmtTypeDate_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtTypeTime_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtTypeDateTime_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١، ‏١:٤٥ م');
    });
    test('testDateFmtShortDateComponentsY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٠١١');
    });
    test('testDateFmtShortDateComponentsM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٩');
    });
    test('testDateFmtShortDateComponentsN_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'س');
    });
    test('testDateFmtShortDateComponentsD_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٩');
    });
    test('testDateFmtShortDateComponentsDM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩');
    });
    test('testDateFmtShortDateComponentsMY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٩/٢٠١١');
    });
    test('testDateFmtShortDateComponentsDMY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩/٩/٢٠١١');
    });
    test('testDateFmtShortDateComponentsWDM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'خ، ‏٢٩/٩');
    });
    test('testDateFmtShortDateComponentsWDMY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'خ، ٢٩/٩/٢٠١١');
    });
    test('testDateFmtFullDateComponentsY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٠١١');
    });
    test('testDateFmtFullDateComponentsM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'سبتمبر');
    });
    test('testDateFmtFullDateComponentsD_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٢٩');
    });
    test('testDateFmtFullDateComponentsDM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر');
    });
    test('testDateFmtFullDateComponentsMY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsDMY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtFullDateComponentsWDM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'الخميس، ‏٢٩ سبتمبر');
    });
    test('testDateFmtFullDateComponentsWDMY_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'الخميس، ٢٩ سبتمبر ٢٠١١');
    });
    test('testDateFmtShortTimeComponentsS_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٣٧');
    });
    test('testDateFmtShortTimeComponentsM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥');
    });
    test('testDateFmtShortTimeComponentsH_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '١');
    });
    test('testDateFmtShortTimeComponentsMS_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥:٣٧');
    });
    test('testDateFmtShortTimeComponentsHM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥');
    });
    test('testDateFmtShortTimeComponentsHMS_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
    });
    test('testDateFmtShortTimeComponentsHMA_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtShortTimeComponentsHMZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ +٠٣');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م +٠٣');
    });
    test('testDateFmtShortTimeComponentsHMSA_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ar-SA', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م +٠٣');
    });
    test('testDateFmtFullTimeComponentsS_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٣٧');
    });
    test('testDateFmtFullTimeComponentsM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥');
    });
    test('testDateFmtFullTimeComponentsH_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '١');
    });
    test('testDateFmtFullTimeComponentsMS_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '٤٥:٣٧');
    });
    test('testDateFmtFullTimeComponentsHM_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥');
    });
    test('testDateFmtFullTimeComponentsHMS_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
    });
    test('testDateFmtFullTimeComponentsHMA_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م');
    });
    test('testDateFmtFullTimeComponentsHMZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ +٠٣');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥ م +٠٣');
    });
    test('testDateFmtFullTimeComponentsHMSA_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ م +٠٣');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ar-SA', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ar-SA',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣');
    });
  });
}
