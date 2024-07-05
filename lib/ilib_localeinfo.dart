import 'ilib_init.dart';

class ILibLocaleInfo {
  ILibLocaleInfo(String lo) {
    locale = lo;
    FlutteriLib.instance.addListener(() {
      FlutteriLib.instance.initJS();
    });
  }
  String? locale;
  int getFirstDayOfWeek() {
    final String jscode1 = 'new LocaleInfo("$locale").getFirstDayOfWeek()';
    final String result = FlutteriLib.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  int getWeekEndStart() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndStart()';
    final String result = FlutteriLib.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  int getWeekEndEnd() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndEnd()';
    final String result = FlutteriLib.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }
}
