import 'ilib_init.dart';

class ILibLocaleInfo {
  /// [lo] Set the locale for which the info is sought
  ILibLocaleInfo(String lo) {
    locale = lo;
    ILibJS.instance.addListener(() {
      ILibJS.instance.initILib();
      ILibJS.instance.loadLocaleData(locale);
    });
  }
  String? locale;

  /// Returns the day of week that starts weeks in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday,
  /// but calendars should be displayed and weeks calculated with the day of week returned
  /// from this function as the first day of the week.
  int getFirstDayOfWeek() {
    final String jscode1 = 'new LocaleInfo("$locale").getFirstDayOfWeek()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the day of week that starts weekend in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.
  int getWeekEndStart() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndStart()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Returns the day of week that ends weekend in the current locale.
  ///
  /// Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.
  int getWeekEndEnd() {
    final String jscode1 = 'new LocaleInfo("$locale").getWeekEndEnd()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }
}
