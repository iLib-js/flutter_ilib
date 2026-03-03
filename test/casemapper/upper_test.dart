import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [upper_test.dart] file.');

  group('ILibCaseMapper-upper', () {
    test('testToUpperFromLower_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('this is a string'), 'THIS IS A STRING');
    });

    test('testToUpperFromUpper_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('THIS IS A STRING'), 'THIS IS A STRING');
    });

    test('testToUpperFromMixed_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('This is a String'), 'THIS IS A STRING');
    });

    test('testToUpperFromLowerExplicitDirection_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('this is a string'), 'THIS IS A STRING');
    });

    test('testToUpperFromUpperExplicitDirection_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('THIS IS A STRING'), 'THIS IS A STRING');
    });

    test('testToUpperFromMixedExplicitDirection_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('This is a String'), 'THIS IS A STRING');
    });

    test('testToUpperFromPunctuationUnchanged_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('!@#\$%^&*()'), '!@#\$%^&*()');
    });

    test('testToUpperFromNonLatinUnchanged_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('演蟻人 道格拉斯最老英雄'), '演蟻人 道格拉斯最老英雄');
    });

    test('testToUpperFromExtendedLatin_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('ãéìôü'), 'ÃÉÌÔÜ');
    });

    test('testToUpperCyrillic_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('празл'), 'ПРАЗЛ');
    });

    test('testToUpperGreek_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('αβγδεζηθ'), 'ΑΒΓΔΕΖΗΘ');
    });

    test('testToUpperGreekSigma_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('ιασας ιασας'), 'ΙΑΣΑΣ ΙΑΣΑΣ');
    });

    test('testToUpperCoptic_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('ⲁⲃⲅⲇⲉⲋⲍⲏⲑⲓⲕⲗ'), 'ⲀⲂⲄⲆⲈⲊⲌⲎⲐⲒⲔⲖ');
    });

    test('testToUpperArmenian_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('աբգդեզէըթ'), 'ԱԲԳԴԵԶԷԸԹ');
    });

    test('testToUpperGeorgian_default', () {
      final ILibCaseMapper mapper = ILibCaseMapper();
      expect(mapper.map('ⴀⴁⴂⴃⴄⴅⴆⴇⴈⴉ'), 'ႠႡႢႣႤႥႦႧႨႩ');
    });

    /* Azeri tests */
    test('testToUpper_az_AZ', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'az-AZ', direction: 'toupper');
      expect(mapper.map('ıi'), 'Iİ');
    });

    /* Turkish tests */
    test('testToUpper_tr_TR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'tr-TR', direction: 'toupper');
      expect(mapper.map('ıi'), 'Iİ');
    });

    /* Crimean Tatar tests */
    test('testToUpper_crh_Latn_UK', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'crh-Latn-UK', direction: 'toupper');
      expect(mapper.map('ıi'), 'Iİ');
    });

    /* Kazakh tests */
    test('testToUpper_kk_Latn_KK', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'kk-Latn-KK', direction: 'toupper');
      expect(mapper.map('ıi'), 'Iİ');
    });

    /* Tatar tests */
    test('testToUpper_tt_Latn_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'tt-Latn-RU', direction: 'toupper');
      expect(mapper.map('ıi'), 'Iİ');
    });

    /* Karachay-Balkar tests */
    test('testToUpper_krc_Latn_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'krc-Latn-RU', direction: 'toupper');
      expect(mapper.map('ıi'), 'Iİ');
    });

    /* German tests */
    test('testToUpper_de_DE', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'de-DE', direction: 'toupper');
      expect(mapper.map('groß'), 'GROSS');
    });

    /* Russian tests */
    test('testToUpperLowerPalochka_ru_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'ru-RU', direction: 'toupper');
      expect(mapper.map('ӏ'), 'Ӏ');
    });

    test('testToUpperUpperPalochka_ru_RU', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'ru-RU', direction: 'toupper');
      expect(mapper.map('Ӏ'), 'Ӏ');
    });

    /* Greek tests */
    test('testToUpper_el_GR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'el-GR', direction: 'toupper');
      expect(mapper.map('ιασας ιασας'), 'ΙΑΣΑΣ ΙΑΣΑΣ');
    });

    test('testToUpperAccents_el_GR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'el-GR', direction: 'toupper');
      expect(mapper.map('άέήίΰϊϋόύώΐ'), 'ΑΕΗΙΥΙΥΟΥΩΙ');
    });

    /* French tests */
    test('testToUpper_fr_FR', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'fr-FR', direction: 'toupper');
      expect(mapper.map('Tête-à-tête'), 'TÊTE-À-TÊTE');
    });

    /* French Canadian tests */
    test('testToUpper_fr_CA', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'fr-CA', direction: 'toupper');
      expect(mapper.map('Tête-à-tête'), 'TÊTE-À-TÊTE');
    });

    // make sure it is not broken in Lithuanian
    test('testToUpper_lt', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'lt-LT', direction: 'toupper');
      expect(mapper.map('aąbcčdeęėfghiįyjklmnoprsštuųūvzž'),
          'AĄBCČDEĘĖFGHIĮYJKLMNOPRSŠTUŲŪVZŽ');
    });

    /*Afrikaans Test cases*/
    test('testToUpper_af_ZA1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'af-ZA', direction: 'toupper');
      expect(mapper.map('aáäbcdeêëéèfg'), 'AÁÄBCDEÊËÉÈFG');
    });

    test('testToUpper_af_ZA2', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'af-ZA', direction: 'toupper');
      expect(mapper.map('hiîïíjklmnoôöópqrstuûüúvwxyz'),
          'HIÎÏÍJKLMNOÔÖÓPQRSTUÛÜÚVWXYZ');
    });

    test('testToUpperMixed_af_ZA3', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'af-ZA', direction: 'toupper');
      expect(mapper.map('hiî - ïíjkl'), 'HIÎ - ÏÍJKL');
    });

    test('testToUpper_af_NA1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'af-NA', direction: 'toupper');
      expect(mapper.map('aáäbcdeêëéèfg'), 'AÁÄBCDEÊËÉÈFG');
    });

    test('testToUpper_af_NA2', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'af-NA', direction: 'toupper');
      expect(mapper.map('hiîïíjklmnoôöópqrstuûüúvwxyz'),
          'HIÎÏÍJKLMNOÔÖÓPQRSTUÛÜÚVWXYZ');
    });

    test('testToUpperMixed_af_NA3', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'af-NA', direction: 'toupper');
      expect(mapper.map('hiî - ïíjkl'), 'HIÎ - ÏÍJKL');
    });

    /*Hausa */
    test('testToUpper_ha_GH1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'ha-GH', direction: 'toupper');
      expect(mapper.map('abɓcdɗefghijkƙlmnorstuwyƴz'),
          'ABƁCDƊEFGHIJKƘLMNORSTUWYƳZ');
    });

    test('testToUpper_ha_NE1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'ha-NE', direction: 'toupper');
      expect(mapper.map('abɓcdɗefghijkƙlmnorstuwyƴz'),
          'ABƁCDƊEFGHIJKƘLMNORSTUWYƳZ');
    });

    test('testToUpper_ha_NG1', () {
      final ILibCaseMapper mapper =
          ILibCaseMapper(locale: 'ha-NG', direction: 'toupper');
      expect(mapper.map('abɓcdɗefghijkƙlmnorstuwyƴz'),
          'ABƁCDƊEFGHIJKƘLMNORSTUWYƳZ');
    });
  });
}
