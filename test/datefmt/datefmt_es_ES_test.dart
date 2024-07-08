import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_es_ES_test.dart] file.');
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib.instance;
  });
  group('format()', () {
    test('SimpleShort_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'short');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/11');
      });
    });
    test('SimpleMedium_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'medium');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 sept 2011');
      });
    });
    test('SimpleLong_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'long');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 de septiembre de 2011');
      });
    });
    test('SimpleFull_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 de septiembre de 2011');
      });
    });
    test('SimpleTimeShort_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'short', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('SimpleTimeMedium_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'medium', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('SimpleTimeLong_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'long', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('SimpleTimeFull_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('DateTimeSimpleShort_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', length: 'short', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/11, 13:45');
      });
    });
    test('DateTimeSimpleMedium_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', length: 'medium', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 sept 2011, 13:45');
      });
    });
    test('DateTimeSimpleLong_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', length: 'long', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 de septiembre de 2011, 13:45');
      });
    });
    test('DateTimeSimpleFull_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', length: 'full', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 de septiembre de 2011, 13:45');
      });
    });
    test('TypeDate_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'date');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/11');
      });
    });
    test('TypeTime_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('TypeDateTime_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/11, 13:45');
      });
    });
    test('ShortDateComponentsY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'y');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '11');
      });
    });
    test('ShortDateComponentsM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9');
      });
    });
    test('ShortDateComponentsN_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'n');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 's');
      });
    });
    test('ShortDateComponentsD_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'd');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29');
      });
    });
    test('ShortDateComponentsDM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'dm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9');
      });
    });
    test('ShortDateComponentsMY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'my');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/11');
      });
    });
    test('ShortDateComponentsDMY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'dmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/11');
      });
    });
    test('ShortDateComponentsWDM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'wdm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'J, 29/9');
      });
    });
    test('ShortDateComponentsWDMY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', date: 'wdmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'J, 29/9/11');
      });
    });
    test('FullDateComponentsY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'y');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '2011');
      });
    });
    test('FullDateComponentsM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'septiembre');
      });
    });
    test('FullDateComponentsD_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'd');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29');
      });
    });
    test('FullDateComponentsDM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'dm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 de septiembre');
      });
    });
    test('FullDateComponentsMY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'my');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'septiembre de 2011');
      });
    });
    test('FullDateComponentsDMY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'dmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 de septiembre de 2011');
      });
    });
    test('FullDateComponentsWDM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'wdm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'jueves, 29 de septiembre');
      });
    });
    test('FullDateComponentsWDMY_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', length: 'full', date: 'wdmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'jueves, 29 de septiembre de 2011');
      });
    });
    test('ShortTimeComponentsS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 's');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '37');
      });
    });
    test('ShortTimeComponentsM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '45');
      });
    });
    test('ShortTimeComponentsH_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'h');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13');
      });
    });
    test('ShortTimeComponentsMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'ms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '45:37');
      });
    });
    test('ShortTimeComponentsHM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'hm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('ShortTimeComponentsHMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'hms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
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
    test('ShortTimeComponentsHMA_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'hma');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('ShortTimeComponentsHMZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            time: 'hmz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45 CEST');
      });
    });
    test('ShortTimeComponentsHMAZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            time: 'hmaz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45 CEST');
      });
    });
    test('ShortTimeComponentsHMSA_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES', type: 'time', time: 'hmsa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'es-ES',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
        );
        expect(fmt.format(dateOptions), '13:45:37');
      });
    });
    test('ShortTimeComponentsHMSZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            time: 'hmsz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45:37 CEST');
      });
    });
    test('ShortTimeComponentsHMSAZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            time: 'hmsaz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45:37 CEST');
      });
    });
    test('FullTimeComponentsS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 's');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '37');
      });
    });
    test('FullTimeComponentsM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '45');
      });
    });
    test('FullTimeComponentsH_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'h');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13');
      });
    });
    test('FullTimeComponentsMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'ms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '45:37');
      });
    });
    test('FullTimeComponentsHM_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'hm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('FullTimeComponentsHMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'hms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
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
    test('FullTimeComponentsHMA_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'hma');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45');
      });
    });
    test('FullTimeComponentsHMZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            length: 'full',
            time: 'hmz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45 CEST');
      });
    });
    test('FullTimeComponentsHMAZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            length: 'full',
            time: 'hmaz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45 CEST');
      });
    });
    test('FullTimeComponentsHMSA_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES', type: 'time', length: 'full', time: 'hmsa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
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
    test('FullTimeComponentsHMSZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            length: 'full',
            time: 'hmsz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45:37 CEST');
      });
    });
    test('FullTimeComponentsHMSAZ_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            length: 'full',
            time: 'hmsaz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '13:45:37 CEST');
      });
    });
    test('WithTimeZoneAndNoDST_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
            type: 'time',
            length: 'full',
            time: 'hmsz',
            timezone: 'Europe/Madrid');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'es-ES',
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
  });
}
