# Test File Mapping: iLib JS → flutter_ilib Dart

Mapping table showing which iLib JS test file (`github.com/iLib-js/iLib`) each flutter_ilib Dart test file was converted from.

JS source path base: `js/test/`

## Calendar Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/calendar/testgregorian_test.dart` | `js/test/testcal_gregorian.js` | GregorianCal (month lengths, leap years, etc.) |
| `test/calendar/testgregoriandate_test.dart` | `js/test/testgregoriandate.js` | GregorianDate (JD↔date conversion) |
| `test/calendar/testgregratadie_test.dart` | `js/test/testgregratadie.js` | GregRataDie (RD↔date conversion) |
| `test/calendar/testthaisolar_test.dart` | `js/test/testcal_thaisolar.js` | ThaiSolarCal |
| `test/calendar/testthaisolardate_test.dart` | `js/test/testthaisolardate.js` | ThaiSolarDate |
| `test/calendar/testjulian_test.dart` | `js/test/testcal_julian.js` | JulianCal |
| `test/calendar/testjuliandate_test.dart` | `js/test/testjuliandate.js` | JulianDate |
| `test/calendar/testislamic_test.dart` | `js/test/testcal_islamic.js` | IslamicCal |
| `test/calendar/testislamicdate_test.dart` | `js/test/testislamicdate.js` | IslamicDate |
| `test/calendar/testhebrew_test.dart` | `js/test/testcal_hebrew.js` | HebrewCal |
| `test/calendar/testhebrewdate_test.dart` | `js/test/testhebrewdate.js` | HebrewDate |
| `test/calendar/testethiopic_test.dart` | `js/test/testcal_ethiopic.js` | EthiopicCal |
| `test/calendar/testethiopicdate_test.dart` | `js/test/testethiopicdate.js` | EthiopicDate |
| `test/calendar/testcoptic_test.dart` | `js/test/testcal_coptic.js` | CopticCal |
| `test/calendar/testcopticdate_test.dart` | `js/test/testcopticdate.js` | CopticDate |
| `test/calendar/testpersian_test.dart` | `js/test/testcal_persian.js` + `js/test/testcal_persianAlgo.js` | PersianCal + PersianAlgoCal (two files merged) |
| `test/calendar/testpersiandate_test.dart` | `js/test/testpersiandate.js` + `js/test/testpersianalgodate.js` | PersianDate + PersianAlgoDate (two files merged) |

| `test/calendar/testcalendar_test.dart` | `js/test/testcalendar.js` | ILibCalendar factory (invalid input, getCalendars) |
| `test/calendar/testcopticdate_extra_test.dart` | — | flutter_ilib-specific (getDayOfYear, getEra) |

