import '../ilib_date_accessor.dart';
import '../ilib_timezone.dart';
import 'rata_die.dart';

abstract class ILibCalendarDate implements ILibDate {
  int getYears();
  int getMonths();
  int getDays();
  int getHours();
  int getMinutes();
  int getSeconds();
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
  double getRataDie();
  @override
  double getJulianDay();
  @override
  String getCalendar();
  ILibRataDie getRataDieInstance();

  @override
  int getDayOfWeek();

  @override
  int getDayOfYear();

  @override
  int getEra() => (getYears() < 1) ? -1 : 1;

  double tzOffsetDays = 0;

  double adjustRdForTimezone(double rd) {
    final String? tz = timezone;
    if (tz == null || tz == 'local') {
      return rd;
    }
    final ILibTimeZone tzObj = ILibTimeZone(tz);
    // From-components path: getJulianDay() still holds the local wall-clock instant,
    // so the DST boundaries are compared in wall time (mirrors JS
    // _getOffsetMillisWallTime). inDaylightTime() derives the Gregorian RD/year from
    // the instant, so non-Gregorian calendars need no separate Gregorian view.
    tzOffsetDays = tzObj.getOffsetMinutes(this, wallTime: true) / 1440.0;
    return rd - tzOffsetDays;
  }

  double getWallClockRd() => getRataDie() + tzOffsetDays;

  void calcTimezoneOffset() {
    final String? tz = timezone;
    if (tz == null || tz == 'local') {
      return;
    }
    final ILibTimeZone tzObj = ILibTimeZone(tz);
    // From-UTC-instant path: getJulianDay() holds the UTC instant, so the DST
    // boundaries are converted to UTC for comparison (mirrors JS getOffsetMillis).
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
  int getWeekOfMonth(int firstDayOfWeek) {
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

  ILibCalendarDate onOrBefore(int dayOfWeek) {
    final double rd = getRataDieInstance().onOrBefore(dayOfWeek);
    return newDateFromRd(rd);
  }

  ILibCalendarDate onOrAfter(int dayOfWeek) {
    final double rd = getRataDieInstance().onOrAfter(dayOfWeek);
    return newDateFromRd(rd);
  }

  ILibCalendarDate before(int dayOfWeek) {
    final double rd = getRataDieInstance().before(dayOfWeek);
    return newDateFromRd(rd);
  }

  ILibCalendarDate after(int dayOfWeek) {
    final double rd = getRataDieInstance().after(dayOfWeek);
    return newDateFromRd(rd);
  }

  ILibCalendarDate newDateFromRd(double rd);

  ILibRataDie newRd({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
  });

  ILibRataDie newRdFromRd(double rd);
}
