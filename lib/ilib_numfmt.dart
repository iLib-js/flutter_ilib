import 'calendar/calendar_utils.dart' as calendar_utils;
import 'ilib_currency.dart';
import 'ilib_localeinfo.dart';
import 'internal/ilib_utils.dart' as ilib_utils;
import 'internal/math_utils.dart' as math_utils;

/// Formats numbers, currency amounts, and percentages for a locale.
///
/// Configure with [ILibNumFmtOptions] then call [format] with any [num] or
/// [String] value. The formatter is immutable once created.
class ILibNumFmt {
  /// Create a formatter from [options]. Unspecified options fall back to
  /// the locale's defaults.
  ILibNumFmt(ILibNumFmtOptions options) {
    _locale = options.locale ?? ilib_utils.getLocale();
    _type = _validType(options.type);

    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);

    // Resolve style
    if (_type == 'currency') {
      _style = (options.style == 'common' || options.style == 'iso')
          ? options.style!
          : 'common';
    } else {
      _style = options.style ?? 'standard';
    }

    // Resolve fraction digits from options
    _maxFractionDigits = options.maxFractionDigits;
    _minFractionDigits = options.minFractionDigits;
    _significantDigits = options.significantDigits;

    // Enforce limits on significantDigits
    if (_significantDigits != null) {
      if (_significantDigits! < 1) {
        _significantDigits = 1;
      }
      if (_significantDigits! > 20) {
        _significantDigits = 20;
      }
    }
    // Enforce limits on minFractionDigits
    if (_minFractionDigits != null) {
      if (_minFractionDigits! < 0) {
        _minFractionDigits = 0;
      }
      if (_minFractionDigits! > 20) {
        _minFractionDigits = 20;
      }
    }

    // Currency setup
    if (_type == 'currency') {
      if (options.currency == null) {
        throw ArgumentError(
            'A currency property is required in the options to the number '
            'formatter constructor when the type property is set to currency.');
      }
      _initCurrency(options.currency, locInfo);
    }

    // Percentage templates
    if (_type == 'percentage') {
      _template = locInfo.getPercentageFormat();
      _templateNegative = locInfo.getNegativePercentageFormat();
    }

    // Number negative template
    if (_type == 'number') {
      _templateNegative = locInfo.getNegativeNumberFormat();
    }

    _roundingMode = options.roundingMode ?? locInfo.getRoundingMode();
    // if the mode name is not a known rounding function,
    // fall back to halfdown for both the function and the reported mode.
    final double Function(double)? round =
        math_utils.lookupRoundingFunction(_roundingMode);
    if (round != null) {
      _round = round;
    } else {
      _roundingMode = 'halfdown';
      _round = math_utils.roundHalfdown;
    }

    // Resolve useNative
    _resolveUseNative(options.useNative, locInfo);

