import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

// flutter_ilib-specific ILibCountry tests with no iLib JS counterpart:
// extra locale/code coverage (es-ES SA, en-US/ko-KR platform-branched names)
// and the static getAvailableCode/getAvailableCountry queries. Tests converted
// 1:1 from the iLib JS suite live in country_test.dart.
void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [country_extra_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibLoader ilibjsinstance = ILibLoader.instance;
    await ilibjsinstance.loadJSON();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibCountry (extra)', () {
    test('testCountryConstructorWithLocaleObject', () {
      // The constructor's ILibLocale branch has no JS test counterpart.
      final ILibCountry ctry = ILibCountry(locale: ILibLocale('ko-KR'));
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('CD'), '콩고 민주 공화국');
        expect(ctry.getCode('콩고 민주 공화국'), 'CD');
      } else {
        expect(ctry.getName('CD'), '콩고-킨샤사');
        expect(ctry.getCode('콩고-킨샤사'), 'CD');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale_es_ES', () {
      final ILibCountry ctry = ILibCountry(locale: 'es-ES');
      expect(ctry, isNotNull);

      expect(ctry.getName('SA'), 'Arabia Saudí');
      expect(ctry.getCode('Arabia Saudí'), 'SA');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'es-ES');
    });
    test('testCountryLocale_en_US_forPS', () {
      final ILibCountry ctry = ILibCountry(locale: 'en-US');
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('PS'), 'PS');
        expect(ctry.getCode('PS'), 'PS');
      } else {
        expect(ctry.getName('PS'), 'Palestinian Territories');
        expect(ctry.getCode('Palestinian Territories'), 'PS');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'en-US');
    });
    test('testCountryLocale_ko_KR_forBA', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('BA'), '보스니아 헤르체코비나');
        expect(ctry.getCode('보스니아 헤르체코비나'), 'BA');
      } else {
        expect(ctry.getName('BA'), '보스니아 헤르체고비나');
        expect(ctry.getCode('보스니아 헤르체고비나'), 'BA');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale_ko_KR_forHK', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('HK'), '홍콩');
        expect(ctry.getCode('홍콩'), 'HK');
      } else {
        expect(ctry.getName('HK'), '홍콩(중국 특별행정구)');
        expect(ctry.getCode('홍콩(중국 특별행정구)'), 'HK');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale_ko_KR_forPS', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('PS'), '팔레스타인');
        expect(ctry.getCode('팔레스타인'), 'PS');
      } else {
        expect(ctry.getName('PS'), '팔레스타인 지구');
        expect(ctry.getCode('팔레스타인 지구'), 'PS');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale_ko_KR_forZA', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('ZA'), '남아프리카 공화국');
        expect(ctry.getCode('남아프리카 공화국'), 'ZA');
      } else {
        expect(ctry.getName('ZA'), '남아프리카');
        expect(ctry.getCode('남아프리카'), 'ZA');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale_af_ZA', () {
      final ILibCountry ctry = ILibCountry(locale: 'af-ZA');
      expect(ctry, isNotNull);

      expect(ctry.getName('ZA'), 'Suid-Afrika');
      expect(ctry.getCode('Suid-Afrika'), 'ZA');
      expect(ctry.getName('US'), 'Verenigde State van Amerika');
      expect(ctry.getCode('Verenigde State van Amerika'), 'US');
      expect(ctry.getName('DE'), 'Duitsland');
      expect(ctry.getCode('Duitsland'), 'DE');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'af-ZA');
    });
    test('testGetAvailableCode', () {
      final List<String> codes = ILibCountry.getAvailableCode();

      expect(codes, isNotNull);
      expect(codes, isNotEmpty);
      expect(codes.length, 295);
      expect(codes.contains('KR'), isTrue);
      expect(codes.contains('xxx'), isFalse);
    });
    test('testGetAvailableCountry', () {
      final List<String> countries = ILibCountry.getAvailableCountry();

      expect(countries, isNotNull);
      expect(countries, isNotEmpty);
      expect(countries.length, 295);
      expect(countries.contains('South Korea'), isTrue);
      expect(countries.contains('xxx'), isFalse);
    });
    test('testGetAvailableCodeContainsCommonCodes', () {
      final List<String> codes = ILibCountry.getAvailableCode();

      for (final String code in <String>['US', 'JP', 'FR', 'DE', 'KR']) {
        expect(codes.contains(code), isTrue, reason: 'missing code $code');
      }
      // UN M49 numeric region codes are included too.
      expect(codes.contains('142'), isTrue);
    });
    test('testGetAvailableCountryContainsCommonNames', () {
      final List<String> countries = ILibCountry.getAvailableCountry();

      for (final String name in <String>[
        'United States',
        'Japan',
        'France',
        'Germany',
      ]) {
        expect(countries.contains(name), isTrue, reason: 'missing name $name');
      }
    });
    test('testGetAvailableCodeHasNoDuplicates', () {
      final List<String> codes = ILibCountry.getAvailableCode();
      final List<String> countries = ILibCountry.getAvailableCountry();

      expect(codes.toSet().length, codes.length);
      expect(countries.toSet().length, countries.length);
    });
    test('testGetAvailableCodeAndCountryAreConsistent', () {
      final List<String> codes = ILibCountry.getAvailableCode();
      final List<String> countries = ILibCountry.getAvailableCountry();
      expect(codes.length, countries.length);

      // Every code resolves to a name, and that name is in the country list.
      final ILibCountry ctry = ILibCountry(locale: 'en-US');
      final Set<String> countrySet = countries.toSet();
      for (final String code in codes) {
        expect(countrySet.contains(ctry.getName(code)), isTrue,
            reason: 'name for $code not in getAvailableCountry()');
      }
    });
  });
}
