/// {@category API}
library;

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'internal/ilib_utils.dart';

import 'internal/logger/log_adapter.dart';
import 'internal/logger/logger_selector.dart';

/// Singleton that loads and caches the bundled locale JSON data.
///
/// Call [loadJSON] once at startup (done automatically by the constructor).
/// After [isILibReady] becomes true, use [getLocaleData] and [getRootData] to
/// read locale data, and [loadILibLocaleData] when the active locale changes.
class ILibLoader extends ChangeNotifier {
  ILibLoader._internal() {
    loadJSON().catchError((Object e) {
      logger.error('Failed to load JSON data: $e');
    });
  }

  static final ILibLoader _instance = ILibLoader._internal();

  /// The singleton instance.
  static ILibLoader get instance => _instance;

  /// Whether iLib has finished loading and is ready to use.
  bool get isILibReady => _iLibPrepared;
  final LogAdapter logger = Logger();

  bool _iLibPrepared = false;

  final Map<String, Map<String, dynamic>> _localeDataMap =
      <String, Map<String, dynamic>>{};

  final Map<String, Map<String, dynamic>> _fileDataCache =
      <String, Map<String, dynamic>>{};

  final Set<String> _availableAssets = <String>{};

  /// The most recently loaded locale. Drives the [loadILibLocaleData] notify
  /// decision; distinct from [currentLocale] (the app-wide default).
  String? _lastLoadedLocale;

  static const String _rootPath =
      'packages/flutter_ilib/assets/locale/root.json';

  /// The merged locale data for [locale], or null if [locale] has not been
  /// loaded. Data is resolved lazily from the file cache on first access.
  ///
  /// [locale] is normalized so the cache key matches the one used by
  /// [loadILibLocaleData] (store) and [clearLocale] (drop); otherwise an
  /// un-normalized spelling such as `ko_KR` would miss the `ko-KR` entry.
  Map<String, dynamic>? getLocaleData(String locale) {
    final String key = normalizeLocale(locale);
    return _localeDataMap[key] ?? _mergeFromCache(key);
  }

  /// Locale-independent data from root.json (e.g. `ilib.data.astro`).
  ///
  /// root.json is always loaded first by [loadJSON], so this is available
  /// regardless of which locales have been loaded — unlike [getLocaleData],
  /// which depends on a (valid, loaded) locale.
  Map<String, dynamic>? getRootData() => _fileDataCache[_rootPath];

  Map<String, dynamic>? _mergeFromCache(String locale) {
    final List<String> paths = getJSONDataPaths(locale);
    Map<String, dynamic> merged = <String, dynamic>{};
    for (final String path in paths) {
      final Map<String, dynamic>? data = _fileDataCache[path];
      if (data != null) {
        merged = _deepMerge(merged, data);
      } else if (_assetExists(path)) {
        // Exists on disk but not cached: merging would silently drop its data,
        // so bail and let the caller load it first. (Files that don't exist are
        // fine to skip — e.g. en-CW has no file and falls back to 'en'.)
        return null;
      }
    }
    if (merged.isNotEmpty) {
      _localeDataMap[locale] = merged;
      return merged;
    }
    return null;
  }

  /// Whether [path] is a bundled asset, per the manifest. Accepts both the
  /// `packages/flutter_ilib/...` and manifest-relative forms; false when the
  /// manifest is unavailable.
  bool _assetExists(String path) {
    if (_availableAssets.isEmpty) {
      return false;
    }
    return _availableAssets.contains(path) ||
        _availableAssets
            .contains(path.replaceFirst('packages/flutter_ilib/', ''));
  }

  Future<void> _loadAssetManifest() async {
    if (_availableAssets.isNotEmpty) {
      return;
    }
    try {
      // Removal of AssetManifest.json
      // See: https://docs.flutter.dev/release/breaking-changes/asset-manifest-dot-json
      final AssetManifest manifest =
          await AssetManifest.loadFromAssetBundle(rootBundle);
      _availableAssets.addAll(manifest.listAssets());
    } catch (err) {
      logger.error('Failed to load asset manifest: $err');
    }
  }