    // Init separators, grouping, digits
    _init(locInfo);
  }

  late String _locale;
  late String _type;
  late String _style;
  late String _roundingMode;
  late double Function(double) _round;
  int? _maxFractionDigits;
  int? _minFractionDigits;
  int? _significantDigits;
  late bool _useNative;
  late String _decimalSeparator;
  late String _groupingSeparator;
  late int _prigroupSize;
  late int _secgroupSize;
  late String _exponentSymbol;
  List<String>? _digits;

  // Currency
  String? _currencyCode;
  String? _currencySign;

  // Templates
  String _template = '{n}';
  String _templateNegative = '-{n}';

  static String _validType(String? type) {
    if (type == 'number' || type == 'currency' || type == 'percentage') {
      return type!;
    }
    return 'number';
  }

  void _initCurrency(String? currency, ILibLocaleInfo locInfo) {
    // Use ILibCurrency to get currency information.
    final ILibCurrency currencyInfo = ILibCurrency(
      locale: _locale,
      code: currency,
    );

    _currencyCode = currencyInfo.getCode();
    _currencySign = currencyInfo.getSign() ?? _currencyCode;

    // Get currency decimals
    final int currencyDecimals = currencyInfo.getFractionDigits();

    // Set fraction digits to currency decimals if user didn't override
    if (_maxFractionDigits == null && _minFractionDigits == null) {
      _maxFractionDigits = currencyDecimals;
      _minFractionDigits = currencyDecimals;
    }

    // Currency format templates
    final CurrencyFormats formats = locInfo.getCurrencyFormats();
    if (_style == 'iso') {
      final String isoFmt = formats.iso ?? '';
      final String isoNeg = formats.isoNegative ?? '';
      _template = isoFmt.isNotEmpty ? isoFmt : (formats.common ?? '{s} {n}');
      _templateNegative =
          isoNeg.isNotEmpty ? isoNeg : (formats.commonNegative ?? '-{s} {n}');
      _currencySign = _currencyCode;
    } else {
      _template =
          (formats.common?.isNotEmpty ?? false) ? formats.common! : '{s} {n}';
      _templateNegative = (formats.commonNegative?.isNotEmpty ?? false)
          ? formats.commonNegative!
          : '-{s} {n}';
    }
  }

  void _resolveUseNative(bool? optionUseNative, ILibLocaleInfo locInfo) {
    if (optionUseNative != null) {
      _useNative = optionUseNative;
    } else {
      final String digitsStyle = locInfo.getDigitsStyle();
      if (digitsStyle == 'native') {
        _useNative = true;
      } else if (digitsStyle == 'optional' && _style == 'native') {
        _useNative = true;
      } else {
        _useNative = false;
      }
    }
  }

  void _init(ILibLocaleInfo locInfo) {
    // Enforce min <= max
    if (_maxFractionDigits != null &&
        _minFractionDigits != null &&
        _maxFractionDigits! >= 0 &&
        _maxFractionDigits! < _minFractionDigits!) {
      _minFractionDigits = _maxFractionDigits;
    }

    // Grouping
    if (_style == 'nogrouping') {
      _prigroupSize = 0;
      _secgroupSize = 0;
      _groupingSeparator = '';
    } else {
      _prigroupSize = locInfo.getPrimaryGroupingDigits();
      _secgroupSize = locInfo.getSecondaryGroupingDigits();
      _groupingSeparator = _useNative
          ? locInfo.getNativeGroupingSeparator()
          : locInfo.getGroupingSeparator();
    }

    // Decimal separator
    _decimalSeparator = _useNative
        ? locInfo.getNativeDecimalSeparator()
        : locInfo.getDecimalSeparator();

    // Native digits
    if (_useNative) {
      final String? nd = locInfo.getNativeDigits() ?? locInfo.getDigits();
      if (nd != null && nd.isNotEmpty) {
        _digits = nd.split('');
      }
    }

    // Exponential symbol
    _exponentSymbol =
        _useNative ? locInfo.getNativeExponential() : locInfo.getExponential();
  }

  String _mapDigits(String str) {
    if (_digits == null) {
      return str;
    }
    final StringBuffer result = StringBuffer();
    for (int i = 0; i < str.length; i++) {
      final int code = str.codeUnitAt(i);
      if (code >= 48 && code <= 57) {
        result.write(_digits![code - 48]);
      } else {
        result.write(str[i]);
      }
    }
    return result.toString();
  }

  /// Apply constraints (significantDigits, maxFractionDigits, rounding) to a number.
  double _constrain(double num) {
    double result = num;
    final String parts0 = num.abs().toString().split('.')[0];

    // Apply significantDigits if it would result in fewer digits than maxFractionDigits
    if (_significantDigits != null &&
        _significantDigits! > 0 &&
        (_maxFractionDigits == null ||
            _maxFractionDigits! < 0 ||
            parts0.length + _maxFractionDigits! > _significantDigits!)) {
      result = math_utils.significant(result, _significantDigits!, _round);
    }

    // Apply maxFractionDigits
    if (_maxFractionDigits != null && _maxFractionDigits! > -1) {
      result = math_utils.shiftDecimal(
          _round(math_utils.shiftDecimal(result, _maxFractionDigits!)),
          -_maxFractionDigits!);
    }

    return result;
  }

  /// Format the number using standard (non-scientific) notation.
  String _formatStandard(double num) {
    final double absConstrained = _constrain(num).abs();

    final List<String> parts = absConstrained.toString().split('.');
    final String integral = parts[0];
    String? fraction = parts.length > 1 ? parts[1] : null;

    // Remove trailing zeros artifact from double conversion
    // but only if no minFractionDigits is set
    if (fraction == '0' &&
        (_minFractionDigits == null || _minFractionDigits! <= 0) &&
        (_maxFractionDigits == null || _maxFractionDigits! < 0)) {
      fraction = null;
    } else if (fraction == '0' &&
        _maxFractionDigits != null &&
        _maxFractionDigits == 0) {
      fraction = null;
    }

    // Pad fraction to minFractionDigits
    if (_minFractionDigits != null && _minFractionDigits! > 0) {
      final String frac = fraction ?? '';
      if (frac.length < _minFractionDigits!) {
        fraction = _pad(frac, _minFractionDigits!, true);
      }
    }

    // Apply grouping
    String formatted;
    if (_secgroupSize > 0) {
      formatted = _applySecondaryGrouping(integral);
    } else if (_prigroupSize > 0) {
      formatted = _applyPrimaryGrouping(integral);
    } else {
      formatted = integral;
    }

    // Add fractional part
    if (fraction != null &&
        fraction.isNotEmpty &&
        ((_maxFractionDigits == null && _significantDigits == null) ||
            (_maxFractionDigits != null && _maxFractionDigits! > 0) ||
            (_significantDigits != null && _significantDigits! > 0))) {
      formatted += _decimalSeparator + fraction;
    }

    // Native digit substitution
    if (_digits != null) {
      formatted = _mapDigits(formatted);
    }

    return formatted;
  }

  /// Apply primary-only grouping (e.g., Western style: 1,234,567).
  String _applyPrimaryGrouping(String integral) {
    if (integral.length <= _prigroupSize) {
      return integral;
    }
    final StringBuffer result = StringBuffer();
    int cycle = (integral.length - 1) % _prigroupSize;
    for (int i = 0; i < integral.length - 1; i++) {
      result.write(integral[i]);
      if (cycle == 0) {
        result.write(_groupingSeparator);
      }
      cycle = calendar_utils.mod(cycle - 1, _prigroupSize);
    }
    result.write(integral[integral.length - 1]);
    return result.toString();
  }

  /// Apply secondary grouping (e.g., Indian style: 12,34,56,789).
  String _applySecondaryGrouping(String integral) {
    if (integral.length <= _prigroupSize) {
      return integral;
    }
    // First group from right: prigroupSize
    final int size3 = integral.length - _prigroupSize;
    String result =
        '${integral.substring(0, size3)}$_groupingSeparator${integral.substring(size3)}';

    // Apply secondary grouping to the left part
    String numSec = result.substring(0, result.indexOf(_groupingSeparator));
    while (numSec.length > _secgroupSize) {
      final int secSize3 = numSec.length - _secgroupSize;
      result =
          '${result.substring(0, secSize3)}$_groupingSeparator${result.substring(secSize3)}';
      numSec = result.substring(0, result.indexOf(_groupingSeparator));
    }

    return result;
  }

  /// Format the number using scientific notation.
  String _formatScientific(double num) {
    final double n = num.abs();
    final String str = n.toStringAsExponential();
    final List<String> expParts = str.split('e');
    final String exponent = expParts[1];

    // Only re-parse as double when digit constraints need rounding.
    // Avoid unnecessary string→double→string round-trip which can lose
    // the last significant digit due to IEEE 754 precision limits.
    final bool needsConstraints =
        (_maxFractionDigits != null && _maxFractionDigits! > 0) ||
            (_significantDigits != null && _significantDigits! > 0);

    String significandStr = expParts[0];

    if (needsConstraints) {
      double significantPart = double.parse(significandStr);
      int maxDigits = (_maxFractionDigits ?? 25) + 1;
      if (_significantDigits != null && _significantDigits! > 0) {
        if (maxDigits > _significantDigits!) {
          maxDigits = _significantDigits!;
        }
      }
      significantPart =
          math_utils.significant(significantPart, maxDigits, _round);
      significandStr = significantPart.toString();
    }

    final List<String> numParts = significandStr.split('.');
    final String integral = numParts[0];
    String? fraction = numParts.length > 1 ? numParts[1] : null;

    // Truncate fraction to maxFractionDigits
    final int maxFrac = _maxFractionDigits ?? -1;
    if (maxFrac >= 0 && fraction != null && fraction.length > maxFrac) {
      fraction = fraction.substring(0, maxFrac);
    }

    // Pad fraction to minFractionDigits
    final int minFrac = _minFractionDigits ?? -1;
    if (minFrac > 0) {
      final String frac = fraction ?? '';
      if (frac.length < minFrac) {
        fraction = _pad(frac, minFrac, true);
      }
    }

    String formatted = integral;
    if (fraction != null && fraction.isNotEmpty && fraction != '0') {
      formatted += _decimalSeparator + fraction;
    } else if (minFrac > 0) {
      formatted += _decimalSeparator + _pad(fraction ?? '', minFrac, true);
    }
    formatted += _exponentSymbol + exponent;

    if (_digits != null) {
      formatted = _mapDigits(formatted);
    }

    return formatted;
  }

  /// Format a number according to the settings of this number formatter instance.
  String format(dynamic number) {
    if (number == null) {
      return '';
    }
    if (number is! num && number is! String) {
      throw ArgumentError(
          'Invalid argument type. Expected num or String, got ${number.runtimeType}');
    }
    if (number is num && (number.isNaN || number.isInfinite)) {
      return number.toString();
    }

    final double n =
        number is String ? double.parse(number) : (number as num).toDouble();

    if (_type == 'number') {
      final String formatted =
          (_style == 'scientific') ? _formatScientific(n) : _formatStandard(n);
      if (n < 0) {
        return _templateNegative.replaceAll('{n}', formatted);
      }
      return formatted;
    } else {
      // currency or percentage
      final String formatted = _formatStandard(n);
      final String template = (n < 0) ? _templateNegative : _template;
      String result = template.replaceAll('{n}', formatted);
      if (_type == 'currency' && _currencySign != null) {
        result = result.replaceAll('{s}', _currencySign!);
      }
      return result;
    }
  }

  /// Apply the constraints used in the current formatter to the given number.
  /// Applies maxFractionDigits, significantDigits, and the rounding mode, and
  /// returns the constrained number.
  double constrain(num number) {
    return _constrain(number.toDouble());
  }

  /// Return the locale that was used to construct this number formatter object.
  String getLocale() {
    return _locale;
  }

  /// Return the type of formatter. Valid values are "number", "currency", and "percentage".
  String getType() {
    return _type;
  }

  /// Returns true if this formatter groups together digits in the integral
  /// portion of a number.
  bool isGroupingUsed() {
    return _prigroupSize > 0 && _style != 'nogrouping';
  }

  /// Returns the maximum fraction digits set up in the constructor.
  /// -1 means unlimited.
  int getMaxFractionDigits() {
    return _maxFractionDigits ?? -1;
  }

  /// Returns the minimum fraction digits set up in the constructor.
  /// -1 means not set.
  int getMinFractionDigits() {
    return _minFractionDigits ?? -1;
  }

  /// Returns the significant digits set up in the constructor.
  /// -1 means not set.
  int getSignificantDigits() {
    return _significantDigits ?? -1;
  }

  /// Returns the ISO 4217 code for the currency that this formatter formats.
  /// Returns null if type is not "currency".
  String? getCurrency() {
    if (_type != 'currency') {
      return null;
    }
    return _currencyCode;
  }

  /// Returns the rounding mode set up in the constructor.
  String getRoundingMode() {
    return _roundingMode;
  }

  /// Return the style that was used to construct this number formatter object.
  String getStyle() {
    return _style;
  }

  /// Return true if this formatter uses native digits to format the number.
  bool getUseNative() {
    return _useNative;
  }
}

