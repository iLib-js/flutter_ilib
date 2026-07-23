import 'ilib_init.dart';
import 'ilib_locale.dart';
import 'internal/ilib_utils.dart' as ilib_utils;

/// Locale-specific formatting and regional conventions for a given locale.
///
/// Provides locale data such as calendar, clock convention, number formatting,
/// currency, first day of week, paper size, and script information.
class ILibLocaleInfo {
  /// Create a [ILibLocaleInfo] for [lo].<br>
  /// [lo] accepts a [String] locale spec, an [ILibLocale] instance,
  /// or nothing to use the current locale.
  factory ILibLocaleInfo([Object? lo]) {
    final ILibLocale localeObj;
    if (lo is String) {
      localeObj = ILibLocale(lo);
    } else if (lo is ILibLocale) {
      localeObj = ILibLocale(lo);
    } else {
      localeObj = ILibLocale();
    }
    return ILibLocaleInfo._internal(localeObj);
  }

  ILibLocaleInfo._internal(this._localeObj) {
    final String spec = _localeObj.getSpec();
    locale = spec.isNotEmpty ? spec : null;
    final String lookupLocale = locale ?? ilib_utils.getLocale();
    _info = (ILibLoader.instance
                .getLocaleData(lookupLocale)?['ilib.data.localeinfo']
            as Map<String, dynamic>?) ??
        Map<String, dynamic>.from(_defaultInfo);
  }

  /// The BCP-47 locale spec this info was created with, or null if none was given.
  String? locale;
  late ILibLocale _localeObj;
  Map<String, dynamic> _info = <String, dynamic>{};

  static const Map<String, dynamic> _defaultInfo = <String, dynamic>{
    'calendar': 'gregorian',
    'clock': '24',
    'currency': 'USD',
    'delimiter': <String, dynamic>{
      'quotationStart': '\u201c',
      'quotationEnd': '\u201d',
      'alternateQuotationStart': '\u2018',
      'alternateQuotationEnd': '\u2019',
    },
    'firstDayOfWeek': 1,
    'meridiems': 'gregorian',
    'numfmt': <String, dynamic>{
      'script': 'Latn',
      'decimalChar': '.',
      'groupChar': ',',
      'pctChar': '%',
      'exponential': 'E',
      'prigroupSize': 3,
      'currencyFormats': <String, dynamic>{
        'common': '{s} {n}',
        'commonNegative': '-{s} {n}',
        'iso': '{s} {n}',
        'isoNegative': '({s} {n})',
      },
      'negativenumFmt': '-{n}',
      'pctFmt': '{n}%',
      'negativepctFmt': '-{n}%',
      'roundingMode': 'halfdown',
      'secgroupSize': null,
      'useNative': false,
    },
    'paperSizes': <String, dynamic>{'regular': 'A4'},
    'timezone': 'Etc/UTC',
    'units': 'metric',
    'weekendEnd': 0,
    'weekendStart': 6,
  };

  Map<String, dynamic> get _numfmt =>
      (_info['numfmt'] as Map<String, dynamic>?) ??
      (_defaultInfo['numfmt'] as Map<String, dynamic>);

  Map<String, dynamic>? get _nativeNumfmt =>
      _info['native_numfmt'] as Map<String, dynamic>?;

  /// Return the name of the locale's language in English.
  String getLanguageName() {
    return (_info['language.name'] as String?) ?? '';
  }

  /// Return the name of the locale's region in English.
  String? getRegionName() {
    final String? value = _info['region.name'] as String?;
    return (value != null && value.isNotEmpty) ? value : null;
  }

  /// Return whether this locale commonly uses the 12- or the 24-hour clock.
  String getClock() {
    return (_info['clock'] as String?) ?? (_defaultInfo['clock'] as String);
  }

  /// Return the locale that this info object was created with.
  ILibLocale getLocale() {
    return _localeObj;
  }

  /// Return the name of the measuring system commonly used in the locale.
  String getUnits() {
    return (_info['units'] as String?) ?? (_defaultInfo['units'] as String);
  }

