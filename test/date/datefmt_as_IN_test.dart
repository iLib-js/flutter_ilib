import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';
import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_as_IN_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('as-IN');
  });
  group('format()', () {
    test('testDateINSimpleShort_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯-৯-২০১১');
    });
    test('testDateINSimpleMedium_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯-০৯-২০১১');
    });
    test('testDateINSimpleLong_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ ছেপ্তেম্বৰ, ২০১১');
    });
    test('testDateINSimpleFull_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ ছেপ্তেম্বৰ, ২০১১');
    });
    test('testDateINSimpleTimeShort_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINSimpleTimeShort_as_IN1', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINSimpleTimeMedium_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINSimpleTimeLong_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINSimpleTimeFull_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINDateTimeSimpleShort_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '২৯-৯-২০১১, PM ১.৪৫'
          : '২৯-৯-২০১১, অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINDateTimeSimpleMedium_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '২৯-০৯-২০১১, PM ১.৪৫'
          : '২৯-০৯-২০১১, অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINDateTimeSimpleLong_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '২৯ ছেপ্তেম্বৰ, ২০১১ at PM ১.৪৫'
          : '২৯ ছেপ্তেম্বৰ, ২০১১ at অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINDateTimeSimpleFull_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '২৯ ছেপ্তেম্বৰ, ২০১১ at PM ১.৪৫'
          : '২৯ ছেপ্তেম্বৰ, ২০১১ at অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINTypeDate_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯-৯-২০১১');
    });
    test('testDateINTypeTime_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINTypeDateTime_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '২৯-৯-২০১১, PM ১.৪৫'
          : '২৯-৯-২০১১, অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINShortDateComponentsY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২০১১');
    });
    test('testDateINShortDateComponentsM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৯');
    });
    test('testDateINShortDateComponentsN_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ছ');
    });
    test('testDateINShortDateComponentsD_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯');
    });
    test('testDateINShortDateComponentsDM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯-৯');
    });
    test('testDateINShortDateComponentsMY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৯-২০১১');
    });
    test('testDateINShortDateComponentsDMY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯-৯-২০১১');
    });
    test('testDateINShortDateComponentsWDM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ব, ২৯-৯');
    });
    test('testDateINShortDateComponentsWDMY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ব, ২৯-৯-২০১১');
    });
    test('testDateINFullDateComponentsY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২০১১');
    });
    test('testDateINFullDateComponentsM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ছেপ্তেম্বৰ');
    });
    test('testDateINFullDateComponentsD_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯');
    });
    test('testDateINFullDateComponentsDM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ ছেপ্তেম্বৰ');
    });
    test('testDateINFullDateComponentsMY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'ছেপ্তেম্বৰ, ২০১১');
    });
    test('testDateINFullDateComponentsDMY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ ছেপ্তেম্বৰ, ২০১১');
    });
    test('testDateINFullDateComponentsWDM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'বৃহস্পতিবাৰ, ২৯ ছেপ্তেম্বৰ');
    });
    test('testDateINFullDateComponentsWDMY_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'বৃহস্পতিবাৰ, ২৯ ছেপ্তেম্বৰ, ২০১১');
    });
    test('testDateINShortTimeComponentsS_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৩৭');
    });
    test('testDateINShortTimeComponentsM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৪৫');
    });
    test('testDateINShortTimeComponentsH_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১');
    });
    test('testDateINShortTimeComponentsHM_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১.৪৫');
    });
    test('testDateINShortTimeComponentsHMS_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১.৪৫.৩৭');
    });
    test('testDateINShortTimeComponentsHMA_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINShortTimeComponentsHMZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINShortTimeComponentsHMAZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINShortTimeComponentsHMSA_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭' : 'অপৰাহ্ন ১.৪৫.৩৭';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINShortTimeComponentsHMSZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINShortTimeComponentsHMSAZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsS_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৩৭');
    });
    test('testDateINFullTimeComponentsM_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৪৫');
    });
    test('testDateINFullTimeComponentsH_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১');
    });
    test('testDateINFullTimeComponentsHM_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsHMS_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭' : 'অপৰাহ্ন ১.৪৫.৩৭';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsHMA_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫' : 'অপৰাহ্ন ১.৪৫';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsHMAZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          length: 'full',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsHMSA_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭' : 'অপৰাহ্ন ১.৪৫.৩৭';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsHMSZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINFullTimeComponentsHMSAZ_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateINWithTimeZoneAndNoDST_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'PM ১.৪৫.৩৭ IST' : 'অপৰাহ্ন ১.৪৫.৩৭ IST';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtINTemplateClock12SwitchHH_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '০১:৪৫');
    });

    test('testDateFmtINTemplateClock12Switchkk_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '০১:৪৫');
    });

    test('testDateFmtINTemplateClock24SwitchKK_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১৩:৪৫');
    });

    test('testDateFmtINTemplateClock24Switchhh_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১৩:৪৫');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault12KK_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '০১:৪৫');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault12hh_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '০১:৪৫');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault24HH_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১৩:৪৫');
    });

    test('testDateFmtINTemplateNoClockDoNotFollowLocaleDefault24kk_as_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'as-IN', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'as-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১৩:৪৫');
    });
    test('testDateFmtINConstructorEmpty_as_IN', () {
      final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(locale: 'as-IN'));
      expect(fmt, isNotNull);
    });
    test('testDateFmtINTemplateCalendar_as_IN', () {
      final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(
          locale: 'as-IN', calendar: 'julian', template: 'yyyy-MM-dd'));
      final ILibDateOptions date = ILibDateOptions(
          locale: 'as-IN',
          calendar: 'julian',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(date), '২০১১-০৯-২৯');
    });
  });
}
