import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_en_HK_test.dart] file.');
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib.instance;
  });
  group('format()', () {
    test('testDateFmtHKSimpleShort', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'short');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/2011');
      });
    });
    test('testDateFmtHKSimpleMedium', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'medium');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 Sept 2011');
      });
    });
    test('testDateFmtHKSimpleLong', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'long');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 September 2011');
      });
    });
    test('testDateFmtHKSimpleFull', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 September 2011');
      });
    });
    test('testDateFmtHKSimpleTimeShort', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'short', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKSimpleTimeMedium', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'medium', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKSimpleTimeLong', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'long', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKSimpleTimeFull', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKDateTimeSimpleShort', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', length: 'short', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/2011, 1:45 pm');
      });
    });
    test('testDateFmtHKDateTimeSimpleMedium', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', length: 'medium', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 Sept 2011, 1:45 pm');
      });
    });
    test('testDateFmtHKDateTimeSimpleLong', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', length: 'long', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 September 2011 at 1:45 pm');
      });
    });
    test('testDateFmtHKDateTimeSimpleFull', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', length: 'full', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 September 2011 at 1:45 pm');
      });
    });
    test('testDateFmtHKTypeDate', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'date');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/2011');
      });
    });
    test('testDateFmtHKTypeTime', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKTypeDateTime', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/2011, 1:45 pm');
      });
    });
    test('testDateFmtHKShortDateComponentsY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'y');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortDateComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortDateComponentsN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'n');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'S');
      });
    });
    test('testDateFmtHKShortDateComponentsD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'd');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortDateComponentsDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'dm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortDateComponentsMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'my');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/2011');
      });
    });
    test('testDateFmtHKShortDateComponentsDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'dmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29/9/2011');
      });
    });
    test('testDateFmtHKShortDateComponentsWDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'wdm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'T, 29/9');
      });
    });
    test('testDateFmtHKShortDateComponentsWDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', date: 'wdmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'T, 29/9/2011');
      });
    });
    test('testDateFmtHKFullDateComponentsY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'y');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKFullDateComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September');
      });
    });
    test('testDateFmtHKFullDateComponentsD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'd');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKFullDateComponentsDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'dm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 September');
      });
    });
    test('testDateFmtHKFullDateComponentsMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'my');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 2011');
      });
    });
    test('testDateFmtHKFullDateComponentsDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'dmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '29 September 2011');
      });
    });
    test('testDateFmtHKFullDateComponentsWDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'wdm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'Thursday, 29 September');
      });
    });
    test('testDateFmtHKFullDateComponentsWDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', length: 'full', date: 'wdmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'Thursday, 29 September 2011');
      });
    });
    test('testDateFmtHKShortTimeComponentsS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 's');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortTimeComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortTimeComponentsH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'h');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1');
      });
    });
    test('testDateFmtHKShortTimeComponentsMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'ms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKShortTimeComponentsHM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'hm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'hms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'hma');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            time: 'hmz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 HKST');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            time: 'hmaz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm HKST');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMSA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK', type: 'time', time: 'hmsa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 pm');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMSZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            time: 'hmsz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 HKST');
      });
    });
    test('testDateFmtHKShortTimeComponentsHMSAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            time: 'hmsaz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 pm HKST');
      });
    });
    test('testDateFmtHKFullTimeComponentsS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 's');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKFullTimeComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKFullTimeComponentsH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'h');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1');
      });
    });
    test('testDateFmtHKFullTimeComponentsMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'ms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
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
    test('testDateFmtHKFullTimeComponentsHM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'hm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'hms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'hma');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            length: 'full',
            time: 'hmz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 HKST');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            length: 'full',
            time: 'hmaz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 pm HKST');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMSA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK', type: 'time', length: 'full', time: 'hmsa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 pm');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMSZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            length: 'full',
            time: 'hmsz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 HKST');
      });
    });
    test('testDateFmtHKFullTimeComponentsHMSAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            length: 'full',
            time: 'hmsaz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 pm HKST');
      });
    });
    test('testDateFmtHKWithTimeZoneAndNoDST', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
            type: 'time',
            length: 'full',
            time: 'hmsz',
            timezone: 'Asia/Hong_Kong');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            locale: 'en-HK',
            year: 2011,
            month: 12,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 HKST');
      });
    });
  });
}
