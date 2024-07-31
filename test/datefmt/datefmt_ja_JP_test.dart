import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ja_JP_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance
        .loadJSwithPath('../../assets/js/ilib-standard-flutter-compiled.js');
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('ja-JP');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29');
    });
    test('testDateFmtSimpleMedium_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29');
    });
    test('testDateFmtSimpleLong_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleFull_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtSimpleTimeShort_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeMedium_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeLong_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtSimpleTimeFull_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtDateTimeSimpleShort_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29 13:45');
    });
    test('testDateFmtDateTimeSimpleMedium_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29 13:45');
    });
    test('testDateFmtDateTimeSimpleLong_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 13:45');
    });
    test('testDateFmtDateTimeSimpleFull_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日 13:45');
    });

    test('testDateFmtTypeDate_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29');
    });
    test('testDateFmtTypeTime_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtTypeDateTime_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29 13:45');
    });
    test('testDateFmtShortDateComponentsY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtShortDateComponentsM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09月');
    });
    test('testDateFmtShortDateComponentsN_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9');
    });
    test('testDateFmtShortDateComponentsD_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtShortDateComponentsDM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/29');
    });
    test('testDateFmtShortDateComponentsMY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09');
    });
    test('testDateFmtShortDateComponentsDMY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29');
    });
    test('testDateFmtShortDateComponentsWDM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '09/29木');
    });
    test('testDateFmtShortDateComponentsWDMY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011/09/29木');
    });
    test('testDateFmtFullDateComponentsY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年');
    });
    test('testDateFmtFullDateComponentsM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月');
    });
    test('testDateFmtFullDateComponentsD_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29日');
    });
    test('testDateFmtFullDateComponentsDM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日');
    });
    test('testDateFmtFullDateComponentsMY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月');
    });
    test('testDateFmtFullDateComponentsDMY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日');
    });
    test('testDateFmtFullDateComponentsWDM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '9月29日木曜日');
    });
    test('testDateFmtFullDateComponentsWDMY_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '2011年9月29日木曜日');
    });
    test('testDateFmtShortTimeComponentsS_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtShortTimeComponentsM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtShortTimeComponentsH_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtShortTimeComponentsMS_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtShortTimeComponentsHM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMS_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMA_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtShortTimeComponentsHMZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', time: 'hmz', timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 JST');
    });
    test('testDateFmtShortTimeComponentsHMAZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', time: 'hmaz', timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 JST');
    });
    test('testDateFmtShortTimeComponentsHMSA_ja_JP', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ja-JP', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtShortTimeComponentsHMSZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', time: 'hmsz', timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 JST');
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', time: 'hmsaz', timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 JST');
    });
    test('testDateFmtFullTimeComponentsS_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '37');
    });
    test('testDateFmtFullTimeComponentsM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45');
    });
    test('testDateFmtFullTimeComponentsH_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13');
    });
    test('testDateFmtFullTimeComponentsMS_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '45:37');
    });
    test('testDateFmtFullTimeComponentsHM_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMS_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMA_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45');
    });
    test('testDateFmtFullTimeComponentsHMZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'time',
          length: 'full',
          time: 'hmz',
          timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 JST');
    });
    test('testDateFmtFullTimeComponentsHMAZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'time',
          length: 'full',
          time: 'hmaz',
          timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45 JST');
    });
    test('testDateFmtFullTimeComponentsHMSA_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37');
    });
    test('testDateFmtFullTimeComponentsHMSZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 JST');
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 JST');
    });
    test('testDateFmtWithTimeZoneAndNoDST_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'time',
          length: 'full',
          time: 'hmsz',
          timezone: 'Asia/Tokyo');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ja-JP',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '13:45:37 JST');
    });
  });
}
