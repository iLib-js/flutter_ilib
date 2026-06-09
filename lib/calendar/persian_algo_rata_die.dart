import 'calendar_utils.dart';
import 'rata_die.dart';

class PersianAlgoRataDie extends ILibRataDie {
  PersianAlgoRataDie(
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
      _rd = ILibRataDie.snapToMillis(julianDay - epoch);
    } else if (unixtime != null) {
      _rd = ILibRataDie.snapToMillis(
          ILibRataDie.unixTimeToRd(unixtime) + 1721424.5 - epoch);
    } else if (ILibRataDie.hasDateComponents(
        year: year, month: month, day: day, hour: hour,
        minute: minute, second: second, millisecond: millisecond)) {
      _rd = _dateToRd(
        year ?? 1, month ?? 1, day ?? 1,
        hour ?? 0, minute ?? 0, second ?? 0, millisecond ?? 0,
      );
    } else {
      _rd = ILibRataDie.nowToRd(epoch);
    }
  }

  static const double epoch = 1948319.5;

  static const List<int> cumMonthLengths = <int>[
    0, 31, 62, 93, 124, 155, 186, 216, 246, 276, 306, 336, 365
  ];

  late double _rd;

  @override
  double getRataDie() => _rd;

  @override
  double getJulianDay() => _rd + epoch;

  @override
  int getDayOfWeek({double offset = 0}) {
    final int rd = (_rd + offset).floor();
    return mod(rd - 3, 7);
  }

  double _onOrBefore(double rd, int dayOfWeek) {
    return rd - mod(rd.floor() - dayOfWeek - 3, 7).toDouble();
  }

  @override
  double onOrBefore(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd + offset, dayOfWeek) - offset;
  }

  @override
  double onOrAfter(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd + 6 + offset, dayOfWeek) - offset;
  }

  @override
  double before(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd - 1 + offset, dayOfWeek) - offset;
  }

  @override
  double after(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd + 7 + offset, dayOfWeek) - offset;
  }

  static double _dateToRd(
      int year, int month, int day, int hour, int minute, int second, int millisecond) {
    final int yOffset = year - (year >= 0 ? 474 : 473);
    final int cycle = floorDiv(yOffset, 2820);
    final int ecy = mod(yOffset, 2820) + 474;
    final int rdOfYears = 1029983 * cycle +
        365 * (ecy - 1) +
        floorDiv(682 * ecy - 110, 2816);
    final int dayInYear = (month > 1 ? cumMonthLengths[month - 1] : 0) + day;
    final double rdTime = ILibRataDie.timeToRd(hour, minute, second, millisecond);
    return rdOfYears + dayInYear + rdTime;
  }

  static int calcYear(double rd) {
    final int d0 = rd.floor() - _dateToRdYearStart(475);
    final int n2820 = floorDiv(d0, 1029983);
    final int d1 = d0 - n2820 * 1029983;
    final int y2820 = d1 == 1029982
        ? 2820
        : floorDiv(2816 * d1 + 1031337, 1028522);
    final int year = 474 + 2820 * n2820 + y2820;
    return year > 0 ? year : year - 1;
  }

  static int _dateToRdYearStart(int year) {
    final int yOffset = year - (year >= 0 ? 474 : 473);
    final int cycle = floorDiv(yOffset, 2820);
    final int ecy = mod(yOffset, 2820) + 474;
    return 1029983 * cycle +
        365 * (ecy - 1) +
        floorDiv(682 * ecy - 110, 2816) +
        1;
  }
}
