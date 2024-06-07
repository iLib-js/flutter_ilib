import 'init_ilib.dart' as init_ilib;
import 'package:flutter_js/flutter_js.dart';
import 'flutter_ilib_datefmt.dart';
export 'flutter_ilib_datefmt.dart';

class DateFmt {
  // DateFormatOptions? options;
  // String? locale;
  // String? type;
  // String? length;
  // String? timezone;
  // bool? useNative;

  // DateFmt(DateFormatOptions options) {
  //   // constructor
  //   locale = options.locale;
  //   type = options.type;
  //   length = options.length;
  //   timezone = options.timezone;
  //   useNative = options.useNative;
  // }

  Future<String?> format(DateOptions date) async {
    //String result;
    JavascriptRuntime aa = await init_ilib.initializeiLib();
    //String jscode1 =
    //    'new DateFmt(${options.toJsonString()}).format(${date.getTime()})';
    //String jscode1 = """ilib.getVersion()""";
    //date.year
    //String bb =
    //'year:"2024", month:"3", day:"23", hour:"10", minute:"42", second:"11"';

    String cc = date.toJsonString();
    String jscode1 =
        'new DateFmt({locale:"ko-KR",length:"full"}).format(DateFactory($cc))';

    //print(date.year);
    print("./////////////");
    print(jscode1);
    String result = aa.evaluate(jscode1).stringResult;

    print(result);

    return result;
  }
}
