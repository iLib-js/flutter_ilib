import 'init_ilib.dart' as init_ilib;
import 'package:flutter_js/flutter_js.dart';
import 'flutter_ilib_datefmt.dart';
export 'flutter_ilib_datefmt.dart';

class DateFmt {
  // DateFormatOptions? options;
  String? locale;
  String? type;
  String? length;
  String? timezone;
  bool? useNative;

  DateFmt(DateFormatOptions options) {
    // constructor
    locale = options.locale;
    type = options.type;
    length = options.length;
    timezone = options.timezone;
    useNative = options.useNative;
  }
  String toJsonString(){
    return '{locale: "$locale", length: "$length", useNative: $useNative, type: "$type", timezone: "$timezone"}';
  }

  Future<String?> format(DateOptions date) async {
    JavascriptRuntime ilibJS = await init_ilib.initializeiLib();
    String formatOptions = toJsonString();
    String dateOptions = date.toJsonString();
    String jscode1 =
        'new DateFmt($formatOptions).format(DateFactory($dateOptions))';

    String result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }
}
