import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [localeinfo_dayofweek_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });
  // 0:sun, 1:mon, 2:tue, 3:wed, 4:thu, 5:fri, 6:sat
  group('dayOFWeek()', () {
    test('testWeekData_null', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('null');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ar_EG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-EG');
      expect(locInfo.getFirstDayOfWeek(), 6);
      expect(locInfo.getWeekEndStart(), 5);
      expect(locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_ar_IQ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-IQ');
      expect(locInfo.getFirstDayOfWeek(), 6);
      expect(locInfo.getWeekEndStart(), 5);
      expect(locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_ar_MA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-MA');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_as_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('as-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bg_BG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('bg-BG');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bn_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('bn-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bs_Latn_BA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('bs-Latn-BA');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bs_Latn_ME', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('bs-Latn-ME');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_cs_CZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('cs-CZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_da_DK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('da-DK');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_AT', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('de-AT');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_CH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('de-CH');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_DE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('de-DE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_LU', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('de-LU');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_el_CY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('el-CY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_el_GR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('el-GR');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_AM', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-AM');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_AU', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-AU');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_AZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-AZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_CA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-CA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GB', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GB');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GH');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_HK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-HK');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_IE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-IE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_IS', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-IS');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_JP', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-JP');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_KE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-KE');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_KR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-KR');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_LK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-LK');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MM', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MM');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MW', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MW');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_NG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-NG');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_NZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-NZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_PH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-PH');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_PR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-PR');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_SG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-SG');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_US', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-US');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_UG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-UG');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_ZA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-ZA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_ZM', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-ZM');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_AR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-AR');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_BO', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-BO');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CL', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CL');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CO', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CO');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_DO', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-DO');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_EC', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-EC');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_ES', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-ES');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_GT', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-GT');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_HN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-HN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_MX', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-MX');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_NI', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-NI');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PE');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PR');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PY');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_SV', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-SV');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_US', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-US');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_UY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-UY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_VE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-VE');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_et_EE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('et-EE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fa_IR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fa-IR');
      expect(locInfo.getFirstDayOfWeek(), 6);
      expect(locInfo.getWeekEndStart(), 5);
      expect(locInfo.getWeekEndEnd(), 5);
    });
    test('testWeekData_fi_FI', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fi-FI');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_BE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-BE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_CA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-CA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_CH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-CH');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_FR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-FR');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_LU', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-LU');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ga_IE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ga-IE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_gu_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('gu-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_he_IL', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('he-IL');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 5);
      expect(locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_hi_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('hi-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_hr_HR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('hr-HR');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_hr_ME', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('hr-ME');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_hr_HU', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('hr-HU');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_id_ID', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('id-ID');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_is_IS', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('is-IS');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_it_CH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('it-CH');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_it_IT', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('it-IT');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ja_JP', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ja-JP');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_kk_KZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('kk-KZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_kn_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('kn-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ko_KR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ko-KR');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ku_IQ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ku-IQ');
      expect(locInfo.getFirstDayOfWeek(), 6);
      expect(locInfo.getWeekEndStart(), 5);
      expect(locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_lt_LT', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('lt-LT');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_lv_LV', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('lv-LV');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_mk_MK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('mk-MK');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ml_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ml-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_mr_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('mr-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ms_MY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ms-MY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_nb_NO', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('nb-NO');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_nl_BE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('nl-BE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_nl_NL', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('nl-NL');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pa_Guru_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pa-Guru-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pl_PL', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pl-PL');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_BR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-BR');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_PT', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-PT');

      final int result = (testPlatform == 'webOS') ? 1 : 0;
      expect(locInfo.getFirstDayOfWeek(), result);

      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ro_RO', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ro-RO');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sr_Cyrl_RS', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sr-Cyrl-RS');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sr_Latn_RS', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sr-Latn-RS');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_BY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-BY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_KG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-KG');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_KZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-KZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_GE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-GE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_RU', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-RU');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_UA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-UA');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sk_SK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sk-SK');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sl_SI', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sl-SI');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sq_AL', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sq-AL');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sq_ME', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sq-ME');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sv_FI', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sv-FI');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sv_SE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('sv-SE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ta_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ta-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_te_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('te-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_th_TH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('th-TH');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_AM', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-AM');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_AZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-AZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_CY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-CY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_TR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-TR');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_uk_UA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('uk-UA');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ur_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ur-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_uz_Latn_UZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('uz-Latn-UZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_vi_VN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('vi-VN');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hans_CN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hans-CN');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hant_HK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hant-HK');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hant_TW', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hant-TW');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_CN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-CN');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MX', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MX');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_TW', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-TW');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_mn_MN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('mn-MN');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_af_ZA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('af-ZA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_am_ET', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('am-ET');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ha_Latn_NG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ha-Latn-NG');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_or_IN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('or-IN');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 0);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_az_Latn_AZ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('az-Latn-AZ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_km_KH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('km-KH');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_si_LK', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('si-LK');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ar_AE', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-AE');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ar_SA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-SA');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 5);
      expect(locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_en_ET', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-ET');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GM', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GM');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_SL', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('en-SL');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CR', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CR');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_GQ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-GQ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PH', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PH');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_BJ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-BJ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_CI', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-CI');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_GQ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-GQ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_GA', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-GA');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_GN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-GN');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_LB', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-LB');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_ML', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-ML');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_RW', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-RW');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_SN', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-SN');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_TG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-TG');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ms_SG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('ms-SG');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_AO', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-AO');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_GQ', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-GQ');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_CV', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-CV');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hans_SG', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hans-SG');
      expect(locInfo.getFirstDayOfWeek(), 0);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hans_MY', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hans-MY');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
  });
}