## DateFmt Locale Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/datefmt/datefmt_af_ZA_test.dart` | `js/test/testdatefmt_af_ZA.js` | |
| `test/datefmt/datefmt_am_ET_test.dart` | `js/test/testdatefmt_am_ET.js` | |
| `test/datefmt/datefmt_ar_EG_test.dart` | `js/test/testdatefmt_ar_EG.js` | |
| `test/datefmt/datefmt_ar_SA_test.dart` | `js/test/testdatefmt_ar_SA.js` | |
| `test/datefmt/datefmt_as_IN_test.dart` | `js/test/testdatefmt_as_IN.js` | |
| `test/datefmt/datefmt_az_Latn_AZ_test.dart` | `js/test/testdatefmt_az_Latn_AZ.js` | |
| `test/datefmt/datefmt_bg_test.dart` | `js/test/testdatefmt_bg_BG.js` | Filename shortened |
| `test/datefmt/datefmt_bn_IN_test.dart` | `js/test/testdatefmt_bn_IN.js` | |
| `test/datefmt/datefmt_bs_Latn_BA_test.dart` | `js/test/testdatefmt_bs_Latn_BA.js` | |
| `test/datefmt/datefmt_cs_CZ_test.dart` | `js/test/testdatefmt_cs_CZ.js` | |
| `test/datefmt/datefmt_da_DK_test.dart` | `js/test/testdatefmt_da_DK.js` | |
| `test/datefmt/datefmt_de_DE_test.dart` | `js/test/testdatefmt_de_DE.js` | |
| `test/datefmt/datefmt_el_GR_test.dart` | `js/test/testdatefmt_el_GR.js` | |
| `test/datefmt/datefmt_en_AU_test.dart` | `js/test/testdatefmt_en_AU.js` | |
| `test/datefmt/datefmt_en_CA_test.dart` | `js/test/testdatefmt_en_CA.js` | |
| `test/datefmt/datefmt_en_GB_test.dart` | `js/test/testdatefmt_en_GB.js` | |
| `test/datefmt/datefmt_en_HK_test.dart` | `js/test/testdatefmt_en_HK.js` | |
| `test/datefmt/datefmt_en_IE_test.dart` | `js/test/testdatefmt_en_IE.js` | |
| `test/datefmt/datefmt_en_IN_test.dart` | `js/test/testdatefmt_en_IN.js` | |
| `test/datefmt/datefmt_en_KE_test.dart` | `js/test/testdatefmt_en_KE.js` | |
| `test/datefmt/datefmt_en_MY_test.dart` | `js/test/testdatefmt_en_MY.js` | |
| `test/datefmt/datefmt_en_NZ_test.dart` | `js/test/testdatefmt_en_NZ.js` | |
| `test/datefmt/datefmt_en_SG_test.dart` | `js/test/testdatefmt_en_SG.js` | |
| `test/datefmt/datefmt_en_US_test.dart` | `js/test/testdatefmt_en_US.js` | |
| `test/datefmt/datefmt_en_ZA_test.dart` | `js/test/testdatefmt_en_ZA.js` | |
| `test/datefmt/datefmt_es_CO_test.dart` | `js/test/testdatefmt_es_CO.js` | |
| `test/datefmt/datefmt_es_ES_test.dart` | `js/test/testdatefmt_es_ES.js` | |
| `test/datefmt/datefmt_es_MX_test.dart` | `js/test/testdatefmt_es_MX.js` | |
| `test/datefmt/datefmt_es_US_test.dart` | `js/test/testdatefmt_es_US.js` | |
| `test/datefmt/datefmt_et_EE_test.dart` | `js/test/testdatefmt_et_EE.js` | |
| `test/datefmt/datefmt_fa_IR_test.dart` | `js/test/testdatefmt_fa_IR.js` | |
| `test/datefmt/datefmt_fi_FI_test.dart` | `js/test/testdatefmt_fi_FI.js` | |
| `test/datefmt/datefmt_fr_CA_test.dart` | `js/test/testdatefmt_fr_CA.js` | |
| `test/datefmt/datefmt_fr_FR_test.dart` | `js/test/testdatefmt_fr_FR.js` | |
| `test/datefmt/datefmt_ga_IE_test.dart` | `js/test/testdatefmt_ga_IE.js` | |
| `test/datefmt/datefmt_gu_IN_test.dart` | `js/test/testdatefmt_gu_IN.js` | |
| `test/datefmt/datefmt_ha_Latn_NG_test.dart` | `js/test/testdatefmt_ha_Latn_NG.js` | |
| `test/datefmt/datefmt_he_IL_test.dart` | `js/test/testdatefmt_he_IL.js` | |
| `test/datefmt/datefmt_hi_IN_test.dart` | `js/test/testdatefmt_hi_IN.js` | |
| `test/datefmt/datefmt_hr_HR_test.dart` | `js/test/testdatefmt_hr_HR.js` | |
| `test/datefmt/datefmt_id_ID_test.dart` | `js/test/testdatefmt_id_ID.js` | |
| `test/datefmt/datefmt_it_IT_test.dart` | `js/test/testdatefmt_it_IT.js` | |
| `test/datefmt/datefmt_ja_JP_test.dart` | `js/test/testdatefmt_ja_JP.js` | |
| `test/datefmt/datefmt_ka_GE_test.dart` | `js/test/testdatefmt_ka_GE.js` | |
| `test/datefmt/datefmt_kk_Cyrl_KZ_test.dart` | `js/test/testdatefmt_kk_Cyrl_KZ.js` | |
| `test/datefmt/datefmt_km_KH_test.dart` | `js/test/testdatefmt_km_KH.js` | |
| `test/datefmt/datefmt_kn_IN_test.dart` | `js/test/testdatefmt_kn_IN.js` | |
| `test/datefmt/datefmt_ko_KR_test.dart` | `js/test/testdatefmt_ko_KR.js` | |
| `test/datefmt/datefmt_ku_Arab_IQ_test.dart` | `js/test/testdatefmt_ku_Arab_IQ.js` | |
| `test/datefmt/datefmt_lt_LT_test.dart` | `js/test/testdatefmt_lt_LT.js` | |
| `test/datefmt/datefmt_lv_LV_test.dart` | `js/test/testdatefmt_lv_LV.js` | |
| `test/datefmt/datefmt_mk_MK_test.dart` | `js/test/testdatefmt_mk_MK.js` | |
| `test/datefmt/datefmt_ml_IN_test.dart` | `js/test/testdatefmt_ml_IN.js` | |
| `test/datefmt/datefmt_mn_Cyrl_MN_test.dart` | `js/test/testdatefmt_mn_Cyrl_MN.js` | |
| `test/datefmt/datefmt_mr_IN_test.dart` | `js/test/testdatefmt_mr_IN.js` | |
| `test/datefmt/datefmt_ms_MY_test.dart` | `js/test/testdatefmt_ms_MY.js` | |
| `test/datefmt/datefmt_nb_NO_test.dart` | `js/test/testdatefmt_nb_NO.js` | |
| `test/datefmt/datefmt_nl_NL_test.dart` | `js/test/testdatefmt_nl_NL.js` | |
| `test/datefmt/datefmt_or_IN_test.dart` | `js/test/testdatefmt_or_IN.js` | |
| `test/datefmt/datefmt_pa_IN_test.dart` | `js/test/testdatefmt_pa_IN.js` | |
| `test/datefmt/datefmt_pl_PL_test.dart` | `js/test/testdatefmt_pl_PL.js` | |
| `test/datefmt/datefmt_pt_BR_test.dart` | `js/test/testdatefmt_pt_BR.js` | |
| `test/datefmt/datefmt_pt_PT_test.dart` | `js/test/testdatefmt_pt_PT.js` | |
| `test/datefmt/datefmt_ro_RO_test.dart` | `js/test/testdatefmt_ro_RO.js` | |
| `test/datefmt/datefmt_ru_RU_test.dart` | `js/test/testdatefmt_ru_RU.js` | |
| `test/datefmt/datefmt_si_LK_test.dart` | `js/test/testdatefmt_si_LK.js` | |
| `test/datefmt/datefmt_sk_SK_test.dart` | `js/test/testdatefmt_sk_SK.js` | |
| `test/datefmt/datefmt_sl_SI_test.dart` | `js/test/testdatefmt_sl_SI.js` | |
| `test/datefmt/datefmt_sq_AL_test.dart` | `js/test/testdatefmt_sq_AL.js` | |
| `test/datefmt/datefmt_sr_Latn_RS_test.dart` | `js/test/testdatefmt_sr_Latn_RS.js` | |
| `test/datefmt/datefmt_sv_SE_test.dart` | `js/test/testdatefmt_sv_SE.js` | |
| `test/datefmt/datefmt_sw_KE_test.dart` | `js/test/testdatefmt_sw_KE.js` | |
| `test/datefmt/datefmt_ta_IN_test.dart` | `js/test/testdatefmt_ta_IN.js` | |
| `test/datefmt/datefmt_te_IN_test.dart` | `js/test/testdatefmt_te_IN.js` | |
| `test/datefmt/datefmt_th_TH_test.dart` | `js/test/testdatefmt_th_TH.js` | |
| `test/datefmt/datefmt_tr_TR_test.dart` | `js/test/testdatefmt_tr_TR.js` | |
| `test/datefmt/datefmt_uk_UA_test.dart` | `js/test/testdatefmt_uk_UA.js` | |
| `test/datefmt/datefmt_ur_IN_test.dart` | `js/test/testdatefmt_ur_IN.js` | |
| `test/datefmt/datefmt_uz_Latn_UZ_test.dart` | `js/test/testdatefmt_uz_Latn_UZ.js` | |
| `test/datefmt/datefmt_vi_VN_test.dart` | `js/test/testdatefmt_vi_VN.js` | |
| `test/datefmt/datefmt_zh_CN_test.dart` | `js/test/testdatefmt_zh_Hans_CN.js` | Filename shortened (Hans omitted) |
| `test/datefmt/datefmt_zh_Hant_HK_test.dart` | `js/test/testdatefmt_zh_Hant_HK.js` | |
| `test/datefmt/datefmt_zh_Hant_TW_test.dart` | `js/test/testdatefmt_zh_Hant_TW.js` | |

