import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';
import 'internal/ilib_utils.dart';

import 'internal/logger/log_adapter.dart';
import 'internal/logger/logger.dart';

class ILibJS extends ChangeNotifier {
  ILibJS._internal() {
    loadJS();
  }

  static final ILibJS _instance = ILibJS._internal();
  static ILibJS get instance => _instance;
  bool get isILibReady => _iLibPrepared;
  final LogAdapter logger = Logger();

  final JavascriptRuntime _jsRuntime = getJavascriptRuntime();
  bool _iLibPrepared = false;

  JsEvalResult _jsEvalResult = JsEvalResult('', '');
  String _loadJSResult = '';
  String _loadLocaleJSResult = '';

  Future<void> loadJS() async {
    _loadJSResult = await rootBundle
        .loadString('packages/flutter_ilib/assets/js/ilib-init.js');

    final String curlocale = getLocale();
    final String dataPath = getJSDataPath(curlocale);
    if (!fileList.contains(dataPath)) {
      _loadLocaleJSResult = await rootBundle.loadString(dataPath);
      fileList.add(dataPath);
    }

    logger.info('Notifying listeners after js loading');
    notifyListeners();
  }

  Future<String> loadJSwithPath(String path) async {
    _loadJSResult = await rootBundle.loadString(path);
    return _loadJSResult;
  }

  List<String> fileList = <String>[];

  void initILib() {
    try {
      if (!_iLibPrepared) {
        _jsRuntime.evaluate(_loadJSResult);
        _jsRuntime.evaluate(_loadLocaleJSResult);
        _iLibPrepared = true;
        logger.info('iLib initialization completed');
      }
    } on PlatformException catch (e) {
      logger.error('Failed to init js engine: ${e.details}');
      rethrow;
    }
  }

  JsEvalResult evaluate(String code, {String? sourceUrl}) {
    try {
      _jsEvalResult = _jsRuntime.evaluate(code);
      return _jsEvalResult;
    } on PlatformException catch (e) {
      logger.error('Failed to evaluate: ${e.details}');
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

    final String dataPath = getJSDataPath(locale);
    if (!fileList.contains(dataPath)) {
      fileList.add(dataPath);
      try {
        final String loadData = await loadJSwithPath(dataPath);
        evaluate(loadData);
        if (currentLocale != locale) {
          notifyListeners();
        }
      } catch (err) {
        logger.error('Failed to load localeData: $err');
      }
    }
  }

  Future<void> loadILibLocaleDataAll() async {
    final List<String> localelist = getSupportedLanguages();

    for (final String lo in localelist) {
      await loadILibLocaleData(lo);
    }
  }
}
