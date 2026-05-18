import 'calendar_utils.dart';
import 'julian_cal.dart';
import 'rata_die.dart';

class JulianRataDie implements ILibRataDie {
  JulianRataDie(
      {int? year,
      int? month,
      int? day,
      int? hour,
      int? minute,
      int? second,
      int? millisecond,
      double? julianDay,
      double? rataDie,
      int? unixtime}) {
    if (rataDie != null) {
      _rd = rataDie;
    } else if (julianDay != null) {
      _rd = julianDay - epoch;
    } else if (unixtime != null) {
      _rd = ILibRataDie.unixTimeToRd(unixtime);
    } else {
      _rd = _dateToRd(
        year ?? 1,
        month ?? 1,
        day ?? 1,
        hour ?? 0,
        minute ?? 0,
        second ?? 0,
        millisecond ?? 0,
      );
    }
  }

  static const double epoch = 1721422.5;

  static const List<int> _cumMonthLengths = <int>[
    0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365
  ];
  static const List<int> _cumMonthLengthsLeap = <int>[
    0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366
  ];

  static final JulianCal _cal = JulianCal();

  late double _rd;

  @override
  double getRataDie() => _rd;

  @override
  double getJulianDay() => _rd + epoch;

  @override
  int getDayOfWeek({double offset = 0}) {
    final int rd = (_rd + offset).floor();
    return mod(rd - 2, 7);
  }

  @override
  double onOrBefore(int dayOfWeek, {double offset = 0}) {
    final double rd = _rd + offset;
    return rd.floor() - mod(rd.floor() - dayOfWeek - 2, 7).toDouble();
  }

  @override
  double onOrAfter(int dayOfWeek, {double offset = 0}) {
    return onOrBefore(dayOfWeek, offset: offset) + 7;
  }

  @override
  double before(int dayOfWeek, {double offset = 0}) {
    return onOrBefore(dayOfWeek, offset: offset) - 1;
  }

  @override
  double after(int dayOfWeek, {double offset = 0}) {
    return onOrBefore(dayOfWeek, offset: offset) + 6;
  }

  static double _dateToRd(
      int year, int month, int day, int hour, int minute, int second, int millisecond) {
    final int y = year + (year < 0 ? 1 : 0);
    final int y1 = y - 1;
    final int years = 365 * y1 + floorDiv(y1, 4);
    final bool isLeap = _cal.isLeapYear(year);
    final List<int> cumLengths = isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;
    final int dayInYear = (month > 1 ? cumLengths[month - 1] : 0) + day;
    final double rdTime = ILibRataDie.timeToRd(hour, minute, second, millisecond);
    return years + dayInYear + rdTime;
  }

  static int calcYear(double rd) {
    final int year = floorDiv(4 * (rd.floor() - 1) + 1464, 1461);
    return (year <= 0) ? year - 1 : year;
  }

  static int calcDayOfYear(int year, int month, int day) {
    final bool isLeap = _cal.isLeapYear(year);
    final List<int> cumLengths = isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;
    return (month > 1 ? cumLengths[month - 1] : 0) + day;
  }

  static int calcMonthFromDayOfYear(int year, int dayOfYear) {
    final bool isLeap = _cal.isLeapYear(year);
    final List<int> cumLengths = isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;
    for (int i = cumLengths.length - 1; i >= 1; i--) {
      if (dayOfYear > cumLengths[i - 1]) {
        return i;
      }
    }
    return 1;
  }
}
