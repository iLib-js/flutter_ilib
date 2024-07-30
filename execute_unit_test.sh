#!/usr/bin/env bash
echo "set the LIBQUICKJSC_TEST_PATH"
export LIBQUICKJSC_TEST_PATH="${PWD}/test/linux/libquickjs_c_bridge_plugin.so"

echo "execute the unit tests..."
echo "DateFmt..."
flutter test test/datefmt/datefmt_af_ZA_test.dart
flutter test test/datefmt/datefmt_am_ET_test.dart
flutter test test/datefmt/datefmt_ar_EG_test.dart
flutter test test/datefmt/datefmt_ar_SA_test.dart
flutter test test/datefmt/datefmt_as_IN_test.dart
flutter test test/datefmt/datefmt_az_Latn_AZ_test.dart
flutter test test/datefmt/datefmt_bg_test.dart
flutter test test/datefmt/datefmt_bn_IN_test.dart
flutter test test/datefmt/datefmt_bs_Latn_BA_test.dart
flutter test test/datefmt/datefmt_cs_CZ_test.dart
flutter test test/datefmt/datefmt_da_DK_test.dart
flutter test test/datefmt/datefmt_de_DE_test.dart
flutter test test/datefmt/datefmt_el_GR_test.dart
flutter test test/datefmt/datefmt_el_GR_test.dart
flutter test test/datefmt/datefmt_en_AU_test.dart
flutter test test/datefmt/datefmt_en_CA_test.dart
flutter test test/datefmt/datefmt_en_GB_test.dart
flutter test test/datefmt/datefmt_en_HK_test.dart
flutter test test/datefmt/datefmt_en_IE_test.dart
flutter test test/datefmt/datefmt_en_IN_test.dart
flutter test test/datefmt/datefmt_en_MY_test.dart
flutter test test/datefmt/datefmt_en_NG_test.dart
flutter test test/datefmt/datefmt_en_NZ_test.dart
flutter test test/datefmt/datefmt_en_SG_test.dart
flutter test test/datefmt/datefmt_en_US_test.dart
flutter test test/datefmt/datefmt_en_ZA_test.dart
flutter test test/datefmt/datefmt_es_CO_test.dart
flutter test test/datefmt/datefmt_es_ES_test.dart
flutter test test/datefmt/datefmt_es_MX_test.dart
flutter test test/datefmt/datefmt_es_US_test.dart
flutter test test/datefmt/datefmt_et_EE_test.dart
flutter test test/datefmt/datefmt_fa_IR_test.dart
flutter test test/datefmt/datefmt_fi_FI_test.dart
flutter test test/datefmt/datefmt_fr_CA_test.dart
flutter test test/datefmt/datefmt_fr_FR_test.dart
flutter test test/datefmt/datefmt_ga_IE_test.dart
flutter test test/datefmt/datefmt_gu_IN_test.dart
flutter test test/datefmt/datefmt_ha_Latn_NG_test.dart
flutter test test/datefmt/datefmt_he_IL_test.dart
flutter test test/datefmt/datefmt_hi_IN_test.dart
flutter test test/datefmt/datefmt_hr_HR_test.dart
flutter test test/datefmt/datefmt_id_ID_test.dart
flutter test test/datefmt/datefmt_it_IT_test.dart
flutter test test/datefmt/datefmt_ja_JP_test.dart
flutter test test/datefmt/datefmt_ka_GE_test.dart
flutter test test/datefmt/datefmt_kk_Cyrl_KZ_test.dart
flutter test test/datefmt/datefmt_km_KH_test.dart
flutter test test/datefmt/datefmt_kn_IN_test.dart
flutter test test/datefmt/datefmt_ko_KR_test.dart
flutter test test/datefmt/datefmt_ku_Arab_IQ_test.dart
flutter test test/datefmt/datefmt_lt_LT_test.dart
flutter test test/datefmt/datefmt_lv_LV_test.dart
flutter test test/datefmt/datefmt_mk_MK_test.dart
flutter test test/datefmt/datefmt_ml_IN_test.dart
flutter test test/datefmt/datefmt_mn_Cyrl_MN_test.dart
flutter test test/datefmt/datefmt_mr_IN_test.dart
flutter test test/datefmt/datefmt_ms_MY_test.dart
flutter test test/datefmt/datefmt_nb_NO_test.dart
flutter test test/datefmt/datefmt_nl_NL_test.dart
flutter test test/datefmt/datefmt_or_IN_test.dart
flutter test test/datefmt/datefmt_pa_IN_test.dart
flutter test test/datefmt/datefmt_pl_PL_test.dart
flutter test test/datefmt/datefmt_pt_BR_test.dart
flutter test test/datefmt/datefmt_pt_PT_test.dart
flutter test test/datefmt/datefmt_ro_RO_test.dart
flutter test test/datefmt/datefmt_ru_RU_test.dart
flutter test test/datefmt/datefmt_si_LK_test.dart
flutter test test/datefmt/datefmt_sk_SK_test.dart
flutter test test/datefmt/datefmt_sl_SI_test.dart
flutter test test/datefmt/datefmt_sq_AL_test.dart
flutter test test/datefmt/datefmt_sr_Latn_RS_test.dart
flutter test test/datefmt/datefmt_sv_SE_test.dart
flutter test test/datefmt/datefmt_sw_KE_test.dart
flutter test test/datefmt/datefmt_ta_IN_test.dart
flutter test test/datefmt/datefmt_te_IN_test.dart
flutter test test/datefmt/datefmt_th_TH_test.dart
flutter test test/datefmt/datefmt_tr_TR_test.dart
flutter test test/datefmt/datefmt_uk_UA_test.dart
flutter test test/datefmt/datefmt_ur_IN_test.dart
flutter test test/datefmt/datefmt_uz_Latn_UZ_test.dart
flutter test test/datefmt/datefmt_vi_VN_test.dart
flutter test test/datefmt/datefmt_zh_CN_test.dart
flutter test test/datefmt/datefmt_zh_Hant_HK_test.dart
flutter test test/datefmt/datefmt_zh_Hant_TW_test.dart
flutter test test/datefmt/datefmt_WeekdayTranslation_test.dart
flutter test test/datefmt/datefmt_MonthTranslation_test.dart

echo "LocaleInfo..."
flutter test test/localeinfo/localeinfo_dayofweek_test.dart

echo "Basic..."
flutter test test/basic/flutter_ilib_datefmt_test.dart
flutter test test/basic/flutter_ilib_test.dart