import 'dart:ui';
import 'ilib_init.dart';

String currentLocale =
    PlatformDispatcher.instance.locale.toString().replaceAll('_', '-');

String getLocale() {
  return currentLocale;
}

void setLocale(String loc) {
  currentLocale = loc;
}

String getJSDataPath(String? locale) {
  if (locale == null) {
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

void loadLocaleData(String? locale) {
  locale ??= getLocale();

  if (!isValidLocale(locale)) {
    return;
  }

  final String dataPath = getJSDataPath(locale);
  final ILibJS ilibjsinstace = ILibJS.instance;

  if (!ilibjsinstace.fileList.contains(dataPath)) {
    ilibjsinstace.fileList.add(dataPath);
    ilibjsinstace.loadJSwithPath(dataPath).then((String result) {
      ILibJS.instance.evaluate(result);
    });
  }
}
