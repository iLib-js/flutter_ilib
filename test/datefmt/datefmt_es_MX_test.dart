import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_es_MX_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('es-MX');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtSimpleMedium_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sep 2011');
    });
    test('testDateFmtSimpleLong_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011');
    });
    test('testDateFmtSimpleFull_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011');
    });
    test('testDateFmtSimpleTimeShort_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtSimpleTimeMedium_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtSimpleTimeLong_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtSimpleTimeFull_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtDateTimeSimpleShort_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 1:45 p.m.');
    });
    test('testDateFmtDateTimeSimpleMedium_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 9,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9 sep 2011, 1:45 p.m.');
    });
    test('testDateFmtDateTimeSimpleLong_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011, 1:45 p.m.');
    });
    test('testDateFmtDateTimeSimpleFull_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011, 1:45 p.m.');
    });
    test('testDateFmtTypeDate_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtTypeTime_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtTypeDateTime_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 1:45 p.m.');
    });
    test('testDateFmtShortDateComponentsY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtShortDateComponentsD_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtShortDateComponentsMY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/11');
    });
    test('testDateFmtShortDateComponentsDMY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtShortDateComponentsWDM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J, 29/09');
    });
    test('testDateFmtShortDateComponentsWDMY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J, 29/09/11');
    });
    test('testDateFmtFullDateComponentsY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septiembre');
    });
    test('testDateFmtFullDateComponentsD_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre');
    });
    test('testDateFmtFullDateComponentsMY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septiembre de 2011');
    });
    test('testDateFmtFullDateComponentsDMY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 de septiembre de 2011');
    });
    test('testDateFmtFullDateComponentsWDM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'jueves, 29 de septiembre');
    });
    test('testDateFmtFullDateComponentsWDMY_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'jueves, 29 de septiembre de 2011');
    });
    test('testDateFmtShortTimeComponentsS_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsMS_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtShortTimeComponentsHMZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 CST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m. CST');
    });
    test('testDateFmtShortTimeComponentsHMSA_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m.');
    });
    test('testDateFmtShortTimeComponentsHMSZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 CST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'es-MX', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m. CST');
    });
    test('testDateFmtFullTimeComponentsS_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsMS_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtFullTimeComponentsHMZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 CST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m. CST');
    });
    test('testDateFmtFullTimeComponentsHMSA_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m.');
    });
    test('testDateFmtFullTimeComponentsHMSZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 CST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m. CST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'es-MX', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-MX',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 CST');
    });
  });
}
