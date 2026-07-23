import 'calendar/coptic_date.dart';
import 'calendar/ethiopic_date.dart';
import 'calendar/gregorian_date.dart';
import 'calendar/hebrew_date.dart';
import 'calendar/ilib_date.dart';
import 'calendar/islamic_date.dart';
import 'calendar/julian_date.dart';
import 'calendar/persian_algo_date.dart';
import 'calendar/persian_date.dart';
import 'calendar/thaisolar_date.dart';
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
      this.type,
      this.dst});
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
  bool? dst;

  ILibCalendarDate _toCalendarDate() {
    final int y = year ?? 1;
    final int m = month ?? 1;
    final int d = day ?? 1;
    final int h = hour ?? 0;
    final int min = minute ?? 0;
    final int sec = second ?? 0;
    final int ms = millisecond ?? 0;
    final String cal = type ?? calendar ?? 'gregorian';
    // Pass the unambiguous UTC-based params through and let the calendar date
    // constructor resolve precedence (unixtime over components). A Flutter
    // DateTime is an absolute instant, so it maps to unixtime as well.
    final int? ut = unixtime ?? dateTime?.millisecondsSinceEpoch;

    switch (cal) {
      case 'ethiopic':
        return EthiopicDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'coptic':
        return CopticDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'hebrew':
        return HebrewDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'islamic':
        return IslamicDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'julian':
        return JulianDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'persian':
        return PersianDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'persian-algo':
        return PersianAlgoDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      case 'thaisolar':
        return ThaiSolarDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
      default:
        return GregorianDate(
            year: y,
            month: m,
            day: d,
            hour: h,
            minute: min,
            second: sec,
            millisecond: ms,
            unixtime: ut,
            timezone: timezone,
            locale: locale,
            dst: dst);
    }
  }

  @override
  int getDayOfWeek() => _toCalendarDate().getDayOfWeek();

  @override
  int getDayOfYear() => _toCalendarDate().getDayOfYear();

  @override
  int getWeekOfYear() => _toCalendarDate().getWeekOfYear();

  @override
  int getWeekOfMonth(String? locale) =>
      _toCalendarDate().getWeekOfMonth(locale);

  @override
  int getEra() => _toCalendarDate().getEra();

  @override
  String? getTimeZone() => timezone;

  @override
  double getRataDie() => _toCalendarDate().getRataDie();

  @override
  double getJulianDay() => _toCalendarDate().getJulianDay();

  @override
  int getTime() => _toCalendarDate().getTime();

  @override
  int getTimeExtended() => _toCalendarDate().getTimeExtended();

  @override
  String getCalendar() => type ?? calendar ?? 'gregorian';

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
