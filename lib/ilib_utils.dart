import 'package:flutter_js/flutter_js.dart';

import 'ilib_init.dart';

String? evaluateIlib(String jscode) {
  final JsEvalResult jsEvalResult = LoadIlibJS.instance.evaluate(jscode);
  final String? result =
      (jsEvalResult.stringResult == 'null') ? null : jsEvalResult.stringResult;
  return result;
}