import 'dart:convert';

import 'flutter_ilib.dart';
import 'ilib_init.dart';

class ILibLocaleInfo {
  /// [lo] Set the locale for which the info is sought
  ILibLocaleInfo(String lo) {
    locale = lo;
    //ILibJS.instance.loadILibLocaleData(locale);
  }
  String? locale;

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

  /// Return the decimal separator for formatted numbers in this locale
  String getDecimalSeparator() {
    final String jscode1 =
        'new LocaleInfo("$locale").getDecimalSeparator().toString()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the separator character used to separate groups of digits on the
  /// integer side of the decimal character.
  String getGroupingSeparator() {
    final String jscode1 =
        'new LocaleInfo("$locale").getGroupingSeparator().toString()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the format template used to format percentages in this locale
  String getPercentageFormat() {
    final String jscode1 =
        'new LocaleInfo("$locale").getPercentageFormat().toString()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the format template used to format percentages in this locale with negative amounts
  String getNegativePercentageFormat() {
    final String jscode1 =
        'new LocaleInfo("$locale").getNegativePercentageFormat().toString()';
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
    final String jscode1 = 'new LocaleInfo("$locale").getCurrency().toString()';
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
