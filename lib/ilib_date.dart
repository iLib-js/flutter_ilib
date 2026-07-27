/// {@category API}
library;

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

/// A mutable bag of date components used to construct a date and to read it
/// back through the [ILibDate] interface.
///
/// Provide whichever fields describe the date you want: calendar components
/// ([year]/[month]/[day]/…), an absolute [unixtime], or a Flutter [dateTime].
/// [type]/[calendar] selects which calendar the components are interpreted in
/// (gregorian by default). The [ILibDate] accessor methods resolve the date on
/// demand from these fields.
class ILibDateOptions implements ILibDate {
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

  /// BCP-47 locale string used for locale-dependent calculations.
  String? locale;

  /// The year in the selected calendar.
  @override
  int? year;

  /// The month (1-based) in the selected calendar.
  @override
  int? month;

  /// The week of the year.
  int? week;

  /// The day of the month.
  @override
  int? day;

  /// The hour of the day (0–23).
  @override
  int? hour;

  /// The minute of the hour (0–59).
  @override
  int? minute;

  /// The second of the minute (0–59).
  @override
  int? second;

  /// The millisecond of the second (0–999).
  @override
  int? millisecond;

  /// Absolute instant as unix time (milliseconds since the epoch). Takes
  /// precedence over the individual calendar components when set.
  int? unixtime;

  /// IANA timezone name as a string.
  @override
  String? timezone;

  /// The calendar/type of the date desired (e.g. `'gregorian'`, `'islamic'`).
  String? type;

  /// The calendar of the date desired; an alias for [type].
  String? calendar;

  /// A Flutter [DateTime] to initialize from; maps to an absolute instant like
  /// [unixtime].
  DateTime? dateTime;

  /// Optional DST disambiguation for the overlap hour at the end of DST. Null
  /// when unspecified.
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
