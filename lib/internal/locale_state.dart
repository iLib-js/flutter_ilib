/// @nodoc
library;

import 'dart:ui';

import 'ilib_utils.dart';

/// flutter_ilib's library-wide default locale — the fallback used when a
/// formatter gets no explicit locale. Public entry point: `FlutterILib.locale`.
String _currentLocale =
    normalizeLocale(PlatformDispatcher.instance.locale.toLanguageTag());

/// Always normalized: `C`/`POSIX`/empty collapse to `en-US`. Reads and writes
/// both go through [normalizeLocale], so no un-normalized value is observable.
String get currentLocale => _currentLocale;
set currentLocale(String value) => _currentLocale = normalizeLocale(value);
