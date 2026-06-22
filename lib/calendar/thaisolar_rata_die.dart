import 'greg_rata_die.dart';
import 'rata_die.dart';

class ThaiSolarRataDie extends ILibRataDie {
  ThaiSolarRataDie(
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
      _greg = GregRataDie(rataDie: rataDie - _yearOffset);
    } else if (julianDay != null) {
      _greg = GregRataDie(julianDay: julianDay);
    } else if (unixtime != null) {
      _greg = GregRataDie(unixtime: unixtime);
    } else if (ILibRataDie.hasDateComponents(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond)) {
      _greg = GregRataDie(
        year: (year != null) ? year - 543 : null,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
      );
    } else {
      _greg = GregRataDie();
    }
  }

  static const double _yearOffset = 198327;

  late GregRataDie _greg;

  @override
  double getRataDie() => _greg.getRataDie() + _yearOffset;

  @override
  double getJulianDay() => _greg.getJulianDay();

  @override
  int getDayOfWeek({double offset = 0}) => _greg.getDayOfWeek(offset: offset);

  @override
  double onOrBefore(int dayOfWeek, {double offset = 0}) =>
      _greg.onOrBefore(dayOfWeek, offset: offset) + _yearOffset;

  @override
  double onOrAfter(int dayOfWeek, {double offset = 0}) =>
      _greg.onOrAfter(dayOfWeek, offset: offset) + _yearOffset;

  @override
  double before(int dayOfWeek, {double offset = 0}) =>
      _greg.before(dayOfWeek, offset: offset) + _yearOffset;

  @override
  double after(int dayOfWeek, {double offset = 0}) =>
      _greg.after(dayOfWeek, offset: offset) + _yearOffset;

  GregRataDie getGregRataDie() => _greg;
}
