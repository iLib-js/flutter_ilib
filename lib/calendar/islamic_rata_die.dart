import 'calendar_utils.dart';
import 'rata_die.dart';

class IslamicRataDie extends ILibRataDie {
  IslamicRataDie(
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

  static const double epoch = 1948439.5;

  static const List<int> cumMonthLengths = <int>[
    0, 30, 59, 89, 118, 148, 177, 207, 236, 266, 295, 325, 354
  ];

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

  double _onOrBefore(double rd, int dayOfWeek) {
    return rd - mod(rd.floor() - dayOfWeek - 2, 7).toDouble();
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
    final int days = (year - 1) * 354 +
        (29.5 * (month - 1)).ceil() +
        day +
        floorDiv(3 + 11 * year, 30) -
        1;
    final double rdTime = ILibRataDie.timeToRd(hour, minute, second, millisecond);
    return days + rdTime;
  }

  static int calcYear(double rd) {
    final int year = (30 * rd.floor() + 10646) ~/ 10631;
    return (year <= 0) ? year - 1 : year;
  }
}
