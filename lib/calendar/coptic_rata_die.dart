import 'calendar_utils.dart';
import 'rata_die.dart';

class CopticRataDie extends ILibRataDie {
  CopticRataDie(
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

  static const double epoch = 1825028.5;

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
    final int years = 365 * (year - 1) + floorDiv(year, 4);
    final int dayInYear = (month - 1) * 30 + day;
    final double rdTime = ILibRataDie.timeToRd(hour, minute, second, millisecond);
    return years + dayInYear + rdTime;
  }

  static int calcYear(double rd) {
    return floorDiv(4 * (rd.floor() - 1) + 1463, 1461);
  }
}
