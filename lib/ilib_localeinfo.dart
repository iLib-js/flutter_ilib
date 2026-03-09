import 'dart:convert';

import 'flutter_ilib.dart';

class ILibLocaleInfo {
  /// [lo] Set the locale for which the info is sought
  ILibLocaleInfo([String lo = 'en-US']) {
    locale = lo;
    //ILibJS.instance.loadILibLocaleData(locale);
  }
  String? locale;

  /// Return the name of the locale's language in English.
  String getLanguageName() {
    final String jscode1 = 'new LocaleInfo("$locale").getLanguageName()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the name of the locale's region in English.
  String? getRegionName() {
    final String jscode1 = 'new LocaleInfo("$locale").getRegionName()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result.isNotEmpty ? result : null;
  }

  /// Return whether this locale commonly uses the 12- or the 24-hour clock.
  String getClock() {
    final String jscode1 = 'new LocaleInfo("$locale").getClock()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the locale that this info object was created with.
  ILibLocale getLocale() {
    final String jscode1 = 'new LocaleInfo("$locale").getLocale()';
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

  /// Return the name of the measuring system commonly used in the locale.
  String getUnits() {
    final String jscode1 = 'new LocaleInfo("$locale").getUnits()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the name of the calendar commonly used in the locale.
  String getCalendar() {
    final String jscode1 = 'new LocaleInfo("$locale").getCalendar()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Returns the day of week that starts weeks in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday,
  /// but calendars should be displayed and weeks calculated with the day of week returned
  /// from this function as the first day of the week.
  int getFirstDayOfWeek() {
    final String jscode1 = 'new LocaleInfo("$locale").getFirstDayOfWeek()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the day of week that starts weekend in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.
  int getWeekEndStart() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndStart()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the day of week that ends weekend in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.
  int getWeekEndEnd() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndEnd()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Return the default time zone for this locale.
  String getTimeZone() {
    final String jscode1 = 'new LocaleInfo("$locale").getTimeZone()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the decimal separator for formatted numbers in this locale
  String getDecimalSeparator() {
    final String jscode1 = 'new LocaleInfo("$locale").getDecimalSeparator()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the decimal separator for formatted numbers in this locale for native script.
  String getNativeDecimalSeparator() {
    final String jscode1 =
        'new LocaleInfo("$locale").getNativeDecimalSeparator()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the separator character used to separate groups of digits on the
  /// integer side of the decimal character.
  String getGroupingSeparator() {
    final String jscode1 = 'new LocaleInfo("$locale").getGroupingSeparator()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the separator character used to separate groups of digits on the
  /// integer side of the decimal character for the native script.
  String getNativeGroupingSeparator() {
    final String jscode1 =
        'new LocaleInfo("$locale").getNativeGroupingSeparator()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the minimum number of digits grouped together on the integer side for the first (primary) group.
  int getPrimaryGroupingDigits() {
    final String jscode1 =
        'new LocaleInfo("$locale").getPrimaryGroupingDigits()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Return the minimum number of digits grouped together on the integer side for the second or more (secondary) group.
  int getSecondaryGroupingDigits() {
    final String jscode1 =
        'new LocaleInfo("$locale").getSecondaryGroupingDigits()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Return the format template used to format percentages in this locale
  String getPercentageFormat() {
    final String jscode1 = 'new LocaleInfo("$locale").getPercentageFormat()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the format template used to format percentages in this locale with negative amounts
  String getNegativePercentageFormat() {
    final String jscode1 =
        'new LocaleInfo("$locale").getNegativePercentageFormat()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the symbol used for percentages in this locale.
  String getPercentageSymbol() {
    final String jscode1 = 'new LocaleInfo("$locale").getPercentageSymbol()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the symbol used for exponential in this locale.
  String getExponential() {
    final String jscode1 = 'new LocaleInfo("$locale").getExponential()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the symbol used for exponential in this locale for native script.
  String getNativeExponential() {
    final String jscode1 = 'new LocaleInfo("$locale").getNativeExponential()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the symbol used for percentages in this locale for native script.
  String getNativePercentageSymbol() {
    final String jscode1 =
        'new LocaleInfo("$locale").getNativePercentageSymbol()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the format template used to format negative numbers in this locale.
  String getNegativeNumberFormat() {
    final String jscode1 =
        'new LocaleInfo("$locale").getNegativeNumberFormat()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return [CurrencyFormats] containing the format templates for formatting currencies in this locale.
  ///
  /// The object has a number of properties in it that each are a particular style of format.
  CurrencyFormats getCurrencyFormats() {
    String result = '';

    final String jscode1 =
        'JSON.stringify(new LocaleInfo("$locale").getCurrencyFormats())';
    result = ILibJS.instance.evaluate(jscode1).stringResult;

    final Map<String, dynamic> map =
        json.decode(result) as Map<String, dynamic>;

    final CurrencyFormats cf = CurrencyFormats(
      common: (map['common'] as String?) ?? '',
      commonNegative: (map['commonNegative'] as String?) ?? '',
      iso: (map['iso'] as String?) ?? '',
      isoNegative: (map['isoNegative'] as String?) ?? '',
    );

    return cf;
  }

  /// Return the currency that is legal in the locale or most commonly used in commerce.
  String getCurrency() {
    final String jscode1 = 'new LocaleInfo("$locale").getCurrency()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return a string that describes the style of digits used by this locale.
  String getDigitsStyle() {
    final String jscode1 = 'new LocaleInfo("$locale").getDigitsStyle()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the digits of the default script if they are defined.
  String? getDigits() {
    final String jscode1 = 'new LocaleInfo("$locale").getDigits()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the digits of the native script if they are defined.
  String? getNativeDigits() {
    final String jscode1 = 'new LocaleInfo("$locale").getNativeDigits()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result.isNotEmpty ? result : null;
  }

  /// Return the rounding mode used for numeric formatting in this locale.
  String getRoundingMode() {
    final String jscode1 = 'new LocaleInfo("$locale").getRoundingMode()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the script used for the current locale.<br>
  /// If the current locale explicitly defines a script, then this script is returned.<br>
  /// If not, then the default script for the locale is returned.
  String getScript() {
    final String jscode1 = 'new LocaleInfo("$locale").getScript()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the default script used to write text in the language of this locale.
  String getDefaultScript() {
    final String jscode1 = 'new LocaleInfo("$locale").getDefaultScript()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return an array of script codes used to write text in the current language.
  List<String> getAllScripts() {
    final String jscode1 =
        'JSON.stringify(new LocaleInfo("$locale").getAllScripts())';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return List<String>.from(json.decode(result) as List<dynamic>);
  }

  /// Return the default style of meridiems used in this locale.
  String getMeridiemsStyle() {
    final String jscode1 = 'new LocaleInfo("$locale").getMeridiemsStyle()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the default PaperSize information in this locale.
  String getPaperSize() {
    final String jscode1 = 'new LocaleInfo("$locale").getPaperSize()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the default Delimiter QuotationStart information in this locale.
  String getDelimiterQuotationStart() {
    final String jscode1 =
        'new LocaleInfo("$locale").getDelimiterQuotationStart()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the default Delimiter QuotationEnd information in this locale.
  String getDelimiterQuotationEnd() {
    final String jscode1 =
        'new LocaleInfo("$locale").getDelimiterQuotationEnd()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }
}

/// Represents currency formatting templates for a specific locale.
class CurrencyFormats {
  CurrencyFormats({
    this.common,
    this.commonNegative,
    this.iso,
    this.isoNegative,
  });

  String? common;
  String? commonNegative;
  String? iso;
  String? isoNegative;
}
