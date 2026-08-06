import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [localeinfo_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibLoader ilibjsinstance = ILibLoader.instance;
    await ilibjsinstance.loadJSON();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibCountry', () {
    test('testCountryConstructorEmpty', () {
      final ILibCountry ctry = ILibCountry();
      expect(ctry, isNotNull);
    });
    test('testCountryDefaultLocale', () {
      final ILibCountry ctry = ILibCountry();
      expect(ctry, isNotNull);

      final ILibLocale locale = ctry.getLocale();
      expect(locale, isNotNull);
      expect(locale.toString(), 'en-US');
    });
    test('testCountryWrongLocale', () {
      final ILibCountry ctry = ILibCountry(locale: 'abc-YZ');
      expect(ctry, isNotNull);

      expect(ctry.getName('CD'), 'Congo - Kinshasa');
      expect(ctry.getCode('Congo - Kinshasa'), 'CD');
      final ILibLocale locale = ctry.getLocale();
      expect(locale, isNotNull);
      expect(locale.toString(), 'abc-YZ');
    });
    test('testCountryLocale1', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
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
    test('testCountryLocale2', () {
      final ILibCountry ctry = ILibCountry(locale: 'en-US');
      expect(ctry, isNotNull);

      expect(ctry.getName('CD'), 'Congo - Kinshasa');
      expect(ctry.getCode('Congo - Kinshasa'), 'CD');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'en-US');
    });
    test('testCountryLocale3', () {
      final ILibCountry ctry = ILibCountry(locale: 'zh-Hans-CN');
      expect(ctry, isNotNull);
      if (testPlatform == 'webOS') {
        expect(ctry.getName('CD'), '刚果民主共和国');
        expect(ctry.getCode('刚果民主共和国'), 'CD');
      } else {
        expect(ctry.getName('CD'), '刚果（金）');
        expect(ctry.getCode('刚果（金）'), 'CD');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'zh-Hans-CN');
    });
    test('testCountryLocale4', () {
      final ILibCountry ctry = ILibCountry(locale: 'ja-JP');
      expect(ctry, isNotNull);
      if (testPlatform == 'webOS') {
        expect(ctry.getName('CD'), 'コンゴ民主共和国');
        expect(ctry.getCode('コンゴ民主共和国'), 'CD');
      } else {
        expect(ctry.getName('CD'), 'コンゴ民主共和国(キンシャサ)');
        expect(ctry.getCode('コンゴ民主共和国(キンシャサ)'), 'CD');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ja-JP');
    });
    test('testCountryLocale5', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      expect(ctry.getName('SZ'), '에스와티니');
      expect(ctry.getCode('에스와티니'), 'SZ');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale7', () {
      final ILibCountry ctry = ILibCountry(locale: 'as-IN');
      expect(ctry, isNotNull);

      if (testPlatform == 'webOS') {
        expect(ctry.getName('SG'), 'চিংগাপুৰ');
        expect(ctry.getCode('চিংগাপুৰ'), 'SG');
      } else {
        expect(ctry.getName('SG'), 'ছিংগাপুৰ');
        expect(ctry.getCode('ছিংগাপুৰ'), 'SG');
      }
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'as-IN');
    });
    test('testCountryLocale8', () {
      final ILibCountry ctry = ILibCountry(locale: 'en-AU');
      expect(ctry, isNotNull);

      expect(ctry.getName('MO'), 'Macao SAR China');
      expect(ctry.getCode('Macao SAR China'), 'MO');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'en-AU');
    });
    test('testCountryLocale11', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      expect(ctry.getName('TR'), '튀르키예');
      expect(ctry.getCode('튀르키예'), 'TR');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale12', () {
      final ILibCountry ctry = ILibCountry(locale: 'en-GB');
      expect(ctry, isNotNull);

      expect(ctry.getName('CQ'), 'Sark');
      expect(ctry.getCode('Sark'), 'CQ');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'en-GB');
    });
    test('testCountryLocale13', () {
      final ILibCountry ctry = ILibCountry(locale: 'en-US');
      expect(ctry, isNotNull);

      expect(ctry.getName('TR'), 'Türkiye');
      expect(ctry.getCode('Türkiye'), 'TR');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'en-US');
    });
    test('testCountryLocale14', () {
      final ILibCountry ctry = ILibCountry(locale: 'es-ES');
      expect(ctry, isNotNull);

      expect(ctry.getName('TR'), 'Turquía');
      expect(ctry.getCode('Turquía'), 'TR');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'es-ES');
    });
    test('testCountryLocale15', () {
      final ILibCountry ctry = ILibCountry(locale: 'am-ET');
      expect(ctry, isNotNull);

      expect(ctry.getName('KW'), 'ኩዌት');
      expect(ctry.getCode('ኩዌት'), 'KW');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'am-ET');
    });
    test('testCountryLocale16', () {
      final ILibCountry ctry = ILibCountry(locale: 'fr-FR');
      expect(ctry, isNotNull);

      expect(ctry.getName('CQ'), 'Sercq');
      expect(ctry.getCode('Sercq'), 'CQ');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'fr-FR');
    });
    test('testCountryLocale17', () {
      final ILibCountry ctry = ILibCountry(locale: 'ko-KR');
      expect(ctry, isNotNull);

      expect(ctry.getName('CQ'), '사크');
      expect(ctry.getCode('사크'), 'CQ');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ko-KR');
    });
    test('testCountryLocale_es_CO', () {
      final ILibCountry ctry = ILibCountry(locale: 'es-CO');
      expect(ctry, isNotNull);

      expect(ctry.getName('SA'), 'Arabia Saudita');
      expect(ctry.getCode('Arabia Saudita'), 'SA');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'es-CO');
    });
    test('testCountryLocale_es_CO2', () {
      final ILibCountry ctry = ILibCountry(locale: 'es-CO');
      expect(ctry, isNotNull);

      expect(ctry.getName('RO'), 'Rumania');
      expect(ctry.getCode('Rumania'), 'RO');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'es-CO');
    });
    test('testCountryLocale_ml_IN', () {
      final ILibCountry ctry = ILibCountry(locale: 'ml-IN');
      expect(ctry, isNotNull);

      expect(ctry.getName('MO'), 'മക്കാവു എസ്.എ.ആർ. ചൈന');
      expect(ctry.getCode('മക്കാവു എസ്.എ.ആർ. ചൈന'), 'MO');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'ml-IN');
    });
    test('testCountryLocale_it_IT', () {
      final ILibCountry ctry = ILibCountry(locale: 'it-IT');
      expect(ctry, isNotNull);

      expect(ctry.getName('SZ'), 'Eswatini');
      expect(ctry.getCode('Eswatini'), 'SZ');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'it-IT');
    });
    test('testCountryLocale_en_NG', () {
      final ILibCountry ctry = ILibCountry(locale: 'en-NG');
      expect(ctry, isNotNull);

      expect(ctry.getName('VC'), 'St Vincent & the Grenadines');
      expect(ctry.getCode('St Vincent & the Grenadines'), 'VC');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'en-NG');
    });
    test('testCountryLocale_mr_IN', () {
      final ILibCountry ctry = ILibCountry(locale: 'mr-IN');
      expect(ctry, isNotNull);

      expect(ctry.getName('HN'), 'होंडुरास');
      expect(ctry.getCode('होंडुरास'), 'HN');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'mr-IN');
    });
    test('testCountryLocale_zh_Hant_HK', () {
      final ILibCountry ctry = ILibCountry(locale: 'zh-Hant-HK');
      expect(ctry, isNotNull);

      expect(ctry.getName('PG'), '巴布亞新畿內亞');
      expect(ctry.getCode('巴布亞新畿內亞'), 'PG');
      final ILibLocale locale = ctry.getLocale();
      expect(locale.toString(), 'zh-Hant-HK');
    });
    test('testCountryUnknownCode', () {
      final ILibCountry ctry = ILibCountry();
      expect(ctry, isNotNull);

      expect(() => ctry.getName('xxx'), throwsA(isA<ArgumentError>()));
    });
    test('testCountryUnknownCountry', () {
      final ILibCountry ctry = ILibCountry();
      expect(ctry, isNotNull);

      expect(() => ctry.getCode('xxx'), throwsA(isA<ArgumentError>()));
    });
  });
}
