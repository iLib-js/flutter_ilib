import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ku_Arab_IQ_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('ku-Arab-IQ');
  });
  group('format()', () {
    test('testDateFmtSimpleShort_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١-٠٩-٢٩' : '2011-09-29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleMedium_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١ ئەیلوول ٢٩' : '2011 M09 29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleLong_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٩ی ئەیلوولی ٢٠١١' : '2011 M09 29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleFull_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١ ئەیلوول ٢٩' : '2011 M09 29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleTimeShort_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'short', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleTimeMedium_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'medium', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleTimeLong_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'long', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtSimpleTimeFull_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'full', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtDateTimeSimpleShort_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'short', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن'
          : '2011-09-29 1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtDateTimeSimpleMedium_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'medium', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن'
          : '2011 M09 29 1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtDateTimeSimpleLong_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'long', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏٢٩ی ئەیلوولی ٢٠١١ ‏١:٤٥ د.ن'
          : '2011 M09 29 1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtDateTimeSimpleFull_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'full', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن'
          : '2011 M09 29 1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtTypeDate_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'date');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١-٠٩-٢٩' : '2011-09-29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtTypeTime_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtTypeDateTime_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'datetime');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن'
          : '2011-09-29 1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٢٠١١' : '2011';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٠٩' : 'M0';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsD_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٢٩' : '29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsDM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '‏٠٩-٢٩' : '09-29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsMY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١-٠٩' : '2011-09';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsDMY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١-٠٩-٢٩' : '2011-09-29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsWDM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٠٩-٢٩, پ' : '09-29, T';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortDateComponentsWDMY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١-٠٩-٢٩, پ' : '2011-09-29, T';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'y');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٢٠١١' : '2011';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? 'ئەیلوول' : 'M09';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsD_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'd');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٢٩' : '29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsDM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'dm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'ئەیلوول ٢٩' : 'M09 29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsMY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'my');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١ ئەیلوول' : '2011 M09';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsDMY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'dmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏٢٠١١ ئەیلوول ٢٩' : '2011 M09 29';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsWDM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', length: 'full', date: 'wdm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? 'ئەیلوول ٢٩, پێنجشەممە' : 'M09 29, Thu';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullDateComponentsWDMY_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', length: 'full', date: 'wdmy');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏٢٠١١ ئەیلوول ٢٩, پێنجشەممە'
          : '2011 M09 29, Thu';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsS_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٣٧' : '37';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٤٥' : '45';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsH_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '١' : '1';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsMS_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٤٥:٣٧' : '45:37';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '‏١:٤٥' : '1:45';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMS_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧' : '1:45:37';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMA_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ +٠٣/+٠٤' : '1:45 +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMAZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن +٠٣/+٠٤' : '1:45 PM +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMSA_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧ د.ن' : '1:45:37 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMSZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧ +٠٣/+٠٤' : '1:45:37 +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', type: 'time', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤'
          : '1:45:37 PM +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsS_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 's');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٣٧' : '37';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٤٥' : '45';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsH_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'h');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '١' : '1';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsMS_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'ms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٤٥:٣٧' : '45:37';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHM_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '‏١:٤٥' : '1:45';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMS_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hms');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧' : '1:45:37';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMA_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hma');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن' : '1:45 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hmz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ +٠٣/+٠٤' : '1:45 +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMAZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hmaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥ د.ن +٠٣/+٠٤' : '1:45 PM +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMSA_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hmsa');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧ د.ن' : '1:45:37 PM';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMSZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧ +٠٣/+٠٤' : '1:45:37 +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hmsaz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS')
          ? '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤'
          : '1:45:37 PM +03/+04';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtWithTimeZoneAndNoDST_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', type: 'time', length: 'full', time: 'hmsz');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '‏١:٤٥:٣٧ +٠٣/+٠٤' : '1:45:37 +03/+04';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateClock12SwitchHH_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', clock: '12', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String expected = (testPlatform == 'webOS') ? '٠١:٤٥' : '01:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateClock12Switchkk_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', clock: '12', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);

      final String expected = (testPlatform == 'webOS') ? '٠١:٤٥' : '01:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateClock24SwitchKK_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', clock: '24', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '١٣:٤٥' : '13:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateClock24Switchhh_ku_Arab_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', clock: '24', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '١٣:٤٥' : '13:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12KK_ku_Arab_IQ',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', template: 'KK:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٠١:٤٥' : '01:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault12hh_ku_Arab_IQ',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', template: 'hh:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '٠١:٤٥' : '01:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24HH_ku_Arab_IQ',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', template: 'HH:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '١٣:٤٥' : '13:45';
      expect(fmt.format(dateOptions), expected);
    });

    test('testDateFmtTemplateNoClockDoNotFollowLocaleDefault24kk_ku_Arab_IQ',
        () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ku-Arab-IQ', template: 'kk:mm');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected = (testPlatform == 'webOS') ? '١٣:٤٥' : '13:45';
      expect(fmt.format(dateOptions), expected);
    });
    test('testDateFmtTemplateCalendar_ku_Arab_IQ', () {
      final ILibDateFmt fmt = ILibDateFmt(ILibDateFmtOptions(
          locale: 'ku-Arab-IQ', calendar: 'julian', template: 'yyyy-MM-dd'));
      final ILibDateOptions date = ILibDateOptions(
          locale: 'ku-Arab-IQ',
          calendar: 'julian',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      final String expected =
          (testPlatform == 'webOS') ? '٢٠١١-٠٩-٢٩' : '2011-09-29';
      expect(fmt.format(date), expected);
    });
  });
}
