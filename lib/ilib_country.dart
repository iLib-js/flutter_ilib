import 'dart:convert';

import 'flutter_ilib.dart';

class ILibCountry {
  /// [locale] Set the locale
  ILibCountry({Object? locale}) {
    //locale = options.locale;
    if (locale is String) {
      this.locale = locale;
    } else if (locale is ILibLocale) {
      this.locale = locale.toString();
    } else {
      this.locale = '';
    }
  }
  String locale = '';

  /// Return an array of the ids for all ISO 3166-1 alpha-2 code that
  /// this copy of ilib knows about.
  static List<String> getAvailableCode() {
    const String jscode = 'Country.getAvailableCode().toString()';
    final String result = ILibJS.instance.evaluate(jscode).stringResult;

    return result.split(',');
  }

  /// Return an array of country names that this copy of ilib knows about.
  static List<String> getAvailableCountry() {
    const String jscode = 'Country.getAvailableCountry().toString()';
    final String result = ILibJS.instance.evaluate(jscode).stringResult;

    return result.split(',');
  }

  /// Return the country code corresponding to the country name given.
  String getCode(String ctryname) {
    final String jscode =
        'new Country({locale: "$locale"}).getCode("$ctryname")';
    final String result = ILibJS.instance.evaluate(jscode).stringResult;

    return result;
  }

  /// Return the country name corresponding to the country code given.
  String getName(String code) {
    final String jscode = 'new Country({locale: "$locale"}).getName("$code")';
    final String result = ILibJS.instance.evaluate(jscode).stringResult;

    return result;
  }

  /// Return the locale that this info object was created with.
  ILibLocale getLocale() {
    final String jscode1 = 'new Country({locale: "$locale"}).getLocale()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;

    // Ensure the result string is properly formatted as JSON
    final String formattedResult = result
        .replaceAllMapped(RegExp(r'(?<!")\b([a-zA-Z_][a-zA-Z0-9_]*)\b(?!"):'),
            (Match match) => '"${match[1]}":') // Properly format JSON keys
        .replaceAllMapped(
            RegExp(r':\s*(?!null)([^"\s][^,}]*)'),
            (Match match) =>
                ': "${match[1]}"') // Quote values with special characters
        .replaceAll(RegExp(r':\s*null'), ': null');

    // Parse the result string into components
    final Map<String, dynamic> map =
        json.decode(formattedResult) as Map<String, dynamic>;
    final String language = map['language']?.toString() ?? '';
    final String region = map['region']?.toString() ?? '';
    final String script = map['script']?.toString() ?? '';
    final String variant = map['variant']?.toString() ?? '';

    // Create an ILibLocale instance using the constructor
    return ILibLocale(language, region, variant, script);
  }
}
