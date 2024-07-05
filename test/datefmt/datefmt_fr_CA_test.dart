import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_fr_CA_test.dart] file.');
  group('format()', () {
    test('testDateFmtfrCASimpleShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtfrCASimpleMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sept. 2011');
    });
    test('testDateFmtfrCASimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembre 2011');
    });
    test('testDateFmtfrCASimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembre 2011');
    });
    test('testDateFmtfrCASimpleTimeShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCASimpleTimeMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCASimpleTimeLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCASimpleTimeFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCADateTimeSimpleShort', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29 13 h 45');
    });
    test('testDateFmtfrCADateTimeSimpleMedium', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 sept. 2011, 13 h 45');
    });
    test('testDateFmtfrCADateTimeSimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembre 2011 à 13 h 45');
    });
    test('testDateFmtfrCADateTimeSimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembre 2011 à 13 h 45');
    });
    test('testDateFmtfrCATypeDate', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtfrCATypeTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCATypeDateTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29 13 h 45');
    });
    test('testDateFmtfrCAShortDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtfrCAShortDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtfrCAShortDateComponentsN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 's');
    });
    test('testDateFmtfrCAShortDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtfrCAShortDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09-29');
    });
    test('testDateFmtfrCAShortDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09');
    });
    test('testDateFmtfrCAShortDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011-09-29');
    });
    test('testDateFmtfrCAShortDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J 09-29');
    });
    test('testDateFmtfrCAShortDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'J 2011-09-29');
    });
    test('testDateFmtfrCAFullDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtfrCAFullDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembre');
    });
    test('testDateFmtfrCAFullDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtfrCAFullDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembre');
    });
    test('testDateFmtfrCAFullDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'septembre 2011');
    });
    test('testDateFmtfrCAFullDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 septembre 2011');
    });
    test('testDateFmtfrCAFullDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'jeudi 29 septembre');
    });
    test('testDateFmtfrCAFullDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'jeudi 29 septembre 2011');
    });
    test('testDateFmtfrCAShortTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtfrCAShortTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtfrCAShortTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtfrCAShortTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45 min 37');
    });
    test('testDateFmtfrCAShortTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCAShortTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45 min 37 s');
    });
    test('testDateFmtfrCAShortTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCAShortTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          time: 'hmz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 EDT');
    });
    test('testDateFmtfrCAShortTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          time: 'hmaz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 EDT');
    });
    test('testDateFmtfrCAShortTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fr-CA', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45 min 37 s');
    });
    test('testDateFmtfrCAShortTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          time: 'hmsz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 min 37 s EDT');
    });
    test('testDateFmtfrCAShortTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          time: 'hmsaz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 min 37 s EDT');
    });
    test('testDateFmtfrCAFullTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtfrCAFullTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtfrCAFullTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtfrCAFullTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45 min 37');
    });
    test('testDateFmtfrCAFullTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCAFullTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45 min 37 s');
    });
    test('testDateFmtfrCAFullTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45');
    });
    test('testDateFmtfrCAFullTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 EDT');
    });
    test('testDateFmtfrCAFullTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 EDT');
    });
    test('testDateFmtfrCAFullTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13 h 45 min 37 s');
    });
    test('testDateFmtfrCAFullTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 min 37 s EDT');
    });
    test('testDateFmtfrCAFullTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 min 37 s EDT');
    });
    test('testDateFmtfrCAWithTimeZoneAndNoDST', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'America/Montreal');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fr-CA',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          timezone: 'America/Montreal');
      expect(fmt.format(dateOptions), '13 h 45 min 37 s EST');
    });
  });
}
