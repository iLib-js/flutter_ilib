import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_id_ID_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testDateFmtSimpleShort_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtSimpleMedium_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep 2011');
    });
    test('testDateFmtSimpleLong_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleFull_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtSimpleTimeShort_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeMedium_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeLong_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtSimpleTimeFull_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtDateTimeSimpleShort_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 13.45');
    });
    test('testDateFmtDateTimeSimpleMedium_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 Sep 2011, 13.45');
    });
    test('testDateFmtDateTimeSimpleLong_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 pukul 13.45');
    });
    test('testDateFmtDateTimeSimpleFull_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011 pukul 13.45');
    });

    test('testDateFmtTypeDate_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtTypeTime_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtTypeDateTime_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11, 13.45');
    });
    test('testDateFmtShortDateComponentsY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09');
    });
    test('testDateFmtShortDateComponentsN_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'S');
    });
    test('testDateFmtShortDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09');
    });
    test('testDateFmtShortDateComponentsMY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/11');
    });
    test('testDateFmtShortDateComponentsDMY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/09/11');
    });
    test('testDateFmtShortDateComponentsWDM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'K, 29/09');
    });
    test('testDateFmtShortDateComponentsWDMY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'K, 29/09/11');
    });
    test('testDateFmtFullDateComponentsY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September');
    });
    test('testDateFmtFullDateComponentsD', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September');
    });
    test('testDateFmtFullDateComponentsMY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'September 2011');
    });
    test('testDateFmtFullDateComponentsDMY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 September 2011');
    });
    test('testDateFmtFullDateComponentsWDM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Kamis, 29 September');
    });
    test('testDateFmtFullDateComponentsWDMY_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'Kamis, 29 September 2011');
    });
    test('testDateFmtShortTimeComponentsS_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45.37');
    });
    test('testDateFmtShortTimeComponentsHM_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtShortTimeComponentsHMS_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtShortTimeComponentsHMA_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtShortTimeComponentsHMZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', time: 'hmz', timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 WIB');
    });
    test('testDateFmtShortTimeComponentsHMAZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          time: 'hmaz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 WIB');
    });
    test('testDateFmtShortTimeComponentsHMSA_id_ID', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'id-ID', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          time: 'hmsz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 WIB');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 WIB');
    });
    test('testDateFmtFullTimeComponentsS_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45.37');
    });
    test('testDateFmtFullTimeComponentsHM_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtFullTimeComponentsHMS_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtFullTimeComponentsHMA_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45');
    });
    test('testDateFmtFullTimeComponentsHMZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 WIB');
    });
    test('testDateFmtFullTimeComponentsHMAZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45 WIB');
    });
    test('testDateFmtFullTimeComponentsHMSA_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 WIB');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13.45.37 WIB');
    });
    test('testDateFmtWithTimeZoneAndNoDST_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Jakarta');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'id-ID',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      // does not observe DST, so no difference in the TZ spec
      expect(fmt.format(dateOptions), '13.45.37 WIB');
    });
  });
}
