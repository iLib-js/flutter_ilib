import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_bn_IN_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('bn-IN');
  });
  group('format()', () {
    test('testDateFmtINSimpleShort_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯/৯/১১');
    });
    test('testDateFmtINSimpleMedium_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেঃ, ২০১১');
    });
    test('testDateFmtINSimpleLong_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১');
    });
    test('testDateFmtINSimpleFull_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১');
    });
    test('testDateFmtINSimpleTimeShort_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINSimpleTimeShort_bn_IN1', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINSimpleTimeMedium_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINSimpleTimeLong_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINSimpleTimeFull_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINDateTimeSimpleShort_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯/৯/১১, ১:৪৫ PM');
    });
    test('testDateFmtINDateTimeSimpleMedium_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেঃ, ২০১১, ১:৪৫ PM');
    });
    test('testDateFmtINDateTimeSimpleLong_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১ এ ১:৪৫ PM');
    });
    test('testDateFmtINDateTimeSimpleFull_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১ এ ১:৪৫ PM');
    });

    test('testDateFmtINTypeDate_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯/৯/১১');
    });
    test('testDateFmtINTypeTime_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINTypeDateTime_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯/৯/১১, ১:৪৫ PM');
    });
    test('testDateFmtINShortDateComponentsY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১১');
    });
    test('testDateFmtINShortDateComponentsM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'সে');
    });
    test('testDateFmtINShortDateComponentsN_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'n');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'স');
    });
    test('testDateFmtINShortDateComponentsD_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯');
    });
    test('testDateFmtINShortDateComponentsDM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯/৯');
    });
    test('testDateFmtINShortDateComponentsMY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৯/১১');
    });
    test('testDateFmtINShortDateComponentsDMY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯/৯/১১');
    });
    test('testDateFmtINShortDateComponentsWDM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'বৃ, ২৯/৯');
    });
    test('testDateFmtINShortDateComponentsWDMY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'বৃ, ২৯/৯/১১');
    });
    test('testDateFmtINFullDateComponentsY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২০১১');
    });
    test('testDateFmtINFullDateComponentsM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'সেপ্টেম্বর');
    });
    test('testDateFmtINFullDateComponentsD_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯');
    });
    test('testDateFmtINFullDateComponentsDM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেম্বর');
    });
    test('testDateFmtINFullDateComponentsMY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'সেপ্টেম্বর, ২০১১');
    });
    test('testDateFmtINFullDateComponentsDMY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '২৯ সেপ্টেম্বর, ২০১১');
    });
    test('testDateFmtINFullDateComponentsWDM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'বৃহস্পতিবার, ২৯ সেপ্টেম্বর');
    });
    test('testDateFmtINFullDateComponentsWDMY_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), 'বৃহস্পতিবার, ২৯ সেপ্টেম্বর, ২০১১');
    });
    test('testDateFmtINShortTimeComponentsS_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৩৭');
    });
    test('testDateFmtINShortTimeComponentsM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৪৫');
    });
    test('testDateFmtINShortTimeComponentsH_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১');
    });
    test('testDateFmtINShortTimeComponentsHM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫');
    });
    test('testDateFmtINShortTimeComponentsHMS_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭');
    });
    test('testDateFmtINShortTimeComponentsHMA_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINShortTimeComponentsHMZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'ahmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINShortTimeComponentsHMAZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINShortTimeComponentsHMSA_bn_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bn-IN', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM');
    });
    test('testDateFmtINShortTimeComponentsHMSZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINShortTimeComponentsHMSAZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINFullTimeComponentsS_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৩৭');
    });
    test('testDateFmtINFullTimeComponentsM_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '৪৫');
    });
    test('testDateFmtINFullTimeComponentsH_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১');
    });

    test('testDateFmtINFullTimeComponentsHMA_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });
    test('testDateFmtINFullTimeComponentsHMSA_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM');
    });
    test('testDateFmtINFullTimeComponentsHMSAWestern_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          length: 'full',
          time: 'hmsa',
          useNative: false);
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '1:45:37 PM');
    });
    test('testDateFmtINFullTimeComponentsHMA_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫ PM');
    });

    test('testDateFmtINFullTimeComponentsHMAZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          length: 'full',
          time: 'ahmsz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINFullTimeComponentsHMSA_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM');
    });
    test('testDateFmtINFullTimeComponentsHMSZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINFullTimeComponentsHMSAZ_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
    test('testDateFmtINWithTimeZoneAndNoDST_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          length: 'full',
          time: 'hmsaz',
          timezone: 'Asia/Kolkata');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'bn-IN',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(fmt.format(dateOptions), '১:৪৫:৩৭ PM IST');
    });
  });
}
