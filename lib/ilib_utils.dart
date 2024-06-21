import 'package:flutter_js/flutter_js.dart';

import 'ilib_init.dart';

Future<String> evaluateILib(String jscode) async {
  JavascriptRuntime jsRuntime = await initializeiLib();
  JsEvalResult jsEvalResult = jsRuntime.evaluate(jscode);
  return jsEvalResult.stringResult;
}
