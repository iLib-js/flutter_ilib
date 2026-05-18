import 'ilib_date_accessor.dart';

class ILibDateOptions implements ILibDate {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention.<br>
  /// [year] The year<br>
  /// [month] The month<br>
  /// [week] The week<br>
  /// [day] The day of the month<br>
  /// [hour] The hour of the day<br>
  /// [minute] The minute [0..59]<br>
  /// [second] The second [0..59]<br>
  /// [millisecond] The millisecond [0..999]<br>
  /// [unixtime] Sets the time of this instance according to the given unix time.<br>
  /// [timezone] Time zone name as a string<br>
  /// [calendar] Same as "type" property<br>
  /// [dateTime] DateTime class of flutter<br>
  /// [type] Specifies the type/calendar of the date desired.<br>
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
  @override
  int? year;
  @override
  int? month;
  int? week;
  @override
  int? day;
  @override
  int? hour;
  @override
  int? minute;
  @override
  int? second;
  @override
  int? millisecond;
  int? unixtime;
  @override
  String? timezone;
  String? type;
  String? calendar;
  DateTime? dateTime;

  @override
  int getDayOfWeek() {
    final int y = year ?? 1;
    final int m = month ?? 1;
    final int d = day ?? 1;
    // Dart DateTime.weekday: 1=Monday ~ 7=Sunday
    final int dartWeekday = DateTime.utc(y, m, d).weekday;
    // Convert to ilib: 0=Sunday ~ 6=Saturday
    return dartWeekday % 7;
  }

  @override
  int getDayOfYear() {
    final int y = year ?? 1;
    final int m = month ?? 1;
    final int d = day ?? 1;
    const List<int> cumLengths = <int>[
      0, 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334
    ];
    int doy = cumLengths[m] + d;
    if (m > 2 && _isLeapYear(y)) {
      doy += 1;
    }
    return doy;
  }

  @override
  int getWeekOfYear() {
    final int y = year ?? 1;
    final int m = month ?? 1;
    final int d = day ?? 1;
    final DateTime date = DateTime.utc(y, m, d);
    final DateTime jan4 = DateTime.utc(y, 1, 4);
    final int jan4Weekday = jan4.weekday; // 1=Mon~7=Sun
    final DateTime startOfWeek1 =
        jan4.subtract(Duration(days: jan4Weekday - 1));
    final int diff = date.difference(startOfWeek1).inDays;
    if (diff < 0) {
      // belongs to last week of previous year
      final DateTime prevJan4 = DateTime.utc(y - 1, 1, 4);
      final int prevJan4Weekday = prevJan4.weekday;
      final DateTime prevStartOfWeek1 =
          prevJan4.subtract(Duration(days: prevJan4Weekday - 1));
      return (date.difference(prevStartOfWeek1).inDays ~/ 7) + 1;
    }
    final int weekNum = (diff ~/ 7) + 1;
    if (weekNum > 52) {
      final DateTime nextJan4 = DateTime.utc(y + 1, 1, 4);
      final int nextJan4Weekday = nextJan4.weekday;
      final DateTime nextStartOfWeek1 =
          nextJan4.subtract(Duration(days: nextJan4Weekday - 1));
      if (date.compareTo(nextStartOfWeek1) >= 0) {
        return 1;
      }
    }
    return weekNum;
  }

  @override
  int getWeekOfMonth(int firstDayOfWeek) {
    final int d = day ?? 1;
    final int m = month ?? 1;
    final int y = year ?? 1;
    // Day of week of the 1st of this month (0=Sun~6=Sat)
    final int firstDow = DateTime.utc(y, m, 1).weekday % 7;
    final int offset = (firstDow - firstDayOfWeek + 7) % 7;
    return ((d + offset - 1) ~/ 7) + 1;
  }

  @override
  int getEra() {
    return (year ?? 1) > 0 ? 1 : 0;
  }

  static bool _isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  /// A string representation of parameters to call functions of iLib library properly
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
    final int? w = week;

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
