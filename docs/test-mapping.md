# Test File Mapping: iLib JS → flutter_ilib Dart

Mapping table showing which iLib JS test file (`github.com/iLib-js/iLib`) each flutter_ilib Dart test file was converted from.

JS source path base: `js/test/`

Scope: this covers the pure-Dart classes. The 3 classes still on JS interop — `ILibCountry`,
`ILibScriptInfo`, `ILibDurationFmt` — and their tests (`test/country/`, `test/scriptinfo/`,
`test/durfmt/`) are not mapped here until those classes are converted.

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
| `test/calendar/testjulianday_test.dart` | `js/test/testjulianday.js` | JulianDay helper (getDate/getDays/getDayFraction/setDate/setDays/setDayFraction/addDate). `addDate` returns a new instance in Dart (JS mutates in place); see Not Converted for the one untranslatable case |
| `test/calendar/testislamic_test.dart` | `js/test/testcal_islamic.js` | IslamicCal |
| `test/calendar/testislamicdate_test.dart` | `js/test/testislamicdate.js` | IslamicDate |
| `test/calendar/testhebrew_test.dart` | `js/test/testcal_hebrew.js` | HebrewCal |
| `test/calendar/testhebrewdate_test.dart` | `js/test/testhebrewdate.js` | HebrewDate |
| `test/calendar/testethiopic_test.dart` | `js/test/testcal_ethiopic.js` | EthiopicCal |
| `test/calendar/testethiopicdate_test.dart` | `js/test/testethiopicdate.js` | EthiopicDate |
| `test/calendar/testcoptic_test.dart` | `js/test/testcal_coptic.js` | CopticCal |
| `test/calendar/testcopticdate_test.dart` | `js/test/testcopticdate.js` | CopticDate |
| `test/calendar/testpersian_test.dart` | `js/test/calendar/testpersian.js` | PersianAlgoCal (algorithmic) — NOT merged with the astronomical one. Note: the JS file is named `testpersian.js` but uses `new PersianAlgoCal()` |
| `test/calendar/testpersianastro_test.dart` | `js/test/calendar/testpersianastro.js` | PersianCal (astronomical, equinox-based) |
| `test/calendar/testpersiandate_test.dart` | `js/test/calendar/testpersiandate.js` | PersianAlgoDate (algorithmic) — NOT merged. The JS file is named `testpersiandate.js` but uses `new PersianAlgoDate()` |
| `test/calendar/testpersiandateastro_test.dart` | `js/test/calendar/testpersiandateastro.js` | PersianDate (astronomical, equinox-based) |

| `test/calendar/testcalendar_test.dart` | `js/test/calendar/testcalendar.js` | ILibCalendar factory: invalid input, getCalendars, type-based and locale-based (`fromLocale`) construction |
| `test/calendar/testastro_test.dart` | `js/test/calendar/testastro.js` | ILibAstro (ephemerisCorrection / julianCenturies / nutation / aberration / solar & lunar longitude / new-moon); each test loops `testDatesAstro1/2` with `roughlyEqual` tolerances |
| `test/calendar/testcalendar_extra_test.dart` | — | flutter_ilib-specific (empty-string/`han` throw edge cases; a factory-built calendar is functional) |
| `test/calendar/testcopticdate_extra_test.dart` | — | flutter_ilib-specific (getDayOfYear, getEra, getCalendar) |
| `test/calendar/testgregoriandate_extra_test.dart` | — | flutter_ilib-specific (getCalendar) |
| `test/calendar/testethiopicdate_extra_test.dart` | — | flutter_ilib-specific (getCalendar) |
| `test/calendar/testjuliandate_extra_test.dart` | — | flutter_ilib-specific (onOrBefore/onOrAfter with offset; basic JD/date; getCalendar) |
| `test/calendar/testhebrewdate_extra_test.dart` | — | flutter_ilib-specific (basic JD/date; getCalendar) |
| `test/calendar/testislamicdate_extra_test.dart` | — | flutter_ilib-specific (basic JD/date; getCalendar) |
| `test/calendar/testpersiandate_extra_test.dart` | — | flutter_ilib-specific (basic JD/date; getCalendar) |
| `test/calendar/testthaisolardate_extra_test.dart` | — | flutter_ilib-specific (basic JD/date; getCalendar) |

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
| `test/datefmt/datefmt_ko_KR_extra_test.dart` | — | flutter_ilib-specific (no JS counterpart): Dart-style `DateFmt_*` cases and Flutter `DateTime` (`ILibDateOptions.dateTime`) input |
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
| `test/datefmt/datefmt_datetime_calendar_extra_test.dart` | — | **flutter_ilib-specific**: `ILibDateOptions(dateTime:/unixtime:)` input (Flutter `DateTime`/Unix instant) converts to the locale's calendar — am-ET→ethiopic, fa-IR→persian |

