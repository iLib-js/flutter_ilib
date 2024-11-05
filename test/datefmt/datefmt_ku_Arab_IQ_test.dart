import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ku_Arab_IQ_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    ILibJS.instance.loadILibLocaleData('ku-Arab-IQ');
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
      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
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
      expect(fmt.format(dateOptions), '‏٢٩ی ئەیلوولی ٢٠١١');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏٢٩ی ئەیلوولی ٢٠١١ ‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '٢٠١١');
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
      expect(fmt.format(dateOptions), '٠٩');
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
      expect(fmt.format(dateOptions), '٢٩');
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
      expect(fmt.format(dateOptions), '‏٠٩-٢٩');
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
      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩');
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

      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
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
      expect(fmt.format(dateOptions), '‏٠٩-٢٩, پ');
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
      expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩, پ');
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
      expect(fmt.format(dateOptions), '٢٠١١');
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
      expect(fmt.format(dateOptions), 'ئەیلوول');
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
      expect(fmt.format(dateOptions), '٢٩');
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
      expect(fmt.format(dateOptions), 'ئەیلوول ٢٩');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
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
      expect(fmt.format(dateOptions), 'ئەیلوول ٢٩, پێنجشەممە');
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
      expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩, پێنجشەممە');
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
      expect(fmt.format(dateOptions), '٣٧');
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
      expect(fmt.format(dateOptions), '٤٥');
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
      expect(fmt.format(dateOptions), '١');
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
      expect(fmt.format(dateOptions), '٤٥:٣٧');
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
      expect(fmt.format(dateOptions), '‏١:٤٥');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '٣٧');
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
      expect(fmt.format(dateOptions), '٤٥');
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
      expect(fmt.format(dateOptions), '١');
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
      expect(fmt.format(dateOptions), '٤٥:٣٧');
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
      expect(fmt.format(dateOptions), '‏١:٤٥');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥ د.ن +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤');
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
      expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
    });
  });
}
