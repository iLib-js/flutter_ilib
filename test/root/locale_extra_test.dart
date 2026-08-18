import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [locale_extra_test.dart] file.');
  group('ILibLocale.getAvailableLocales', () {
    test('returns a non-empty list', () {
      final List<String> locales = ILibLocale.getAvailableLocales();
      expect(locales, isNotEmpty);
    });
    test('contains known supported locales', () {
      final List<String> locales = ILibLocale.getAvailableLocales();
      expect(locales, contains('en-US'));
      expect(locales, contains('ko-KR'));
      expect(locales, contains('zh-Hans-CN'));
    });
    test('returns 144 locales', () {
      expect(ILibLocale.getAvailableLocales().length, 144);
    });
  });
}
