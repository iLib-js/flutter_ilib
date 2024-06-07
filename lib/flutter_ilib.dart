import 'package:flutter/services.dart';
import 'package:flutter_js/flutter_js.dart';

//import 'flutter_ilib_datefmt.dart';
export 'flutter_ilib_datefmt.dart';

//import 'ilib_datefmt.dart' show DateFmt;
export 'ilib_datefmt.dart' show DateFmt;

class FlutterIlib {
  FlutterIlib() {
    _init();
  }
  bool _iLibPrepared = false;
  final JavascriptRuntime _jsRuntime = getJavascriptRuntime();
  final Future<String> _ilib = rootBundle.loadString(
      "packages/flutter_ilib/assets/js/ilib-standard-flutter-compiled.js");

  Future<void> _init() async {
    if (_iLibPrepared) return;

    try {
      final jsiLibFile = await _ilib;
      _jsRuntime.evaluate(jsiLibFile);
      _iLibPrepared = true;
    } on PlatformException catch (e) {
      print('Failed to init js engine: ${e.details}');
    }
  }

  Future<String> evaluateILib(String jscode) async {
    await _init();
    JsEvalResult jsEvalResult = _jsRuntime.evaluate(jscode);
    return jsEvalResult.stringResult;
  }

  Future<JavascriptRuntime> getJSEngine() async {
    await _init();
    return _jsRuntime;
  }

  // iLib Version
  Future<String> getVersion() async {
    String jscode = """ilib.getVersion()""";
    String ret = await evaluateILib(jscode);
    return ret;
  }

  // CLDR Version
  Future<String> getCLDRVersion() async {
    String jscode = """ilib.getCLDRVersion()""";
    String ret = await evaluateILib(jscode);
    return ret;
  }

  /*Future<String> getDateTimeFormat(
      DateOptions dateOptions, DateFormatOptions fmtOptions) async {
    String dateOptionData = dateOptions.toJsonString();
    String dateFmtOptionData = fmtOptions.toJsonString();

    String jscode =
        """new DateFmt($dateFmtOptionData).format(DateFactory($dateOptionData))""";
    //print(jscode);
    return evaluateILib(jscode);
  }*/

  // Future<String?> getPlatformVersion() {
  //   return FlutterIlibPlatform.instance.getPlatformVersion();
  // }
  Future<String?> getPlatformVersion() => Future.value('1.0.0');
}
