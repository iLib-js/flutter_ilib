/// {@category Calendar}
library;

import '../ilib_date_accessor.dart';
import '../ilib_localeinfo.dart';
import '../ilib_timezone.dart';
import 'rata_die.dart';

/// Abstract base for all calendar-specific date implementations.
///
/// Bridges the generic [ILibDate] interface with calendar arithmetic:
/// subclasses implement [getYears]/[getMonths]/[getDays]/… and the RataDie
/// factory methods; this class provides the shared timezone, week, and
/// day-of-week logic that works identically across all calendars.
abstract class ILibCalendarDate implements ILibDate {
  /// The year component in this calendar.
  int getYears();

  /// The month component (1-based) in this calendar.
  int getMonths();

  /// The day-of-month component in this calendar.
  int getDays();

  /// The hour component (0–23).
  int getHours();

  /// The minute component (0–59).
  int getMinutes();

  /// The second component (0–59).
  int getSeconds();

  /// The millisecond component (0–999).
  int getMilliseconds();

  @override
  int? get year => getYears();
  @override
  int? get month => getMonths();
  @override
  int? get day => getDays();
  @override
  int? get hour => getHours();
  @override
  int? get minute => getMinutes();
  @override
  int? get second => getSeconds();
  @override
  int? get millisecond => getMilliseconds();
  @override
  String? get timezone => 'local';

  @override
  String? getTimeZone() => timezone;

  @override
  bool? dst;

  @override
  double getRataDie();
  @override
  double getJulianDay();
  @override
  String getCalendar();

  /// The [ILibRataDie] instance backing this date.
  ILibRataDie getRataDieInstance();

  @override
  int getDayOfWeek();

  @override
  int getDayOfYear();

  @override
  int getEra() => (getYears() < 1) ? -1 : 1;

  /// Timezone offset in fractional days (east of UTC), cached after the first
  /// timezone resolution so repeated queries avoid redundant DST lookups.
  double tzOffsetDays = 0;

  /// Adjust the rata die [rd] (from-components / wall-clock) to UTC by
  /// subtracting the timezone offset. Updates [tzOffsetDays] as a side-effect.
  double adjustRdForTimezone(double rd) {
    final String? tz = timezone;
    if (tz == null) {
      return rd;
    }
    final ILibTimeZone tzObj = ILibTimeZone(tz);
    // From-components path: getJulianDay() still holds the local wall-clock instant,
    // so the DST boundaries are compared in wall time. inDaylightTime() derives the
    // Gregorian RD/year from the instant, so non-Gregorian calendars need no
    // separate Gregorian view.
    tzOffsetDays = tzObj.getOffsetMinutes(this, wallTime: true) / 1440.0;
    return rd - tzOffsetDays;
  }

  /// The rata die of this date's wall-clock instant (UTC rata die +
  /// [tzOffsetDays]).
  double getWallClockRd() => getRataDie() + tzOffsetDays;

  /// Resolve and cache [tzOffsetDays] for the from-UTC-instant path.
  void calcTimezoneOffset() {
    final String? tz = timezone;
    if (tz == null) {
      return;
    }
    final ILibTimeZone tzObj = ILibTimeZone(tz);
    // From-UTC-instant path: getJulianDay() holds the UTC instant, so the DST
    // boundaries are converted to UTC for comparison.
    tzOffsetDays = tzObj.getOffsetMinutes(this) / 1440.0;
  }

  @override
  int getTime() {
    final double jd = getJulianDay();
    if (jd < 2440587.5 || jd > 2465442.634803241) {
      return -1;
    }
    return ((jd - 2440587.5) * 86400000).round();
  }

  @override
  int getTimeExtended() {
    final double jd = getJulianDay();
    if (jd < -97559412.5 || jd > 102440587.5) {
      return -1;
    }
    return ((jd - 2440587.5) * 86400000).round();
  }

  /// The rata die of the first Sunday on or after January 1 of [year], used
  /// as the anchor for ISO week-of-year calculations.
  double firstSunday(int year) {
    final ILibRataDie firstDay = newRd(
      year: year,
      month: 1,
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    );
    final double firstThuRd = firstDay.onOrAfter(4);
    final ILibRataDie firstThu = newRdFromRd(firstThuRd);
    return firstThu.before(0);
  }

  @override
  int getWeekOfYear() {
    final double rd = getRataDie().floorToDouble();
    final int yr = getYears();
    double yearStart = firstSunday(yr);

    if (rd < yearStart) {
      yearStart = firstSunday(yr - 1);
    } else {
      final double nextYear = firstSunday(yr + 1);
      if (rd >= nextYear) {
        yearStart = nextYear;
      }
    }

    return ((rd - yearStart) ~/ 7) + 1;
  }

  @override
  int getWeekOfMonth(String? locale) {
    final int firstDayOfWeek = ILibLocaleInfo(locale).getFirstDayOfWeek();
    final ILibRataDie first = newRd(
      year: getYears(),
      month: getMonths(),
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    );
    double weekStart = first.onOrAfter(firstDayOfWeek);

    if (weekStart - first.getRataDie() > 3) {
      weekStart -= 7;
    }
    final double rd = getRataDie();
    if (rd < weekStart) {
      return 0;
    }
    return (rd - weekStart) ~/ 7 + 1;
  }

  /// The nearest date on or before this date whose day of week is [dayOfWeek]
  /// (0 = Sunday … 6 = Saturday), evaluated in wall-clock time.
  ILibCalendarDate onOrBefore(int dayOfWeek) {
    final double rd =
        getRataDieInstance().onOrBefore(dayOfWeek, offset: tzOffsetDays);
    return newDateFromRd(rd);
  }

  /// The nearest date on or after this date whose day of week is [dayOfWeek].
  ILibCalendarDate onOrAfter(int dayOfWeek) {
    final double rd =
        getRataDieInstance().onOrAfter(dayOfWeek, offset: tzOffsetDays);
    return newDateFromRd(rd);
  }

  /// The nearest date strictly before this date whose day of week is [dayOfWeek].
  ILibCalendarDate before(int dayOfWeek) {
    final double rd =
        getRataDieInstance().before(dayOfWeek, offset: tzOffsetDays);
    return newDateFromRd(rd);
  }

  /// The nearest date strictly after this date whose day of week is [dayOfWeek].
  ILibCalendarDate after(int dayOfWeek) {
    final double rd =
        getRataDieInstance().after(dayOfWeek, offset: tzOffsetDays);
    return newDateFromRd(rd);
  }

  /// Create a new date of this calendar type from the given rata die [rd].
  ILibCalendarDate newDateFromRd(double rd);

  /// Create the [ILibRataDie] for this calendar from the given components.
  ILibRataDie newRd({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
  });

  /// Create the [ILibRataDie] for this calendar from an existing rata die [rd].
  ILibRataDie newRdFromRd(double rd);
}