String _pad(String value, int length, [bool right = false]) {
  // This helper is only used for right-padding fraction digits,
  // so negative values never reach it.
  if (value.length >= length) {
    return value;
  }

  const String zeros = '00000000000000000000000000000000';
  final String padding = zeros.substring(0, length - value.length);

  return right ? value + padding : padding + value;
}

/// Options for configuring [ILibNumFmt]. Unspecified fields fall back to the
/// locale's defaults.
class ILibNumFmtOptions {
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

  /// BCP-47 locale string to format for.
  String? locale;

  /// Formatter type: `'number'` (default), `'currency'`, or `'percentage'`.
  String? type;

  /// ISO 4217 currency code (e.g. `'USD'`). Required when [type] is
  /// `'currency'`.
  String? currency;

  /// Maximum digits after the decimal point. `-1` means unlimited, `0` means
  /// no fractional part.
  int? maxFractionDigits;

  /// Minimum digits after the decimal point. Output is zero-padded to reach
  /// this length.
  int? minFractionDigits;

  /// Maximum total significant digits, applied before and after the decimal.
  /// Clamped to [1..20].
  int? significantDigits;

  /// Formatting style.<br>
  /// For `'number'`: `'standard'`, `'scientific'`, `'native'`, or `'nogrouping'`.<br>
  /// For `'currency'`: `'common'` (currency symbol) or `'iso'` (ISO code).
  String? style;

  /// Rounding mode: `'up'`, `'down'`, `'halfup'`, `'halfdown'`, `'halfeven'`,
  /// `'halfodd'`, `'ceiling'`, or `'floor'`. Defaults to the locale's setting.
  String? roundingMode;

  /// Whether to use native-script digits. Defaults to the locale's setting.
  bool? useNative;
}
