import 'ilib_init.dart';

class ILibNumFmt {
  /// [options] Set the Options for formatting
  ILibNumFmt(ILibNumFmtOptions options) {
    locale = options.locale;
    type = options.type;
    currency = options.currency;
    maxFractionDigits = options.maxFractionDigits;
    minFractionDigits = options.minFractionDigits;
    significantDigits = options.significantDigits;
    roundingMode = options.roundingMode;
    style = options.style;
    useNative = options.useNative;
  }

  String? locale;
  String? type;
  String? currency;
  int? maxFractionDigits;
  int? minFractionDigits;
  int? significantDigits;
  String? style;
  String? roundingMode;
  bool? useNative;

  /// A string representation of parameters to call functions of iLib library properly
  String toJsonString() {
    String result = '';
    String completeOption = '';

    final Map<String, String> paramInfo = <String, String>{
      'locale': '$locale',
      'type': '$type',
      'currency': '$currency',
      'maxFractionDigits': '$maxFractionDigits',
      'minFractionDigits': '$minFractionDigits',
      'significantDigits': '$significantDigits',
      'style': '$style',
      'roundingMode': '$roundingMode'
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

  /// Format a number according to the settings of this number formatter instance
  String format(dynamic number) {
    String result = '';
    if (number != null) {
      if (number is! num && number is! String) {
        throw ArgumentError(
            'Invalid argument type. Expected num or String, got ${number.runtimeType}');
      }
      if (number is num && (number.isNaN || number.isInfinite)) {
        return number.toString();
      }

      final String formatOptions = toJsonString();
      final String numStr = number is String ? number : number.toString();
      result = ILibJS.instance
          .evaluate('new NumFmt($formatOptions).format($numStr).toString()')
          .stringResult;
    }
    return result;
  }

  /// Apply the constraints used in the current formatter to the given number
  String constrain(int number) {
    String result = '';
    final String formatOptions = toJsonString();
    result = ILibJS.instance
        .evaluate('new NumFmt($formatOptions).constrain($number).toString()')
        .stringResult;

    return result;
  }

  /// Return the locale that was used to construct this number formatter object.<br>
  /// If the locale was not given as parameter to the constructor, this method returns the default
  /// locale of the system.
  String getLocale() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getLocale().toString()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the type of formatter. Valid values are "number", "currency", and "percentage".
  String getType() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getType()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Returns true if this formatter groups together digits in the integral
  /// portion of a number, based on the options set up in the constructor
  bool isGroupingUsed() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).isGroupingUsed()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result.toLowerCase() == 'true';
  }

  /// Returns the maximum fraction digits set up in the constructor
  int getMaxFractionDigits() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getMaxFractionDigits()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the minimum fraction digits set up in the constructor
  int getMinFractionDigits() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getMinFractionDigits()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the significant digits set up in the constructor
  int getSignificantDigits() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getSignificantDigits()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the ISO 4217 code for the currency that this formatter formats<br>
  /// If this formatter's type is not "currency", then this method will return null.
  int? getCurrency() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getCurrency()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;

    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }

    return int.parse(result);
  }

  /// Returns the rounding mode set up in the constructor.<br>
  /// The rounding mode controls how numbers are rounded when the integral or fraction digits
  /// of a number are limited.
  String getRoundingMode() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getRoundingMode()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the style that was used to construct this number formatter object.<br>
  /// Valid values are for "currency": "common" (symbol) or "iso" (ISO code).<br>
  /// for "number": "standard", "scientific", "native", or "nogrouping".<br>
  String getStyle() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getStyle()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return true if this formatter uses native digits to format the number
  bool getUseNative() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new NumFmt($formatOptions).getUseNative()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result.toLowerCase() == 'true';
  }
}

/// Options for configuring the number formatter.
class ILibNumFmtOptions {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention.<br>
  /// [useNative] The flag used to determine whether to use the native script settings for formatting the numbers.<br>
  /// [type] The formatter type. Valid values: "number", "currency", "percentage". Default: "number".<br>
  /// [currency] ISO 4217 currency code for "currency" type. Required for currency formatting.<br>
  /// [maxFractionDigits] Maximum digits after the decimal. `-1` means unlimited, `0` means no fractional digits.<br>
  /// [minFractionDigits] Minimum digits after the decimal. Pads with zeros if necessary.<br>
  /// [significantDigits] Maximum significant digits, applied before and after the decimal.<br>
  /// [roundingMode] Governs rounding behavior. Examples: "up", "down", "halfup", "halfeven".<br>
  /// [style] Formatting style.<br>
  /// For "currency": "common" (symbol) or "iso" (ISO code). For "number": "standard", "scientific", "native", or "nogrouping".<br>
  ILibNumFmtOptions({
    this.locale,
    this.type,
    this.currency,
    this.maxFractionDigits,
    this.minFractionDigits,
    this.significantDigits,
    this.style,
    this.roundingMode,
    this.useNative,
  });

  String? locale;
  String? type;
  String? currency;
  int? maxFractionDigits;
  int? minFractionDigits;
  int? significantDigits;
  String? style;
  String? roundingMode;
  bool? useNative;
}
