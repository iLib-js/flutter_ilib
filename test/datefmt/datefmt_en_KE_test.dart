import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_en_KE_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('en-KE');
  });
  group('format()', () {
    test('testDateFmtKESimpleShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtKESimpleMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sept 2011');
    });
    test('testDateFmtKESimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtKESimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtKESimpleTimeShort', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKESimpleTimeMedium', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKESimpleTimeLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKESimpleTimeFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKEDateTimeSimpleShort', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtKEDateTimeSimpleMedium', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sept 2011, 13:45');
    });
    test('testDateFmtKEDateTimeSimpleLong', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 at 13:45');
    });
    test('testDateFmtKEDateTimeSimpleFull', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 at 13:45');
    });
    test('testDateFmtKETypeDate', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtKETypeTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKETypeDateTime', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011, 13:45');
    });
    test('testDateFmtKEShortDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtKEShortDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtKEShortDateComponentsN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtKEShortDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtKEShortDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtKEShortDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/2011');
    });
    test('testDateFmtKEShortDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/2011');
    });
    test('testDateFmtKEShortDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T, 29/09');
    });
    test('testDateFmtKEShortDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'T, 29/09/2011');
    });
    test('testDateFmtKEFullDateComponentsY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtKEFullDateComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September');
    });
    test('testDateFmtKEFullDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtKEFullDateComponentsDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September');
    });
    test('testDateFmtKEFullDateComponentsMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 2011');
    });
    test('testDateFmtKEFullDateComponentsDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtKEFullDateComponentsWDM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Thursday, 29 September');
    });
    test('testDateFmtKEFullDateComponentsWDMY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Thursday, 29 September 2011');
    });
    test('testDateFmtKEShortTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtKEShortTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtKEShortTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtKEShortTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtKEShortTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKEShortTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtKEShortTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKEShortTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          time: 'hmz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtKEShortTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          time: 'hmaz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtKEShortTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'en-KE', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtKEShortTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          time: 'hmsz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtKEShortTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtKEFullTimeComponentsS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtKEFullTimeComponentsM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtKEFullTimeComponentsH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtKEFullTimeComponentsMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtKEFullTimeComponentsHM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKEFullTimeComponentsHMS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtKEFullTimeComponentsHMA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtKEFullTimeComponentsHMZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtKEFullTimeComponentsHMAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 EAT');
    });
    test('testDateFmtKEFullTimeComponentsHMSA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtKEFullTimeComponentsHMSZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtKEFullTimeComponentsHMSAZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
    test('testDateFmtKEWithTimeZoneAndNoDST', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Africa/Nairobi');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'en-KE',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 EAT');
    });
  });
}
