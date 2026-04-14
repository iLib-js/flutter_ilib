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

  Map<String, dynamic>? getLocaleData(String locale) => _localeDataMap[locale];

  Future<void> loadJSON() async {
    final String curlocale = getLocale();
    final String dataPath = getJSONDataPath(curlocale);
    if (dataPath.isNotEmpty && !fileList.contains(dataPath)) {
      try {
        final String jsonContent = await rootBundle.loadString(dataPath);
        final Map<String, dynamic> jsonData =
            json.decode(jsonContent) as Map<String, dynamic>;
        _localeDataMap[curlocale] = jsonData;
        fileList.add(dataPath);
      } catch (err) {
        logger.error('Failed to load locale JSON data: $err');
      }
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

    final String jsonPath = getJSONDataPath(locale);
    print(jsonPath);
    if (jsonPath.isNotEmpty && !fileList.contains(jsonPath)) {
      fileList.add(jsonPath);
      try {
        final String jsonContent = await loadJSONwithPath(jsonPath);
        final Map<String, dynamic> jsonData =
            json.decode(jsonContent) as Map<String, dynamic>;
        _localeDataMap[locale] = jsonData;
      } catch (err) {
        logger.error('Failed to load locale JSON data: $err');
      }
    }

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
