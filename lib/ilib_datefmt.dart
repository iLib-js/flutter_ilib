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
    locale = options.locale;
    type = options.type;
    length = options.length;
    date = options.date;
    time = options.time;
    calendar = options.calendar;
    timezone = options.timezone;
    useNative = options.useNative;
  }

  String toJsonString() {
    String result = "";
    String completeOption = "";

    Map<String, String> paramInfo = {
      'locale': "$locale",
      'type': "$type",
      'length': "$length",
      'date': "$date",
      'time': "$time",
      'calendar': "$calendar",
      'timezone': "$timezone"
    };
    paramInfo.forEach((key,value) {
      if (value != 'null')result += '$key:"$value",';
    });

    if (useNative != null){
      result +='useNative:$useNative,';
    }

    result = result.isNotEmpty ? result.substring(0, result.length-1): result;
    completeOption = '{$result}';

    return completeOption;
  }

  Future<String> format(ILibDateOptions date) async {
    String result = "";
    JavascriptRuntime ilibJS = await initializeiLib();
    String formatOptions = toJsonString();
    String dateOptions = date.toJsonString();

    String jscode2 = 'new DateFmt($formatOptions).format(DateFactory($dateOptions))';
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

  ILibDateFmtOptions({
    this.locale,
    this.length,
    this.type,
    this.calendar,
    this.timezone,
    this.useNative,
    this.date,
    this.time
  });
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

  ILibDateOptions({this.locale,
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
    this.type
  });

  String toJsonString() {
    int? y = year;
    int? m = month;
    int? d = day;
    int? h = hour;
    int? min = minute;
    int? sec = second;
    int? milsec = millisecond;
    String result = "";
    String completeOption = "";

    if (dateTime != null) {
      y = dateTime!.year;
      m = dateTime!.month;
      d = dateTime!.day;
      h = dateTime!.hour;
      min = dateTime!.minute;
      sec = dateTime!.second;
      milsec = dateTime!.millisecond;
    }

    Map<String, String> paramInfo = {
      'locale' : "$locale",
      'timezone' : "$timezone",
      'calendar' : "$calendar",
    };

    paramInfo.forEach((key,value) {
      if (value != 'null')result += '$key:"$value",';
    });

    Map<String, int?> datetimeInfo = {
      'year': y,
      'month': m,
      'day': d,
      'hour': h,
      'minute': min,
      'second': sec,
      'millisecond': milsec,
    };
    datetimeInfo.forEach((key,value) {
      if (value != null)result += '$key:$value,';
    });
    result = result.isNotEmpty ? result.substring(0, result.length-1): result;
    completeOption = result.isNotEmpty ? '{$result}': "";
    return completeOption;
  }
}