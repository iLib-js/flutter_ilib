import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_he_IL_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29.9.2011');
    });
    test('testDateFmtSimpleMedium_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספט׳ 2011');
    });
    test('testDateFmtSimpleLong_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספטמבר 2011');
    });
    test('testDateFmtSimpleFull_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספטמבר 2011');
    });
    test('testDateFmtSimpleTimeShort_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtSimpleTimeMedium_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtSimpleTimeLong_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtSimpleTimeFull_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtDateTimeSimpleShort_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29.9.2011, ‏13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספט׳ 2011, ‏13:45');
    });
    test('testDateFmtDateTimeSimpleLong_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספטמבר 2011 בשעה ‏13:45');
    });
    test('testDateFmtDateTimeSimpleFull_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספטמבר 2011 בשעה ‏13:45');
    });
    test('testDateFmtTypeDate_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29.9.2011');
    });
    test('testDateFmtTypeTime_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtTypeDateTime_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29.9.2011, ‏13:45');
    });
    test('testDateFmtShortDateComponentsY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtShortDateComponentsM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ס');
    });
    test('testDateFmtShortDateComponentsD_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29.9');
    });
    test('testDateFmtShortDateComponentsMY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏9.2011');
    });
    test('testDateFmtShortDateComponentsDMY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29.9.2011');
    });
    test('testDateFmtShortDateComponentsWDM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ה׳, ‏29.9');
    });
    test('testDateFmtShortDateComponentsWDMY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ה׳, 29.9.2011');
    });
    test('testDateFmtFullDateComponentsY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ספטמבר');
    });
    test('testDateFmtFullDateComponentsD_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספטמבר');
    });
    test('testDateFmtFullDateComponentsMY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ספטמבר 2011');
    });
    test('testDateFmtFullDateComponentsDMY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏29 בספטמבר 2011');
    });
    test('testDateFmtFullDateComponentsWDM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'יום חמישי, ‏29 בספטמבר');
    });
    test('testDateFmtFullDateComponentsWDMY_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'יום חמישי, 29 בספטמבר 2011');
    });
    test('testDateFmtShortTimeComponentsS_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45 IDT');
    });
    test('testDateFmtShortTimeComponentsHMAZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45 IDT');
    });
    test('testDateFmtShortTimeComponentsHMSA_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37 IDT');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'he-IL', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37 IDT');
    });
    test('testDateFmtFullTimeComponentsS_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45 IDT');
    });
    test('testDateFmtFullTimeComponentsHMAZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45 IDT');
    });
    test('testDateFmtFullTimeComponentsHMSA_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37 IDT');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37 IDT');
    });
    test('testDateFmtWithTimeZoneAndNoDST_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'he-IL', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'he-IL',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏13:45:37 IST');
    });
  });
}
