import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [localeinfo_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('ILibLocaleInfo', () {
    test('testLocaleInfoConstructor', () {
      final ILibLocaleInfo loc = ILibLocaleInfo();
      expect(loc, isNotNull);
    });
    test('testLocaleInfoConstructorCurrentLocale', () {
      final ILibLocaleInfo loc = ILibLocaleInfo('');
      expect(loc, isNotNull);
      final ILibLocaleInfo info = ILibLocaleInfo('');
      expect(info, isNotNull);
      final ILibLocaleInfo locInfo = ILibLocaleInfo('');
      expect(locInfo, isNotNull);
    });
    test('testLocaleInfoConstructorGivenLocale', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');

      expect(info, isNotNull);

      final ILibLocale loc = info.getLocale();

      expect(loc.getLanguage(), 'de');
      expect(loc.getRegion(), 'DE');
      expect(loc.getVariant(), isNull);
    });
    test('testLocaleInfoGetClockUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getClock(), '12');
    });
    test('testLocaleInfoGetClockCA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-CA');
      expect(info, isNotNull);

      expect(info.getClock(), '12');
    });
    test('testLocaleInfoGetClockGB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getClock(), '24');
    });
    test('testLocaleInfoGetClockDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getClock(), '24');
    });
    test('testLocaleInfoGetCalendarUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getCalendar(), 'gregorian');
    });
    test('testLocaleInfoGetCalendarDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getCalendar(), 'gregorian');
    });
    test('testLocaleInfoGetUnitsUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getUnits(), 'uscustomary');
    });
    test('testLocaleInfoGetUnitsCA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-CA');
      expect(info, isNotNull);

      expect(info.getUnits(), 'metric');
    });
    test('testLocaleInfoGetUnitsGB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getUnits(), 'metric');
    });
    test('testLocaleInfoGetCalendarDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getUnits(), 'metric');
    });
    test('testLocaleInfoGetFirstDayOfWeekUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getFirstDayOfWeek(), 0);
    });
    test('testLocaleInfoGetFirstDayOfWeekDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getFirstDayOfWeek(), 1);
    });
    test('testLocaleInfoGetFirstDayOfWeekFR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getFirstDayOfWeek(), 1);
    });
    test('testLocaleInfoGetTimeZoneUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getTimeZone(), 'America/New_York');
    });
    test('testLocaleInfoGetTimeZoneDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getTimeZone(), 'Europe/Berlin');
    });
    test('testLocaleInfoGetTimeZoneES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getTimeZone(), 'Europe/Madrid');
    });
    test('testLocaleInfoGetTimeZoneMM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('my-MM');
      expect(info, isNotNull);
      expect(info.getTimeZone(), 'Asia/Yangon');
    });
    test('testLocaleInfoGetTimeZoneCA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-CA');
      expect(info, isNotNull);
      expect(info.getTimeZone(), 'America/Toronto');
    });
    test('testLocaleInfoGetTimeZoneCH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-CH');
      expect(info, isNotNull);
      expect(info.getTimeZone(), 'Europe/Zurich');
    });
    test('testLocaleInfoGetTimeZoneKR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);
      expect(info.getTimeZone(), 'Asia/Seoul');
    });
    test('testLocaleInfoGetTimeZoneDefault', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zz-ZZ');
      expect(info, isNotNull);
      expect(info.getTimeZone(), 'Etc/UTC');
    });
    test('testLocaleInfoGetCurrency', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);
      expect(info.getCurrency(), 'USD');
    });
    test('testLocaleInfoGetCurrencyDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getCurrency(), 'EUR');
    });
    test('testLocaleInfoGetCurrencyGB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getCurrency(), 'GBP');
    });
    test('testLocaleInfoGetCurrencyUnknown', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zxx-XX');
      expect(info, isNotNull);

      expect(info.getCurrency(), 'USD');
    });
    test('testLocaleInfoGetRoundingModeDefault', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    test('testLocaleInfoGetRoundingModeyy', () {
      final ILibLocaleInfo info = ILibLocaleInfo('yy-YY');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    test('testLocaleInfoGetDecimalSeparator1', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetDecimalSeparator2', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getDecimalSeparator(), ',');
    });
    //*************************************************Added By Birendra 23/05**********************************************************
    //test cases for en-GB number format
    test('testLocaleInfoGetDecimalSeparatorfor_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_en_GB', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-GB');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    //test cases for ko-KR number format
    test('testLocaleInfoGetDecimalSeparatorfor_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);
      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    //test cases for zh-CN-Hans number format
    test('testLocaleInfoGetDecimalSeparatorfor_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_CN_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN-Hans');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    //test cases for zh-HK-Hans
    test('testLocaleInfoGetDecimalSeparatorfor_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_HK_Hans', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-HK-Hans');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    //test cases fot zh-TW-Hant
    test('testLocaleInfoGetDecimalSeparatorfor_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW-Hant');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetDelimiter_zh_TW_Hant', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-TW');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '「');
      expect(info.getDelimiterQuotationEnd(), '」');
    });
    test('testLocaleInfoGetDelimiter_zh_TW', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-TW');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '「');
      expect(info.getDelimiterQuotationEnd(), '」');
    });
    //test cases for fr-FR number format
    test('testLocaleInfoGetDecimalSeparatorfor_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for fr-CA nunmber format
    test('testLocaleInfoGetDecimalSeparatorfor_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for pt-BR number format
    test('testLocaleInfoGetDecimalSeparatorfor_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    //test cases for pt_PT
    test('testLocaleInfoGetDecimalSeparatorfor_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for es_ES number format
    test('testLocaleInfoGetDecimalSeparatorfor_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test case for es_Co
    test('testLocaleInfoGetDecimalSeparatorfor_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_es_CO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-CO');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    //test cases for ja-JP
    test('testLocaleInfoGetDecimalSeparatorfor_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ja_JP', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ja-JP');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    //test cases for de-DE
    test('testLocaleInfoGetDecimalSeparatorfor_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for it-IT
    test('testLocaleInfoGetDecimalSeparatorfor_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for sv-SE
    test('testLocaleInfoGetDecimalSeparatorfor_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '−{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sv_SE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-SE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '−{n} {s}');
    });
    //test cases for fi-FI
    test('testLocaleInfoGetDecimalSeparatorfor_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '−{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fi_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fi-FI');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '−{n} {s}');
    });
    //test cases for cs_CZ
    test('testLocaleInfoGetDecimalSeparatorfor_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_cs_CZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('cs-CZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for el_GR
    test('testLocaleInfoGetDecimalSeparatorfor_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_el_GR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-GR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for hu-HU
    test('testLocaleInfoGetDecimalSeparatorfor_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_hu_HU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hu-HU');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for nl_NL
    test('testLocaleInfoGetDecimalSeparatorfor_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_nl_NL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-NL');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '{s} -{n}');
    });
    //test cases for pl_PL
    test('testLocaleInfoGetDecimalSeparatorfor_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_pl_PL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pl-PL');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for da-DK
    test('testLocaleInfoGetDecimalSeparatorfor_da_DK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_da_DK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_da_DK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_da_Dk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_da_Dk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_da_Dk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_da_Dk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('da-DK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for roRO
    test('testLocaleInfoGetDecimalSeparatorfor_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    //test cases for af-NA
    test('testLocaleInfoGetDecimalSeparatorfor_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_af_NA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('af-NA');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for am-ET
    test('testLocaleInfoGetDecimalSeparatorfor_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ar-AE
    test('testLocaleInfoGetDecimalSeparatorfor_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}‎%‎');
    });
    test('testLocaleInfoGetCurrencyFormat_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '‏{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‎-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '‎-{n}‎%‎');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '‏-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ar_AE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for as-IN
    test('testLocaleInfoGetDecimalSeparatorfor_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 2);
    });
    test('testLocaleInfoRoundingMode_as_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('as-IN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for az-AZ
    test('testLocaleInfoGetDecimalSeparatorfor_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_az_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-AZ');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    test('testLocaleInfoGetDecimalSeparatorfor_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_bg_BG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bg-BG');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoGetDecimalSeparatorfor_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 2);
    });
    test('testLocaleInfoRoundingMode_bn_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bn-IN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for bs-BA-Cyrl
    test('testLocaleInfoGetDecimalSeparatorfor_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_bs_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA-Cyrl');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    test('testLocaleInfoGetDecimalSeparatorfor_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);
      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);
      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetNegativeNumberFormat_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);
      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);
      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_bs_BS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BS');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for bs-ME
    test('testLocaleInfoGetDecimalSeparatorfor_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_bs_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-ME');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for de-AT
    test('testLocaleInfoGetDecimalSeparatorfor_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_de_AT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-AT');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fa
    test('testLocaleInfoGetDecimalSeparatorfor_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      final String result = (testPlatform == 'webOS') ? '/' : '٫';
      expect(info.getDecimalSeparator(), result);
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);
      final String result = (testPlatform == 'webOS') ? '٫' : '٬';

      expect(info.getGroupingSeparator(), result);
    });
    test('testLocaleInfoGetPercentageFormat_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      final String result = (testPlatform == 'webOS') ? '‪{n} %' : '{n}٪';
      expect(info.getPercentageFormat(), result);
    });
    test('testLocaleInfoGetCurrencyFormat_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      final String result = (testPlatform == 'webOS') ? '{n} ؜{s}' : '‎{s}{n}';
      expect(info.getCurrencyFormats().common, result);
    });
    test('testLocaleInfoGetNegativeNumberFormat_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‎−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      final String result = (testPlatform == 'webOS') ? '‪-{n} %' : '‎−{n}٪';
      expect(info.getNegativePercentageFormat(), result);
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      final String result =
          (testPlatform == 'webOS') ? '؜{n}- ؜{s}' : '‎−‎{s}{n}';
      expect(info.getCurrencyFormats().commonNegative, result);
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fa', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-BE
    test('testLocaleInfoGetDecimalSeparatorfor_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-BE');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-CH
    test('testLocaleInfoGetDecimalSeparatorfor_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPercentageFormat_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CH');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-DZ
    test('testLocaleInfoGetDecimalSeparatorfor_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_DZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-DZ');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-LU
    test('testLocaleInfoGetDecimalSeparatorfor_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_LU', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-LU');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-MG
    test('testLocaleInfoGetDecimalSeparatorfor_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_MG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-MG');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-SN
    test('testLocaleInfoGetDecimalSeparatorfor_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_SN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-SN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for fr-YT
    test('testLocaleInfoGetDecimalSeparatorfor_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_fr_YT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-YT');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ga-IE
    test('testLocaleInfoGetDecimalSeparatorfor_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ga_IE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ga-IE');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ha-NG-Latn
    test('testLocaleInfoGetDecimalSeparatorfor_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ha_NG_Latn', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ha-NG-Latn');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for he-IL
    test('testLocaleInfoGetDecimalSeparatorfor_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '‏{n} ‏{s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‎-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '‎-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '‏-{n} ‏{s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_he', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for hi-IN
    test('testLocaleInfoGetDecimalSeparatorfor_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 2);
    });
    test('testLocaleInfoRoundingMode_hi_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for hr-HR
    test('testLocaleInfoGetDecimalSeparatorfor_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '−{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '−{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_hr_HR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hr-HR');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for it-CH
    test('testLocaleInfoGetDecimalSeparatorfor_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '’');
    });
    test('testLocaleInfoGetPercentageFormat_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '{s}-{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_it_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-CH');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for it-SM
    test('testLocaleInfoGetDecimalSeparatorfor_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_it_SM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-SM');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ka-IR
    test('testLocaleInfoGetDecimalSeparatorfor_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ka_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-IR');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for kk-KZ-Cyrl
    test('testLocaleInfoGetDecimalSeparatorfor_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_kk_KZ_Cyrl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ-Cyrl');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ko-KR
    test('testLocaleInfoGetDecimalSeparatorfor_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ku-IQ
    test('testLocaleInfoGetDecimalSeparatorfor_kuQ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '٫');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '٬');
    });
    test('testLocaleInfoGetPercentageFormat_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} ٪');
    });
    test('testLocaleInfoGetCurrencyFormat_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‏-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '‏-{n} ٪');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '‏-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ku', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ku-IQ');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for lt-LT
    test('testLocaleInfoGetDecimalSeparatorfor_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '−{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '−{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_lt', () {
      final ILibLocaleInfo info = ILibLocaleInfo('lt-LT');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for mk-MK
    test('testLocaleInfoGetDecimalSeparatorfor_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_mk', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mk-MK');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for mn-CN
    test('testLocaleInfoGetDecimalSeparatorfor_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_mn_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('mn-CN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ms-MY
    test('testLocaleInfoGetDecimalSeparatorfor_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ms', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ms-MY');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for nl-BE
    test('testLocaleInfoGetDecimalSeparatorfor_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '{s} -{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_nl_BE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('nl-BE');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for pt-PT
    test('testLocaleInfoGetDecimalSeparatorfor_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_pt_PT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-PT');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ru-KZ
    test('testLocaleInfoGetDecimalSeparatorfor_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ru_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-KZ');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ru-TM
    test('testLocaleInfoGetDecimalSeparatorfor_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ru_TM', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ru-TM');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for si
    test('testLocaleInfoGetDecimalSeparatorfor_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_si', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sk-SK
    test('testLocaleInfoGetDecimalSeparatorfor_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sk_SK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sk-SK');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sl-SI
    test('testLocaleInfoGetDecimalSeparatorfor_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '−{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '−{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sl', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sl-SI');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sq-MK
    test('testLocaleInfoGetDecimalSeparatorfor_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sq_MK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sq-MK');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sr-Cyrl-BA
    test('testLocaleInfoGetDecimalSeparatorfor_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sr-Latn-BA
    test('testLocaleInfoGetDecimalSeparatorfor_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sr_Latn_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-BA');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sr-ME-Latn
    test('testLocaleInfoGetDecimalSeparatorfor_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sr-Latn-RS
    test('testLocaleInfoGetDecimalSeparatorfor_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sr_Latn_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-RS');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sr-RS
    test('testLocaleInfoGetDecimalSeparatorfor_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sr_RS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-RS');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sv-FI
    test('testLocaleInfoGetDecimalSeparatorfor_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetCurrencyFormat_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '−{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '−{n} %');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '−{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sv_FI', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sv-FI');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sw-UG
    test('testLocaleInfoGetDecimalSeparatorfor_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sw_UG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-UG');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for th-TH
    test('testLocaleInfoGetDecimalSeparatorfor_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_th', () {
      final ILibLocaleInfo info = ILibLocaleInfo('th-TH');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for uk-UA
    test('testLocaleInfoGetDecimalSeparatorfor_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_uk_UA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uk-UA');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ur
    test('testLocaleInfoGetDecimalSeparatorfor_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‎-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '‎-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '‎-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ur', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ur-IN
    test('testLocaleInfoGetDecimalSeparatorfor_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '٫');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '٬');
    });
    test('testLocaleInfoGetPercentageFormat_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‎-‎{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '‎-‎{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '‎-‎{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for ur-PK
    test('testLocaleInfoGetDecimalSeparatorfor_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '‎-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '‎-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '‎-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_ur_PK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-PK');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for uz-UZ
    test('testLocaleInfoGetDecimalSeparatorfor_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetPercentageFormat_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for vi-VN
    test('testLocaleInfoGetDecimalSeparatorfor_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_vi', () {
      final ILibLocaleInfo info = ILibLocaleInfo('vi-VN');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for zh-Hans-SG
    test('testLocaleInfoGetDecimalSeparatorfor_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_zh_Hans_SG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-SG');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for zh-Hant-MO
    test('testLocaleInfoGetDecimalSeparatorfor_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_zh_Hant_MO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-MO');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for zh-Hant-US
    test('testLocaleInfoGetDecimalSeparatorfor_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_zh_Hant_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hant-US');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for zh-MY
    test('testLocaleInfoGetDecimalSeparatorfor_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_zh_MY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-MY');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for az-Latn-AZ
    test('testLocaleInfoGetDecimalSeparatorfor_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetPercentageFormat_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n} {s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n} {s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for km-KH
    test('testLocaleInfoGetDecimalSeparatorfor_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{n}{s}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{n}{s}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_km_KH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('km-KH');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for si-LK
    test('testLocaleInfoGetDecimalSeparatorfor_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s}{n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s}{n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_si_LK', () {
      final ILibLocaleInfo info = ILibLocaleInfo('si-LK');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    //test cases for sw-KE
    test('testLocaleInfoGetDecimalSeparatorfor_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);
      expect(info.getDecimalSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparatorfor_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetPercentageFormat_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetCurrencyFormat_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().common, '{s} {n}');
    });
    test('testLocaleInfoGetNegativeNumberFormat_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getNegativeNumberFormat(), '-{n}');
    });
    test('testLocaleInfoGetNegativePercentageFormat_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getNegativePercentageFormat(), '-{n}%');
    });
    test('testLocaleInfoGetNegativeCurrencyFormat_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getCurrencyFormats().commonNegative, '-{s} {n}');
    });
    test('testLocaleInfoGetPrimaryGroupingDigits_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetSecondaryGroupingDigits_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getSecondaryGroupingDigits(), 0);
    });
    test('testLocaleInfoRoundingMode_sw_KE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sw-Latn-KE');
      expect(info, isNotNull);

      expect(info.getRoundingMode(), 'halfdown');
    });
    test('testLocaleInfoGetGroupingSeparator1', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ',');
    });
    test('testLocaleInfoGetGroupingSeparator2', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), '.');
    });
    test('testLocaleInfoGetGroupingSeparator3', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getGroupingSeparator(), ' ');
    });
    test('testLocaleInfoGetGroupingDigits1', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetGroupingDigits2', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetGroupingDigits3', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-CN');
      expect(info, isNotNull);

      expect(info.getPrimaryGroupingDigits(), 3);
    });
    test('testLocaleInfoGetPercentageFormat2', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n} %');
    });
    test('testLocaleInfoGetPercentageFormat1', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getPercentageFormat(), '{n}%');
    });
    test('testLocaleInfoGetPercentageSymbol1', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getPercentageSymbol(), '%');
    });
    test('testLocaleInfoGetPercentageSymbol2', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getPercentageSymbol(), '%');
    });

    test('testLocaleInfoGetAllScriptsSingle', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-NL');
      expect(li, isNotNull);
      expect(li.getAllScripts(), containsAll(['Latn']));
    });
    test('testLocaleInfoGetAllScriptsMultiple1', () {
      final ILibLocaleInfo li = ILibLocaleInfo('de-DE');
      expect(li, isNotNull);
      expect(li.getAllScripts(), containsAll(['Latn', 'Runr']));
    });
    test('testLocaleInfoGetAllScriptsMultiple2', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uz-UZ');
      expect(li, isNotNull);
      expect(li.getAllScripts(), containsAll(['Arab', 'Cyrl', 'Latn']));
    });
    test('testLocaleInfoGetDefaultScriptSingle', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-NL');
      expect(li, isNotNull);
      expect(li.getDefaultScript(), 'Latn');
    });
    test('testLocaleInfoGetDefaultScriptMultiple', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uz-UZ');
      expect(li, isNotNull);
      expect(li.getDefaultScript(), 'Latn');
    });
    test('testLocaleInfoGetScriptSingle', () {
      final ILibLocaleInfo li = ILibLocaleInfo('nl-NL');
      expect(li, isNotNull);
      expect(li.getScript(), 'Latn');
    });
    test('testLocaleInfoGetScriptMultiple', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uz-UZ');
      expect(li, isNotNull);
      expect(li.getScript(), 'Latn');
    });
    test('testLocaleInfoGetScriptMultipleLocaleOverride', () {
      final ILibLocaleInfo li = ILibLocaleInfo('uz-Cyrl-UZ');
      expect(li, isNotNull);
      expect(li.getScript(), 'Cyrl');
    });
    test('testLocaleInfoGetLanguageName1', () {
      final ILibLocaleInfo li = ILibLocaleInfo('he-IL');
      expect(li, isNotNull);
      expect(li.getLanguageName(), 'Hebrew');
    });
    test('testLocaleInfoGetLanguageName2', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-MX');
      expect(li, isNotNull);
      expect(li.getLanguageName(), 'Spanish');
    });
    test('testLocaleInfoGetRegionName1', () {
      final ILibLocaleInfo li = ILibLocaleInfo('he-IL');
      expect(li, isNotNull);
      expect(li.getRegionName(), 'Israel');
    });
    test('testLocaleInfoGetRegionName2', () {
      final ILibLocaleInfo li = ILibLocaleInfo('es-MX');
      expect(li, isNotNull);
      expect(li.getRegionName(), 'Mexico');
    });
    test('testLocaleInfoGetRegionName4', () {
      final ILibLocaleInfo li = ILibLocaleInfo('MK');
      expect(li, isNotNull);
      expect(li.getRegionName(), 'North Macedonia');
    });
    test('testLocaleInfoGetRegionName10', () {
      final ILibLocaleInfo li = ILibLocaleInfo('TR');
      expect(li, isNotNull);
      expect(li.getRegionName(), 'Türkiye');
    });
    test('testGetDigitsWestern', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-US');
      expect(li, isNotNull);
      expect(li.getDigits(), isNull);
    });
    test('testGetDigitsWesternNative', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-US');
      expect(li, isNotNull);
      expect(li.getDigits(), isNull);
    });
    test('testGetDigitsNonWesternOptional', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hi-IN');
      expect(li, isNotNull);
      expect(li.getDigits(), isNull);
    });
    test('testGetDigitsNonWesternNative', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hi-IN');
      expect(li, isNotNull);
      expect(li.getNativeDigits(), '०१२३४५६७८९');
    });
    test('testGetDigitsNonWesternUsual', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bn-IN');
      expect(li, isNotNull);
      expect(li.getDigits(), '০১২৩৪৫৬৭৮৯');
    });
    test('testGetDigitsNonWesternUsualNative', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bn-IN');
      expect(li, isNotNull);
      expect(li.getNativeDigits(), '০১২৩৪৫৬৭৮৯');
    });
    test('testGetDigitsStyleWestern', () {
      final ILibLocaleInfo li = ILibLocaleInfo('en-US');
      expect(li, isNotNull);
      expect(li.getDigitsStyle(), 'western');
    });
    test('testGetDigitsStyleOptional', () {
      final ILibLocaleInfo li = ILibLocaleInfo('hi-IN');
      expect(li, isNotNull);
      expect(li.getDigitsStyle(), 'optional');
    });
    test('testGetDigitsStyleNative', () {
      final ILibLocaleInfo li = ILibLocaleInfo('bn-IN');
      expect(li, isNotNull);
      expect(li.getDigitsStyle(), 'native');
    });
    /*Get weekend Data*/
    test('testLocaleInfoGetWeekendUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 6);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetWeekendDE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 6);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetWeekendFR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 6);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetWeekendAE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-AE');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 6);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetWeekendEG', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-EG');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 5);
      expect(info.getWeekEndEnd(), 6);
    });
    test('testLocaleInfoGetWeekendIL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 5);
      expect(info.getWeekEndEnd(), 6);
    });
    test('testLocaleInfoGetWeekendIQ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-IQ');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 5);
      expect(info.getWeekEndEnd(), 6);
    });
    test('testLocaleInfoGetWeekendMA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-MA');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 6);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetWeekendSA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ar-SA');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 5);
      expect(info.getWeekEndEnd(), 6);
    });
    test('testLocaleInfoGetWeekendIR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 5);
      expect(info.getWeekEndEnd(), 5);
    });
    test('testLocaleInfoGetWeekendIN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('hi-IN');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 0);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetWeekendIN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getWeekEndStart(), 6);
      expect(info.getWeekEndEnd(), 0);
    });
    test('testLocaleInfoGetMeridiemsStyleDefault', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      expect(info.getMeridiemsStyle(), 'gregorian');
    });
    test('testLocaleInfoGetMeridiemsStyleUS', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getMeridiemsStyle(), 'gregorian');
    });
    test('testLocaleInfoGetMeridiemsStyle_am_ET', () {
      final ILibLocaleInfo info = ILibLocaleInfo('am-ET');
      expect(info, isNotNull);

      expect(info.getMeridiemsStyle(), 'ethiopic');
    });
    test('testLocaleInfoGetMeridiemsStyle_zh_Hans_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-Hans-CN');
      expect(info, isNotNull);

      // Even for the Chinese locales, the default is
      // Gregorian style. To format with Chinese style,
      // you have to explicitly request it when constructing
      // the date formatter instance.
      expect(info.getMeridiemsStyle(), 'gregorian');
    });
    test('testLocaleInfoPaperSizeDefault', () {
      final ILibLocaleInfo info = ILibLocaleInfo();
      expect(info, isNotNull);

      // If locale is not specified, default locale would be return as 'en-US'.
      expect(info.getPaperSize(), '8x11');
    });
    test('testLocaleInfoPaperSize_en_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);

      expect(info.getPaperSize(), '8x11');
    });
    test('testLocaleInfoPaperSize_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoPaperSize_es_MX', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-MX');
      expect(info, isNotNull);

      expect(info.getPaperSize(), '8x11');
    });
    test('testLocaleInfoPaperSize_es_SV', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-SV');
      expect(info, isNotNull);

      expect(info.getPaperSize(), '8x11');
    });
    test('testLocaleInfoPaperSize_es_PR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-PR');
      expect(info, isNotNull);

      expect(info.getPaperSize(), '8x11');
    });
    test('testLocaleInfoPaperSize_es_VE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-VE');
      expect(info, isNotNull);

      expect(info.getPaperSize(), '8x11');
    });
    test('testLocaleInfoPaperSize_fr_FR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-FR');
      expect(info, isNotNull);

      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoPaperSize_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoPaperSize_it_IT', () {
      final ILibLocaleInfo info = ILibLocaleInfo('it-IT');
      expect(info, isNotNull);

      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoPaperSize_zh_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN');
      expect(info, isNotNull);

      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoQuotation_en_US', () {
      final ILibLocaleInfo info = ILibLocaleInfo('en-US');
      expect(info, isNotNull);
    });
    test('testLocaleInfoQuotation_ko_KR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ko-KR');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '“');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_es_ES', () {
      final ILibLocaleInfo info = ILibLocaleInfo('es-ES');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '“');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_zh_CN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('zh-CN');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '“');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_fa_IR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fa-IR');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '«');
      expect(info.getDelimiterQuotationEnd(), '»');
    });
    test('testLocaleInfoQuotation_de_DE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-DE');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '“');
    });
    test('testLocaleInfoQuotation_pt_BR', () {
      final ILibLocaleInfo info = ILibLocaleInfo('pt-BR');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '“');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_ur_IN', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ur-IN');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '”');
      expect(info.getDelimiterQuotationEnd(), '“');
    });
    test('testLocaleInfoQuotation_fr_CA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('fr-CA');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '«');
      expect(info.getDelimiterQuotationEnd(), '»');
    });
    test('testLocaleInfoQuotation_he_IL', () {
      final ILibLocaleInfo info = ILibLocaleInfo('he-IL');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '”');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_uz_Latn_UZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('uz-Latn-UZ');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '“');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_ro_RO', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ro-RO');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_bs_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('bs-BA');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_el_CY', () {
      final ILibLocaleInfo info = ILibLocaleInfo('el-CY');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '«');
      expect(info.getDelimiterQuotationEnd(), '»');
    });
    test('testLocaleInfoQuotation_kk_KZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('kk-KZ');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '«');
      expect(info.getDelimiterQuotationEnd(), '»');
    });
    test('testLocaleInfoQuotation_az_Latn_AZ', () {
      final ILibLocaleInfo info = ILibLocaleInfo('az-Latn-AZ');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '“');
      expect(info.getDelimiterQuotationEnd(), '”');
    });
    test('testLocaleInfoQuotation_de_CH', () {
      final ILibLocaleInfo info = ILibLocaleInfo('de-CH');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '“');
    });
    test('testLocaleInfoQuotation_ka_GE', () {
      final ILibLocaleInfo info = ILibLocaleInfo('ka-GE');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '“');
      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoQuotation_sr_Cyrl_BA', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Cyrl-BA');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '”');
      expect(info.getPaperSize(), 'A4');
    });
    test('testLocaleInfoQuotation_sr_Latn_ME', () {
      final ILibLocaleInfo info = ILibLocaleInfo('sr-Latn-ME');
      expect(info, isNotNull);

      expect(info.getDelimiterQuotationStart(), '„');
      expect(info.getDelimiterQuotationEnd(), '”');
      expect(info.getPaperSize(), 'A4');
    });
  });
}
