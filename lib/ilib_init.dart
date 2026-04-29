import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'internal/ilib_utils.dart';

import 'internal/logger/log_adapter.dart';
import 'internal/logger/logger_selector.dart';

class ILibJS extends ChangeNotifier {
  ILibJS._internal() {
    loadJSON();
  }

  static final ILibJS _instance = ILibJS._internal();
  static ILibJS get instance => _instance;
  bool get isILibReady => _iLibPrepared;
  final LogAdapter logger = Logger();

  bool _iLibPrepared = false;

  final Map<String, Map<String, dynamic>> _localeDataMap =
      <String, Map<String, dynamic>>{};

  final Map<String, Map<String, dynamic>> _fileDataCache =
      <String, Map<String, dynamic>>{};

  Map<String, dynamic>? getLocaleData(String locale) => _localeDataMap[locale];

  Future<Map<String, dynamic>?> _loadFile(String path) async {
    if (_fileDataCache.containsKey(path)) {
      return _fileDataCache[path];
    }
    try {
      final String content = await rootBundle.loadString(path);
      final Map<String, dynamic> data =
          json.decode(content) as Map<String, dynamic>;
      _fileDataCache[path] = data;
      fileList.add(path);
      return data;
    } catch (err) {
      logger.info('Locale data file not available, skipping: $path');
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
        result[key] = _deepMerge(
            result[key] as Map<String, dynamic>,
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

  Future<void> loadJSON() async {
    final String curlocale = getLocale();
    if (isValidLocale(curlocale)) {
      await _loadLocaleData(curlocale);
    }

    logger.info('Notifying listeners after JSON loading');
    notifyListeners();
  }

  Future<String> loadJSONwithPath(String path) async {
    return rootBundle.loadString(path);
  }

  List<String> fileList = <String>[];

  void initILib() {
    try {
      if (!_iLibPrepared) {
        _iLibPrepared = true;
        logger.info('iLib initialization completed');
      }
    } on PlatformException catch (e) {
      logger.error('Failed to init js engine: ${e.details}');
      rethrow;
    }
  }

  Future<void> loadILibLocaleData(String? locale) async {
    if (!_iLibPrepared) {
      return;
    }

    locale ??= getLocale();
    if (!isValidLocale(locale)) {
      return;
    }

    await _loadLocaleData(locale);

    if (currentLocale != locale) {
      notifyListeners();
    }
  }

  Future<void> loadILibLocaleDataAll() async {
    final List<String> localelist = getSupportedLocales();

    for (final String lo in localelist) {
      await loadILibLocaleData(lo);
    }
  }
}