### DateFmt Special Tests

These were extracted from the single monolithic `js/test/testdatefmt.js` file, split by functionality:

| Dart Test File | iLib JS Source File | Extracted Section |
|---|---|---|
| `test/datefmt/datefmt_template_test.dart` | `js/test/testdatefmt.js` | Format template tests |
| `test/datefmt/datefmt_Clock_test.dart` | `js/test/testdatefmt.js` | getClock() tests |
| `test/datefmt/datefmt_Meridiems_test.dart` | `js/test/testdatefmt.js` | getMeridiemsRange() tests |
| `test/datefmt/datefmt_MonthTranslation_test.dart` | `js/test/testdatefmt.js` | Month name translation tests |
| `test/datefmt/datefmt_WeekdayTranslation_test.dart` | `js/test/testdatefmt.js` | Weekday name translation tests |

## LocaleInfo Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/localeinfo/localeinfo_test.dart` | `js/test/testlocaleinfo.js` | ILibLocaleInfo general |
| `test/localeinfo/localeinfo_dayofweek_test.dart` | `js/test/testlocaleinfo.js` | Extracted: getFirstDayOfWeek/getWeekEndStart/End |
| `test/localeinfo/locale_test.dart` | `js/test/testlocale.js` | ILibLocale (BCP-47 parsing) |

