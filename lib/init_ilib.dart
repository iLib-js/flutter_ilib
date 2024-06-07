import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';

final JavascriptRuntime _jsRuntime = getJavascriptRuntime();
final Future<String> _ilib = rootBundle.loadString(
    "packages/flutter_ilib/assets/js/ilib-standard-flutter-compiled.js");
//bool _iLibPrepared = false;

Future<JavascriptRuntime> initializeiLib() async {
  final jsiLibFile = await _ilib;
  _jsRuntime.evaluate(jsiLibFile);
  //_iLibPrepared = true;
  print("initializeiLIb");
  print(_jsRuntime);
  return _jsRuntime;
}
