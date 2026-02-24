import 'flutter_ilib.dart';
// import 'ilib_init.dart';

class ILibLocale0 {
  ILibLocale0(String this.locale);
  String? locale;

  /// Return the ISO 639 language code for this locale.
  String? getLanguage() {
    final String jscode1 = 'new Locale("$locale").getLanguage()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the language of this locale as an ISO-639-alpha3 language code.
  String? getLanguageAlpha3() {
    final String jscode1 = 'new Locale("$locale").getLanguageAlpha3()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the ISO 3166 region code for this locale.
  String? getRegion() {
    final String jscode1 = 'new Locale("$locale").getRegion()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the region of this locale as an ISO-3166-alpha3 region code.
  String? getRegionAlpha3() {
    final String jscode1 = 'new Locale("$locale").getRegionAlpha3()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the ISO 15924 script code for this locale.
  String? getScript() {
    final String jscode1 = 'new Locale("$locale").getScript()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the variant code for this locale.
  String? getVariant() {
    final String jscode1 = 'new Locale("$locale").getVariant()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the whole locale specifier as a string.
  String? getSpec() {
    final String jscode1 = 'new Locale("$locale").getSpec()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result == 'null') {
      return '';
    }
    return result;
  }

  /// Return the language locale specifier. This includes the
  /// language and the script if it is available. This can be
  /// used to see whether the written language of two locales
  /// match each other regardless of the region or variant.
  String? getLangSpec() {
    final String jscode1 = 'new Locale("$locale").getLangSpec()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result == 'null') {
      return '';
    }
    return result;
  }

  /// Return true if the current locale is the special pseudo locale.
  bool isPseudo() {
    final String jscode1 = 'new Locale("$locale").isPseudo()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return false;
    }
    return result == 'true';
  }

  /// Return true if the current locale uses a valid ISO codes for each component
  /// of the locale that exists.
  bool isValid() {
    final String jscode1 = 'new Locale("$locale").isValid()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return false;
    }
    return result == 'true';
  }

  /// Return the ISO-3166 alpha3 equivalent region code for the given ISO 3166 alpha2
  /// region code.
  /// If the given alpha2 code is not found, this function returns its argument unchanged.
  static String? regionAlpha2ToAlpha3(String? alpha2) {
    final String jscode1 = 'Locale.regionAlpha2ToAlpha3("$alpha2")';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result == 'null') {
      return null;
    }
    return result;
  }

  ///  Return the ISO-639 alpha3 equivalent language code for the given ISO 639 alpha1 language code.
  /// If the given alpha1 code is not found, this function returns its argument unchanged.
  static String? languageAlpha1ToAlpha3(String? alpha1) {
    final String jscode1 = 'Locale.languageAlpha1ToAlpha3("$alpha1")';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result == 'null') {
      return null;
    }
    return result;
  }
}
