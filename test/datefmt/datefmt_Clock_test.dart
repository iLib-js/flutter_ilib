import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_Clock_test.dart] file.");

  group('getClock()', () {
    test('testClock_ar_EG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-EG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-IQ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_MA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-MA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_as_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "as-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_bg_BG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "bg-BG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_bn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "bn-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_bs_Latn_BA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "bs-Latn-BA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_bs_Latn_ME', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "bs-Latn-ME");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_cs_CZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "cs-CZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_da_DK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "da-DK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_de_AT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "de-AT");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_de_CH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "de-CH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_de_DE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "de-DE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_de_LU', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "de-LU");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_el_CY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "el-CY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_el_GR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "el-GR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_AM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-AM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_AU', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-AU");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-AZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_CA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-CA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_GB', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-GB");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_GH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-GH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-HK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-IE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_IS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-IS");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-JP");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_KE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-KE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-KR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_LK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-LK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_MM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-MM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_MW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-MW");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-MY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_NG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-NG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_NZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-NZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_PH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-PH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_PR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-PR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_SG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-SG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-US");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_UG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-UG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_ZA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-ZA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_ZM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-ZM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_AR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-AR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_BO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-BO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_CL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-CL");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_CO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-CO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_DO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-DO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_EC', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-EC");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_ES', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-ES");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_es_GT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-GT");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_HN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-HN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_MX', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-MX");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_NI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-NI");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_PA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-PA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_PE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-PE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_PR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-PR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_PY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-PY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_SV', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-SV");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_US', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-US");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_UY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-UY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_VE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-VE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_et_EE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "et-EE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fa_AF', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fa-AF");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fa_IR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fa-IR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fi_FI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fi-FI");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_BE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-BE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_FR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-FR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_LU', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-LU");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ga_IE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ga-IE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_gu_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "gu-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_he_IL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "he-IL");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_hi_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "hi-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_hr_HR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "hr-HR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_hr_ME', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "hr-ME");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_hr_HU', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "hr-HU");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_id_ID', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "id-ID");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_is_IS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "is-IS");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_it_CH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "it-CH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_it_IT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "it-IT");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ja_JP', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ja-JP");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_kk_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "kk-KZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_kn_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "kn-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ko_KR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ko-KR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ku_IQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ku-IQ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_lt_LT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "lt-LT");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_lv_LV', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "lv-LV");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_mk_MK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "mk-MK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ml_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ml-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_mr_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "mr-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ms_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ms-MY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_nb_NO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "nb-NO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_nl_BE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "nl-BE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_nl_NL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "nl-NL");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_pa_Guru_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pa-Guru-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_pl_PL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pl-PL");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_pt_BR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pt-BR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_pt_PT', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pt-PT");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ro_RO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ro-RO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sr_Cyrl_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sr-Cyrl-RS");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sr_Latn_RS', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sr-Latn-RS");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ru_BY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ru-BY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ru_KG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ru-KG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ru_KZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ru-KZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ru_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ru-GE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ru_RU', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ru-RU");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ru_UA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ru-UA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sk_SK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sk-SK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sl_SI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sl-SI");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sq_AL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sq-AL");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_sq_ME', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sq-ME");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sv_FI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sv-FI");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_sv_SE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "sv-SE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ta_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ta-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_te_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "te-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_th_TH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "th-TH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_tr_AM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "tr-AM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_tr_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "tr-AZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_tr_CY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "tr-CY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_tr_TR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "tr-TR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_uk_UA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "uk-UA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ur_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ur-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_uz_Latn_UZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "uz-Latn-UZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_vi_VN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "vi-VN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_zh_Hans_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "zh-Hans-CN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_zh_Hant_HK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "zh-Hant-HK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_zh_Hant_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "zh-Hant-TW");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_GE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-GE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_CN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-CN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_en_MX', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-MX");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_TW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-TW");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_mn_MN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "mn-MN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_es_CA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-CA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_af_ZA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "af-ZA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_am_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "am-ET");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ha_Latn_NG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ha-Latn-NG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_or_IN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "or-IN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_az_Latn_AZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "az-Latn-AZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_km_KH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "km-KH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_si_LK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "si-LK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ar_AE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-AE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_BH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-BH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_DJ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-DJ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_DZ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-DZ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_JO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-JO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_KW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-KW");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_LB', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-LB");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_LY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-LY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_MR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-MR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_OM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-OM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_QA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-QA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_SA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-SA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_SD', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-SD");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_SY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-SY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_TN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-TN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_ar_YE', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ar-YE");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_ET', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-ET");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_GM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-GM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_LR', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-LR");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_PK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-PK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_SD', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-SD");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_en_SL', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "en-SL");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_es_GQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-GQ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_es_PH', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "es-PH");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_fr_BF', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-BF");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_BJ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-BJ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CD', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CD");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CF', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CF");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CI', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CI");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_CM', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-CM");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_GQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-GQ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_GA', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-GA");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_GN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-GN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_ML', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-ML");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_RW', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-RW");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_SN', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-SN");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_fr_TG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "fr-TG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ms_SG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ms-SG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_pa_PK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pa-PK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_pt_AO', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pt-AO");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_pt_GQ', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pt-GQ");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_pt_CV', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "pt-CV");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 24);
    });
    test('testClock_ur_PK', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "ur-PK");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_zh_Hans_SG', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "zh-Hans-SG");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
    test('testClock_zh_Hans_MY', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: "zh-Hans-MY");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      expect(await fmt.getClock(), 12);
    });
  });
}
