import 'ilib_init.dart';

class ILibLocaleInfo {
  ILibLocaleInfo(String lo) {
    locale = lo;
    ILibJS.instance.addListener(() {
      ILibJS.instance.initILib();
    });
  }
  String? locale;
  int getFirstDayOfWeek() {
    final String jscode1 = 'new LocaleInfo("$locale").getFirstDayOfWeek()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  int getWeekEndStart() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndStart()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  int getWeekEndEnd() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndEnd()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }
}
