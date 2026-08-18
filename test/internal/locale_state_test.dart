import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/internal/locale_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [locale_state_test.dart] file.');

  group('currentLocale get/set', () {
    test('round-trips a set value', () {
      final String curlo = currentLocale;
      currentLocale = 'ko-KR';
      expect(currentLocale, 'ko-KR');
      currentLocale = curlo;
    });
  });

  group('currentLocale is always normalized', () {
    test('assignment normalizes on both write and read', () {
      final String saved = currentLocale;
      currentLocale = 'C';
      expect(currentLocale, 'en-US');
      currentLocale = 'POSIX';
      expect(currentLocale, 'en-US');
      currentLocale = 'ko_KR';
      expect(currentLocale, 'ko-KR');
      currentLocale = saved; // restore the shared global
    });
  });
}
