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
  String? defaultCal;
  String? defaultTZ;
  bool? useNative;

  ILibDateFmt(ILibDateFmtOptions options) {
    // constructor
    locale = options.locale ?? "en-US";
    type = options.type ?? "date";
    length = options.length ?? "short";
    date = options.date ?? "dmy";
    time = options.time ?? "ahm";
    calendar = options.calendar;
    timezone = options.timezone;
    useNative = options.useNative ?? false;

    _init();
  }

  _init() async{
    JavascriptRuntime ilibJS = await initializeiLib();

    String jscode0 = 'new LocaleInfo("$locale").getCalendar()';
    String jscode1 = 'new LocaleInfo("$locale").getTimeZone()';
    defaultCal = ilibJS.evaluate(jscode0).stringResult;
    defaultTZ = ilibJS.evaluate(jscode1).stringResult;

    if (calendar != defaultCal) calendar = defaultCal;
    timezone ??= defaultTZ;
  }

  toJsonString() =>
      '{locale: "$locale", length: "$length", calendar: "$calendar", useNative: $useNative, type: "$type", date: "$date", time: "$time", timezone: "$timezone"}';

  Future<String> format(ILibDateOptions date) async {
    String result = "";
    JavascriptRuntime ilibJS = await initializeiLib();

    if (date.calendar != defaultCal) date.calendar = defaultCal;
    date.timezone ??= defaultTZ;

    String formatOptions = toJsonString();
    String dateOptions = date.toJsonString();

    String jscode2 =
        'new DateFmt($formatOptions).format(DateFactory($dateOptions))';
    //print(jscode2);
    result = ilibJS.evaluate(jscode2).stringResult;
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
      this.timezone,
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
      this.type}
    );
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
    return '{locale:"$locale", year:$y, month:$m, day:$d, hour:$h, minute:$min, second:$sec, millisecond:$milsec, timezone:"$timezone", calendar:"$calendar"}';
  }
}