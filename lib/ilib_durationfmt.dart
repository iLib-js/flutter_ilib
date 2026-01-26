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

  /// Return the template string that is used to format date/times for this formatter instance
  String getLocale() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 =
        'new DurationFmt($formatOptions).getLocale().toString()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  String getLength() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DurationFmt($formatOptions).getLength()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  String getStyle() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DurationFmt($formatOptions).getStyle()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }
}

class ILibDurationFmtOptions {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention,
  /// [length] Specifies the length of the format to use.Valid values are "short", "medium", "long" and "full".
  /// [style]
  /// [type] Specifies whether this formatter should format times only, dates only, or both times and dates together. Valid values are "time", "date", and "datetime".
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
