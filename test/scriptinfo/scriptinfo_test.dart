import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [scriptinfo_test.dart] file.');
  setUpAll(() async {
    final ILibLoader ilibjsinstance = ILibLoader.instance;
    await ilibjsinstance.loadJSON();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibScriptInfo()', () {
    test('testScriptConstructor', () {
      final ILibScriptInfo si = ILibScriptInfo('Latn');
      expect(si, isNotNull);
    });

    test('testScriptConstructorDefault', () {
      final ILibScriptInfo si = ILibScriptInfo('');
      expect(si, isNotNull);
    });

    test('testScriptGet1', () {
      final ILibScriptInfo si = ILibScriptInfo('Latn');
      expect(si, isNotNull);

      expect(si.getCode(), 'Latn');
      expect(si.getCodeNumber(), 215);
      expect(si.getName(), 'Latin');
      expect(si.getLongCode(), 'Latin');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isTrue);
    });

    test('testScriptGet2', () {
      final ILibScriptInfo si = ILibScriptInfo('Phag');
      expect(si, isNotNull);

      expect(si.getCode(), 'Phag');
      expect(si.getCodeNumber(), 331);
      expect(si.getName(), 'Phags-pa');
      expect(si.getLongCode(), 'Phags_Pa');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGet3', () {
      final ILibScriptInfo si = ILibScriptInfo('Hebr');
      expect(si, isNotNull);

      expect(si.getCode(), 'Hebr');
      expect(si.getCodeNumber(), 125);
      expect(si.getName(), 'Hebrew');
      expect(si.getLongCode(), 'Hebrew');
      expect(si.getScriptDirection(), 'rtl');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGet4', () {
      final ILibScriptInfo si = ILibScriptInfo('Hans');
      expect(si, isNotNull);

      expect(si.getCode(), 'Hans');
      expect(si.getCodeNumber(), 501);
      expect(si.getName(), 'Han (Simplified variant)');
      expect(si.getLongCode(), 'Han_(Simplified_variant)');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isTrue);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCode', () {
      final ILibScriptInfo si = ILibScriptInfo('Sara');
      expect(si, isNotNull);

      expect(si.getCode(), 'Sara');
      expect(si.getCodeNumber(), 292);
      expect(si.getName(), 'Sarati');
      expect(si.getLongCode(), 'Sarati');
    });

    test('testScriptGetDefaultLongCodeOrya', () {
      final ILibScriptInfo si = ILibScriptInfo('Orya');
      expect(si, isNotNull);

      expect(si.getCode(), 'Orya');
      expect(si.getCodeNumber(), 327);
      expect(si.getName(), 'Oriya (Odia)');
      expect(si.getLongCode(), 'Oriya');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCodeAmharic', () {
      final ILibScriptInfo si = ILibScriptInfo('Ethi');
      expect(si, isNotNull);

      expect(si.getCode(), 'Ethi');
      expect(si.getCodeNumber(), 430);
      expect(si.getName(), 'Ethiopic (Geʻez)');
      expect(si.getLongCode(), 'Ethiopic');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isTrue);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCodeWithSpaces', () {
      final ILibScriptInfo si = ILibScriptInfo('Kore');
      expect(si, isNotNull);

      expect(si.getCode(), 'Kore');
      expect(si.getCodeNumber(), 287);
      expect(si.getName(), 'Korean (alias for Hangul + Han)');
      expect(si.getLongCode(), 'Korean_(alias_for_Hangul_+_Han)');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isTrue);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCodeArab', () {
      final ILibScriptInfo si = ILibScriptInfo('Arab');
      expect(si, isNotNull);

      expect(si.getCode(), 'Arab');
      expect(si.getCodeNumber(), 160);
      expect(si.getName(), 'Arabic');
      expect(si.getLongCode(), 'Arabic');
      expect(si.getScriptDirection(), 'rtl');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetUnknown', () {
      final ILibScriptInfo si = ILibScriptInfo('Fooo');
      expect(si, isNotNull);

      expect(si.getCode(), isNull);
      expect(si.getCodeNumber(), 0);
      expect(si.getName(), isNull);
      expect(si.getLongCode(), isNull);
    });

    test('testScriptGetDefaultLongCode_Berf', () {
      final ILibScriptInfo si = ILibScriptInfo('Berf');
      expect(si, isNotNull);

      expect(si.getCode(), 'Berf');
      expect(si.getCodeNumber(), 258);
      expect(si.getName(), 'Beria Erfe');
      expect(si.getLongCode(), 'Beria_Erfe');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isTrue);
    });

    test('testScriptGetDefaultLongCode_Gara', () {
      final ILibScriptInfo si = ILibScriptInfo('Gara');
      expect(si, isNotNull);

      expect(si.getCode(), 'Gara');
      expect(si.getCodeNumber(), 164);
      expect(si.getName(), 'Garay');
      expect(si.getLongCode(), 'Garay');
      expect(si.getScriptDirection(), 'rtl');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isTrue);
    });

    test('testScriptGetDefaultLongCodeKits', () {
      final ILibScriptInfo si = ILibScriptInfo('Kits');
      expect(si, isNotNull);

      expect(si.getCode(), 'Kits');
      expect(si.getCodeNumber(), 288);
      expect(si.getName(), 'Khitan small script');
      expect(si.getLongCode(), 'Khitan_Small_Script');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isTrue);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCodeMend', () {
      final ILibScriptInfo si = ILibScriptInfo('Mend');
      expect(si, isNotNull);

      expect(si.getCode(), 'Mend');
      expect(si.getCodeNumber(), 438);
      expect(si.getName(), 'Mende Kikakui');
      expect(si.getLongCode(), 'Mende_Kikakui');
      expect(si.getScriptDirection(), 'rtl');
      expect(si.getNeedsIME(), isTrue);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCodePauc', () {
      final ILibScriptInfo si = ILibScriptInfo('Pauc');
      expect(si, isNotNull);

      expect(si.getCode(), 'Pauc');
      expect(si.getCodeNumber(), 263);
      expect(si.getName(), 'Pau Cin Hau');
      expect(si.getLongCode(), 'Pau_Cin_Hau');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetDefaultLongCode_Tols', () {
      final ILibScriptInfo si = ILibScriptInfo('Tols');
      expect(si, isNotNull);

      expect(si.getCode(), 'Tols');
      expect(si.getCodeNumber(), 299);
      expect(si.getName(), 'Tolong Siki');
      expect(si.getLongCode(), 'Tolong_Siki');
      expect(si.getScriptDirection(), 'ltr');
      expect(si.getNeedsIME(), isFalse);
      expect(si.getCasing(), isFalse);
    });

    test('testScriptGetAllScripts', () {
      final List<String> scripts = ILibScriptInfo.getAllScripts();
      expect(scripts, isNotNull);

      expect(scripts.length, 224);
      expect(scripts[0], 'Adlm');
      expect(scripts[1], 'Afak');
      expect(scripts[2], 'Aghb');
      expect(scripts[4], 'Arab');
      expect(scripts[scripts.length - 1], 'Zzzz');
    });

    test('testScriptInfo_ar_EG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-EG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_IQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-IQ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_MA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-MA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_as_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('as-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Beng');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_bg_BG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bg-BG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_bn_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bn-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Beng');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_bs_Latn_BA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bs-Latn-BA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_bs_Latn_ME', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bs-Latn-ME');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_cs_CZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('cs-CZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_da_DK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('da-DK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_de_AT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-AT');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_de_CH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-CH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_de_DE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-DE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_de_LU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-LU');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_el_CY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('el-CY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Grek');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_el_GR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('el-GR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Grek');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_AM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-AM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_AU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-AU');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-AZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_CA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-CA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_GB', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GB');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_GH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_HK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-HK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_IE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-IE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_IS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-IS');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_JP', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-JP');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_KE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-KE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_LK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-LK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_MM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_MW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MW');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_MY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_NG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-NG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_NZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-NZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_PH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-PH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_PR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-PR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_SG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-SG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_US', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-US');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_UG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-UG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_ZA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-ZA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_ZM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-ZM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_AR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-AR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_BO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-BO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_CL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CL');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_CO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_DO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-DO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_EC', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-EC');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_ES', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-ES');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_GT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-GT');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_HN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-HN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_MX', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-MX');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_NI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-NI');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_PA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_PE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_PR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_PY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_SV', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-SV');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_US', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-US');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_UY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-UY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_VE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-VE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_et_EE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('et-EE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fa_IR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fa-IR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_fi_FI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fi-FI');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_BE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-BE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_FR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-FR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_LU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-LU');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ga_IE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ga-IE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_gu_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('gu-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Gujr');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_he_IL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('he-IL');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Hebr');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_hi_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hi-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Deva');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_hr_HR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hr-HR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_hr_ME', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hr-ME');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_id_ID', () {
      final ILibLocaleInfo li = ILibLocaleInfo('id-ID');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_is_IS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('is-IS');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_it_CH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('it-CH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_it_IT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('it-IT');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ja_JP', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ja-JP');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Jpan');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_kn_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('kn-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Knda');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ko_KR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ko-KR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Kore');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ku_Arab_IQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ku-Arab-IQ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_lt_LT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('lt-LT');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_lv_LV', () {
      final ILibLocaleInfo li = ILibLocaleInfo('lv-LV');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_mk_MK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('mk-MK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ml_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ml-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Mlym');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_mr_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('mr-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Deva');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ms_MY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ms-MY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_nb_NO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nb-NO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_nl_BE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-BE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_nl_NL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-NL');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pa_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Guru');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pl_PL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pl-PL');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pt_BR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-BR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pt_PT', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-PT');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ro_RO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ro-RO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sr_Latn_RS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sr-Latn-RS');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ru_BY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-BY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ru_KG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-KG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ru_KZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-KZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ru_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-GE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ru_RU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-RU');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ru_UA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ru-UA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sk_SK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sk-SK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sl_SI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sl-SI');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sq_AL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sq-AL');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sq_ME', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sq-ME');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sv_FI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sv-FI');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_sv_SE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sv-SE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ta_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ta-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Taml');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_te_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('te-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Telu');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_th_TH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('th-TH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Thai');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_tr_AM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-AM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_tr_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-AZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_tr_CY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-CY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_tr_TR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('tr-TR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_uk_UA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uk-UA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ur_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ur-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_uz_Latn_UZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uz-Latn-UZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_vi_VN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('vi-VN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_zh_Hans_CN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hans-CN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Hans');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_zh_Hant_HK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hant-HK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Hant');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_zh_Hant_TW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hant-TW');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Hant');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_CN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-CN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_MX', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-MX');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_TW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-TW');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_CA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_af_ZA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('af-ZA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_am_ET', () {
      final ILibLocaleInfo li = ILibLocaleInfo('am-ET');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Ethi');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ha_Latn_NG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ha-Latn-NG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_or_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('or-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Orya');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_az_Latn_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('az-Latn-AZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_km_KH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('km-KH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Khmr');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_si_LK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('si-LK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Sinh');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ar_AE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-AE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_SA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-SA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ka_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ka-GE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Geor');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    // Language-only cases: the argument is a bare language (no region) that is
    // itself supported — a bundled `{lang}.json` backs the result (not a root
    // default). Kept even though the bare code is not a `locales.json` entry,
    // because it exercises real language-level data for a supported language.
    test('testScriptInfo_pa', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Guru');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ha', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ha');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_az', () {
      final ILibLocaleInfo li = ILibLocaleInfo('az');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });
  });
}
