import 'dart:ui';

String currentLocale =
    PlatformDispatcher.instance.locale.toString().replaceAll('_', '-');

String getLocale() {
  return currentLocale;
}

void setLocale(String loc) {
  currentLocale = loc;
}

String getJSDataPath(String? locale) {
  if (locale == null || !isValidLocale(locale)) {
    return '';
  }

  final String lang = locale.split('-')[0];
  final String fullPath = 'packages/flutter_ilib/assets/locales/$lang.js';
  return fullPath;
}

bool isValidLocale(String lo) {
  const String pattern =
      r'(^|[^a-z])([a-z][a-z][a-z]?)(-([A-Z][a-z][a-z][a-z]))?(-([A-Z][A-Z]))?$';
  final RegExp regExp = RegExp(pattern);
  if (!regExp.hasMatch(lo)) {
    return false;
  }
  return true;
}

List<String> getSupportedLanguages() {
  final List<String> locales = [
    'af',
    'am',
    'ar',
    'as',
    'az',
    'bg',
    'bn',
    'bs',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'fa',
    'fi',
    'fr',
    'ga',
    'gu',
    'ha',
    'he',
    'hi',
    'hr',
    'hu',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ku',
    'lt',
    'lv',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'nb',
    'nl',
    'or',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'te',
    'th',
    'tr',
    'uk',
    'ur',
    'uz',
    'vi',
    'zh'
  ];
  return locales;
}
