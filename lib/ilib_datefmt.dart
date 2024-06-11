import 'ilib_init.dart';
import 'package:flutter_js/flutter_js.dart';

class ILibDateFmt {
  String? locale;
  String? type;
  String? length;
  String? timezone;
  bool? useNative;

  ILibDateFmt(ILibDateFmtOptions options) {
    // constructor
    locale = options.locale;
    type = options.type;
    length = options.length;
    timezone = options.timezone;
    useNative = options.useNative;
  }
  toJsonString() => '{locale: "$locale", length: "$length", useNative: $useNative, type: "$type", timezone: "$timezone"}';

  Future<String> format(ILibDateOptions date) async {
    String result = "";
    JavascriptRuntime ilibJS = await initializeiLib();
    String formatOptions = toJsonString();
    String dateOptions = date.toJsonString();
    String jscode1 =
        'new DateFmt($formatOptions).format(DateFactory($dateOptions))';

    result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }

  Future<String> getClock() async {
    String result = "";
    JavascriptRuntime ilibJS = await initializeiLib();
    String formatOptions = toJsonString();
    String jscode1 =
        'new DateFmt($formatOptions).getClock()';

    result = ilibJS.evaluate(jscode1).stringResult;
    return result;
  }
}

class ILibDateFmtOptions {
  String? locale;
  String? type;
  String? length;
  String? timezone;
  bool? useNative;

  ILibDateFmtOptions({
      this.locale,
      this.length,
      this.type,
      this.timezone = 'local',
      this.useNative
    });
}

class ILibDateOptions {
  String? locale;
  String? year;
  String? month;
  String? day;
  String? hour;
  String? minute;
  String? second;
  String? unixtime;
  String? timezone;
  String? type;
  DateTime? dateTime;

  ILibDateOptions(
      {this.locale,
      this.year,
      this.month,
      this.day,
      this.hour,
      this.minute,
      this.second,
      this.unixtime,
      this.timezone,
      this.dateTime,
      this.type});

  String toJsonString() {
    String y = '$year';
    String m = '$month';
    String d = '$day';
    String h = '$hour';
    String min = '$minute';
    String sec = '$second';

    if (dateTime != null) {
      y = '${dateTime!.year}';
      m = '${dateTime!.month}';
      d = '${dateTime!.day}';
      h = '${dateTime!.hour}';
      min = '${dateTime!.minute}';
      sec = '${dateTime!.second}';
    }
    return '{year:$y, month:$m, day:$d, hour:$h, minute:$min, second:$sec}';
  }
}