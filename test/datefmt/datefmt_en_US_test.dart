import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_en_US_test.dart] file.');
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib.instance;
  });
  group('format()', () {
    test('testDateFmtUSSimpleShort', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'short');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/29/11');
      });
    });
    test('testDateFmtUSSimpleMedium', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'medium');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'Sep 29, 2011');
      });
    });
    test('testDateFmtUSSimpleLong', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'long');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 29, 2011');
      });
    });
    test('testDateFmtUSSimpleFull', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 29, 2011');
      });
    });
    test('testDateFmtUSSimpleTimeShort', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'short', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSSimpleTimeMedium', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'medium', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSSimpleTimeLong', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'long', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSSimpleTimeFull', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSDateTimeSimpleShort', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'short', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/29/11, 1:45 PM');
      });
    });
    test('testDateFmtUSDateTimeSimpleMedium', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'medium', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'Sep 29, 2011, 1:45 PM');
      });
    });
    test('testDateFmtUSDateTimeSimpleLong', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'long', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 29, 2011 at 1:45 PM');
      });
    });
    test('testDateFmtUSDateTimeSimpleFull', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 29, 2011 at 1:45 PM');
      });
    });
    test('testDateFmtUSTypeTime', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(type: 'time');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSTypeDateTime', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'datetime');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/29/11, 1:45 PM');
      });
    });
    test('testDateFmtUSShortDateComponentsY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'y');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortDateComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortDateComponentsN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'n');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortDateComponentsD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'd');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortDateComponentsDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'dm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/29');
      });
    });
    test('testDateFmtUSShortDateComponentsMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'my');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortDateComponentsDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'dmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), '9/29/11');
      });
    });
    test('testDateFmtUSShortDateComponentsWDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'wdm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'T, 9/29');
      });
    });
    test('testDateFmtUSShortDateComponentsWDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(date: 'wdmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'T, 9/29/11');
      });
    });
    test('testDateFmtUSFullDateComponentsY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'y');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullDateComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullDateComponentsD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'd');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullDateComponentsDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'dm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 29');
      });
    });
    test('testDateFmtUSFullDateComponentsMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'my');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September, 2011');
      });
    });
    test('testDateFmtUSFullDateComponentsDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'dmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'September 29, 2011');
      });
    });
    test('testDateFmtUSFullDateComponentsWDM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'wdm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'Thursday, September 29');
      });
    });
    test('testDateFmtUSFullDateComponentsWDMY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(length: 'full', date: 'wdmy');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 0,
            millisecond: 0);
        expect(fmt.format(dateOptions), 'Thursday, September 29, 2011');
      });
    });
    test('testDateFmtUSShortTimeComponentsS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 's');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortTimeComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortTimeComponentsH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'h');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortTimeComponentsMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'ms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortTimeComponentsHM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'hm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortTimeComponentsHMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'hms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSShortTimeComponentsHMA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'hma');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSShortTimeComponentsHMZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time', time: 'hmz', timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45 PDT');
      });
    });
    test('testDateFmtUSShortTimeComponentsHMAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time', time: 'hmaz', timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45 PM PDT');
      });
    });
    test('testDateFmtUSShortTimeComponentsHMSA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', time: 'hmsa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 PM');
      });
    });
    test('testDateFmtUSShortTimeComponentsHMSZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time', time: 'hmsz', timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45:37 PDT');
      });
    });
    test('testDateFmtUSShortTimeComponentsHMSAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time', time: 'hmsaz', timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45:37 PM PDT');
      });
    });
    test('testDateFmtUSFullTimeComponentsS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 's');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullTimeComponentsM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullTimeComponentsH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'h');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullTimeComponentsMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'ms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullTimeComponentsHM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'hm');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullTimeComponentsHMS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'hms');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
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
    test('testDateFmtUSFullTimeComponentsHMA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'hma');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45 PM');
      });
    });
    test('testDateFmtUSFullTimeComponentsHMZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time',
            length: 'full',
            time: 'hmz',
            timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45 PDT');
      });
    });
    test('testDateFmtUSFullTimeComponentsHMAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time',
            length: 'full',
            time: 'hmaz',
            timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45 PM PDT');
      });
    });
    test('testDateFmtUSFullTimeComponentsHMSA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(type: 'time', length: 'full', time: 'hmsa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 PM');
      });
    });
    test('testDateFmtUSFullTimeComponentsHMSZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time',
            length: 'full',
            time: 'hmsz',
            timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45:37 PDT');
      });
    });
    test('testDateFmtUSFullTimeComponentsHMSAZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time',
            length: 'full',
            time: 'hmsaz',
            timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0,
            timezone: 'America/Los_Angeles');
        expect(fmt.format(dateOptions), '1:45:37 PM PDT');
      });
    });
    test('testDateFmtUSWithTimeZoneAndNoDST', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            type: 'time',
            length: 'full',
            time: 'hmsz',
            timezone: 'America/Los_Angeles');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        final ILibDateOptions dateOptions = ILibDateOptions(
            timezone: 'America/Los_Angeles',
            year: 2011,
            month: 12,
            day: 29,
            hour: 13,
            minute: 45,
            second: 37,
            millisecond: 0);
        expect(fmt.format(dateOptions), '1:45:37 PST');
      });
    });
  });
}
