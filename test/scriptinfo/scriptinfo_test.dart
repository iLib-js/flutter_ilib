import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [scriptinfo_test.dart] file.');
  setUpAll(() async {
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
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

    test('testScriptInfo_en_KR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-KR');
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

    test('testScriptInfo_fa_AF', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fa-AF');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
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

    test('testScriptInfo_hr_HU', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hr-HU');
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

    test('testScriptInfo_kk_KZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('kk-KZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
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

    test('testScriptInfo_ku_IQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ku-IQ');
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

    test('testScriptInfo_pa_Guru_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa-Guru-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Guru');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pa', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Guru');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pa_PK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa-PK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
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

    test('testScriptInfo_sr_Cyrl_RS', () {
      final ILibLocaleInfo li = ILibLocaleInfo('sr-Cyrl-RS');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
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

    test('testScriptInfo_mn_MN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('mn-MN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Cyrl');
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

    test('testScriptInfo_ha_NG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ha-NG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ha_CM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ha-CM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ha_SD', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ha-SD');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_or_IN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('or-IN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Orya');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_az_AZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('az-AZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
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

    test('testScriptInfo_ar_BH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-BH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_DJ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-DJ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_DZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-DZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_JO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-JO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_KW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-KW');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_LB', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-LB');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_LY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-LY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_MR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-MR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_OM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-OM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_QA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-QA');
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

    test('testScriptInfo_ar_SD', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-SD');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_SY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-SY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_TN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-TN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_ar_YE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ar-YE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_en_ET', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-ET');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_GM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-GM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_LR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-LR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_PK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-PK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_RW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-RW');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_SD', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-SD');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_SL', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-SL');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_en_TZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-TZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_CR', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-CR');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_GQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-GQ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_PH', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-PH');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_BF', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-BF');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_BJ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-BJ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CD', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CD');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CF', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CF');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CI', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CI');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_CM', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-CM');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_GQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-GQ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_DJ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-DJ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_DZ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-DZ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_GA', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-GA');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_GN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-GN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_LB', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-LB');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_ML', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-ML');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_RW', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-RW');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_SN', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-SN');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_fr_TG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('fr-TG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ms_SG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ms-SG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pa_Arab_PK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pa-Arab-PK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_pt_AO', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-AO');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pt_GQ', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-GQ');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_pt_CV', () {
      final ILibLocaleInfo li = ILibLocaleInfo('pt-CV');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ur_PK', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ur-PK');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Arab');
      expect(scinfo.getScriptDirection(), 'rtl');
    });

    test('testScriptInfo_zh_Hans_SG', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hans-SG');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Hans');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_zh_Hans_MY', () {
      final ILibLocaleInfo li = ILibLocaleInfo('zh-Hans-MY');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Hans');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_ka_GE', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ka-GE');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Geor');
      expect(scinfo.getScriptDirection(), 'ltr');
    });

    test('testScriptInfo_es_ES', () {
      final ILibLocaleInfo li = ILibLocaleInfo('ca-ES');
      final ILibScriptInfo scinfo = ILibScriptInfo(li.getScript());
      expect(li, isNotNull);
      expect(scinfo, isNotNull);
      expect(li.getScript(), 'Latn');
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
  });
}
