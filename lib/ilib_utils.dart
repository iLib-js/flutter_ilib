import 'ilib_init.dart';

String getJSDataPath(String? locale) {
  if (locale == null) {
    return '';
  }
  final String lang = locale.split('-')[0];
  final String fullPath = 'packages/flutter_ilib/assets/locales/$lang.js';
  return fullPath;
}

void loadLocaleData(String? locale) {
  final String dataPath = getJSDataPath(locale);
  final ILibJS ilibjsinstace = ILibJS.instance;

  if (!ilibjsinstace.fileList.contains(dataPath)) {
    ilibjsinstace.fileList.add(dataPath);
    ilibjsinstace.loadJSwithPath(dataPath).then((String result) {
      ILibJS.instance.evaluate(result);
    });
  }
}
