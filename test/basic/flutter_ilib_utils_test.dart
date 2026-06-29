import 'package:flutter/material.dart';
import 'package:flutter_ilib/internal/ilib_utils.dart';
import 'package:flutter_test/flutter_test.dart';

const String _base = 'packages/flutter_ilib/assets/locale';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_utils_test.dart] file.');
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
    test('isValidLocaleRegionOnly', () => expect(isValidLocale('MK'), true));
  });

  group('getJSONDataPaths', () {
    test('null locale returns empty list', () {
      expect(getJSONDataPaths(null), isEmpty);
    });

    test('invalid locale returns empty list', () {
      expect(getJSONDataPaths('-'), isEmpty);
      expect(getJSONDataPaths('XXX'), isEmpty);
    });

    test('language only (en)', () {
      expect(getJSONDataPaths('en'), <String>[
        '$_base/root.json',
        '$_base/en.json',
      ]);
    });

    test('language-region (ko-KR)', () {
      expect(getJSONDataPaths('ko-KR'), <String>[
        '$_base/root.json',
        '$_base/ko.json',
        '$_base/und-KR.json',
        '$_base/ko-KR.json',
      ]);
    });

    test('language-region (en-US)', () {
      expect(getJSONDataPaths('en-US'), <String>[
        '$_base/root.json',
        '$_base/en.json',
        '$_base/und-US.json',
        '$_base/en-US.json',
      ]);
    });

    test('language-script-region (zh-Hans-CN)', () {
      expect(getJSONDataPaths('zh-Hans-CN'), <String>[
        '$_base/root.json',
        '$_base/zh.json',
        '$_base/und-Hans.json',
        '$_base/zh-Hans.json',
        '$_base/und-CN.json',
        '$_base/zh-CN.json',
        '$_base/zh-Hans-CN.json',
      ]);
    });

    test('language-script-region (ku-Arab-IQ)', () {
      expect(getJSONDataPaths('ku-Arab-IQ'), <String>[
        '$_base/root.json',
        '$_base/ku.json',
        '$_base/und-Arab.json',
        '$_base/ku-Arab.json',
        '$_base/und-IQ.json',
        '$_base/ku-IQ.json',
        '$_base/ku-Arab-IQ.json',
      ]);
    });

    test('language-script only (az-Latn)', () {
      expect(getJSONDataPaths('az-Latn'), <String>[
        '$_base/root.json',
        '$_base/az.json',
        '$_base/und-Latn.json',
        '$_base/az-Latn.json',
      ]);
    });

    test('region only (MK)', () {
      expect(getJSONDataPaths('MK'), <String>[
        '$_base/root.json',
        '$_base/und-MK.json',
      ]);
    });

    test(
        'path order is root → language → und-script → lang-script → und-region → lang-region → full',
        () {
      final List<String> paths = getJSONDataPaths('zh-Hant-TW');
      expect(paths[0], '$_base/root.json');
      expect(paths[1], '$_base/zh.json');
      expect(paths[2], '$_base/und-Hant.json');
      expect(paths[3], '$_base/zh-Hant.json');
      expect(paths[4], '$_base/und-TW.json');
      expect(paths[5], '$_base/zh-TW.json');
      expect(paths[6], '$_base/zh-Hant-TW.json');
      expect(paths.length, 7);
    });
  });
}
