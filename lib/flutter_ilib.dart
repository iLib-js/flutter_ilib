/// {@category flutter_ilib}
library flutter_ilib;

import 'package:flutter/foundation.dart';

import 'ilib_init.dart';
import 'internal/ilib_utils.dart' as ilib_utils;
import 'internal/logger/log_adapter.dart';
import 'internal/logger/logger_selector.dart';

export 'ilib_calendar.dart';
export 'ilib_casemapper.dart';
export 'ilib_country.dart';
export 'ilib_currency.dart';
export 'ilib_date.dart';
export 'ilib_date_accessor.dart';
export 'ilib_datefmt.dart';
export 'ilib_durationfmt.dart';
export 'ilib_init.dart';
export 'ilib_locale.dart';
export 'ilib_localeinfo.dart';
export 'ilib_numfmt.dart';
export 'ilib_scriptinfo.dart';
export 'ilib_timezone.dart';

class FlutterILib extends ChangeNotifier {
  FlutterILib._internal() {
    ILibLoader.instance.addListener(() {
      ILibLoader.instance.initILib();
      notifyListeners();
    });
  }

  static final FlutterILib _instance = FlutterILib._internal();
  static FlutterILib get instance => _instance;
  final LogAdapter logger = Logger();

  /// Return whether iLib is ready
  bool get isILibReady => ILibLoader.instance.isILibReady;

  /// The app-wide default locale, used when no per-call `options.locale` is
  /// given.
  ///
  /// Setting it only updates the default string — it neither loads data nor
  /// notifies listeners, and only instances created afterwards pick it up.
  /// Unless the locale's data was already loaded (e.g. the system locale at
  /// startup, or a prior [loadLocaleData]), you must call [loadLocaleData]
  /// after setting it; otherwise consumers fall back to default data:
  ///
  /// ```dart
  /// plugin.locale = 'fr-FR';
  /// await plugin.loadLocaleData('fr-FR'); // loads data + notifies listeners
  /// ```
  String get locale => ilib_utils.getLocale();
  set locale(String value) => ilib_utils.setLocale(value);

  /// Return the current version of flutter_ilib.
  String get getVersion => '2.0.0';

  /// Return the current version of iLib.
  String get getILibVersion => '15.0.0';

  /// Return the CLDR version currently adopted by iLib.
  String? get getCLDRVersion => '48.2';

  /// Load the given locale data file.
  ///
  /// To properly load the updated locale data file,
  /// this should be called at the appropriate time when the locale changes.
  Future<void> loadLocaleData(String? locale) async {
    logger.debug('[FlutterILib] Loading locale data for $locale');
    await ILibLoader.instance.loadILibLocaleData(locale);
  }

  /// Drop the cached data for [locale] to reclaim memory.
  ///
  /// Optional: loaded data is normally kept for reuse. iLib stays ready and
  /// other locales are untouched; the data is re-loaded on the next
  /// [loadLocaleData] for [locale].
  void clearLocaleData(String locale) {
    logger.debug('[FlutterILib] Clearing locale data for $locale');
    ILibLoader.instance.clearLocale(locale);
  }
}
