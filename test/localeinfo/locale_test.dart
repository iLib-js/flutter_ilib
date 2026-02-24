import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [locale_test.dart] file.');
  setUpAll(() async {
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibLocale', () {
    test('testLocaleConstructor', () {
      final ILibLocale loc = ILibLocale();

      expect(loc, isNotNull);
    });
    test('testLocaleConstructorDefault', () {
      final ILibLocale loc = ILibLocale('it-IT');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'it');
      expect(loc.getRegion(), 'IT');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleCopyConstructor', () {
      final ILibLocale loc2 = ILibLocale('de', 'DE');
      final ILibLocale loc = ILibLocale(loc2);

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'de');
      expect(loc.getRegion(), 'DE');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorFull', () {
      final ILibLocale loc = ILibLocale('en', 'US', 'Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), 'Midwest');
    });
    test('testLocaleConstructorSpecWithVariant', () {
      final ILibLocale loc = ILibLocale('en-US-Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), 'Midwest');
      expect(loc.getScript(), isNull);
    });
    test('testLocaleConstructorSpecWithVariant2', () {
      final ILibLocale loc = ILibLocale('ko-KR-flavor');

      expect(loc, isNotNull);
      expect(loc.getLanguage(), 'ko');
      expect(loc.getRegion(), 'KR');
      expect(loc.getScript(), isNull);
      expect(loc.getVariant(), 'flavor');
    });
    test('testLocaleConstructorSpecWithVariant3', () {
      final ILibLocale loc = ILibLocale('zh-Hans-CN-flavor');

      expect(loc, isNotNull);
      expect(loc.getLanguage(), 'zh');
      expect(loc.getRegion(), 'CN');
      expect(loc.getScript(), 'Hans');
      expect(loc.getVariant(), 'flavor');
    });
    test('testLocaleConstructorSpecWithScript', () {
      final ILibLocale loc = ILibLocale('en-US-Latn');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getScript(), 'Latn');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorPartial', () {
      final ILibLocale loc = ILibLocale('en', 'US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecPartial', () {
      final ILibLocale loc = ILibLocale('en-US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecWithUnderscores1', () {
      // some locales like those in java properties file names
      // or in gnu gettext libraries are specified with underscores
      final ILibLocale loc = ILibLocale('zh_Hans_CN');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'zh');
      expect(loc.getRegion(), 'CN');
      expect(loc.getScript(), 'Hans');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecWithUnderscores2', () {
      // some locales like those in java properties file names
      // or in gnu gettext libraries are specified with underscores
      final ILibLocale loc = ILibLocale('en_US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorShort', () {
      final ILibLocale loc = ILibLocale('en');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), isNull);
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorUpperCaseLanguage', () {
      final ILibLocale loc = ILibLocale('EN', 'US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorLowerCaseRegion', () {
      final ILibLocale loc = ILibLocale('en', 'us');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecMissingRegion', () {
      final ILibLocale loc = ILibLocale('en--Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), isNull);
      expect(loc.getVariant(), 'Midwest');
      expect(loc.getScript(), isNull);
    });
    test('testLocaleConstructorSpecMissingLanguage', () {
      final ILibLocale loc = ILibLocale('-US-Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), isNull);
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), 'Midwest');
      expect(loc.getScript(), isNull);
    });
    test('testLocaleConstructorSpecMissingLanguageAndVariant', () {
      final ILibLocale loc = ILibLocale('-US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), isNull);
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
      expect(loc.getScript(), isNull);
    });
    test('testLocaleEqualsTrue', () {
      final ILibLocale loc1 = ILibLocale('en-US'),
          loc2 = ILibLocale('en', 'US');

      expect(loc1, isNotNull);
      expect(loc2, isNotNull);

      expect(loc1.equals(loc2), isTrue);
    });
    test('testLocaleEqualsFalse', () {
      final ILibLocale loc1 = ILibLocale('en-US'),
          loc2 = ILibLocale('en', 'CA');

      expect(loc1, isNotNull);
      expect(loc2, isNotNull);

      expect(loc1.equals(loc2), isFalse);
    });
    test('testLocaleEqualsMissing', () {
      final ILibLocale loc1 = ILibLocale('en-US'),
          loc2 = ILibLocale('en', 'US', 'govt');

      expect(loc1, isNotNull);
      expect(loc2, isNotNull);

      expect(loc1.equals(loc2), isFalse);
    });
    test('testLocaleEqualsTrueFull', () {
      final ILibLocale loc1 = ILibLocale('en-US-govt'),
          loc2 = ILibLocale('en', 'US', 'govt');

      expect(loc1, isNotNull);
      expect(loc2, isNotNull);

      expect(loc1.equals(loc2), isTrue);
    });
    test('testLocaleEqualsTrueShort', () {
      final ILibLocale loc1 = ILibLocale('en'), loc2 = ILibLocale('en');

      expect(loc1, isNotNull);
      expect(loc2, isNotNull);

      expect(loc1.equals(loc2), isTrue);
    });
    test('testLocaleIsPseudoTrue', () {
      final ILibLocale loc = ILibLocale('zxx-XX');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isTrue);
    });
    test('testLocaleIsPseudoFalse', () {
      final ILibLocale loc = ILibLocale('en-US');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isFalse);
    });
    test('testLocaleIsPseudoFalseButClosLang', () {
      final ILibLocale loc = ILibLocale('zxx-US');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isFalse);
    });
    test('testLocaleIsPseudoFalse', () {
      final ILibLocale loc = ILibLocale('en-XX');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isFalse);
    });

    test('testLocaleGetSpecLangOnly', () {
      final ILibLocale loc = ILibLocale('en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en');
    });
    test('testLocaleGetSpecRegionOnly', () {
      final ILibLocale loc = ILibLocale('CA');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'CA');
    });
    test('testLocaleGetSpecScriptOnly', () {
      final ILibLocale loc = ILibLocale('Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn');
    });
    test('testLocaleGetSpecVariantOnly', () {
      final ILibLocale loc = ILibLocale('asdfasdf');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'asdfasdf');
    });
    test('testLocaleGetSpecLangAndScript', () {
      final ILibLocale loc = ILibLocale('Latn-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn');
    });
    test('testLocaleGetSpecLangAndRegion', () {
      final ILibLocale loc = ILibLocale('CA-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-CA');
    });
    test('testLocaleGetSpecLangAndVariant', () {
      final ILibLocale loc = ILibLocale('asdf-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-asdf');
    });
    test('testLocaleGetSpecScriptAndRegion', () {
      final ILibLocale loc = ILibLocale('CA-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn-CA');
    });
    test('testLocaleGetSpecScriptAndVariant', () {
      final ILibLocale loc = ILibLocale('asdf-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn-asdf');
    });
    test('testLocaleGetSpecRegionAndVariant', () {
      final ILibLocale loc = ILibLocale('asdf-CA');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'CA-asdf');
    });
    test('testLocaleGetSpecLangScriptRegion', () {
      final ILibLocale loc = ILibLocale('CA-en-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn-CA');
    });
    test('testLocaleGetSpecScriptRegionVariant', () {
      final ILibLocale loc = ILibLocale('CA-asdf-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn-CA-asdf');
    });
    test('testLocaleGetSpecLangScriptVariant', () {
      final ILibLocale loc = ILibLocale('asdf-Latn-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn-asdf');
    });
    test('testLocaleGetSpecLangRegionVariant', () {
      final ILibLocale loc = ILibLocale('asdf-CA-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-CA-asdf');
    });
    test('testLocaleGetSpecAll', () {
      final ILibLocale loc = ILibLocale('asdf-CA-Latn-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn-CA-asdf');
    });
    test('testLocaleM49RegionCodeGetParts', () {
      final ILibLocale loc = ILibLocale('en-001');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), '001');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleM49RegionCodeGetParts2', () {
      final ILibLocale loc = ILibLocale('en-150');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), '150');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleM49RegionCodeGetSpec', () {
      final ILibLocale loc = ILibLocale('en-001');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-001');
    });
    test('testLocaleNoLocale', () {
      final ILibLocale loc = ILibLocale('-');

      expect(loc, isNotNull);

      expect(loc.getSpec(), '');
      expect(loc.getLanguage(), isNull);
      expect(loc.getRegion(), isNull);
      expect(loc.getScript(), isNull);
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleRegionMap1', () {
      expect(ILibLocale.regionAlpha2ToAlpha3('SG'), 'SGP');
    });
    test('testLocaleRegionMap2', () {
      expect(ILibLocale.regionAlpha2ToAlpha3('VN'), 'VNM');
    });
    test('testLocaleRegionMap3', () {
      expect(ILibLocale.regionAlpha2ToAlpha3('KR'), 'KOR');
    });
    test('testLocaleRegionMapEmpty', () {
      expect(ILibLocale.regionAlpha2ToAlpha3(''), '');
    });
    test('testLocaleRegionMapUnknown', () {
      expect(ILibLocale.regionAlpha2ToAlpha3('QQ'), 'QQ');
    });
    test('testLocaleRegionMapWrongCase', () {
      expect(ILibLocale.regionAlpha2ToAlpha3('sg'), 'sg');
    });
    test('testLocaleRegionMapUndefined', () {
      expect(ILibLocale.regionAlpha2ToAlpha3(null), isNull);
    });
    test('testLocaleLanguageMap1', () {
      expect(ILibLocale.languageAlpha1ToAlpha3('ko'), 'kor');
    });
    test('testLocaleLanguageMap2', () {
      expect(ILibLocale.languageAlpha1ToAlpha3('th'), 'tha');
    });
    test('testLocaleLanguageMap3', () {
      expect(ILibLocale.languageAlpha1ToAlpha3('hr'), 'hrv');
    });
    test('testLocaleLanguageMapEmpty', () {
      expect(ILibLocale.languageAlpha1ToAlpha3(''), '');
    });
    test('testLocaleLanguageMapUnknown', () {
      expect(ILibLocale.languageAlpha1ToAlpha3('qq'), 'qq');
    });
    test('testLocaleLanguageMapWrongCase', () {
      expect(ILibLocale.languageAlpha1ToAlpha3('EN'), 'EN');
    });
    test('testLocaleLanguageMapUndefined', () {
      expect(ILibLocale.languageAlpha1ToAlpha3(null), isNull);
    });
    test('testLocaleGetLanguageAlpha3_1', () {
      final ILibLocale loc = ILibLocale('en-US');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), 'eng');
    });
    test('testLocaleGetLanguageAlpha3_2', () {
      final ILibLocale loc = ILibLocale('ru-RU');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), 'rus');
    });
    test('testLocaleGetLanguageAlpha3_3', () {
      final ILibLocale loc = ILibLocale('gv-GB');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), 'glv');
    });
    test('testLocaleGetLanguageAlpha3NoLanguage', () {
      final ILibLocale loc = ILibLocale('GB');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), isNull);
    });
    test('testLocaleGetRegionAlpha3_1', () {
      final ILibLocale loc = ILibLocale('en-US');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), 'USA');
    });
    test('testLocaleGetRegionAlpha3_2', () {
      final ILibLocale loc = ILibLocale('ru-RU');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), 'RUS');
    });
    test('testLocaleGetRegionAlpha3_3', () {
      final ILibLocale loc = ILibLocale('gv-GB');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), 'GBR');
    });
    test('testLocaleGetRegionAlpha3NoRegion', () {
      final ILibLocale loc = ILibLocale('en');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), isNull);
    });
    test('testLocaleGetLanguageSpecSimple', () {
      final ILibLocale loc = ILibLocale('en');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'en');
    });
    test('testLocaleGetLanguageSpecLeaveOutRegionAndVariant', () {
      final ILibLocale loc = ILibLocale('en-US-MILITARY');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'en');
    });
    test('testLocaleGetLanguageSpecIncludeScript', () {
      final ILibLocale loc = ILibLocale('zh-Hans');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'zh-Hans');
    });
    test('testLocaleGetLanguageSpecIncludeScriptButNotOthers', () {
      final ILibLocale loc = ILibLocale('zh-Hans-CN-GOVT');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'zh-Hans');
    });
    test('testLocaleGetLanguageSpecLanguageAndScriptMissing', () {
      final ILibLocale loc = ILibLocale('CN');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), '');
    });
    test('testLocaleGetLanguageSpecNoScriptWithoutLanguage', () {
      final ILibLocale loc = ILibLocale('Hans-CN');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), '');
    });
    test('testLocaleIsValidLocaleTrueFull', () {
      final ILibLocale loc = ILibLocale('zh-Hans-CN');
      final String jscode1 =
          'new Locale("${loc.language}", "${loc.region}", "${loc.script}", "${loc.variant}").isValid()';
      final String result = ILibJS.instance.evaluate(jscode1).stringResult;
      print(' ========== zh-Hans-CN testLocaleIsValidLocaleTrueFull');
      print(result);
      if (result == null || result.isEmpty || result == 'null') {
        print(
            ' ========== zh-Hans-CN testLocaleIsValidLocaleTrueFull: result is null or empty or "null"');
      }
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleTrueLang', () {
      final ILibLocale loc = ILibLocale('de');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleTrueScript', () {
      final ILibLocale loc = ILibLocale('Latn');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleTrueRegion', () {
      final ILibLocale loc = ILibLocale('BE');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleFalseScript', () {
      final ILibLocale loc = ILibLocale('zh-Hank-CN');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleFalseLanguage', () {
      final ILibLocale loc = ILibLocale('zz-Hans-CN');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleFalseRegion', () {
      final ILibLocale loc = ILibLocale('zh-Hans-CQ');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleTrueWithVariant', () {
      final ILibLocale loc = ILibLocale('zh-Hans-CN-SHANGHAI');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleFalseEmpty', () {
      final ILibLocale loc = ILibLocale(' ');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleTrueParts', () {
      final ILibLocale loc = ILibLocale('zh', 'CN', 'Hans');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
  });
}
