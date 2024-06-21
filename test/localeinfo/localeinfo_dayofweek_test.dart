import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [localeinfo_dayofweek_test.dart] file.");
  // 0:sun, 1:mon, 2:tue, 3:wed, 4:thu, 5:fri, 6:sat
  group('dayOFWeek()', () {
    test('testWeekData_ar_EG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ar-EG");
      expect(await locInfo.getFirstDayOfWeek(), 6);
      expect(await locInfo.getWeekEndStart(), 5);
      expect(await locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_ar_IQ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ar-IQ");
      expect(await locInfo.getFirstDayOfWeek(), 6);
      expect(await locInfo.getWeekEndStart(), 5);
      expect(await locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_ar_MA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ar-MA");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_as_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("as-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bg_BG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("bg-BG");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bn_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("bn-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bs_Latn_BA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("bs-Latn-BA");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_bs_Latn_ME', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("bs-Latn-ME");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_cs_CZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("cs-CZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_da_DK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("da-DK");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_AT', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("de-AT");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_CH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("de-CH");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_DE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("de-DE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_de_LU', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("de-LU");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_el_CY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("el-CY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_el_GR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("el-GR");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_AM', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-AM");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_AU', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-AU");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_AZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-AZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_CA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-CA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GB', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-GB");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-GH");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_HK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-HK");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_IE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-IE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_IS', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-IS");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_JP', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-JP");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_KE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-KE");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_KR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-KR");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_LK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-LK");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MM', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-MM");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MW', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-MW");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-MY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_NG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-NG");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_NZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-NZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_PH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-PH");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_PR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-PR");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_SG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-SG");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_US', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-US");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_UG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-UG");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_ZA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-ZA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_ZM', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-ZM");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_AR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-AR");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_BO', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-BO");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CL', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-CL");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CO', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-CO");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_DO', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-DO");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_EC', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-EC");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_ES', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-ES");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_GT', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-GT");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_HN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-HN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_MX', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-MX");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_NI', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-NI");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-PA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-PE");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-PR");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-PY");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_SV', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-SV");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_US', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-US");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_UY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-UY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_VE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-VE");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_et_EE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("et-EE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fa_IR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fa-IR");
      expect(await locInfo.getFirstDayOfWeek(), 6);
      expect(await locInfo.getWeekEndStart(), 5);
      expect(await locInfo.getWeekEndEnd(), 5);
    });
    test('testWeekData_fi_FI', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fi-FI");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_BE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-BE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_CA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-CA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_CH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-CH");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_FR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-FR");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_LU', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-LU");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ga_IE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ga-IE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_gu_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("gu-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_he_IL', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("he-IL");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 5);
      expect(await locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_hi_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("hi-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_hr_HR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("hr-HR");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_hr_ME', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("hr-ME");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_hr_HU', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("hr-HU");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_id_ID', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("id-ID");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_is_IS', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("is-IS");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_it_CH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("it-CH");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_it_IT', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("it-IT");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ja_JP', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ja-JP");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_kk_KZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("kk-KZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_kn_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("kn-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ko_KR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ko-KR");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ku_IQ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ku-IQ");
      expect(await locInfo.getFirstDayOfWeek(), 6);
      expect(await locInfo.getWeekEndStart(), 5);
      expect(await locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_lt_LT', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("lt-LT");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_lv_LV', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("lv-LV");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_mk_MK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("mk-MK");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ml_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ml-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_mr_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("mr-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ms_MY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ms-MY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_nb_NO', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("nb-NO");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_nl_BE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("nl-BE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_nl_NL', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("nl-NL");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pa_Guru_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pa-Guru-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pl_PL', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pl-PL");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_BR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pt-BR");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_PT', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pt-PT");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ro_RO', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ro-RO");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sr_Cyrl_RS', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sr-Cyrl-RS");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sr_Latn_RS', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sr-Latn-RS");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_BY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ru-BY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_KG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ru-KG");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_KZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ru-KZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_GE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ru-GE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_RU', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ru-RU");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ru_UA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ru-UA");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sk_SK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sk-SK");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sl_SI', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sl-SI");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sq_AL', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sq-AL");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sq_ME', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sq-ME");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sv_FI', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sv-FI");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_sv_SE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("sv-SE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ta_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ta-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_te_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("te-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_th_TH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("th-TH");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_AM', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("tr-AM");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_AZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("tr-AZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_CY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("tr-CY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_tr_TR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("tr-TR");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_uk_UA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("uk-UA");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ur_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ur-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_uz_Latn_UZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("uz-Latn-UZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_vi_VN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("vi-VN");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hans_CN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("zh-Hans-CN");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hant_HK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("zh-Hant-HK");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hant_TW', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("zh-Hant-TW");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-GE");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_CN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-CN");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_MX', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-MX");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_TW', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-TW");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_mn_MN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("mn-MN");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-CA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_af_ZA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("af-ZA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_am_ET', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("am-ET");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ha_Latn_NG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ha-Latn-NG");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_or_IN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("or-IN");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 0);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_az_Latn_AZ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("az-Latn-AZ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_km_KH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("km-KH");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_si_LK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("si-LK");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ar_AE', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ar-AE");
      expect(await locInfo.getFirstDayOfWeek(), 6);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ar_SA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ar-SA");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 5);
      expect(await locInfo.getWeekEndEnd(), 6);
    });
    test('testWeekData_en_ET', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-ET");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_GM', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-GM");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_en_SL', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("en-SL");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_CR', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-CR");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_GQ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-GQ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_es_PH', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("es-PH");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_BJ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-BJ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_CI', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-CI");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_GQ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-GQ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_GA', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-GA");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_GN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-GN");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_LB', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-LB");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_ML', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-ML");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_RW', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-RW");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_SN', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-SN");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_fr_TG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("fr-TG");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ms_SG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ms-SG");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pa_PK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pa-PK");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_AO', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pt-AO");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_GQ', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pt-GQ");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_pt_CV', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("pt-CV");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_ur_PK', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("ur-PK");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hans_SG', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("zh-Hans-SG");
      expect(await locInfo.getFirstDayOfWeek(), 0);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
    test('testWeekData_zh_Hans_MY', () async {
      ILibLocaleInfo locInfo = ILibLocaleInfo("zh-Hans-MY");
      expect(await locInfo.getFirstDayOfWeek(), 1);
      expect(await locInfo.getWeekEndStart(), 6);
      expect(await locInfo.getWeekEndEnd(), 0);
    });
  });
}