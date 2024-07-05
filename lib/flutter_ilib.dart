library flutter_ilib;

import 'package:flutter/foundation.dart';

import 'ilib_init.dart';

import 'ilib_utils.dart';

export 'ilib_datefmt.dart';
export 'ilib_init.dart';
export 'ilib_localeinfo.dart';
export 'ilib_utils.dart';

class FlutterIlib extends ChangeNotifier {
  FlutterIlib._internal() {
    FlutteriLib.instance.addListener(() {
      FlutteriLib.instance.initJS();
      notifyListeners();
    });
  }

  static final FlutterIlib _instance = FlutterIlib._internal();
  static FlutterIlib get instance => _instance;

  String? get getVersion => evaluateILib('''ilib.getVersion()''');

  String? get getCLDRVersion => evaluateILib('''ilib.getCLDRVersion()''');
}
