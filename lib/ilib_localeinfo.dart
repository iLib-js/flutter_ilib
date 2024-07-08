import 'ilib_init.dart';

class ILibLocaleInfo {
  ILibLocaleInfo(String lo) {
    locale = lo;
    LoadIlibJS.instance.addListener(() {
      LoadIlibJS.instance.initIlib();
    });
  }
  String? locale;
  int getFirstDayOfWeek() {
    final String jscode1 = 'new LocaleInfo("$locale").getFirstDayOfWeek()';
    final String result = LoadIlibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  int getWeekEndStart() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndStart()';
    final String result = LoadIlibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  int getWeekEndEnd() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndEnd()';
    final String result = LoadIlibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }
}
