library flutter_ilib;

import 'package:flutter_js/flutter_js.dart';
import 'ilib_init.dart' as init_ilib;

export 'ilib_options.dart';
export 'ilib_datefmt.dart' show IlibDateFmt;

class FlutterIlib {
  JavascriptRuntime _jsRuntime = getJavascriptRuntime();

  Future<String> evaluateILib(String jscode) async {
    _jsRuntime = await init_ilib.initializeiLib();
    JsEvalResult jsEvalResult = _jsRuntime.evaluate(jscode);
    return jsEvalResult.stringResult;
  }

  Future<String> getVersion() async {
    String jscode = """ilib.getVersion()""";
    String ret = await evaluateILib(jscode);
    return ret;
  }

  Future<String> getCLDRVersion() async {
    String jscode = """ilib.getCLDRVersion()""";
    String ret = await evaluateILib(jscode);
    return ret;
  }
}