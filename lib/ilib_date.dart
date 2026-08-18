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
import 'ilib_localeinfo.dart';

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
      this.julianday,
      this.rd,
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

  /// Julian Day number. Takes precedence over calendar components when set.
  double? julianday;

  /// Rata Die number. Takes precedence over calendar components when set.
  double? rd;

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

  /// Resolve these options into a concrete [ILibCalendarDate].
  ILibCalendarDate toCalendarDate() => _toCalendarDate();

  ILibCalendarDate _toCalendarDate() {
    final String cal = getCalendar();

    // With an absolute instant, pass only that — not component defaults.
    final int? ut = unixtime ?? dateTime?.millisecondsSinceEpoch;
    final bool hasAbsoluteInstant =
        julianday != null || rd != null || ut != null;

    final int? y = hasAbsoluteInstant ? null : (year ?? 1);
    final int? m = hasAbsoluteInstant ? null : (month ?? 1);
    final int? d = hasAbsoluteInstant ? null : (day ?? 1);
    final int? h = hasAbsoluteInstant ? null : (hour ?? 0);
    final int? min = hasAbsoluteInstant ? null : (minute ?? 0);
    final int? sec = hasAbsoluteInstant ? null : (second ?? 0);
    final int? ms = hasAbsoluteInstant ? null : (millisecond ?? 0);

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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
            julianDay: julianday,
            rd: rd,
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
  // Explicit type/calendar wins; otherwise derive from locale, then 'gregorian'.
  String getCalendar() =>
      type ??
      calendar ??
      (locale != null ? ILibLocaleInfo(locale).getCalendar() : null) ??
      'gregorian';
}
