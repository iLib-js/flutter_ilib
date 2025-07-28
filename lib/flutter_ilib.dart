library flutter_ilib;

import 'package:flutter/foundation.dart';
import 'package:flutter_js/flutter_js.dart';
import 'ilib_init.dart';
import 'internal/logger/log_adapter.dart';
import 'internal/logger/logger_selector.dart';

export 'ilib_datefmt.dart';
export 'ilib_init.dart';
export 'ilib_localeinfo.dart';

class FlutterILib extends ChangeNotifier {
  FlutterILib._internal() {
    ILibJS.instance.addListener(() {
      ILibJS.instance.initILib();
      notifyListeners();
    });
  }

  static final FlutterILib _instance = FlutterILib._internal();
  static FlutterILib get instance => _instance;
  final LogAdapter logger = Logger();

  /// Return whether iLib is ready
  bool get isILibReady => ILibJS.instance.isILibReady;

  /// Return the current version of iLib.
  String? get getVersion => evaluateILib('''ilib.getVersion()''');

  /// Return the CLDR version currently adopted by iLib.
  String? get getCLDRVersion => evaluateILib('''ilib.getCLDRVersion()''');

  /// It allows the use of any class of APIs from iLib.
  /// [jscode] Convert the Javascript code you want to get as a result into a string.
  String? evaluateILib(String jscode) {
    final JsEvalResult jsEvalResult = ILibJS.instance.evaluate(jscode);
    final String? result = (jsEvalResult.stringResult == 'null')
        ? null
        : jsEvalResult.stringResult;
    return result;
  }

  /// Load the given locale data file.
  ///
  /// To properly load the updated locale data file,
  /// this should be called at the appropriate time when the locale changes.
  Future<void> loadLocaleData(String? locale) async {
    logger.debug('[FlutterILib] Loading locale data for $locale');
    await ILibJS.instance.loadILibLocaleData(locale);
  }
}