> **Dart-specific input paths need their own coverage.** The JS-mirrored datefmt
> tests above all pass dates as **calendar components** (`year/month/day`), which
> exercise a path that was already correct. The Flutter-only inputs `dateTime:`
> and `unixtime:` (a Gregorian instant) take a different route and had **no JS
> counterpart test**, so a bug (instant shown as raw Gregorian numbers with the
> locale's month labels for non-Gregorian locales, e.g. am-ET → "23 የካቲት 2026")
> went unnoticed. Always add an `*_extra`/`-specific` test for input forms that
> exist only in the Dart API.

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
| `test/timezone/timezone_test.dart` | `js/test/calendar/testtimezone.js` | ILibTimeZone |
| `test/timezone/timezone_extra_test.dart` | — | flutter_ilib-specific (additional timezone tests; system `'local'` tests; spring-forward gap; Flutter `DateTime` input) |

## Basic Tests (flutter_ilib-specific)

These tests have no JS counterpart. They verify the Flutter plugin initialization and internal utilities.

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/basic/flutter_ilib_test.dart` | — | Plugin initialization test |
| `test/basic/flutter_ilib_datefmt_test.dart` | — | DateFmt basic behavior check |
| `test/basic/flutter_ilib_math_utils_test.dart` | `js/test/testutils.js` | Math utils tests extracted from the `math_utils` section |
| `test/basic/flutter_ilib_localeinfo_test.dart` | — | LocaleInfo basic behavior check |
| `test/basic/flutter_ilib_utils_test.dart` | — | Internal utility tests |

## Currency Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/currency/currency_test.dart` | `js/test/number/testcurrency.js` | ILibCurrency (default locale currency, code lookup, sign lookup, ambiguous-sign fallback) — 1:1 with the JS test, minus the unsupported-locale cases |
| `test/currency/currency_extra_test.dart` | — | Dart-only: `ILibCurrency.getAvailableCurrencies()` reads currency metadata from the bundled rootData |

## NumFmt Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/numfmt/numfmt_test.dart` | `js/test/number/testnumfmt.js` | ILibNumFmt core (number/currency/percentage, fraction digits, significant digits, rounding modes, grouping, scientific) |
| `test/numfmt/numfmt2_test.dart` | `js/test/number/testnumfmt2.js` | ILibNumFmt additional cases |
| `test/numfmt/numfmt_af_test.dart` | `js/test/number/testnumfmt_af.js` | ILibNumFmt af (Afrikaans) locale formatting |
| `test/numfmt/numfmt_am_test.dart` | `js/test/number/testnumfmt_am.js` | ILibNumFmt am (Amharic) locale formatting |
| `test/numfmt/numfmt_extra_test.dart` | — | flutter_ilib-specific (no JS counterpart): unknown `roundingMode` falls back to `halfdown` for both the reported mode and the applied rounding, and a valid mode is preserved |

## ScriptInfo Tests

| Dart Test File | iLib JS Source File | Notes |
|---|---|---|
| `test/scriptinfo/scriptinfo_test.dart` | `js/test/root/testscriptinfo.js` | 161 tests converted: script-code/construction cases, per-locale cases in `locales.json`, and bare-language cases for supported languages (`pa`, `ha`, `az`). 85 per-locale cases skipped (N/A). |

### Not Converted — ScriptInfo Tests

85 `testScriptInfo_<locale>` cases skipped — locale not in `locales.json`, or bare-language with no
bundled `{lang}.json`. See CLAUDE.md › Conventions › Testing for the rule.


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

## Not Converted — Calendar (Cal) Tests

| Test | File | Count | Reason |
|---|---|---|---|
| `testEthiopicGetMonLength14/15/16`, `testEthiopicIsLeapYear5/6` | `testethiopic.js` | 5 | JS passes `String`/`undefined` args (`getMonLength("15")`, `getMonLength(undefined)`, `isLeapYear("2009")`, `isLeapYear(undefined)`) to exercise dynamic-type coercion. Dart `getMonLength(int, int)` / `isLeapYear(int)` take non-nullable `int`, so `String`/`undefined` are not expressible (same reason as `*DateConstructorFullWithStrings`). The meaningful integer behavior is already covered — e.g. `getMonLength("13","2007") → 6` equals the Dart `GetMonLength 13 LeapYear` test (`getMonLength(13, 2007) → 6`). Only `testethiopic.js` has these edge tests; the other 8 cal test files do not. |
| `testJulianDaySetDaysIgnoreFraction` | `testjulianday.js` | 1 | JS calls `setDays(2.9)` with a float to verify the fractional part is dropped. Dart `setDays(int)` takes a non-nullable `int`, so a float cannot be passed (same reason as `*DateConstructorFullWithStrings`). The other 9 JulianDay tests are converted. |

## Commented-out / disabled in the JS source (not real tests)

These appear as `testXxx: function` in the JS file but sit inside a `/* ... */` block
comment, so they are **not active tests** in iLib either — not converted, and nothing to
document beyond this note. (When auditing, a grep for `testXxx: function` can falsely flag
these; check for an enclosing block comment.)

| Test | File | Count | Reason |
|---|---|---|---|
| `testPersDateAstroConstructorBeforeDSTWithImplicitTimeZone`, `testPersDateAstroConstructorAfterDSTWithImplicitTimeZone` | `testpersiandateastro.js` | 2 | Block-commented in the JS source (lines ~626–693). The iLib note: *"Doesn't work on node because you cannot change the time zone after the first call to a Date method... To run these, temporarily set your TZ to 'Asia/Tehran' first, uncomment these, and run as normal."* They test `timezone: "local"` (system tz) around the Iran DST boundary. The constituent behavior is already covered: explicit Asia/Tehran + DST in `testPersDateAstroConstructorNearDSTWithExplicitTimeZone`, and the `'local'` = system-tz mechanism in `test/timezone/` (LA emulation via the injectable hooks). |

## Not Converted — Timezone Tests

`js/test/calendar/testtimezone.js` has 165 tests; `timezone_test.dart` converts the 125
that apply. The 40 not converted fall into four categories, all due to JS-runtime/
dynamic-typing features that don't exist in the Dart port:

| Category | Count | Examples | Reason |
|---|---|---|---|
| `*NonIDate` | 22 | `testTZGetOffsetDSTNonIDate`, `testTZDisplayName*NonIDate`, `testTZInDaylightTime*NonIDate` | JS passes a native `Date` (or plain object) instead of an iLib `IDate`, e.g. `tz.getOffset(new Date(2011, 7, 1))`. Dart's `getOffset`/`inDaylightTime`/`getDisplayName` take a typed `ILibDate`, so a native date can't be passed. The `IDate` variant of each IS converted; the Dart-idiomatic "non-iLib date input" is provided separately via `DateTime` and tested in `timezone_extra_test.dart` (`testTZGetOffsetDateTime*`, `testTZInDaylightTimeDateTime*`, `testTZDisplayNameDateTime*`). |
| `*WithLoader` / `*Asynch` | 10 | `testTZGetTimeZoneWithLoaderAsynch`, `testGetAvailableTimeZonesWithLoader`, `testTZGetTimeZoneForLocaleWithLoaderNoData` | Exercise the JS async loader callback (`ilib.setLoaderCallback(...)`, `sync: false`). Dart uses the synchronous asset-based `ILibLoader`; there is no async-callback loader to test. |
| `*WithIlibString` | 3 | `testTZConstructorWithIlibString`, `testTZConstructorLocalWithIlibString`, `testTZGetWithIlibString` | Construct with an iLib `IString` wrapper (`new TimeZone({id: new IString("America/Los_Angeles")})`). Dart uses a plain `String`; there is no `IString` type. The `String` constructor IS covered. |
| `testTZGetDefaultFor_{tg_TJ,tk_TM,wo_SN,zu_ZA}`, `testTZGetDefaultLocale_mt_MT` | 5 | — | Unsupported locales (tg/tk/wo/zu/mt not in the bundled 218); see the unsupported-locale rule in CLAUDE.md. |

## Assertion Conversion Patterns

These JS assertions are converted to a different (or no) Dart form because Dart's
static type system / null safety makes the runtime check redundant. They are NOT
"not converted" — the test still exists, only the assertion changes.

| JS assertion | Dart equivalent | Why |
|---|---|---|
| `test.equal(typeof(x), 'object')` (the first assertion in most constructor/date tests) | **dropped** — the `final XxxDate x = XxxDate(...)` declaration is the compile-time guarantee | A Dart constructor returns the (non-null) type or throws; it can't return `undefined`/`null`/another type. A runtime `expect(x, isNotNull)` / `isA<XxxDate>()` would be always-true and is flagged by the analyzer. Construction failure still surfaces as an exception → test failure, so no coverage is lost. (~22 occurrences per calendar date file.) |
| `test.equal(typeof(x), 'undefined')` (asserting a factory returned nothing for bad input) | `expect(() => XxxFactory(bad), throwsArgumentError)` | Dart factories throw on invalid input instead of returning `undefined` (e.g. `ILibCalendar('asdf')`). |

## Construction Conversion Patterns

How objects are constructed in the converted tests:

| JS construction | Dart equivalent | Note |
|---|---|---|
| `new XxxCal()` (in each cal test file) | `XxxCal()` direct (e.g. `GregorianCal()`, `PersianAlgoCal()`) | The cal tests construct the calendar directly, 1:1 with JS and type-safe. The `ILibCalendar('type')` factory is the other public path — its type dispatch is covered once in `testcalendar_test.dart` (`testCalendarFactoryAllTypes`) and its functional output in `testcalendar_extra_test.dart`, rather than re-tested in every cal file. |
| `new XxxDate({year: …, julianDay: …})` | `XxxDate(year: …, julianDay: …)` | Named parameters; the JS options object maps to Dart named args. A JS `julianDay` taken from a `List<List<num>>` data array needs `.toDouble()` (the `double` param can't receive a `num`); integer component columns use `as int`/value-compare. |

## Naming Convention Differences

| Aspect | iLib JS | flutter_ilib Dart |
|---|---|---|
| Prefix | `test` (e.g., `testdatefmt_en_US.js`) | Omitted or changed (e.g., `datefmt_en_US_test.dart`) |
| Suffix | None | `_test` (required by Flutter test runner) |
| Calendar files | `testcal_{type}.js` | `test{type}_test.dart` |
| Calendar date files | `test{type}date.js` | `test{type}date_test.dart` |
| Large file splitting | Single file (e.g., `testdatefmt.js`) | Split by feature (Clock, Meridiems, Template, etc.) |
| Calendar/cal test cases | `test{Type}{CamelCase}` (e.g. `testHebrewLastDayOfMonthNegative`) | Descriptive, prefix dropped (e.g. `lastDayOfMonth Negative`) — grep by the JS function name won't match |

### Renamed cases (same assertion, different label)

| JS test | Dart test | Note |
|---|---|---|
| `testJulianIsLeapYearNotOnCentury1/2/3` | `IsLeapYear OnCentury1/2/3` | The `Not` was dropped. The assertion is identical (`isLeapYear(1700/1800/1900) == true`): the Julian calendar has no century leap-year exception, so centuries ARE leap. The JS `NotOnCentury` name is a misnomer carried over from the Gregorian test (where those centuries are NOT leap); the Dart name is more accurate for Julian. |
