import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_el_GR_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('el-GR');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtSimpleMedium_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπ 2011');
    });
    test('testDateFmtSimpleLong_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπτεμβρίου 2011');
    });
    test('testDateFmtSimpleFull_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπτεμβρίου 2011');
    });
    test('testDateFmtSimpleTimeShort_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 μ.μ.');
    });
    test('testDateFmtSimpleTimeMedium_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 μ.μ.');
    });
    test('testDateFmtSimpleTimeLong_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 μ.μ.');
    });
    test('testDateFmtSimpleTimeFull_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 μ.μ.');
    });
    test('testDateFmtDateTimeSimpleShort_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11, 1:45 μ.μ.');
    });
    test('testDateFmtDateTimeSimpleMedium_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπ 2011, 1:45 μ.μ.');
    });
    test('testDateFmtDateTimeSimpleLong_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπτεμβρίου 2011 στις 1:45 μ.μ.');
    });
    test('testDateFmtDateTimeSimpleFull_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπτεμβρίου 2011 στις 1:45 μ.μ.');
    });
    test('testDateFmtShortDateComponentsY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Σ');
    });
    test('testDateFmtShortDateComponentsD_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtShortDateComponentsMY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/11');
    });
    test('testDateFmtShortDateComponentsDMY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtShortDateComponentsWDM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Π 29/9');
    });
    test('testDateFmtShortDateComponentsWDMY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Π 29/9/11');
    });
    test('testDateFmtFullDateComponentsY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Σεπτεμβρίου');
    });
    test('testDateFmtFullDateComponentsD_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπτεμβρίου');
    });
    test('testDateFmtFullDateComponentsMY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Σεπτέμβριος 2011');
    });
    test('testDateFmtFullDateComponentsDMY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Σεπτεμβρίου 2011');
    });
    test('testDateFmtFullDateComponentsWDM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Πέμπτη 29 Σεπτεμβρίου');
    });
    test('testDateFmtFullDateComponentsWDMY_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Πέμπτη 29 Σεπτεμβρίου 2011');
    });
    test('testDateFmtShortTimeComponentsS_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsHM_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 μ.μ.');
    });
    test('testDateFmtShortTimeComponentsHMZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 μ.μ. EEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 μ.μ.');
    });
    test('testDateFmtShortTimeComponentsHMSZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'el-GR', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 μ.μ. EEST');
    });
    test('testDateFmtFullTimeComponentsS_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsHM_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 μ.μ.');
    });
    test('testDateFmtFullTimeComponentsHMZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 μ.μ.');
    });
    test('testDateFmtFullTimeComponentsHMSZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 μ.μ. EEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'el-GR', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'el-GR',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EET');
    });
  });
}
