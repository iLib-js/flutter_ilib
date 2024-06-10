library flutter_ilib;

export 'ilib_datefmt.dart';
import 'ilib_utils.dart';
export 'ilib_utils.dart';

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