  /// Return the name of the calendar commonly used in the locale.
  String getCalendar() {
    return (_info['calendar'] as String?) ??
        (_defaultInfo['calendar'] as String);
  }

  /// Returns the day of week that starts weeks in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday,
  /// but calendars should be displayed and weeks calculated with the day of week returned
  /// from this function as the first day of the week.
  int getFirstDayOfWeek() {
    return (_info['firstDayOfWeek'] as int?) ??
        (_defaultInfo['firstDayOfWeek'] as int);
  }

  /// Returns the day of week that starts weekend in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.
  int getWeekEndStart() {
    return (_info['weekendStart'] as int?) ??
        (_defaultInfo['weekendStart'] as int);
  }

  /// Returns the day of week that ends weekend in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.
  int getWeekEndEnd() {
    return (_info['weekendEnd'] as int?) ?? (_defaultInfo['weekendEnd'] as int);
  }

  /// Return the default time zone for this locale.
  String getTimeZone() {
    return (_info['timezone'] as String?) ??
        (_defaultInfo['timezone'] as String);
  }

  /// Return the decimal separator for formatted numbers in this locale
  String getDecimalSeparator() {
    return (_numfmt['decimalChar'] as String?) ?? '.';
  }

  /// Return the decimal separator for formatted numbers in this locale for native script.
  String getNativeDecimalSeparator() {
    return (_nativeNumfmt?['decimalChar'] as String?) ?? getDecimalSeparator();
  }

  /// Return the separator character used to separate groups of digits on the
  /// integer side of the decimal character.
  String getGroupingSeparator() {
    return (_numfmt['groupChar'] as String?) ?? ',';
  }

  /// Return the separator character used to separate groups of digits on the
  /// integer side of the decimal character for the native script.
  String getNativeGroupingSeparator() {
    return (_nativeNumfmt?['groupChar'] as String?) ?? getGroupingSeparator();
  }

  /// Return the minimum number of digits grouped together on the integer side for the first (primary) group.
  int getPrimaryGroupingDigits() {
    final dynamic val = _numfmt['prigroupSize'];
    if (val == null) {
      return 0;
    }
    return (val as num).toInt();
  }

  /// Return the minimum number of digits grouped together on the integer side for the second or more (secondary) group.
  int getSecondaryGroupingDigits() {
    final dynamic val = _numfmt['secgroupSize'];
    if (val == null) {
      return 0;
    }
    return (val as num).toInt();
  }

  /// Return the format template used to format percentages in this locale
  String getPercentageFormat() {
    return (_numfmt['pctFmt'] as String?) ?? '{n}%';
  }

  /// Return the format template used to format percentages in this locale with negative amounts
  String getNegativePercentageFormat() {
    return (_numfmt['negativepctFmt'] as String?) ?? '-{n}%';
  }

  /// Return the symbol used for percentages in this locale.
  String getPercentageSymbol() {
    return (_numfmt['pctChar'] as String?) ?? '%';
  }

  /// Return the symbol used for exponential in this locale.
  String getExponential() {
    return (_numfmt['exponential'] as String?) ?? 'E';
  }

  /// Return the symbol used for exponential in this locale for native script.
  String getNativeExponential() {
    return (_nativeNumfmt?['exponential'] as String?) ?? getExponential();
  }

  /// Return the symbol used for percentages in this locale for native script.
  String getNativePercentageSymbol() {
    return (_nativeNumfmt?['pctChar'] as String?) ?? getPercentageSymbol();
  }

  /// Return the format template used to format negative numbers in this locale.
  String getNegativeNumberFormat() {
    return (_numfmt['negativenumFmt'] as String?) ?? '-{n}';
  }

