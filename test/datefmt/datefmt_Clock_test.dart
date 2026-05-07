import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_Clock_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('getClock()', () {
    test('testClock_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-EG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-IQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_MA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-MA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'as-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'bg-BG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'bn-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_bs_Latn_ME', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-ME');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'cs-CZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_da_DK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'da-DK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_de_AT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-AT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_de_CH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-CH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_de_DE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-DE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_de_LU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-LU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_el_CY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'el-CY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'el-GR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_AM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-AM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_AU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-AU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_AZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-AZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_CA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-CA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_GB', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GB');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_GH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-HK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-IE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_IS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-IS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-JP');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-KE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-KR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-LK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_MM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_MW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_NG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-NG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_NZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-NZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_PH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-PH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_PR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-PR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_SG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-SG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-US');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_UG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-UG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-ZA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_ZM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-ZM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_AR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-AR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_BO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-BO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_CL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-CL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_CO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-CO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_DO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-DO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_EC', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-EC');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_ES', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-ES');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_es_GT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-GT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_HN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-HN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-MX');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_NI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-NI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_PA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_PE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_PR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_PY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_SV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-SV');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-US');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_UY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-UY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_VE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-VE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'et-EE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fa_AF', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fa-AF');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fa-IR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fi-FI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_BE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-BE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_FR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-FR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_LU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-LU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ga-IE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_gu_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'gu-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'he-IL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hi-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hr-HR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_hr_ME', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hr-ME');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_hr_HU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hr-HU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'id-ID');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_is_IS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'is-IS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_it_CH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'it-CH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_it_IT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'it-IT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ja-JP');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_kk_KZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'kk-KZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_kn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'kn-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ko-KR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ku_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ku-IQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_lt_LT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'lt-LT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'lv-LV');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'mk-MK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ml_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ml-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_mr_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'mr-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ms-MY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_nb_NO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'nb-NO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_nl_BE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'nl-BE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'nl-NL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_pa_Guru_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-Guru-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pl-PL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_pt_BR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-BR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_pt_PT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-PT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ro-RO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sr_Cyrl_RS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sr-Cyrl-RS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sr-Latn-RS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ru_BY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-BY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ru_KG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-KG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ru_KZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-KZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ru_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-GE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-RU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ru_UA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-UA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sk_SK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sk-SK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sl_SI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sl-SI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sq-AL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_sq_ME', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sq-ME');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sv_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sv-FI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_sv_SE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sv-SE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ta_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ta-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_te_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'te-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'th-TH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_tr_AM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-AM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_tr_AZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-AZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_tr_CY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-CY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-TR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_uk_UA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'uk-UA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ur_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ur-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_uz_Latn_UZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'uz-Latn-UZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_vi_VN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'vi-VN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final int result = (testPlatform == 'webOS') ? 24 : 12;
      expect(fmt.getClock(), result);
    });
    test('testClock_en_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-CN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_en_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MX');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-TW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_mn_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'mn-MN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_es_CA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-CA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'af-ZA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_am_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'am-ET');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ha_Latn_NG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ha-Latn-NG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      final int result = (testPlatform == 'webOS') ? 12 : 24;
      expect(fmt.getClock(), result);
    });
    test('testClock_or_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'or-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_az_Latn_AZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'az-Latn-AZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'km-KH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'si-LK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ar_AE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-AE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_BH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-BH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_DJ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-DJ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_DZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-DZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_JO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-JO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_KW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-KW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_LB', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-LB');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_LY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-LY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_MR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-MR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_OM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-OM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_QA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-QA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-SA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_SD', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-SD');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_SY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-SY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_TN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-TN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_ar_YE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-YE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_ET', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-ET');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_GM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_LR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-LR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_PK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-PK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_SD', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-SD');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_en_SL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-SL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_es_GQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-GQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_es_PH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_fr_BF', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-BF');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_BJ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-BJ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CD', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CD');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CF', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CF');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_CM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_GQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-GQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_GA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-GA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_GN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-GN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_ML', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-ML');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_RW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-RW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_SN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-SN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_fr_TG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-TG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_ms_SG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ms-SG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_pt_AO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-AO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_pt_GQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-GQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_pt_CV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-CV');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 24);
    });
    test('testClock_zh_Hans_SG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-SG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
    test('testClock_zh_Hans_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-MY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(fmt.getClock(), 12);
    });
  });
}
