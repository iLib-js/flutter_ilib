import 'ilib_init.dart';
import 'ilib_locale.dart';
import 'ilib_localeinfo.dart';
import 'internal/ilib_utils.dart' as ilib_utils;

/// Country name ↔ ISO 3166-1 alpha-2 code lookup, localized per locale.
///
/// The bundled data holds a single `ilib.data.ctryreverse` map (country code →
/// localized name) per locale, merged most-general → most-specific like every
/// other locale data type. [getName] reads that map directly; [getCode] reads
/// the inverse (name → code) built once at construction.
class ILibCountry {
  /// [locale] the locale whose language the country names are in. Accepts a
  /// [String] spec, an [ILibLocale] instance, or nothing (the current locale).
  ILibCountry({Object? locale}) {
    if (locale is String) {
      _locale = ILibLocale(locale);
    } else if (locale is ILibLocale) {
      _locale = ILibLocale(locale);
    } else {
      _locale = ILibLocale(ilib_utils.getLocale());
    }

    // A LocaleInfo decides which locale to load the country names for. If it
    // cannot resolve a region name (an unknown locale that falls back to
    // defaults), load the English (en-US) names instead of the requested
    // locale. getLocale() still reports the original locale.
    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);
    final String dataLocale =
        locInfo.getRegionName() == null ? 'en-US' : _locale.getSpec();

    _codeToCountry = _loadCtryReverse(dataLocale);
    _countryToCode = <String, String>{
      for (final MapEntry<String, String> entry in _codeToCountry.entries)
        entry.value: entry.key,
    };
  }

  late final ILibLocale _locale;

  /// Country code → localized name.
  late final Map<String, String> _codeToCountry;

  /// Localized name → country code, the inverse of [_codeToCountry].
  late final Map<String, String> _countryToCode;

  /// Load the country-name map for [spec], falling back to root data (the
  /// English defaults) when the locale is unknown or carries no override.
  static Map<String, String> _loadCtryReverse(String spec) {
    final Map<String, dynamic>? data =
        ILibLoader.instance.getLocaleData(spec) ??
            ILibLoader.instance.getRootData();
    return _asStringMap(data?['ilib.data.ctryreverse']);
  }

  /// Locale-independent country-name map from root.json, used by the static
  /// availability queries.
  static Map<String, String> _rootCtryReverse() {
    final Map<String, dynamic>? root = ILibLoader.instance.getRootData();
    return _asStringMap(root?['ilib.data.ctryreverse']);
  }

  static Map<String, String> _asStringMap(Object? value) {
    if (value is! Map<String, dynamic>) {
      return <String, String>{};
    }
    return <String, String>{
      for (final MapEntry<String, dynamic> entry in value.entries)
        if (entry.value is String) entry.key: entry.value as String,
    };
  }

  /// Return an array of the ISO 3166-1 alpha-2 codes that this copy of ilib
  /// knows about.
  static List<String> getAvailableCode() {
    return _rootCtryReverse().keys.toList();
  }

  /// Return an array of country names that this copy of ilib knows about.
  static List<String> getAvailableCountry() {
    return _rootCtryReverse().values.toList();
  }

  /// Return the country code corresponding to the country name given.
  ///
  /// Throws an [ArgumentError] if the name is not one of the known countries.
  String getCode(String ctryname) {
    final String? code = _countryToCode[ctryname];
    if (code == null) {
      throw ArgumentError('Country $ctryname is unknown');
    }
    return code;
  }

  /// Return the country name corresponding to the country code given.
  ///
  /// Throws an [ArgumentError] if the code is not one of the known countries.
  String getName(String code) {
    final String? name = _codeToCountry[code];
    if (name == null) {
      throw ArgumentError('Country code $code is unknown');
    }
    return name;
  }

  /// Return the locale that this info object was created with.
  ILibLocale getLocale() => _locale;
}
