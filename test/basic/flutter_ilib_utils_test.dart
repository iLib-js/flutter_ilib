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

    test(
        'getJSDataPath',
        () => expect(getJSDataPath('ko-KR'),
            'packages/flutter_ilib/assets/locales/ko.js'));
    test(
        'getJSDataPath2',
        () => expect(
            getJSDataPath('am'), 'packages/flutter_ilib/assets/locales/am.js'));
    test('getJSDataPathwithWrongParam', () => expect(getJSDataPath('-'), ''));
    test('isValidLocale', () => expect(isValidLocale('-'), false));
    test('isValidLocaleXXX', () => expect(isValidLocale('XXX'), false));
  });
}
