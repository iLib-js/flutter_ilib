import 'package:flutter/material.dart';
import 'package:flutter_ilib/internal/ilib_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_test.dart] file.');
  setUpAll(() async {});
  group('utils', () {
    test('getLocale', () {
      final String curlo = getLocale();
      setLocale('ko-KR');
      expect(getLocale(), 'ko-KR');
      setLocale(curlo);
    });

test('isValidLocale', () => expect(isValidLocale('-'), false));
    test('isValidLocaleXXX', () => expect(isValidLocale('XXX'), false));
  });
}
