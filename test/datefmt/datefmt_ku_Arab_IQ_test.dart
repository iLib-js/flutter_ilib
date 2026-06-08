import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ku_Arab_IQ_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('ku-Arab-IQ');
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
      } else {
        expect(fmt.format(dateOptions), '2011-09-29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٩ی ئەیلوولی ٢٠١١');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '2011-09-29 1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29 1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٩ی ئەیلوولی ٢٠١١ ‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29 1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩ ‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29 1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
      } else {
        expect(fmt.format(dateOptions), '2011-09-29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩ ‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '2011-09-29 1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٢٠١١');
      } else {
        expect(fmt.format(dateOptions), '2011');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٠٩');
      } else {
        expect(fmt.format(dateOptions), 'M0');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٢٩');
      } else {
        expect(fmt.format(dateOptions), '29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٠٩-٢٩');
      } else {
        expect(fmt.format(dateOptions), '09-29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩');
      } else {
        expect(fmt.format(dateOptions), '2011-09');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩');
      } else {
        expect(fmt.format(dateOptions), '2011-09-29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٠٩-٢٩, پ');
      } else {
        expect(fmt.format(dateOptions), '09-29, T');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١-٠٩-٢٩, پ');
      } else {
        expect(fmt.format(dateOptions), '2011-09-29, T');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٢٠١١');
      } else {
        expect(fmt.format(dateOptions), '2011');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), 'ئەیلوول');
      } else {
        expect(fmt.format(dateOptions), 'M09');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٢٩');
      } else {
        expect(fmt.format(dateOptions), '29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), 'ئەیلوول ٢٩');
      } else {
        expect(fmt.format(dateOptions), 'M09 29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول');
      } else {
        expect(fmt.format(dateOptions), '2011 M09');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), 'ئەیلوول ٢٩, پێنجشەممە');
      } else {
        expect(fmt.format(dateOptions), 'M09 29, Thu');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏٢٠١١ ئەیلوول ٢٩, پێنجشەممە');
      } else {
        expect(fmt.format(dateOptions), '2011 M09 29, Thu');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٣٧');
      } else {
        expect(fmt.format(dateOptions), '37');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٤٥');
      } else {
        expect(fmt.format(dateOptions), '45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '١');
      } else {
        expect(fmt.format(dateOptions), '1');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٤٥:٣٧');
      } else {
        expect(fmt.format(dateOptions), '45:37');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥');
      } else {
        expect(fmt.format(dateOptions), '1:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
      } else {
        expect(fmt.format(dateOptions), '1:45:37');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45 +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 PM +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٣٧');
      } else {
        expect(fmt.format(dateOptions), '37');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٤٥');
      } else {
        expect(fmt.format(dateOptions), '45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '١');
      } else {
        expect(fmt.format(dateOptions), '1');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٤٥:٣٧');
      } else {
        expect(fmt.format(dateOptions), '45:37');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥');
      } else {
        expect(fmt.format(dateOptions), '1:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧');
      } else {
        expect(fmt.format(dateOptions), '1:45:37');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45 +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥ د.ن +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45 PM +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 PM');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ د.ن +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 PM +03/+04');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '‏١:٤٥:٣٧ +٠٣/+٠٤');
      } else {
        expect(fmt.format(dateOptions), '1:45:37 +03/+04');
      }
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

      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٠١:٤٥');
      } else {
        expect(fmt.format(dateOptions), '01:45');
      }
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

      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٠١:٤٥');
      } else {
        expect(fmt.format(dateOptions), '01:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '١٣:٤٥');
      } else {
        expect(fmt.format(dateOptions), '13:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '١٣:٤٥');
      } else {
        expect(fmt.format(dateOptions), '13:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٠١:٤٥');
      } else {
        expect(fmt.format(dateOptions), '01:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '٠١:٤٥');
      } else {
        expect(fmt.format(dateOptions), '01:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '١٣:٤٥');
      } else {
        expect(fmt.format(dateOptions), '13:45');
      }
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
      if (testPlatform == 'webOS') {
        expect(fmt.format(dateOptions), '١٣:٤٥');
      } else {
        expect(fmt.format(dateOptions), '13:45');
      }
    });
  });
}
