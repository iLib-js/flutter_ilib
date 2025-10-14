import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ko_KR_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('ko-KR');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9. 29.');
    });
    test('testDateFmtSimpleMedium_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. 9. 29.');
    });
    test('testDateFmtSimpleLong_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월 29일');
    });
    test('testDateFmtSimpleFull_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월 29일');
    });
    test('testDateFmtSimpleTimeShort_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45');
    });

    test('testDateFmtSimpleTimeMedium_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45');
    });
    test('testDateFmtSimpleTimeLong_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45');
    });
    test('testDateFmtSimpleTimeFull_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오전 1:45');
    });
    test('testDateFmtDateTimeSimpleShort_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9. 29. 오후 1:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011. 9. 29. 오후 1:45');
    });
    test('testDateFmtDateTimeSimpleLong_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월 29일 오후 1:45');
    });
    test('testDateFmtDateTimeSimpleFull_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월 29일 오후 1:45');
    });
    test('testDateFmtTypeDate_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9. 29.');
    });
    test('testDateFmtTypeTime_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45');
    });
    test('testDateFmtTypeDateTime_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9. 29. 오후 1:45');
    });
    test('testDateFmtShortDateComponentsY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11년');
    });
    test('testDateFmtShortDateComponentsM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9월');
    });
    test('testDateFmtShortDateComponentsN_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9월');
    });
    test('testDateFmtShortDateComponentsD_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29일');
    });
    test('testDateFmtShortDateComponentsDM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9. 29.');
    });
    test('testDateFmtShortDateComponentsMY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9.');
    });
    test('testDateFmtShortDateComponentsDMY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9. 29.');
    });
    test('testDateFmtShortDateComponentsWDM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9. 29. 목');
    });
    test('testDateFmtShortDateComponentsWDMY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '11. 9. 29. 목');
    });
    test('testDateFmtLongDateComponentsWDM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', date: 'wdm', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9월 29일 목');
    });
    test('testDateFmtFullDateComponentsY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년');
    });
    test('testDateFmtFullDateComponentsM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9월');
    });
    test('testDateFmtFullDateComponentsD_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29일');
    });
    test('testDateFmtFullDateComponentsDM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9월 29일');
    });
    test('testDateFmtFullDateComponentsMY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월');
    });
    test('testDateFmtFullDateComponentsDMY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월 29일');
    });
    test('testDateFmtFullDateComponentsWDM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9월 29일 목요일');
    });
    test('testDateFmtFullDateComponentsWDMY_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011년 9월 29일 목요일');
    });

    test('testDateFmtShortTimeComponentsS_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtShortTimeComponentsMS_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', time: 'hmz', timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 KST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', time: 'hmaz', timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45 KST');
    });
    test('testDateFmtShortTimeComponentsHMSA_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', time: 'hmsz', timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 KST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', time: 'hmsaz', timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45:37 KST');
    });
    test('testDateFmtFullTimeComponentsS_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1');
    });
    test('testDateFmtFullTimeComponentsMS_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45 KST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45 KST');
    });
    test('testDateFmtFullTimeComponentsHMSA_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 KST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '오후 1:45:37 KST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Seoul');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 KST');
    });
    test('DateFmt_datetime_short_ko_KR', () {
      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 2024, month: 3, day: 23, hour: 10, minute: 42);
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          length: 'short',
          type: 'datetime',
          timezone: 'local');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.format(dateOptions), '24. 3. 23. 오전 10:42');
    });
    test('DateFmt_date_full_ko_KR', () {
      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 2024, month: 3, day: 23, hour: 10, minute: 42);
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.format(dateOptions), '2024년 3월 23일');
    });
    test('DateFmt_date_short_ko_KR', () {
      final ILibDateOptions dateOptions =
          ILibDateOptions(year: 2024, month: 3, day: 23, hour: 10, minute: 42);
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.format(dateOptions), '24. 3. 23.');
    });
    test('DateFmt_with_flutter_date_short_ko_KR', () {
      final DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR',
          length: 'short',
          type: 'datetime',
          timezone: 'local');

      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.format(dateOptions), '24. 5. 31. 오후 1:20');
    });

    test('DateFmt_with_flutter_date_full_ko_KR', () {
      final DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      final ILibDateOptions dateOptions = ILibDateOptions(dateTime: setdate);
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ko-KR', length: 'full', type: 'datetime', timezone: 'local');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.format(dateOptions), '2024년 5월 31일 오후 1:20');
    });
    test('DateFmt_with_flutter_date_full_ko_KR2', () {
      final DateTime setdate = DateTime(2024, 5, 31, 13, 20);
      final ILibDateOptions dateOptions =
          ILibDateOptions(locale: 'ko-KR', dateTime: setdate);
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.format(dateOptions), '2024년 5월 31일 오후 1:20');
    });

    test('testDateFmtTemplateClock12SwitchHH_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock12Switchkk_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateClock24Switchhh_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateClock24SwitchKK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12KK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '01:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_ko_KR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ko-KR', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ko-KR',
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
