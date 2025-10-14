import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_th_TH_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('th-TH');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtSimpleMedium_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ก.ย. 2011');
    });
    test('testDateFmtSimpleLong_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011');
    });
    test('testDateFmtSimpleFull_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011');
    });
    test('testDateFmtSimpleTimeShort_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'short',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'medium',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'short',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ก.ย. 2011 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'long',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011 เวลา 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'full',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011 เวลา 13:45');
    });

    test('testDateFmtTypeDate_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtTypeTime_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11 13:45');
    });
    test('testDateFmtShortDateComponentsY_th_TH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'th-TH', calendar: 'thaisolar', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11');
    });
    test('testDateFmtShortDateComponentsM_th_TH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'th-TH', calendar: 'thaisolar', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsN_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', date: 'm', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'กันยายน');
    });
    test('testDateFmtShortDateComponentsD_th_TH', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'th-TH', calendar: 'thaisolar', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtShortDateComponentsDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtShortDateComponentsMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/11');
    });
    test('testDateFmtShortDateComponentsDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtShortDateComponentsWDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤที่ 29/9');
    });
    test('testDateFmtShortDateComponentsWDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤที่ 29/9/54');
    });
    test('testDateFmtFullDateComponentsY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011');
    });
    test('testDateFmtFullDateComponentsM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'กันยายน');
    });
    test('testDateFmtFullDateComponentsD_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29');
    });
    test('testDateFmtFullDateComponentsDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน');
    });
    test('testDateFmtFullDateComponentsMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'กันยายน 2011');
    });
    test('testDateFmtFullDateComponentsDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011');
    });
    test('testDateFmtFullDateComponentsWDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'วันพฤหัสบดีที่ 29 กันยายน');
    });
    test('testDateFmtFullDateComponentsWDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'วันพฤหัสบดีที่ 29 กันยายน 2554');
    });
    test('testDateFmtShortTimeComponentsS_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +07');
    });
    test('testDateFmtShortTimeComponentsHMAZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +07');
    });
    test('testDateFmtShortTimeComponentsHMSA_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +07');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +07');
    });
    test('testDateFmtFullTimeComponentsS_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +07');
    });
    test('testDateFmtFullTimeComponentsHMAZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 +07');
    });
    test('testDateFmtFullTimeComponentsHMSA_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +07');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +07');
    });
    test('testDateFmtWithTimeZoneAndNoDST_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 +07');
    });

    test('testDateFmtShortDMWY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'short',
          date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤที่ 29/9/54');
    });
    test('testDateFmtMediumDMWY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'medium',
          date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤ.ที่ 29 ก.ย. 2554');
    });
    test('testDateFmtLongDMWY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤ.ที่ 29 กันยายน 2554');
    });
    test('testDateFmtFullDMWY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dmwy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'วันพฤหัสบดีที่ 29 กันยายน 2554');
    });
    test('testDateFmtShortDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'short', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtMediumDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'medium',
          date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ก.ย. 2011');
    });
    test('testDateFmtLongDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011');
    });
    test('testDateFmtFullDMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน 2011');
    });
    test('testDateFmtShortDMW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'short', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤที่ 29/9');
    });
    test('testDateFmtMediumDMW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          length: 'medium',
          date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤ.ที่ 29 ก.ย.');
    });
    test('testDateFmtLongDMW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤ.ที่ 29 กันยายน');
    });
    test('testDateFmtFullDMW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dmw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'วันพฤหัสบดีที่ 29 กันยายน');
    });
    test('testDateFmtShortDMW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'short', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9');
    });
    test('testDateFmtMediumDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'medium', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 ก.ย.');
    });
    test('testDateFmtLongDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน');
    });
    test('testDateFmtFullDM_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 กันยายน');
    });
    test('testDateFmtShortMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'short', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9/54');
    });
    test('testDateFmtMediumMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'medium', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ก.ย. 2554');
    });
    test('testDateFmtLongMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'กันยายน 2554');
    });
    test('testDateFmtFullMY_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'กันยายน 2554');
    });
    test('testDateFmtShortDW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'short', date: 'dw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤที่ 29');
    });
    test('testDateFmtMediumDW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'medium', date: 'dw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤ.ที่ 29');
    });
    test('testDateFmtLongDW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'long', date: 'dw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'พฤ.ที่ 29');
    });
    test('testDateFmtFullDW_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH', calendar: 'thaisolar', length: 'full', date: 'dw');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'วันพฤหัสบดีที่ 29');
    });

    test('testDateFmtTemplateClock12SwitchHH_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          clock: '12',
          template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          clock: '12',
          template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24Switchhh_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'th-TH',
          calendar: 'thaisolar',
          clock: '24',
          template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'th-TH',
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
