import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_hr_HR_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('hr-HR');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 09. 2011.');
    });
    test('testDateFmtSimpleMedium_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. ruj 2011.');
    });
    test('testDateFmtSimpleLong_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. rujna 2011.');
    });
    test('testDateFmtSimpleFull_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. rujna 2011.');
    });
    test('testDateFmtSimpgodinaimeShort_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpgodinaimeMedium_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpgodinaimeLong_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpgodinaimeFull_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 09. 2011. 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. ruj 2011. 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. rujna 2011. u 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. rujna 2011. u 13:45');
    });

    test('testDateFmtShortDateComponentsY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ru');
    });
    test('testDateFmtShortDateComponentsN_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'r');
    });
    test('testDateFmtShortDateComponentsD_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 09');
    });
    test('testDateFmtShortDateComponentsMY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09. 2011.');
    });
    test('testDateFmtShortDateComponentsDMY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 09. 2011.');
    });
    test('testDateFmtShortDateComponentsWDM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Č, 29. 09');
    });
    test('testDateFmtShortDateComponentsWDMY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Č, 29. 09. 2011.');
    });
    test('testDateFmtFullDateComponentsY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'rujan');
    });
    test('testDateFmtFullDateComponentsD_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. rujna');
    });
    test('testDateFmtFullDateComponentsMY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'rujan 2011.');
    });
    test('testDateFmtFullDateComponentsDMY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. rujna 2011.');
    });
    test('testDateFmtFullDateComponentsWDM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'četvrtak, 29. rujna');
    });
    test('testDateFmtFullDateComponentsWDMY_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'četvrtak, 29. rujna 2011.');
    });
    test('testDateFmtShortTimeComponentsS_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsHM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'hr-HR', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsS_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsHM_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'hr-HR', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'hr-HR',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CET');
    });
  });
}