  Future<Map<String, dynamic>?> _loadFile(String path) async {
    if (_fileDataCache.containsKey(path)) {
      return _fileDataCache[path];
    }
    if (_availableAssets.isNotEmpty &&
        !_availableAssets.contains(path) &&
        !_availableAssets
            .contains(path.replaceFirst('packages/flutter_ilib/', ''))) {
      return null;
    }
    try {
      final String content = await rootBundle.loadString(path);
      final Map<String, dynamic> data =
          json.decode(content) as Map<String, dynamic>;
      _fileDataCache[path] = data;
      return data;
    } on FormatException catch (err) {
      logger.error('Invalid JSON format in $path: $err');
      return null;
    } catch (_) {
      return null;
    }
  }

  Map<String, dynamic> _deepMerge(
      Map<String, dynamic> base, Map<String, dynamic> override) {
    final Map<String, dynamic> result = Map<String, dynamic>.from(base);
    for (final String key in override.keys) {
      if (result.containsKey(key) &&
          result[key] is Map<String, dynamic> &&
          override[key] is Map<String, dynamic>) {
        result[key] = _deepMerge(result[key] as Map<String, dynamic>,
            override[key] as Map<String, dynamic>);
      } else {
        result[key] = override[key];
      }
    }
    return result;
  }

  Future<void> _loadLocaleData(String locale) async {
    if (_localeDataMap.containsKey(locale)) {
      return;
    }

    final List<String> paths = getJSONDataPaths(locale);
    //paths.forEach(print);

    Map<String, dynamic> merged = <String, dynamic>{};

    for (final String path in paths) {
      final Map<String, dynamic>? data = await _loadFile(path);
      if (data != null) {
        merged = _deepMerge(merged, data);
      }
    }

    if (merged.isNotEmpty) {
      _localeDataMap[locale] = merged;
    }
  }

  /// Load the bundled JSON data for the current locale.
  ///
  /// Called automatically by the constructor. Can be awaited if the caller
  /// needs to ensure data is ready before proceeding.
  Future<void> loadJSON() async {
    await _loadAssetManifest();

    // Always load root.json first as it contains locale-independent data (e.g. astro)
    await _loadFile(_rootPath);

    // normalizeLocale maps C/POSIX/empty to en-US.
    String curlocale = normalizeLocale(getLocale());
    if (!isValidLocale(curlocale)) {
      logger.warn('Invalid locale: $curlocale, falling back to en-US');
      curlocale = 'en-US';
    }
    await _loadLocaleData(curlocale);
    _lastLoadedLocale = curlocale;

    initILib();
    logger.info('Notifying listeners after JSON loading');
    notifyListeners();
  }

  /// Mark iLib as ready once locale data has been loaded.
  ///
  /// Called automatically by [loadJSON]. Callers can invoke this again after
  /// a hot-reload or locale change to re-check readiness without reloading.
  void initILib() {
    if (_iLibPrepared) {
      return;
    }
    if (_localeDataMap.isEmpty) {
      logger.warn('iLib is not ready: no locale data loaded');
      return;
    }
    _iLibPrepared = true;
    logger.info('iLib initialization completed');
  }

  /// Load and cache the JSON data for [locale], notifying listeners only if it
  /// differs from the last loaded locale (reloading the same one is a no-op for
  /// listeners). Pass null to reload the current locale. No-op if not ready.
  Future<void> loadILibLocaleData(String? locale) async {
    if (!_iLibPrepared) {
      return;
    }

    // normalizeLocale maps C/POSIX/empty to en-US instead of rejecting.
    locale = normalizeLocale(locale ?? getLocale());
    if (!isValidLocale(locale)) {
      return;
    }

    await _loadLocaleData(locale);

    if (_lastLoadedLocale != locale) {
      _lastLoadedLocale = locale;
      notifyListeners();
    }
  }

  /// Load and cache JSON data for every locale in [getSupportedLocales].
  Future<void> loadILibLocaleDataAll() async {
    final List<String> localelist = getSupportedLocales();

    for (final String lo in localelist) {
      await loadILibLocaleData(lo);
    }
  }

  /// Drop [locale]'s merged data to reclaim memory. Safe at runtime: iLib stays
  /// ready and the shared file cache is kept, so [getLocaleData] re-merges it
  /// cheaply on next access.
  void clearLocale(String locale) {
    _localeDataMap.remove(normalizeLocale(locale));
  }

  /// Clear every cache and reset iLib to not-ready; [loadJSON] must run again
  /// before reading data. For reclaiming all memory and isolating test state.
  /// The asset manifest is kept, as it never changes.
  @visibleForTesting
  void clearCache() {
    _localeDataMap.clear();
    _fileDataCache.clear();
    _lastLoadedLocale = null;
    _iLibPrepared = false;
  }
}
