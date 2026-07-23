import 'ilib_init.dart';
import 'ilib_localeinfo.dart';
import 'internal/ilib_utils.dart' as ilib_utils;

/// Currency information class that provides details about a particular currency.
///
/// For formatting currency, use ILibNumFmt instead. This class only provides
/// information about currencies.
class ILibCurrency {
  /// Create a new currency information instance.
  ///
  /// [options] can contain:
  /// - [locale] - specify the locale for this instance
  /// - [code] - find info on a specific currency with the given ISO 4217 code
  /// - [sign] - search for a currency that uses this sign
  ///
  /// When searching for a currency by its sign, this class cannot guarantee
  /// that it will return info about a specific currency. The reason is that currency
  /// signs are sometimes shared between different currencies and the sign is
  /// therefore ambiguous. If you need a guarantee, find the currency using the
  /// code instead.
  ///
  /// The way this class finds a currency by sign is the following:
  /// - If the sign is unambiguous, return that currency
  /// - If multiple currencies use the same sign, and the current locale uses
  ///   that sign, return the default currency for the current locale
  /// - If multiple currencies use the same sign, but the current locale does
  ///   not use that sign, return the currency with the largest circulation
  ILibCurrency({
    String? locale,
    String? code,
    String? sign,
  }) {
    _locale = locale ?? ilib_utils.getLocale();
    _code = code;
    _sign = sign;

    _init();
  }

  late String _locale;
  String? _code;
  String? _sign;
  String? _name;
  int? _fractionDigits;

  /// Initialize currency info
  void _init() {
    // Locale data drives only the locale's *default* currency selection.
    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(_locale);
    final Map<String, dynamic>? rootData = ILibLoader.instance.getRootData();
    final Map<String, dynamic>? allCurrencies =
        rootData?['ilib.data.currency'] as Map<String, dynamic>?;

    if (allCurrencies == null) {
      // No currency data available, use defaults
      _code ??= _getLocaleDefaultCurrency(localeData);
      _fractionDigits ??= 2;
      return;
    }

    Map<String, dynamic>? currInfo;

    if (_code != null) {
      // Find by code
      currInfo = allCurrencies[_code] as Map<String, dynamic>?;
      if (currInfo == null) {
        throw ArgumentError('currency $_code is unknown');
      }
    } else if (_sign != null) {
      // Try to find by sign first
      currInfo = allCurrencies[_sign] as Map<String, dynamic>?;
      if (currInfo != null) {
        // The sign matches a currency code directly
        _code = _sign;
      } else {
        // Need to search for currency with this sign
        final String? bySign =
            _getCurrencyBySign(_sign!, allCurrencies, localeData);
        _code = bySign ?? _getLocaleDefaultCurrency(localeData);
        currInfo = allCurrencies[_code] as Map<String, dynamic>?;
      }
    } else {
      // Use locale's default currency
      _code = _getLocaleDefaultCurrency(localeData);
      currInfo = allCurrencies[_code] as Map<String, dynamic>?;
    }

    if (currInfo != null) {
      _name = currInfo['name'] as String?;
      _fractionDigits = (currInfo['decimals'] as num?)?.toInt() ?? 2;
      _sign = currInfo['sign'] as String? ?? _code;
    } else {
      _fractionDigits ??= 2;
      _sign ??= _code;
    }
  }

  /// Get the default currency for the locale
  String _getLocaleDefaultCurrency(Map<String, dynamic>? localeData) {
    if (localeData != null) {
      final Map<String, dynamic>? localeInfo =
          localeData['ilib.data.localeinfo'] as Map<String, dynamic>?;
      if (localeInfo != null) {
        final String? currency = localeInfo['currency'] as String?;
        if (currency != null) {
          return currency;
        }
      }
    }
    // Fallback: try LocaleInfo
    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);
    return locInfo.getCurrency();
  }

  /// Find currency by sign with fallback logic
  String? _getCurrencyBySign(
    String sign,
    Map<String, dynamic> allCurrencies,
    Map<String, dynamic>? localeData,
  ) {
    // Find all currencies that use this sign
    final List<String> candidates = <String>[];
    final List<MapEntry<String, dynamic>> entries =
        allCurrencies.entries.toList();
    for (int i = 0; i < entries.length; i++) {
      final MapEntry<String, dynamic> entry = entries[i];
      final Map<String, dynamic>? currInfo =
          entry.value as Map<String, dynamic>?;
      if (currInfo != null && currInfo['sign'] == sign) {
        candidates.add(entry.key);
      }
    }

    if (candidates.isEmpty) {
      // No currency with this sign, fall back to locale default
      return _getLocaleDefaultCurrency(localeData);
    }

    if (candidates.length == 1) {
      // Unambiguous
      return candidates[0];
    }

    // Multiple currencies with this sign
    // Check if the current locale uses this sign
    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);
    final String localeCurrency = locInfo.getCurrency();
    final Map<String, dynamic>? localeCurrencyInfo =
        allCurrencies[localeCurrency] as Map<String, dynamic>?;

    if (localeCurrencyInfo != null && localeCurrencyInfo['sign'] == sign) {
      // Current locale uses this sign, return locale's default currency
      return localeCurrency;
    }

    // Return the first one (by convention, data is ordered by circulation)
    return candidates[0];
  }

  /// Return an array of all ISO 4217 currency codes that this copy of
  /// ilib knows about.
  static List<String> getAvailableCurrencies() {
    final List<String> result = <String>[];
    final Map<String, dynamic>? rootData = ILibLoader.instance.getRootData();
    final Map<String, dynamic>? allCurrencies =
        rootData?['ilib.data.currency'] as Map<String, dynamic>?;

    if (allCurrencies != null) {
      final List<String> keys = allCurrencies.keys.toList();
      for (int i = 0; i < keys.length; i++) {
        final String key = keys[i];
        result.add(key);
      }
    }

    return result;
  }

  /// Return the ISO 4217 currency code for this instance.
  String? getCode() {
    return _code;
  }

  /// Return the default number of fraction digits that is typically used
  /// with this type of currency.
  int getFractionDigits() {
    return _fractionDigits ?? 2;
  }

  /// Return the sign commonly used to represent this currency.
  String? getSign() {
    return _sign;
  }

  /// Return the name of the currency in English.
  String? getName() {
    return _name;
  }

  /// Return the locale string for this currency.
  String getLocale() {
    return _locale;
  }
}
