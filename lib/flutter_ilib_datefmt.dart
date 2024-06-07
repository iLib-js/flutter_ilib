class DateFormatOptions {
  String? locale;
  String? type;
  String? length;
  String? timezone;
  bool? useNative;

  DateFormatOptions(
      {this.locale,
      this.length,
      this.type,
      this.timezone = 'local',
      this.useNative});

  toJsonString() =>
      '{locale: "$locale", length: "$length", useNative: $useNative, type: "$type", timezone: "$timezone"}';
}

class DateOptions {
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

  DateOptions(
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
