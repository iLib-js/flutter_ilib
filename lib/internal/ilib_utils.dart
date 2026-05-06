import 'dart:ui';

import '../ilib_locale.dart';

String currentLocale =
    PlatformDispatcher.instance.locale.toString().replaceAll('_', '-');

String getLocale() {
  return currentLocale;
}

void setLocale(String loc) {
  currentLocale = loc;
}

String getJSONDataPath(String? locale) {
  if (locale == null || !isValidLocale(locale)) {
    return '';
  }

  final ILibLocale loc = ILibLocale(locale);
  if (loc.language == null && loc.region != null) {
    return 'packages/flutter_ilib/assets/locale_data/und-${loc.region}.json';
  }

  return 'packages/flutter_ilib/assets/locale_data/$locale.json';
}

List<String> getJSONDataPaths(String? locale) {
  if (locale == null || !isValidLocale(locale)) {
    return <String>[];
  }

  const String base = 'packages/flutter_ilib/assets/locale_data';
  final ILibLocale loc = ILibLocale(locale);
  final String? language = loc.language;
  final String? script = loc.script;
  final String? region = loc.region;

  // Region-only locale such as "MK" should resolve via und-REGION fallback.
  if (language == null && region != null) {
    return <String>['$base/root.json', '$base/und-$region.json'];
  }

  if (language == null) {
    return <String>[];
  }

  final List<String> paths = <String>['$base/root.json'];

  paths.add('$base/$language.json');

  if (script != null) {
    paths.add('$base/und_$script.json');
    paths.add('$base/$language-$script.json');
  }

  if (region != null) {
    paths.add('$base/und-$region.json');
    if (script != null) {
      paths.add('$base/$language-$region.json');
      paths.add('$base/$language-$script-$region.json');
    } else {
      paths.add('$base/$language-$region.json');
    }
  }

  return paths;
}

bool isValidLocale(String lo) {
  const String bcp47Pattern =
      r'(^|[^a-z])([a-z][a-z][a-z]?)(-([A-Z][a-z][a-z][a-z]))?(-([A-Z][A-Z]))?$';
  const String regionOnlyPattern = r'^[A-Z][A-Z]$';

  if (RegExp(bcp47Pattern).hasMatch(lo)) {
    return true;
  }

  return RegExp(regionOnlyPattern).hasMatch(lo);
}

List<String> getSupportedLocales() {
  return const <String>[
    'af-ZA',
    'am-ET',
    'ar-AE',
    'ar-EG',
    'ar-IQ',
    'ar-MA',
    'ar-SA',
    'as-IN',
    'az-Latn-AZ',
    'bg-BG',
    'bn-IN',
    'bs-Latn-BA',
    'bs-Latn-ME',
    'cs-CZ',
    'da-DK',
    'de-AT',
    'de-CH',
    'de-DE',
    'de-LU',
    'el-CY',
    'el-GR',
    'en-AM',
    'en-AU',
    'en-AZ',
    'en-CA',
    'en-CN',
    'en-GB',
    'en-GE',
    'en-GH',
    'en-HK',
    'en-IE',
    'en-IN',
    'en-IS',
    'en-JP',
    'en-KE',
    'en-LK',
    'en-MM',
    'en-MW',
    'en-MX',
    'en-MY',
    'en-NG',
    'en-NZ',
    'en-PH',
    'en-PR',
    'en-SG',
    'en-TW',
    'en-UG',
    'en-US',
    'en-ZA',
    'en-ZM',
    'es-AR',
    'es-BO',
    'es-CA',
    'es-CL',
    'es-CO',
    'es-DO',
    'es-EC',
    'es-ES',
    'es-GT',
    'es-HN',
    'es-MX',
    'es-NI',
    'es-PA',
    'es-PE',
    'es-PR',
    'es-PY',
    'es-SV',
    'es-US',
    'es-UY',
    'es-VE',
    'et-EE',
    'fa-IR',
    'fi-FI',
    'fr-BE',
    'fr-CA',
    'fr-CH',
    'fr-FR',
    'fr-LU',
    'ga-IE',
    'gu-IN',
    'ha-Latn-NG',
    'he-IL',
    'hi-IN',
    'hr-HR',
    'hr-ME',
    'hu-HU',
    'id-ID',
    'is-IS',
    'it-CH',
    'it-IT',
    'ja-JP',
    'ka-GE',
    'kk-Cyrl-KZ',
    'km-KH',
    'kn-IN',
    'ko-KR',
    'ko-US',
    'ku-Arab-IQ',
    'lt-LT',
    'lv-LV',
    'mk-MK',
    'ml-IN',
    'mn-Cyrl-MN',
    'mr-IN',
    'ms-MY',
    'nb-NO',
    'nl-BE',
    'nl-NL',
    'or-IN',
    'pa-IN',
    'pl-PL',
    'pt-BR',
    'pt-PT',
    'ro-RO',
    'ru-BY',
    'ru-GE',
    'ru-KG',
    'ru-KZ',
    'ru-RU',
    'ru-UA',
    'si-LK',
    'sk-SK',
    'sl-SI',
    'sq-AL',
    'sq-ME',
    'sr-Latn-ME',
    'sr-Latn-RS',
    'sv-FI',
    'sv-SE',
    'sw-Latn-KE',
    'ta-IN',
    'te-IN',
    'th-TH',
    'tr-AM',
    'tr-AZ',
    'tr-CY',
    'tr-TR',
    'uk-UA',
    'ur-IN',
    'uz-Latn-UZ',
    'vi-VN',
    'zh-Hans-CN',
    'zh-Hant-HK',
    'zh-Hant-TW',
  ];
}
