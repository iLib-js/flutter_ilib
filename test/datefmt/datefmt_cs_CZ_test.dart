import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_cs_CZ_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtSimpleMedium_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011');
    });
    test('testDateFmtSimpleLong_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. září 2011');
    });
    test('testDateFmtSimpleFull_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. září 2011');
    });
    test('testDateFmtSimpleTimeShort_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. 9. 2011 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. září 2011 v 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. září 2011 v 13:45');
    });
    test('testDateFmtShortDateComponentsY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'zá');
    });
    test('testDateFmtShortDateComponentsN_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'z');
    });
    test('testDateFmtShortDateComponentsD_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09');
    });
    test('testDateFmtShortDateComponentsMY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09.11');
    });
    test('testDateFmtShortDateComponentsDMY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29.09.11');
    });
    test('testDateFmtShortDateComponentsWDM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Č 29.09');
    });
    test('testDateFmtShortDateComponentsWDMY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Č 29.09.11');
    });
    test('testDateFmtFullDateComponentsY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'září');
    });
    test('testDateFmtFullDateComponentsD_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. září');
    });
    test('testDateFmtFullDateComponentsMY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'září 2011');
    });
    test('testDateFmtFullDateComponentsDMY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29. září 2011');
    });
    test('testDateFmtFullDateComponentsWDM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'čtvrtek 29. září');
    });
    test('testDateFmtFullDateComponentsWDMY_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'čtvrtek 29. září 2011');
    });
    test('testDateFmtShortTimeComponentsS_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsHM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSA_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'cs-CZ', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsS_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsHM_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSA_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 CEST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'cs-CZ', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'cs-CZ',
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
}
