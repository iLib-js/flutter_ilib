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

  group('ILibLocale0', () {
    test('testLocaleConstructorDefault', () {
      final ILibLocale0 loc = ILibLocale0('it-IT');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'it');
      expect(loc.getRegion(), 'IT');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecWithVariant', () {
      final ILibLocale0 loc = ILibLocale0('en-US-Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), 'Midwest');
      expect(loc.getScript(), isNull);
    });
    test('testLocaleConstructorSpecWithVariant2', () {
      final ILibLocale0 loc = ILibLocale0('ko-KR-flavor');

      expect(loc, isNotNull);
      expect(loc.getLanguage(), 'ko');
      expect(loc.getRegion(), 'KR');
      expect(loc.getScript(), isNull);
      expect(loc.getVariant(), 'flavor');
    });
    test('testLocaleConstructorSpecWithVariant3', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hans-CN-flavor');

      expect(loc, isNotNull);
      expect(loc.getLanguage(), 'zh');
      expect(loc.getRegion(), 'CN');
      expect(loc.getScript(), 'Hans');
      expect(loc.getVariant(), 'flavor');
    });
    test('testLocaleConstructorSpecWithScript', () {
      final ILibLocale0 loc = ILibLocale0('en-US-Latn');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getScript(), 'Latn');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecPartial', () {
      final ILibLocale0 loc = ILibLocale0('en-US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecWithUnderscores1', () {
      // some locales like those in java properties file names
      // or in gnu gettext libraries are specified with underscores
      final ILibLocale0 loc = ILibLocale0('zh_Hans_CN');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'zh');
      expect(loc.getRegion(), 'CN');
      expect(loc.getScript(), 'Hans');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecWithUnderscores2', () {
      // some locales like those in java properties file names
      // or in gnu gettext libraries are specified with underscores
      final ILibLocale0 loc = ILibLocale0('en_US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorShort', () {
      final ILibLocale0 loc = ILibLocale0('en');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), isNull);
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleConstructorSpecMissingRegion', () {
      final ILibLocale0 loc = ILibLocale0('en--Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), isNull);
      expect(loc.getVariant(), 'Midwest');
      expect(loc.getScript(), isNull);
    });
    test('testLocaleConstructorSpecMissingLanguage', () {
      final ILibLocale0 loc = ILibLocale0('-US-Midwest');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), isNull);
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), 'Midwest');
      expect(loc.getScript(), isNull);
    });
    test('testLocaleConstructorSpecMissingLanguageAndVariant', () {
      final ILibLocale0 loc = ILibLocale0('-US');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), isNull);
      expect(loc.getRegion(), 'US');
      expect(loc.getVariant(), isNull);
      expect(loc.getScript(), isNull);
    });

    test('testLocaleIsPseudoTrue', () {
      final ILibLocale0 loc = ILibLocale0('zxx-XX');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isTrue);
    });
    test('testLocaleIsPseudoFalse', () {
      final ILibLocale0 loc = ILibLocale0('en-US');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isFalse);
    });
    test('testLocaleIsPseudoFalseButClosLang', () {
      final ILibLocale0 loc = ILibLocale0('zxx-US');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isFalse);
    });
    test('testLocaleIsPseudoFalse', () {
      final ILibLocale0 loc = ILibLocale0('en-XX');

      expect(loc, isNotNull);

      expect(loc.isPseudo(), isFalse);
    });

    test('testLocaleGetSpecLangOnly', () {
      final ILibLocale0 loc = ILibLocale0('en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en');
    });
    test('testLocaleGetSpecRegionOnly', () {
      final ILibLocale0 loc = ILibLocale0('CA');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'CA');
    });
    test('testLocaleGetSpecScriptOnly', () {
      final ILibLocale0 loc = ILibLocale0('Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn');
    });
    test('testLocaleGetSpecVariantOnly', () {
      final ILibLocale0 loc = ILibLocale0('asdfasdf');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'asdfasdf');
    });
    test('testLocaleGetSpecLangAndScript', () {
      final ILibLocale0 loc = ILibLocale0('Latn-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn');
    });
    test('testLocaleGetSpecLangAndRegion', () {
      final ILibLocale0 loc = ILibLocale0('CA-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-CA');
    });
    test('testLocaleGetSpecLangAndVariant', () {
      final ILibLocale0 loc = ILibLocale0('asdf-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-asdf');
    });
    test('testLocaleGetSpecScriptAndRegion', () {
      final ILibLocale0 loc = ILibLocale0('CA-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn-CA');
    });
    test('testLocaleGetSpecScriptAndVariant', () {
      final ILibLocale0 loc = ILibLocale0('asdf-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn-asdf');
    });
    test('testLocaleGetSpecRegionAndVariant', () {
      final ILibLocale0 loc = ILibLocale0('asdf-CA');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'CA-asdf');
    });
    test('testLocaleGetSpecLangScriptRegion', () {
      final ILibLocale0 loc = ILibLocale0('CA-en-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn-CA');
    });
    test('testLocaleGetSpecScriptRegionVariant', () {
      final ILibLocale0 loc = ILibLocale0('CA-asdf-Latn');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'Latn-CA-asdf');
    });
    test('testLocaleGetSpecLangScriptVariant', () {
      final ILibLocale0 loc = ILibLocale0('asdf-Latn-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn-asdf');
    });
    test('testLocaleGetSpecLangRegionVariant', () {
      final ILibLocale0 loc = ILibLocale0('asdf-CA-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-CA-asdf');
    });
    test('testLocaleGetSpecAll', () {
      final ILibLocale0 loc = ILibLocale0('asdf-CA-Latn-en');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-Latn-CA-asdf');
    });
    test('testLocaleM49RegionCodeGetParts', () {
      final ILibLocale0 loc = ILibLocale0('en-001');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), '001');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleM49RegionCodeGetParts2', () {
      final ILibLocale0 loc = ILibLocale0('en-150');

      expect(loc, isNotNull);

      expect(loc.getLanguage(), 'en');
      expect(loc.getRegion(), '150');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleM49RegionCodeGetSpec', () {
      final ILibLocale0 loc = ILibLocale0('en-001');

      expect(loc, isNotNull);

      expect(loc.getSpec(), 'en-001');
    });
    test('testLocaleNoLocale', () {
      final ILibLocale0 loc = ILibLocale0('-');

      expect(loc, isNotNull);

      expect(loc.getSpec(), '');
      expect(loc.getLanguage(), isNull);
      expect(loc.getRegion(), isNull);
      expect(loc.getScript(), isNull);
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleRegionMap1', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3('SG'), 'SGP');
    });
    test('testLocaleRegionMap2', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3('VN'), 'VNM');
    });
    test('testLocaleRegionMap3', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3('KR'), 'KOR');
    });
    test('testLocaleRegionMapEmpty', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3(''), '');
    });
    test('testLocaleRegionMapUnknown', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3('QQ'), 'QQ');
    });
    test('testLocaleRegionMapWrongCase', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3('sg'), 'sg');
    });
    test('testLocaleRegionMapUndefined', () {
      expect(ILibLocale0.regionAlpha2ToAlpha3(null), isNull);
    });
    test('testLocaleLanguageMap1', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3('ko'), 'kor');
    });
    test('testLocaleLanguageMap2', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3('th'), 'tha');
    });
    test('testLocaleLanguageMap3', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3('hr'), 'hrv');
    });
    test('testLocaleLanguageMapEmpty', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3(''), '');
    });
    test('testLocaleLanguageMapUnknown', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3('qq'), 'qq');
    });
    test('testLocaleLanguageMapWrongCase', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3('EN'), 'EN');
    });
    test('testLocaleLanguageMapUndefined', () {
      expect(ILibLocale0.languageAlpha1ToAlpha3(null), isNull);
    });
    test('testLocaleGetLanguageAlpha3_1', () {
      final ILibLocale0 loc = ILibLocale0('en-US');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), 'eng');
    });
    test('testLocaleGetLanguageAlpha3_2', () {
      final ILibLocale0 loc = ILibLocale0('ru-RU');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), 'rus');
    });
    test('testLocaleGetLanguageAlpha3_3', () {
      final ILibLocale0 loc = ILibLocale0('gv-GB');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), 'glv');
    });
    test('testLocaleGetLanguageAlpha3NoLanguage', () {
      final ILibLocale0 loc = ILibLocale0('GB');

      expect(loc, isNotNull);

      expect(loc.getLanguageAlpha3(), isNull);
    });
    test('testLocaleGetRegionAlpha3_1', () {
      final ILibLocale0 loc = ILibLocale0('en-US');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), 'USA');
    });
    test('testLocaleGetRegionAlpha3_2', () {
      final ILibLocale0 loc = ILibLocale0('ru-RU');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), 'RUS');
    });
    test('testLocaleGetRegionAlpha3_3', () {
      final ILibLocale0 loc = ILibLocale0('gv-GB');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), 'GBR');
    });
    test('testLocaleGetRegionAlpha3NoRegion', () {
      final ILibLocale0 loc = ILibLocale0('en');

      expect(loc, isNotNull);

      expect(loc.getRegionAlpha3(), isNull);
    });
    test('testLocaleGetLanguageSpecSimple', () {
      final ILibLocale0 loc = ILibLocale0('en');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'en');
    });
    test('testLocaleGetLanguageSpecLeaveOutRegionAndVariant', () {
      final ILibLocale0 loc = ILibLocale0('en-US-MILITARY');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'en');
    });
    test('testLocaleGetLanguageSpecIncludeScript', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hans');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'zh-Hans');
    });
    test('testLocaleGetLanguageSpecIncludeScriptButNotOthers', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hans-CN-GOVT');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), 'zh-Hans');
    });
    test('testLocaleGetLanguageSpecLanguageAndScriptMissing', () {
      final ILibLocale0 loc = ILibLocale0('CN');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), '');
    });
    test('testLocaleGetLanguageSpecNoScriptWithoutLanguage', () {
      final ILibLocale0 loc = ILibLocale0('Hans-CN');
      expect(loc, isNotNull);
      expect(loc.getLangSpec(), '');
    });
    test('testLocaleIsValidLocaleTrueFull', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hans-CN');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleTrueLang', () {
      final ILibLocale0 loc = ILibLocale0('de');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleTrueScript', () {
      final ILibLocale0 loc = ILibLocale0('Latn');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleTrueRegion', () {
      final ILibLocale0 loc = ILibLocale0('BE');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleFalseScript', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hank-CN');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleFalseLanguage', () {
      final ILibLocale0 loc = ILibLocale0('zz-Hans-CN');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleFalseRegion', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hans-CQ');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
    test('testLocaleIsValidLocaleTrueWithVariant', () {
      final ILibLocale0 loc = ILibLocale0('zh-Hans-CN-SHANGHAI');
      expect(loc, isNotNull);
      expect(loc.isValid(), isTrue);
    });
    test('testLocaleIsValidLocaleFalseEmpty', () {
      final ILibLocale0 loc = ILibLocale0(' ');
      expect(loc, isNotNull);
      expect(loc.isValid(), isFalse);
    });
  });
}
