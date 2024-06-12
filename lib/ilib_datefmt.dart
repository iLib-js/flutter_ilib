import 'ilib_init.dart';
import 'package:flutter_js/flutter_js.dart';

class ILibDateFmt {
  String? locale;
  String? type;
  String? length;
  String? timezone;
  String? calendar;
  String? date;
  String? time;
  bool? useNative;

  ILibDateFmt(ILibDateFmtOptions options) {
    // constructor
    locale = options.locale ?? "en-US";
    type = options.type ?? "date";
    calendar = options.calendar ?? "gregorian";
    length = options.length ?? "short";
    timezone = options.timezone ?? "local";
    date = options.date ?? "dmy";
    time = options.time ?? "ahm";
    useNative = options.useNative ?? false;
  }
  toJsonString() =>
      '{locale: "$locale", length: "$length", calendar: "$calendar", useNative: $useNative, type: "$type", date: "$date", time: "$time", timezone: "$timezone"}';

  Future<String> format(ILibDateOptions date) async {
    String result = "";
    JavascriptRuntime ilibJS = await initializeiLib();

    String jscode0 = 'new LocaleInfo("$locale").getCalendar()';
    String defaultCal = ilibJS.evaluate(jscode0).stringResult;
    if (calendar != defaultCal) calendar = defaultCal;
    if (date.calendar != defaultCal) date.calendar = defaultCal;

    String formatOptions = toJsonString();
    String dateOptions = date.toJsonString();

    String jscode1 =
        'new DateFmt($formatOptions).format(DateFactory($dateOptions))';
    //print(jscode1);
    result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }

  Future<String> getClock() async {
    String result = "";
    JavascriptRuntime ilibJS = await initializeiLib();
    String formatOptions = toJsonString();
    String jscode1 = 'new DateFmt($formatOptions).getClock()';

    result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }
}

class ILibDateFmtOptions {
  String? locale;
  String? length;
  String? type;
  String? calendar;
  String? timezone;
  String? date;
  String? time;
  bool? useNative;

  ILibDateFmtOptions(
      {this.locale,
      this.length,
      this.type,
      this.calendar,
      this.timezone = 'local',
      this.useNative,
      this.date,
      this.time});
}

class ILibDateOptions {
  String? locale;
  int? year;
  int? month;
  int? day;
  int? hour;
  int? minute;
  int? second;
  int? millisecond;
  int? unixtime;
  String? timezone;
  String? type;
  String? calendar;
  DateTime? dateTime;

  ILibDateOptions(
      {this.locale,
      this.year,
      this.month,
      this.day,
      this.hour,
      this.minute,
      this.second,
      this.millisecond,
      this.unixtime,
      this.timezone,
      this.calendar,
      this.dateTime,
      this.type});

  String toJsonString() {
    String y = '$year';
    String m = '$month';
    String d = '$day';
    String h = '$hour';
    String min = '$minute';
    String sec = '$second';
    String milsec = '$millisecond';

    if (dateTime != null) {
      y = '${dateTime!.year}';
      m = '${dateTime!.month}';
      d = '${dateTime!.day}';
      h = '${dateTime!.hour}';
      min = '${dateTime!.minute}';
      sec = '${dateTime!.second}';
      milsec = '${dateTime!.millisecond}';
    }
    locale ??= 'en-US';
    timezone ??= 'local';
    calendar ??= 'gregorian';

    return '{locale:"$locale", year:$y, month:$m, day:$d, hour:$h, minute:$min, second:$sec, millisecond:$milsec, timezone:"$timezone", calendar:"$calendar"}';
  }
}
