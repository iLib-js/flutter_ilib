import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ta_IN_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJS();
    ILibJS.instance.initILib();
    await ILibJS.instance.loadILibLocaleData('ta-IN');
  });
  group('format()', () {
    test('testDateFmtINSimpleShort_ta_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ta-IN', length: 'short');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ta-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29/9/11');
    });
    test('testDateFmtINSimpleMedium_ta_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ta-IN', length: 'medium');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ta-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 செப்., 2011');
    });
    test('testDateFmtINSimpleLong_ta_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ta-IN', length: 'long');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ta-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 செப்டம்பர், 2011');
    });
    test('testDateFmtINSimpleFull_ta_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ta-IN', length: 'full');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final ILibDateOptions dateOptions = ILibDateOptions(
          locale: 'ta-IN',
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(fmt.format(dateOptions), '29 செப்டம்பர், 2011');
    });
  });
}