## CaseMapper Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/casemapper/upper_test.dart` | `js/test/testcasemapper.js` | Extracted: toUpper tests |
| `test/casemapper/lower_test.dart` | `js/test/testcasemapper.js` | Extracted: toLower tests |

## Timezone Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/timezone/timezone_test.dart` | `js/test/testtimezone.js` | ILibTimeZone |
| `test/timezone/timezone_extra_test.dart` | — | flutter_ilib-specific (additional timezone tests) |

## Basic Tests (flutter_ilib-specific)

These tests have no JS counterpart. They verify the Flutter plugin initialization and internal utilities.

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/basic/flutter_ilib_test.dart` | — | Plugin initialization test |
| `test/basic/flutter_ilib_datefmt_test.dart` | — | DateFmt basic behavior check |
| `test/basic/flutter_ilib_localeinfo_test.dart` | — | LocaleInfo basic behavior check |
| `test/basic/flutter_ilib_utils_test.dart` | — | Internal utility tests |


## Common Not Converted Pattern (All Calendar Date Tests)

The following JS test patterns are not converted for the same reason across all 9 calendar date test files (Coptic, Ethiopic, Gregorian, ThaiSolar, Julian, Islamic, Hebrew, Persian, PersianAlgo):

| Pattern | Count per file | Reason |
|---|---|---|
| `test*DateConstructorFullWithStrings` | 1 | Dart type system does not accept String for int params |
| `test*DateConstructorCopy` | 1 | No copy constructor in Dart |
| `test*DateSet{Years,Months,Days,Hours,Minutes,Seconds,Milliseconds}` | 7 | Dart CalendarDate is immutable (no setters) |
| `test*DateTestSetTime1/Zero` | 2 | No setTime() — immutable design |
| `test*DateSetTimeZone/NotString/Undefined/Empty` | 4 | No setTimeZone() — immutable design |

Total: ~15 tests per calendar, ~135 tests across all 9 calendars.

## Naming Convention Differences

| Aspect | iLib JS | flutter_ilib Dart |
|---|---|---|
| Prefix | `test` (e.g., `testdatefmt_en_US.js`) | Omitted or changed (e.g., `datefmt_en_US_test.dart`) |
| Suffix | None | `_test` (required by Flutter test runner) |
| Calendar files | `testcal_{type}.js` | `test{type}_test.dart` |
| Calendar date files | `test{type}date.js` | `test{type}date_test.dart` |
| Large file splitting | Single file (e.g., `testdatefmt.js`) | Split by feature (Clock, Meridiems, Template, etc.) |
