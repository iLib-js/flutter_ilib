import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';

final JavascriptRuntime _jsRuntime = getJavascriptRuntime();
final Future<String> _ilib = rootBundle.loadString(
    "packages/flutter_ilib/assets/js/ilib-standard-flutter-compiled.js");
bool _iLibPrepared = false;

Future<JavascriptRuntime> initializeiLib() async {
  try {
    final jsiLibFile = await _ilib;
    if (_iLibPrepared==false) {
      //print("!!!!");
      _jsRuntime.evaluate(jsiLibFile);
      _iLibPrepared = true;
    }
    return _jsRuntime;
  } on PlatformException catch (e) {
      print('Failed to init js engine: ${e.details}');
  }
  return _jsRuntime;
}