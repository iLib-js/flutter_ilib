import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_km_KH_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('km-KH');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtSimpleMedium_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា 2011');
    });
    test('testDateFmtSimpleLong_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា 2011');
    });
    test('testDateFmtSimpleFull_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា 2011');
    });
    test('testDateFmtSimpleTimeShort_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtSimpleTimeMedium_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtSimpleTimeLong_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtSimpleTimeFull_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtDateTimeSimpleShort_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11, 1:45 PM');
    });
    test('testDateFmtDateTimeSimpleMedium_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា 2011, 1:45 PM');
    });
    test('testDateFmtDateTimeSimpleLong_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(fmt.format(dateOptions), '29 កញ្ញា 2011 នៅ​ម៉ោង 1:45 PM');
    });
    test('testDateFmtDateTimeSimpleFull_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា 2011 នៅ​ម៉ោង 1:45 PM');
    });

    test('testDateFmtTypeDate_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtTypeTime_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtTypeDateTime_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11, 1:45 PM');
    });
    test('testDateFmtShortDateComponentsY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ក');
    });
    test('testDateFmtShortDateComponentsD_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtShortDateComponentsMY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/11');
    });
    test('testDateFmtShortDateComponentsDMY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtShortDateComponentsDMW_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ព 29/9');
    });
    test('testDateFmtShortDateComponentsDMWY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ព 29/9/11');
    });
    test('testDateFmtFullDateComponentsY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'កញ្ញា');
    });
    test('testDateFmtFullDateComponentsD_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា');
    });
    test('testDateFmtFullDateComponentsMY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'កញ្ញា 2011');
    });
    test('testDateFmtFullDateComponentsDMY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 កញ្ញា 2011');
    });
    test('testDateFmtFullDateComponentsDMW_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ព្រហស្បតិ៍ 29 កញ្ញា');
    });
    test('testDateFmtFullDateComponentsDMWY_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', length: 'full', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ព្រហស្បតិ៍ 29 កញ្ញា 2011');
    });
    test('testDateFmtShortTimeComponentsS_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsMS_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtShortTimeComponentsHMZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 +07');
    });
    test('testDateFmtShortTimeComponentsHMAZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM +07');
    });
    test('testDateFmtShortTimeComponentsHMSA_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PM');
    });
    test('testDateFmtShortTimeComponentsHMSZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 +07');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'km-KH', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PM +07');
    });
    test('testDateFmtFullTimeComponentsS_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsMS_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM');
    });
    test('testDateFmtFullTimeComponentsHMZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 +07');
    });
    test('testDateFmtFullTimeComponentsHMAZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 PM +07');
    });
    test('testDateFmtFullTimeComponentsHMSA_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PM');
    });
    test('testDateFmtFullTimeComponentsHMSZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 +07');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PM +07');
    });
    test('testDateFmtWithTimeZoneAndNoDST_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'km-KH', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'km-KH',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 +07');
    });
  });
}
