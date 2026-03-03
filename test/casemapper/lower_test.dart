import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [lower_test.dart] file.');

  group('ILibCaseMapper-lower', () {
    test('testToLowerFromLower_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('this is a string'), 'this is a string');
    });
    test('testToLowerFromUpper_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('THIS IS A STRING'), 'this is a string');
    });
    test('testToLowerFromMixed_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('This is a String'), 'this is a string');
    });
    test('testToLowerFromPunctuationUnchanged_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map(r'!@#$%^&*()'), r'!@#$%^&*()');
    });
    test('testToLowerFromNonLatinUnchanged_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('演蟻人 道格拉斯最老英雄'), '演蟻人 道格拉斯最老英雄');
    });
    test('testToLowerFromExtendedLatin_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ÃÉÌÔÜ'), 'ãéìôü');
    });
    test('testToLowerCyrillic_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ПРАЗЛ'), 'празл');
    });
    test('testToLowerGreek_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ΑΒΓΔΕΖΗΘ'), 'αβγδεζηθ');
    });
    test('testToLowerGreekSigma_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ΙΑΣΑΣ ΙΑΣΑΣ'), 'ιασας ιασας');
    });
    test('testToLowerCoptic_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ⲀⲂⲄⲆⲈⲊⲌⲎⲐⲒⲔⲖ'), 'ⲁⲃⲅⲇⲉⲋⲍⲏⲑⲓⲕⲗ');
    });
    test('testToLowerArmenian_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ԱԲԳԴԵԶԷԸԹ'), 'աբգդեզէըթ');
    });
    test('testToLowerGeorgian_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper(direction: 'tolower');
      expect(mapper.map('ႠႡႢႣႤႥႦႧႨႩ'), 'ⴀⴁⴂⴃⴄⴅⴆⴇⴈⴉ');
    });
    /* Azeri tests */
    test('testToLower_az_AZ', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'az-AZ');
      expect(mapper.map('Iİ'), 'ıi');
    });
    /* Turkish tests */
    test('testToLower_tr_TR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'tr-TR');
      expect(mapper.map('Iİ'), 'ıi');
    });
    /* Crimean Tatar tests */
    test('testToLower_crh_Latn_UK', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'crh-Latn-UK');
      expect(mapper.map('Iİ'), 'ıi');
    });
    /* Kazakh tests */
    test('testToLower_kk_Latn_KK', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'kk-Latn-KK');
      expect(mapper.map('Iİ'), 'ıi');
    });
    /* Tatar tests */
    test('testToLower_tt_Latn_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'tt-Latn-RU');
      expect(mapper.map('Iİ'), 'ıi');
    });
    /* Karachay-Balkar tests */
    test('testToLower_krc_Latn_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'krc-Latn-RU');
      expect(mapper.map('Iİ'), 'ıi');
    });
    /* German tests */
    test('testToLowerDoubleS_de_DE', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'de-DE');
      expect(mapper.map('GROSS'), 'gross');
    });
    test('testToLowerWithSZ_de_DE', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'de-DE');
      expect(mapper.map('GROß'), 'groß');
    });
    /* Russian tests */
    test('testToLowerLowerPalochka_ru_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'ru-RU');
      expect(mapper.map('ӏ'), 'ӏ');
    });
    test('testToLowerUpperPalochka_ru_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'ru-RU');
      expect(mapper.map('Ӏ'), 'Ӏ');
    });
    /* Greek tests */
    test('testToLower_el_GR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'el-GR');
      expect(mapper.map('ΙΑΣΑΣ ΙΑΣΑΣ'), 'ιασας ιασας');
    });
    /* French tests */
    test('testToLowerNoAccents_fr_FR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'fr-FR');
      expect(mapper.map('TETE-A-TETE'), 'tete-a-tete');
    });
    test('testToLowerWithAccents_fr_FR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'fr-FR');
      expect(mapper.map('TÊTE-À-TÊTE'), 'tête-à-tête');
    });
    test('testToLowerMixedWithAccents_fr_FR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'fr-FR');
      expect(mapper.map('Tête-à-Tête'), 'tête-à-tête');
    });
    /* French Canadian tests */
    test('testToLower_fr_CA', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'fr-CA');
      expect(mapper.map('TÊTE-À-TÊTE'), 'tête-à-tête');
    });
    //make sure it is not broken in Lithuanian
    test('testToLower_lt', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'lt-LT');
      expect(mapper.map('AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ'),
          'aąbcčdeęėfghiįyjklmnoprsštuųūvzž');
    });
    /*Afrikaan Test cases*/
    test('testToLower_af_ZA1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'af-ZA');
      expect(mapper.map('AÁÄBCDEÊËÉÈFG'), 'aáäbcdeêëéèfg');
    });
    test('testToLower_af_ZA2', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'af-ZA');
      expect(mapper.map('HIÎÏÍJKLMNOÔÖÓPQRSTUÛÜÚVWXYZ'),
          'hiîïíjklmnoôöópqrstuûüúvwxyz');
    });
    test('testToLowerMixed_af_ZA3', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'af-ZA');
      expect(mapper.map('Hiî - ÏÍjkL'), 'hiî - ïíjkl');
    });
    test('testToLower_af_NA1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'af-NA');
      expect(mapper.map('AÁÄBCDEÊËÉÈFG'), 'aáäbcdeêëéèfg');
    });
    test('testToLower_af_NA2', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'af-NA');
      expect(mapper.map('HIÎÏÍJKLMNOÔÖÓPQRSTUÛÜÚVWXYZ'),
          'hiîïíjklmnoôöópqrstuûüúvwxyz');
    });
    test('testToLowerMixed_af_NA3', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'af-NA');
      expect(mapper.map('Hiî - ÏÍjkL'), 'hiî - ïíjkl');
    });
    /*Hausa */
    test('testToLower_ha_GH1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'ha-GH');
      expect(mapper.map('ABƁCDƊEFGHIJKƘLMNORSTUWYƳZ'),
          'abɓcdɗefghijkƙlmnorstuwyƴz');
    });
    test('testToLower_ha_NE1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'ha-NE');
      expect(mapper.map('ABƁCDƊEFGHIJKƘLMNORSTUWYƳZ'),
          'abɓcdɗefghijkƙlmnorstuwyƴz');
    });
    test('testToLower_ha_NG1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(direction: 'tolower', locale: 'ha-NG');
      expect(mapper.map('ABƁCDƊEFGHIJKƘLMNORSTUWYƳZ'),
          'abɓcdɗefghijkƙlmnorstuwyƴz');
    });
  });
}
