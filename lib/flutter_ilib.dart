library flutter_ilib;

import 'package:flutter/foundation.dart';

import 'ilib_init.dart';

import 'ilib_utils.dart';

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
}