  /// Return [CurrencyFormats] containing the format templates for formatting currencies in this locale.
  ///
  /// The object has a number of properties in it that each are a particular style of format.
  CurrencyFormats getCurrencyFormats() {
    final Map<String, dynamic> cf =
        (_numfmt['currencyFormats'] as Map<String, dynamic>?) ??
            <String, dynamic>{};
    return CurrencyFormats(
      common: cf['common'] as String? ?? '',
      commonNegative: cf['commonNegative'] as String? ?? '',
      iso: cf['iso'] as String? ?? '',
      isoNegative: cf['isoNegative'] as String? ?? '',
    );
  }

  /// Return the currency that is legal in the locale or most commonly used in commerce.
  String getCurrency() {
    return (_info['currency'] as String?) ??
        (_defaultInfo['currency'] as String);
  }

  /// Return a string that describes the style of digits used by this locale.
  String getDigitsStyle() {
    if (_numfmt['useNative'] == true) {
      return 'native';
    }
    if (_info.containsKey('native_numfmt')) {
      return 'optional';
    }
    return 'western';
  }

  /// Return the digits of the default script if they are defined.
  String? getDigits() {
    final dynamic val = _numfmt['digits'];
    if (val == null || val.toString().isEmpty) {
      return null;
    }
    return val as String?;
  }

  /// Return the digits of the native script if they are defined.
  String? getNativeDigits() {
    if (_numfmt['useNative'] == true) {
      final dynamic val = _numfmt['digits'];
      if (val != null && val.toString().isNotEmpty) {
        return val as String;
      }
    }
    return _nativeNumfmt?['digits'] as String?;
  }

  /// Return the rounding mode used for numeric formatting in this locale.
  String getRoundingMode() {
    return (_numfmt['roundingMode'] as String?) ?? 'halfdown';
  }

  /// Return the script used for the current locale.<br>
  /// If the current locale explicitly defines a script, then this script is returned.<br>
  /// If not, then the default script for the locale is returned.
  String getScript() {
    return _localeObj.getScript() ?? getDefaultScript();
  }

  /// Return the default script used to write text in the language of this locale.
  String getDefaultScript() {
    final dynamic scripts = _info['scripts'];
    if (scripts is List && scripts.isNotEmpty) {
      return scripts[0] as String;
    }
    return 'Latn';
  }

  /// Return an array of script codes used to write text in the current language.
  List<String> getAllScripts() {
    final dynamic scripts = _info['scripts'];
    if (scripts is List) {
      return List<String>.from(scripts);
    }
    return <String>['Latn'];
  }

  /// Return the default style of meridiems used in this locale.
  String getMeridiemsStyle() {
    return (_info['meridiems'] as String?) ?? 'gregorian';
  }

  /// Return the default PaperSize information in this locale.
  String getPaperSize() {
    final Map<String, dynamic>? paperSizes =
        _info['paperSizes'] as Map<String, dynamic>?;
    return (paperSizes?['regular'] as String?) ?? 'A4';
  }

  /// Return the default Delimiter QuotationStart information in this locale.
  String getDelimiterQuotationStart() {
    final Map<String, dynamic>? delimiter =
        _info['delimiter'] as Map<String, dynamic>?;
    return (delimiter?['quotationStart'] as String?) ?? '\u201c';
  }

  /// Return the default Delimiter QuotationEnd information in this locale.
  String getDelimiterQuotationEnd() {
    final Map<String, dynamic>? delimiter =
        _info['delimiter'] as Map<String, dynamic>?;
    return (delimiter?['quotationEnd'] as String?) ?? '\u201d';
  }
}

/// Currency formatting templates for a locale.
///
/// Each field is a format string where `{s}` is the currency sign and `{n}`
/// is the formatted number.
class CurrencyFormats {
  /// Create a [CurrencyFormats] with the given templates.
  CurrencyFormats({
    this.common,
    this.commonNegative,
    this.iso,
    this.isoNegative,
  });

  /// Standard positive format (e.g. `'{s} {n}'`).
  String? common;

  /// Standard negative format (e.g. `'-{s} {n}'`).
  String? commonNegative;

  /// ISO code positive format (e.g. `'USD {n}'`).
  String? iso;

  /// ISO code negative format (e.g. `'(USD {n})'`).
  String? isoNegative;
}
