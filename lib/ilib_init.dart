import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';
import 'internal/ilib_utils.dart';

class ILibJS extends ChangeNotifier {
  ILibJS._internal() {
    loadJS();
  }

  static final ILibJS _instance = ILibJS._internal();
  static ILibJS get instance => _instance;

  final JavascriptRuntime _jsRuntime = getJavascriptRuntime();
  bool _iLibPrepared = false;

  JsEvalResult _jsEvalResult = JsEvalResult('', '');
  String _loadJSResult = '';

  Future<void> loadJS() async {
    _loadJSResult = await rootBundle
        .loadString('packages/flutter_ilib/assets/js/ilib-all.js');
    final String curlocale = getLocale();
    loadLocaleData(curlocale);
    notifyListeners();
  }

  Future<String> loadJSwithPath(String path) async {
    _loadJSResult = await rootBundle.loadString(path);
    return _loadJSResult;
  }

  List<String> fileList = <String>[];

  void initILib() {
    try {
      if (_iLibPrepared == false) {
        _jsEvalResult = _jsRuntime.evaluate(_loadJSResult);
        _iLibPrepared = true;
      }
    } on PlatformException catch (e) {
      debugPrint('Failed to init js engine: ${e.details}');
      rethrow;
    }
  }

  JsEvalResult evaluate(String code, {String? sourceUrl}) {
    try {
      _jsEvalResult = _jsRuntime.evaluate(code);
      return _jsEvalResult;
    } on PlatformException catch (e) {
      debugPrint('Failed to load js engine: ${e.details}');
      rethrow;
    }
  }

  Future<void> loadLocaleData(String? locale) async {
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
      } catch (err) {
        debugPrint('Caught error: $err');
      }
    }
  }
}
