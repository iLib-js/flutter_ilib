import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [currency_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    debugPrint('Testing [currency_test.dart] on $testPlatform.');
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleDataAll();
  });

  group('ILibCurrency', () {
    test('testCurrencyConstructorEmpty', () {
      final ILibCurrency cur = ILibCurrency();

      expect(cur, isNotNull);
    });

    test('testCurrencyDefaults', () {
      final ILibCurrency cur = ILibCurrency();

      expect(cur, isNotNull);
      expect(cur.getCode(), 'USD');
      expect(cur.getFractionDigits(), 2);
      expect(cur.getSign(), r'$');
      expect(cur.getName(), 'US Dollar');
      final String locale = cur.getLocale();
      expect(locale, isNotNull);
      expect(locale, 'en-US');
    });

    test('testCurrencyGetByCode1', () {
      final ILibCurrency cur = ILibCurrency(code: 'EUR');

      expect(cur, isNotNull);
      expect(cur.getCode(), 'EUR');
      expect(cur.getFractionDigits(), 2);
      expect(cur.getSign(), '€');
      expect(cur.getName(), 'Euro');
      expect(cur.getLocale(), 'en-US');
    });

    test('testCurrencyGetByCode2', () {
      final ILibCurrency cur = ILibCurrency(code: 'JPY');

      expect(cur, isNotNull);
      expect(cur.getCode(), 'JPY');
      expect(cur.getFractionDigits(), 0);
      expect(cur.getSign(), '¥');
      expect(cur.getName(), 'Japanese Yen');
      expect(cur.getLocale(), 'en-US');
    });

    test('testCurrencyGetByCode3', () {
      final ILibCurrency cur = ILibCurrency(locale: 'en-PH');

      expect(cur, isNotNull);
      expect(cur.getCode(), 'PHP');
      expect(cur.getFractionDigits(), 2);
      expect(cur.getSign(), '₱');
      expect(cur.getName(), 'Philippine Peso');
      expect(cur.getLocale(), 'en-PH');
    });

    test('testCurrencyGetByCodeUnknown', () {
      expect(
        () => ILibCurrency(code: 'xxx'),
        throwsArgumentError,
      );
    });

    test('testCurrencyGetBySignUnambiguous', () {
      final ILibCurrency cur = ILibCurrency(sign: '€');

      expect(cur, isNotNull);
      expect(cur.getCode(), 'EUR');
      expect(cur.getFractionDigits(), 2);
      expect(cur.getSign(), '€');
      expect(cur.getName(), 'Euro');
      expect(cur.getLocale(), 'en-US');
    });

    test('testCurrencyGetBySignAmbiguousCurrentLocale', () {
      final ILibCurrency cur = ILibCurrency(
        locale: 'en-CA',
        sign: r'$',
      );

      expect(cur, isNotNull);
      expect(cur.getCode(), 'CAD');
      expect(cur.getFractionDigits(), 2);
      expect(cur.getSign(), r'$');
      expect(cur.getName(), 'Canadian Dollar');
      expect(cur.getLocale(), 'en-CA');
    });

    test('testCurrencyGetBySignAmbiguousNotCurrentLocale', () {
      final ILibCurrency cur = ILibCurrency(
        locale: 'en-GB',
        sign: r'$',
      );

      expect(cur, isNotNull);
      expect(cur.getCode(), 'USD');
      expect(cur.getFractionDigits(), 2);
      expect(cur.getSign(), r'$');
      expect(cur.getName(), 'US Dollar');
      expect(cur.getLocale(), 'en-GB');
    });

    test('testCurrencyInfowithCurrentLocale', () {
      final ILibCurrency cur = ILibCurrency(locale: 'ar-IQ');

      expect(cur, isNotNull);
      expect(cur.getCode(), 'IQD');
      expect(cur.getFractionDigits(), 0);
      expect(cur.getSign(), 'د.ع.\u200F');
      expect(cur.getName(), 'Iraqi Dinar');
      expect(cur.getLocale(), 'ar-IQ');
    });

    test('testCurrency_ar_EG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-EG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EGP');
    });

    test('testCurrency_ar_IQ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-IQ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'IQD');
    });

    test('testCurrency_ar_MA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-MA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MAD');
    });

    test('testCurrency_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_bs_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-Latn-BA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'BAM');
    });

    test('testCurrency_bs_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-Latn-ME');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CZK');
    });

    test('testCurrency_da_DK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'DKK');
    });

    test('testCurrency_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_de_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-CH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CHF');
    });

    test('testCurrency_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_de_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-LU');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_el_CY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-CY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_en_AM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-AM');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AMD');
    });

    test('testCurrency_en_AU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-AU');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AUD');
    });

    test('testCurrency_en_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-AZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AZN');
    });

    test('testCurrency_en_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-CA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CAD');
    });

    test('testCurrency_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'GBP');
    });

    test('testCurrency_en_GH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'GHS');
    });

    test('testCurrency_en_HK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-HK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'HKD');
    });

    test('testCurrency_en_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-IE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_en_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_en_IS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-IS');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ISK');
    });

    test('testCurrency_en_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-JP');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'JPY');
    });

    test('testCurrency_en_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-KE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'KES');
    });

    test('testCurrency_en_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-LK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'LKR');
    });

    test('testCurrency_en_MM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-MM');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MMK');
    });

    test('testCurrency_en_MW', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-MW');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MWK');
    });

    test('testCurrency_en_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-MY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MYR');
    });

    test('testCurrency_en_NG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-NG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'NGN');
    });

    test('testCurrency_en_NZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-NZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'NZD');
    });

    test('testCurrency_en_PH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-PH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'PHP');
    });

    test('testCurrency_en_PR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-PR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_en_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-SG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'SGD');
    });

    test('testCurrency_en_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_en_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-UG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'UGX');
    });

    test('testCurrency_en_ZA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-ZA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ZAR');
    });

    test('testCurrency_en_ZM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-ZM');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ZMW');
    });

    test('testCurrency_es_AR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-AR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ARS');
    });

    test('testCurrency_es_BO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-BO');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'BOB');
    });

    test('testCurrency_es_CL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CL');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CLP');
    });

    test('testCurrency_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'COP');
    });

    test('testCurrency_es_DO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-DO');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'DOP');
    });

    test('testCurrency_es_EC', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-EC');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_es_GT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-GT');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'GTQ');
    });

    test('testCurrency_es_HN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-HN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'HNL');
    });

    test('testCurrency_es_MX', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-MX');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MXN');
    });

    test('testCurrency_es_NI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-NI');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'NIO');
    });

    test('testCurrency_es_PA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-PA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_es_PE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-PE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'PEN');
    });

    test('testCurrency_es_PR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-PR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_es_PY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-PY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'PYG');
    });

    test('testCurrency_es_SV', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-SV');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_es_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-US');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });

    test('testCurrency_es_UY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-UY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'UYU');
    });

    test('testCurrency_es_VE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-VE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'VES');
    });

    test('testCurrency_et_EE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('et-EE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_fa_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'IRR');
    });

    test('testCurrency_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CAD');
    });

    test('testCurrency_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CHF');
    });

    test('testCurrency_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_gu_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('gu-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_he_IL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ILS');
    });

    test('testCurrency_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_hr_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-ME');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_id_ID', () {
      final ILibLocaleInfo info = ILibLocaleInfo('id-ID');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'IDR');
    });

    test('testCurrency_is_IS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('is-IS');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ISK');
    });

    test('testCurrency_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CHF');
    });

    test('testCurrency_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'JPY');
    });

    test('testCurrency_kn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kn-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'KRW');
    });

    test('testCurrency_lt_LT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_lv_LV', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lv-LV');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_mk_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MKD');
    });

    test('testCurrency_ml_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ml-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_mr_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mr-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_ms_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MYR');
    });

    test('testCurrency_nb_NO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nb-NO');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'NOK');
    });

    test('testCurrency_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'PLN');
    });

    test('testCurrency_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'BRL');
    });

    test('testCurrency_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'RON');
    });

    test('testCurrency_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'RSD');
    });

    test('testCurrency_ru_BY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-BY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'BYN');
    });

    test('testCurrency_ru_KG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'KGS');
    });

    test('testCurrency_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'KZT');
    });

    test('testCurrency_ru_GE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-GE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'GEL');
    });

    test('testCurrency_ru_RU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-RU');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'RUB');
    });

    test('testCurrency_ru_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-UA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'UAH');
    });

    test('testCurrency_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_sl_SI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_sq_AL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-AL');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ALL');
    });

    test('testCurrency_sq_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-ME');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'SEK');
    });

    test('testCurrency_ta_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ta-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_te_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('te-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_th_TH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'THB');
    });

    test('testCurrency_tr_AM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('tr-AM');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AMD');
    });

    test('testCurrency_tr_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('tr-AZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AZN');
    });

    test('testCurrency_tr_CY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('tr-CY');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'EUR');
    });

    test('testCurrency_tr_TR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('tr-TR');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'TRY');
    });

    test('testCurrency_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'UAH');
    });

    test('testCurrency_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'UZS');
    });

    test('testCurrency_vi_VN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'VND');
    });

    test('testCurrency_zh_Hans_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-CN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CNY');
    });

    test('testCurrency_zh_Hant_HK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-HK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'HKD');
    });

    test('testCurrency_zh_Hant_TW', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-TW');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'TWD');
    });

    test('testCurrency_en_GE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'GEL');
    });

    test('testCurrency_en_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-CN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CNY');
    });

    test('testCurrency_en_MX', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-MX');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'MXN');
    });

    test('testCurrency_en_TW', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-TW');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'TWD');
    });

    test('testCurrency_es_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'CAD');
    });

    test('testCurrency_af_ZA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-ZA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ZAR');
    });

    test('testCurrency_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'ETB');
    });

    test('testCurrency_ha_Latn_NG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-Latn-NG');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'NGN');
    });

    test('testCurrency_or_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('or-IN');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'INR');
    });

    test('testCurrency_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AZN');
    });

    test('testCurrency_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'KHR');
    });

    test('testCurrency_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'LKR');
    });

    test('testCurrency_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'AED');
    });

    test('testCurrency_ar_SA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-SA');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'SAR');
    });

    test('testCurrency_ka_GE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-GE');

      expect(info, isNotNull);
      expect(info.getCurrency(), 'GEL');
    });
  });
}
