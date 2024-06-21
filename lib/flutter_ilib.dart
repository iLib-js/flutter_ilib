library flutter_ilib;

import 'ilib_utils.dart';
export 'ilib_utils.dart';
export 'ilib_init.dart';
export 'ilib_datefmt.dart';
export 'ilib_localeinfo.dart';

class FlutterIlib {
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
