import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_fa_IR_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadLocaleData('fa-IR');
  });
  group('format()', () {
    test('SimpleShort_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result =
          (testPlatform == 'webOS') ? '‏۲۹‏/۹‏/۲۰۱۱' : '‏۲۰۱۱/۹/۲۹';
      expect(fmt.format(dateOptions), result);
    });
    test('SimpleMedium_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱');
    });
    test('SimpleLong_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱');
    });
    test('SimpleFull_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱');
    });
    test('SimpleTimeShort_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          length: 'short',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('SimpleTimeMedium_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          length: 'medium',
          type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('SimpleTimeLong_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('SimpleTimeFull_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('DateTimeSimpleShort_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          length: 'short',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? '‏۱۳:۴۵،‏ ‏۲۹‏/۹‏/۲۰۱۱'
          : '‏۲۰۱۱/۹/۲۹, ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('DateTimeSimpleMedium_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? '‏۱۳:۴۵،‏ ‏۲۹ سپتامبر ۲۰۱۱'
          : '‏۲۹ سپتامبر ۲۰۱۱، ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('DateTimeSimpleLong_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          length: 'long',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? 'ساعت ‏۱۳:۴۵، ‏۲۹ سپتامبر ۲۰۱۱'
          : '‏۲۹ سپتامبر ۲۰۱۱ ساعت ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('DateTimeSimpleFull_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          length: 'full',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? 'ساعت ‏۱۳:۴۵، ‏۲۹ سپتامبر ۲۰۱۱'
          : '‏۲۹ سپتامبر ۲۰۱۱ ساعت ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('TypeDate_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result =
          (testPlatform == 'webOS') ? '‏۲۹‏/۹‏/۲۰۱۱' : '‏۲۰۱۱/۹/۲۹';
      expect(fmt.format(dateOptions), result);
    });
    test('TypeTime_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('TypeDateTime_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? '‏۱۳:۴۵،‏ ‏۲۹‏/۹‏/۲۰۱۱'
          : '‏۲۰۱۱/۹/۲۹, ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('ShortDateComponentsY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fa-IR', calendar: 'gregorian', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۲۰۱۱');
    });
    test('ShortDateComponentsM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fa-IR', calendar: 'gregorian', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), 'س');
    });
    test('ShortDateComponentsD_fa_IR', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'fa-IR', calendar: 'gregorian', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۲۹');
    });
    test('ShortDateComponentsDM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS') ? '‏۲۹‏/۹' : '‏۹/۲۹';
      expect(fmt.format(dateOptions), result);
    });
    test('ShortDateComponentsMY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS') ? '‏۹‏/۲۰۱۱' : '‏۲۰۱۱/۹';
      expect(fmt.format(dateOptions), result);
    });
    test('ShortDateComponentsDMY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result =
          (testPlatform == 'webOS') ? '‏۲۹‏/۹‏/۲۰۱۱' : '‏۲۰۱۱/۹/۲۹';
      expect(fmt.format(dateOptions), result);
    });
    test('ShortDateComponentsWDM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result =
          (testPlatform == 'webOS') ? '‏پنجشنبه، ۲۹‏/۹' : 'پ ‏۹/۲۹';
      expect(fmt.format(dateOptions), result);
    });
    test('ShortDateComponentsWDMY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result =
          (testPlatform == 'webOS') ? '‏پنجشنبه، ۲۹‏/۹‏/۲۰۱۱' : 'پ ۲۰۱۱/۹/۲۹';
      expect(fmt.format(dateOptions), result);
    });
    test('FullDateComponentsY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۲۰۱۱');
    });
    test('FullDateComponentsM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), 'سپتامبر');
    });
    test('FullDateComponentsD_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۲۹');
    });
    test('FullDateComponentsDM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۲۹ سپتامبر');
    });
    test('FullDateComponentsMY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result =
          (testPlatform == 'webOS') ? '‏سپتامبر ۲۰۱۱' : 'سپتامبر ۲۰۱۱';
      expect(fmt.format(dateOptions), result);
    });
    test('FullDateComponentsDMY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱');
    });
    test('FullDateComponentsWDM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? '‏پنجشنبه، ۲۹ سپتامبر'
          : 'پنجشنبه ‏۲۹ سپتامبر';
      expect(fmt.format(dateOptions), result);
    });
    test('FullDateComponentsWDMY_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0,
          calendar: 'gregorian');
      final String result = (testPlatform == 'webOS')
          ? '‏پنجشنبه، ۲۹ سپتامبر ۲۰۱۱'
          : 'پنجشنبه ۲۹ سپتامبر ۲۰۱۱';
      expect(fmt.format(dateOptions), result);
    });
    test('ShortTimeComponentsS_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۳۷');
    });
    test('ShortTimeComponentsM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۴۵');
    });
    test('ShortTimeComponentsH_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۱۳');
    });
    test('ShortTimeComponentsMS_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۴۵:۳۷');
    });
    test('ShortTimeComponentsHM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('ShortTimeComponentsHMS_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷');
    });
    test('ShortTimeComponentsHMA_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('ShortTimeComponentsHMZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('ShortTimeComponentsHMAZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('ShortTimeComponentsHMSA_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷');
    });
    test('ShortTimeComponentsHMSZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('ShortTimeComponentsHMSAZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR', calendar: 'gregorian', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('FullTimeComponentsS_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۳۷');
    });
    test('FullTimeComponentsM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۴۵');
    });
    test('FullTimeComponentsH_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۱۳');
    });
    test('FullTimeComponentsMS_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '۴۵:۳۷');
    });
    test('FullTimeComponentsHM_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('FullTimeComponentsHMS_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷');
    });
    test('FullTimeComponentsHMA_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('FullTimeComponentsHMZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('FullTimeComponentsHMAZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('FullTimeComponentsHMSA_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷');
    });
    test('FullTimeComponentsHMSZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('FullTimeComponentsHMSAZ_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)');
    });
    test('WithTimeZoneAndNoDST_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'fa-IR',
          calendar: 'gregorian',
          type: 'time',
          length: 'full',
          time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0,
          calendar: 'gregorian');
      expect(fmt.format(dateOptions), '‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)');
    });
    /* Now Persian calendar tests */
    test('PersSimpleShort_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '‏۲۱‏/۹‏/۱۳۹۲' : '‏۱۳۹۲/۹/۲۱';
      expect(fmt.format(dateOptions), result);
    });
    test('PersSimpleMedium_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۲۱ آذر ۱۳۹۲');
    });
    test('PersSimpleLong_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۲۱ آذر ۱۳۹۲');
    });
    test('PersSimpleFull_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result =
          (testPlatform == 'webOS') ? '‏۲۱ آذر ۱۳۹۲' : '‏۱۳۹۲ آذر ۲۱';
      expect(fmt.format(dateOptions), result);
    });
    test('PersSimpleTimeShort_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('PersSimpleTimeMedium_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('PersSimpleTimeLong_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('PersSimpleTimeFull_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian', locale: 'fa-IR', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '‏۱۳:۴۵');
    });
    test('PersDateTimeSimpleShort_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian',
          locale: 'fa-IR',
          length: 'short',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '‏۱۳:۴۵،‏ ‏۲۱‏/۹‏/۱۳۹۲'
          : '‏۱۳۹۲/۹/۲۱،‏ ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('PersDateTimeSimpleMedium_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian',
          locale: 'fa-IR',
          length: 'medium',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? '‏۱۳:۴۵،‏ ‏۲۱ آذر ۱۳۹۲'
          : '‏۲۱ آذر ۱۳۹۲،‏ ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('PersDateTimeSimpleLong_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian',
          locale: 'fa-IR',
          length: 'long',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? 'ساعت ‏۱۳:۴۵، ‏۲۱ آذر ۱۳۹۲'
          : '‏۲۱ آذر ۱۳۹۲، ساعت ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
    test('PersDateTimeSimpleFull_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          calendar: 'persian',
          locale: 'fa-IR',
          length: 'full',
          type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'fa-IR',
          year: 1392,
          month: 9,
          day: 21,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String result = (testPlatform == 'webOS')
          ? 'ساعت ‏۱۳:۴۵، ‏۲۱ آذر ۱۳۹۲'
          : '‏۱۳۹۲ آذر ۲۱، ساعت ‏۱۳:۴۵';
      expect(fmt.format(dateOptions), result);
    });
  });
}
