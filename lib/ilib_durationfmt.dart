import 'ilib_date.dart';
import 'ilib_init.dart';

class ILibDurationFmt {
  /// [options] Set the Options for formatting
  ILibDurationFmt(ILibDurationFmtOptions options) {
    locale = options.locale;
    length = options.length;
    style = options.style;
    useNative = options.useNative;
  }

  String? locale;
  String? length;
  String? style;
  bool? useNative;

  /// A string representation of parameters to call functions of iLib library properly
  String toJsonString() {
    String result = '';
    String completeOption = '';

    final Map<String, String> paramInfo = <String, String>{
      'locale': '$locale',
      'length': '$length',
      'style': '$style'
    };
    paramInfo.forEach((String key, String value) {
      if (value != 'null') {
        result += '$key:"$value",';
      }
    });

    if (useNative != null) {
      result += 'useNative:$useNative,';
    }

    result =
        result.isNotEmpty ? result.substring(0, result.length - 1) : result;
    completeOption = '{$result}';

    return completeOption;
  }

  /// Formats a particular date instance according to the settings of this formatter object
  String format(ILibDateOptions date) {
    String result = '';
    final String formatOptions = toJsonString();
    final String dateOptions = date.toJsonString();

    result = ILibJS.instance
        .evaluate(
            'new DurationFmt($formatOptions).format($dateOptions).toString()')
        .stringResult;

    return result;
  }

  /// Return the locale that was used to construct this duration formatter object.
  /// If the locale was not given as parameter to the constructor, this method returns the default
  /// locale of the system.
  String getLocale() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 =
        'new DurationFmt($formatOptions).getLocale().toString()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the length that was used to construct this duration formatter object. If the
  /// length was not given as parameter to the constructor, this method returns the default
  /// length. Valid values are "short", "medium", "long", and "full".
  String getLength() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DurationFmt($formatOptions).getLength()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the style that was used to construct this duration formatter object.
  /// Valid values are "text" or "clock".
  String getStyle() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DurationFmt($formatOptions).getStyle()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }
}

class ILibDurationFmtOptions {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention.
  /// [length] Specifies the length of the format to use. Valid values are "short", "medium", "long" and "full".
  /// [style] whether hours, minutes, and seconds should be formatted as a text string or as a regular time as on a clock.
  /// [useNative] The flag used to determine whether to use the native script settings for formatting the numbers.
  ILibDurationFmtOptions({
    this.locale,
    this.length,
    this.style,
    this.useNative,
  });
  String? locale;
  String? length;
  String? style;
  bool? useNative;
}
