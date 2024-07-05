import 'package:flutter_js/flutter_js.dart';

import 'ilib_init.dart';

String? evaluateILib(String jscode) {
  final JsEvalResult jsEvalResult = FlutteriLib.instance.evaluate(jscode);
  final String? result =
      (jsEvalResult.stringResult == 'null') ? null : jsEvalResult.stringResult;
  return result;
}
