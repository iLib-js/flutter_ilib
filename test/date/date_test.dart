import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [date_test.dart] file.');
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('es-CL');
  });

  group('ILibDateOptions (DateFactory)', () {
    test('testDateConstructor', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
    });
    test('testDateConstructorFull', () {
      final ILibDateOptions gd = ILibDateOptions(
        year: 2011,
        month: 9,
        day: 23,
        hour: 16,
        minute: 7,
        second: 12,
        millisecond: 123,
      );
      expect(gd, isNotNull);
      expect(gd.year, 2011);
      expect(gd.month, 9);
      expect(gd.day, 23);
      expect(gd.hour, 16);
      expect(gd.minute, 7);
      expect(gd.second, 12);
      expect(gd.millisecond, 123);
    });
    test('testDateSetYears', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.year = 123;
      expect(gd.year, 123);
    });
    test('testDateSetMonths', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.month = 7;
      expect(gd.month, 7);
    });
    test('testDateSetDays', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.day = 12;
      expect(gd.day, 12);
    });
    test('testDateSetHours', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.hour = 12;
      expect(gd.hour, 12);
    });
    test('testDateSetMinutes', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.minute = 13;
      expect(gd.minute, 13);
    });
    test('testDateSetSeconds', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.second = 23;
      expect(gd.second, 23);
    });
    test('testDateSetMilliseconds', () {
      final ILibDateOptions gd = ILibDateOptions();
      expect(gd, isNotNull);
      gd.millisecond = 123;
      expect(gd.millisecond, 123);
    });
    test('testDateFactoryRightType', () {
      final ILibDateOptions date = ILibDateOptions(type: 'gregorian');
      expect(date, isNotNull);
      expect(date.getCalendar(), 'gregorian');
    });
    test('testDateFactoryDefaultGregorian', () {
      final ILibDateOptions date = ILibDateOptions();
      expect(date, isNotNull);
      expect(date.getCalendar(), 'gregorian');
    });
    test('testDateFactoryNonGregorian', () {
      final ILibDateOptions date = ILibDateOptions(type: 'hebrew');
      expect(date, isNotNull);
      expect(date.getCalendar(), 'hebrew');
    });
    test('testDateFactoryNonGregorianWithCalendar', () {
      final ILibDateOptions date = ILibDateOptions(calendar: 'hebrew');
      expect(date, isNotNull);
      expect(date.getCalendar(), 'hebrew');
    });
  });

  group('DST boundary (getTimeExtended)', () {
    test('testDstStartBoundary_Azores', () {
      final ILibDateOptions boundaryiLib = ILibDateOptions(
        year: 2019,
        month: 3,
        day: 31,
        hour: 0,
        minute: 0,
        second: 0,
        timezone: 'Atlantic/Azores',
      );
      expect(boundaryiLib.getTimeExtended(), 1553994000000);
    });
    test('testDstEndBoundary_Azores', () {
      final ILibDateOptions boundaryiLib = ILibDateOptions(
        year: 2019,
        month: 10,
        day: 27,
        hour: 1,
        minute: 0,
        second: 0,
        timezone: 'Atlantic/Azores',
      );
      expect(boundaryiLib.getTimeExtended(), 1572141600000);
    });
    test('testDstStartBoundary_Santiago', () {
      final ILibDateOptions boundaryiLib = ILibDateOptions(
        year: 2023,
        month: 9,
        day: 3,
        hour: 0,
        minute: 0,
        second: 0,
        timezone: 'America/Santiago',
      );
      expect(boundaryiLib.getTimeExtended(), 1693713600000);
      final ILibDateOptions ildMyBday =
          ILibDateOptions(unixtime: 1693713600000);
      final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(
        length: 'short',
        type: 'datetime',
        locale: 'es-CL',
        timezone: 'America/Santiago',
      ));
      expect(fmt.format(ildMyBday), '03-09-23, 1:00 a. m.');
    });
    test('testDstEndBoundary_Santiago', () {
      final ILibDateOptions boundaryiLib = ILibDateOptions(
        year: 2020,
        month: 4,
        day: 5,
        hour: 0,
        minute: 0,
        second: 0,
        timezone: 'America/Santiago',
      );
      expect(boundaryiLib.getTimeExtended(), 1586059200000);
      final ILibDateOptions ildMyBday =
          ILibDateOptions(unixtime: 1586059200000);
      final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(
        length: 'short',
        type: 'datetime',
        locale: 'es-CL',
        timezone: 'America/Santiago',
      ));
      expect(fmt.format(ildMyBday), '05-04-20, 12:00 a. m.');
    });
    test('testDstEndBoundary_Santiago2', () {
      final ILibDateOptions boundaryiLib = ILibDateOptions(
        year: 2020,
        month: 4,
        day: 4,
        hour: 23,
        minute: 0,
        second: 0,
        timezone: 'America/Santiago',
      );
      expect(1586059200000 - boundaryiLib.getTimeExtended(), 7200000);
      expect(boundaryiLib.getTimeExtended(), 1586052000000);
      final ILibDateOptions ildMyBday =
          ILibDateOptions(unixtime: 1586052000000);
      final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(
        length: 'short',
        type: 'datetime',
        locale: 'es-CL',
        timezone: 'America/Santiago',
      ));
      expect(fmt.format(ildMyBday), '04-04-20, 11:00 p. m.');
    });
  });
}
