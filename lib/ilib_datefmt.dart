import 'ilib_init.dart' as init_ilib;
import 'package:flutter_js/flutter_js.dart';
import 'ilib_options.dart';
export 'ilib_options.dart';

class IlibDateFmt {
  // DateFormatOptions? options;
  String? locale;
  String? type;
  String? length;
  String? timezone;
  bool? useNative;

  IlibDateFmt(DateFormatOptions options) {
    // constructor
    locale = options.locale;
    type = options.type;
    length = options.length;
    timezone = options.timezone;
    useNative = options.useNative;
  }
  toJsonString() => '{locale: "$locale", length: "$length", useNative: $useNative, type: "$type", timezone: "$timezone"}';

  Future<String?> format(DateOptions date) async {
    JavascriptRuntime ilibJS = await init_ilib.initializeiLib();
    String formatOptions = toJsonString();
    String dateOptions = date.toJsonString();

    String jscode1 =
        'new DateFmt($formatOptions).format(DateFactory($dateOptions))';

    String result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }

  Future<String?> getClock() async {
    JavascriptRuntime ilibJS = await init_ilib.initializeiLib();
    String formatOptions = toJsonString();
    String jscode1 =
        'new DateFmt($formatOptions).getClock()';
    String result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }
}