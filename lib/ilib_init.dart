import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';

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
    _loadJSResult = await rootBundle.loadString(
        'packages/flutter_ilib/assets/js/ilib-standard-flutter-compiled.js');
    notifyListeners();
  }

  Future<String?> loadJSwithPath(String path) async {
    _loadJSResult = await rootBundle.loadString(path);
    return _loadJSResult;
  }

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
}
