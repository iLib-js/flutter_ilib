import 'ilib_init.dart';

class ILibDateFmt {
  ILibDateFmt(ILibDateFmtOptions options) {
    locale = options.locale;
    type = options.type;
    length = options.length;
    date = options.date;
    time = options.time;
    calendar = options.calendar;
    timezone = options.timezone;
    useNative = options.useNative;
    LoadIlibJS.instance.addListener(() {
      LoadIlibJS.instance.initIlib();
    });
  }
  String? locale;
  String? type;
  String? length;
  String? timezone;
  String? calendar;
  String? date;
  String? time;
  bool? useNative;

  String toJsonString() {
    String result = '';
    String completeOption = '';

    final Map<String, String> paramInfo = <String, String>{
      'locale': '$locale',
      'type': '$type',
      'length': '$length',
      'date': '$date',
      'time': '$time',
      'calendar': '$calendar',
      'timezone': '$timezone'
    };
    paramInfo.forEach((String key, String value) {
      if (value != 'null') {
        result += '$key:"$value",';
      }
    });

    if (useNative != null) {
      result += 'useNative:$useNative,';
    }

    result =
        result.isNotEmpty ? result.substring(0, result.length - 1) : result;
    completeOption = '{$result}';

    return completeOption;
  }

  String format(ILibDateOptions date) {
    String result = '';

    final String formatOptions = toJsonString();
    final String dateOptions = date.toJsonString();

    result = LoadIlibJS.instance
        .evaluate(
            'new DateFmt($formatOptions).format(DateFactory($dateOptions))')
        .stringResult;
    return result;
  }

  int getClock() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DateFmt($formatOptions).getClock()';
    result = LoadIlibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }
}

class ILibDateFmtOptions {
  ILibDateFmtOptions(
      {this.locale,
      this.length,
      this.type,
      this.calendar,
      this.timezone,
      this.useNative,
      this.date,
      this.time});
  String? locale;
  String? length;
  String? type;
  String? calendar;
  String? timezone;
  String? date;
  String? time;
  bool? useNative;
}

class ILibDateOptions {
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

  String toJsonString() {
    int? y = year;
    int? m = month;
    int? d = day;
    int? h = hour;
    int? min = minute;
    int? sec = second;
    int? milsec = millisecond;
    String result = '';
    String completeOption = '';

    if (dateTime != null) {
      y = dateTime!.year;
      m = dateTime!.month;
      d = dateTime!.day;
      h = dateTime!.hour;
      min = dateTime!.minute;
      sec = dateTime!.second;
      milsec = dateTime!.millisecond;
    }

    final Map<String, String> paramInfo = <String, String>{
      'locale': '$locale',
      'timezone': '$timezone',
      'type': '$type',
      'calendar': '$calendar'
    };

    paramInfo.forEach((String key, String value) {
      if (value != 'null') {
        result += '$key:"$value",';
      }
    });

    final Map<String, int?> datetimeInfo = <String, int?>{
      'year': y,
      'month': m,
      'day': d,
      'hour': h,
      'minute': min,
      'second': sec,
      'millisecond': milsec,
    };
    datetimeInfo.forEach((String key, int? value) {
      if (value != null) {
        result += '$key:$value,';
      }
    });
    result =
        result.isNotEmpty ? result.substring(0, result.length - 1) : result;
    completeOption = result.isNotEmpty ? '{$result}' : '';
    return completeOption;
  }
}
