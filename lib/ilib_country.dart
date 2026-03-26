import 'dart:convert';

import 'flutter_ilib.dart';

class ILibCountry {
  /// [locale] Set the locale
  ILibCountry({Object? locale}) {
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

  /// Return the country code corresponding to the country name given.<br>
  /// If the country name is given, but it is not found in the list of known countries,
  /// this method will throw an exception.
  String getCode(String ctryname) {
    final String jscode =
        'new Country({locale: "$locale"}).getCode("$ctryname")';

    try {
      final String result = ILibJS.instance.evaluate(jscode).stringResult;
      return result;
    } catch (e) {
      throw ArgumentError('Country $ctryname is unknown');
    }
  }

  /// Return the country name corresponding to the country code given.<br>
  /// If the code is given, but it is not found in the list of known countries,
  /// this method will throw an exception.
  String getName(String code) {
    final String jscode = 'new Country({locale: "$locale"}).getName("$code")';

    try {
      final String result = ILibJS.instance.evaluate(jscode).stringResult;
      return result;
    } catch (e) {
      throw ArgumentError('Country code $code is unknown');
    }
  }

  /// Return the locale that this info object was created with.
  ILibLocale getLocale() {
    final String jscode =
        'JSON.stringify(new Country({locale: "$locale"}).getLocale())';

    try {
      final String result = ILibJS.instance.evaluate(jscode).stringResult;

      // Attempt to parse JSON
      final Map<String, dynamic> map =
          json.decode(result) as Map<String, dynamic>;

      // Extract values safely
      final String language = _getStringValue(map, 'language');
      final String region = _getStringValue(map, 'region');
      final String script = _getStringValue(map, 'script');
      final String variant = _getStringValue(map, 'variant');

      return ILibLocale(language, region, variant, script);
    } on FormatException catch (e) {
      // Directly rethrow the original FormatException
      throw FormatException('Failed to parse locale JSON: ${e.message}');
    } catch (e) {
      // Handle all other exceptions
      throw Exception('An unexpected error occurred: $e');
    }
  }

  // Helper method to safely extract string values from a map
  String _getStringValue(Map<String, dynamic> map, String key) {
    final dynamic value = map[key];
    return (value is String && value.isNotEmpty) ? value : '';
  }
}
