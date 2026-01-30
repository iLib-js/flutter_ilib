class ILibDateOptions {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention,
  /// [year] The year
  /// [month] The month
  /// [week] The week
  /// [day] The day of the month
  /// [hour] The hour of the day
  /// [minute] The minute [0..59]
  /// [second] The second [0..59]
  /// [millisecond] The millisecond [0..999]
  /// [unixtime] Sets the time of this instance according to the given unix time.
  /// [timezone] Time zone name as a string
  /// [calendar] Same as "type" property
  /// [dateTime] DateTime class of flutter
  /// [type] Specifies the type/calendar of the date desired.
  ILibDateOptions(
      {this.locale,
      this.year,
      this.month,
      this.week,
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
  int? week;
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

  /// A string representation of parameters to call functions of iLib library properly
  String toJsonString() {
    int? y = year;
    int? m = month;
    int? w = week;
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
      // If dateTime is not null and is in UTC, set timezone to 'Etc/UTC'.
      // Otherwise, use the provided timezone value.
      'timezone': (dateTime?.isUtc ?? false) ? 'Etc/UTC' : '$timezone',
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
      'week': w,
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
