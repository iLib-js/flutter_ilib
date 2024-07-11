library flutter_ilib;

import 'package:flutter/foundation.dart';
import 'package:flutter_js/flutter_js.dart';
import 'ilib_init.dart';

export 'ilib_datefmt.dart';
export 'ilib_init.dart';
export 'ilib_localeinfo.dart';
export 'ilib_utils.dart';

class FlutterILib extends ChangeNotifier {
  FlutterILib._internal() {
    ILibJS.instance.addListener(() {
      ILibJS.instance.initILib();
      notifyListeners();
    });
  }

  static final FlutterILib _instance = FlutterILib._internal();
  static FlutterILib get instance => _instance;

  String? get getVersion => evaluateILib('''ilib.getVersion()''');

  String? get getCLDRVersion => evaluateILib('''ilib.getCLDRVersion()''');

  String? evaluateILib(String jscode) {
    final JsEvalResult jsEvalResult = ILibJS.instance.evaluate(jscode);
    final String? result = (jsEvalResult.stringResult == 'null')
        ? null
        : jsEvalResult.stringResult;
    return result;
  }
}
