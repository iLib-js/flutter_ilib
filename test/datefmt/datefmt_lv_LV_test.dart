import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_lv_LV_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('lv-LV');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtSimpleMedium_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. sept.');
    });
    test('testDateFmtSimpleLong_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. septembris');
    });
    test('testDateFmtSimpleFull_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. septembris');
    });
    test('testDateFmtSimpleTimeShort_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. sept. 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. septembris 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. septembris 13:45');
    });

    test('testDateFmtTypeDate_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtTypeTime_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 13:45');
    });
    test('testDateFmtShortDateComponentsY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.11');
    });
    test('testDateFmtShortDateComponentsDMY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtShortDateComponentsWDM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'C, 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'C, 29.09.11');
    });
    test('testDateFmtFullDateComponentsY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembris');
    });
    test('testDateFmtFullDateComponentsD_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. septembris');
    });
    test('testDateFmtFullDateComponentsMY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada septembris');
    });
    test('testDateFmtFullDateComponentsDMY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. gada 29. septembris');
    });
    test('testDateFmtFullDateComponentsWDM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ceturtdiena, 29. septembris');
    });
    test('testDateFmtFullDateComponentsWDMY_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ceturtdiena, 2011. gada 29. septembris');
    });
    test('testDateFmtShortTimeComponentsS_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_lv_LV', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'lv-LV', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsS_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'lv-LV', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'lv-LV',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
  });
}
