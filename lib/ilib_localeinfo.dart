import 'ilib_init.dart';
import 'package:flutter_js/flutter_js.dart';

class ILibLocaleInfo {
  String? locale;

  ILibLocaleInfo(String lo) {
    locale = lo;
  }
  Future<int> getFirstDayOfWeek() async {
    JavascriptRuntime ilibJS = await initializeiLib();
    String jscode1 = 'new LocaleInfo("$locale").getFirstDayOfWeek()';
    String result = ilibJS.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  Future<int> getWeekEndStart() async {
    JavascriptRuntime ilibJS = await initializeiLib();

    String jscode1 = 'new LocaleInfo("$locale").getWeekEndStart()';
    String result = ilibJS.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  Future<int> getWeekEndEnd() async {
    JavascriptRuntime ilibJS = await initializeiLib();

    String jscode1 = 'new LocaleInfo("$locale").getWeekEndEnd()';
    String result = ilibJS.evaluate(jscode1).stringResult;
    return int.parse(result);
  }
}
