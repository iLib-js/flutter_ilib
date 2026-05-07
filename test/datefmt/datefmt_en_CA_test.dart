import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_en_CA_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('en-CA');
  });
  group('format()', () {
    test('testDateFmtenCASimpleShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtenCASimpleMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Sep 29, 2011');
    });
    test('testDateFmtenCASimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 29, 2011');
    });
    test('testDateFmtenCASimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 29, 2011');
    });
    test('testDateFmtenCASimpleTimeShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCASimpleTimeMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCASimpleTimeLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCASimpleTimeFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCADateTimeSimpleShort', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29, 1:45 p.m.');
    });
    test('testDateFmtenCADateTimeSimpleMedium', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Sep 29, 2011, 1:45 p.m.');
    });
    test('testDateFmtenCADateTimeSimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 29, 2011 at 1:45 p.m.');
    });
    test('testDateFmtenCADateTimeSimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 29, 2011 at 1:45 p.m.');
    });
    test('testDateFmtenCATypeDate', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtenCATypeTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCATypeDateTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29, 1:45 p.m.');
    });
    test('testDateFmtenCAShortDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtenCAShortDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtenCAShortDateComponentsN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtenCAShortDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtenCAShortDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09-29');
    });
    test('testDateFmtenCAShortDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09');
    });
    test('testDateFmtenCAShortDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtenCAShortDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T, 09-29');
    });
    test('testDateFmtenCAShortDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T, 2011-09-29');
    });
    test('testDateFmtenCAFullDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtenCAFullDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September');
    });
    test('testDateFmtenCAFullDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtenCAFullDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 29');
    });
    test('testDateFmtenCAFullDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September, 2011');
    });
    test('testDateFmtenCAFullDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 29, 2011');
    });
    test('testDateFmtenCAFullDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Thursday, September 29');
    });
    test('testDateFmtenCAFullDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Thursday, September 29, 2011');
    });
    test('testDateFmtenCAShortTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtenCAShortTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtenCAShortTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtenCAShortTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtenCAShortTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtenCAShortTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtenCAShortTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCAShortTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          time: 'hmz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Toronto');
      expect(fmt.format(dateOptions), '1:45 EDT');
    });
    test('testDateFmtenCAShortTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          time: 'hmaz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Toronto');
      expect(fmt.format(dateOptions), '1:45 p.m. EDT');
    });
    test('testDateFmtenCAShortTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Toronto');
      expect(fmt.format(dateOptions), '1:45:37 p.m.');
    });
    test('testDateFmtenCAShortTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          time: 'hmsz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Toronto');
      expect(fmt.format(dateOptions), '1:45:37 EDT');
    });
    test('testDateFmtenCAShortTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          time: 'hmsaz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Toronto');
      expect(fmt.format(dateOptions), '1:45:37 p.m. EDT');
    });
    test('testDateFmtenCAFullTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Toronto');
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtenCAFullTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtenCAFullTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtenCAFullTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtenCAFullTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtenCAFullTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtenCAFullTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m.');
    });
    test('testDateFmtenCAFullTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 EDT');
    });
    test('testDateFmtenCAFullTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 p.m. EDT');
    });
    test('testDateFmtenCAFullTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m.');
    });
    test('testDateFmtenCAFullTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EDT');
    });
    test('testDateFmtenCAFullTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 p.m. EDT');
    });
    test('testDateFmtenCAWithTimeZoneAndNoDST', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'America/Toronto');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 EST');
    });

    test('testDateFmtenCATemplateClock12SwitchHH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtenCATemplateClock12Switchkk', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtenCATemplateClock24SwitchKK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtenCATemplateClock24Switchhh', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtenCATemplateNoClockDoNotFollowLocaleDefault12KK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtenCATemplateNoClockDoNotFollowLocaleDefault12hh', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtenCATemplateNoClockDoNotFollowLocaleDefault24HH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtenCATemplateNoClockDoNotFollowLocaleDefault24kk', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-CA', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-CA',
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
}
