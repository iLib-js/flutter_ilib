class DateFormatOptions {
  String? locale;
  String? length;
  String? type;
  String? calendar;
  String? timezone;
  bool? useNative;

  DateFormatOptions(
    {
      this.locale = 'en-US',
      this.length = 'short',
      this.type = 'date',
      this.calendar = 'gregorian',
      this.timezone = 'local',
      this.useNative = false
    } 
  );

  toJsonString() => '{locale: "$locale", length: "$length", useNative: $useNative, type: "$type", calendar: "$calendar", timezone: "$timezone"}';
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
  DateTime? datetime;

  DateOptions(
    {
      this.locale,
      this.year,
      this.month,
      this.day,
      this.hour,
      this.minute,
      this.second,
      this.unixtime,
      this.timezone,
      this.datetime
    }
  );

  String toJsonString() {
    String y = '$year';
    String m = '$month';
    String d = '$day';
    String h = '$hour';
    String min = '$minute';
    String sec = '$second';

    if (datetime != null) {
      y = '${datetime!.year}';
      m = '${datetime!.month}';
      d = '${datetime!.day}';
      h = '${datetime!.hour}';
      min = '${datetime!.minute}';
      sec = '${datetime!.second}';
    }
    
    return '{year:"$y", month:"$m", day:"$d", hour:"$h", minute:"$min", second:"$sec"}';
  }
}