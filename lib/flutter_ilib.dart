/// {@category flutter_ilib}
library flutter_ilib;

import 'package:flutter/foundation.dart';

import 'ilib_init.dart';
import 'internal/locale_state.dart' as locale_state;
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
  /// Setting it only updates the default string; it does not load data or
  /// notify listeners. Use it to point the default at an already-loaded
  /// locale. To switch to a locale whose data is not loaded yet, call
  /// [loadLocaleData] instead — it loads the data and updates this default in
  /// one step; otherwise consumers fall back to default data.
  String get locale => locale_state.currentLocale;
  set locale(String value) => locale_state.currentLocale = value;

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
  ///
  /// Passing an explicit [locale] also updates the app-wide default [locale],
  /// so the two stay in sync and a locale-less formatter created afterwards
  /// uses the locale just loaded. Passing null reloads the current locale and
  /// leaves the default unchanged.
  Future<void> loadLocaleData(String? locale) async {
    logger.debug('[FlutterILib] Loading locale data for $locale');
    if (locale != null) {
      this.locale = locale;
    }
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
