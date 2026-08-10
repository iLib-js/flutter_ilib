import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter_ilib-specific ko-KR datefmt tests (no JS counterpart): Dart-style
// `DateFmt_*` cases and Flutter `DateTime` input via `ILibDateOptions.dateTime`.
// Tests converted 1:1 from the iLib JS suite live in datefmt_ko_KR_test.dart.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_ko_KR_extra_test.dart] file.');
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleData('ko-KR');
  });
  group('format()', () {
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
  });
}
