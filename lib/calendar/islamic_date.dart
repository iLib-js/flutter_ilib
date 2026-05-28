import 'ilib_date.dart';
import 'islamic_rata_die.dart';
import 'rata_die.dart';

class IslamicDate extends ILibCalendarDate {
  IslamicDate(
      {int? year,
      int? month,
      int? day,
      int? hour,
      int? minute,
      int? second,
      int? millisecond,
      double? julianDay,
      double? rd,
      int? unixtime,
      String? timezone}) {
    _timezone = timezone;
    _rataDie = IslamicRataDie(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      julianDay: julianDay,
      rataDie: rd,
      unixtime: unixtime,
    );
    _calcDateComponents();
  }

  late IslamicRataDie _rataDie;
  String? _timezone;
  late int _year;
  late int _month;
  late int _day;
  late int _hour;
  late int _minute;
  late int _second;
  late int _millisecond;

  void _calcDateComponents() {
    final double rd = _rataDie.getRataDie();
    _year = IslamicRataDie.calcYear(rd);

    final IslamicRataDie yearStart = IslamicRataDie(
      year: _year,
      month: 1,
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    );
    final double remainder = rd - yearStart.getRataDie() + 1;

    _month = 1;
    for (int i = IslamicRataDie.cumMonthLengths.length - 1; i >= 1; i--) {
      if (remainder > IslamicRataDie.cumMonthLengths[i - 1]) {
        _month = i;
        break;
      }
    }
    final double dayRemainder = remainder - IslamicRataDie.cumMonthLengths[_month - 1];
    _day = dayRemainder.floor();

    final double fractionalDay = rd - rd.floorToDouble();
    final int timeMs = (fractionalDay * 86400000).round();
    _hour = timeMs ~/ 3600000;
    _minute = (timeMs % 3600000) ~/ 60000;
    _second = (timeMs % 60000) ~/ 1000;
    _millisecond = timeMs % 1000;
  }

  @override
  int getYears() => _year;
  @override
  int getMonths() => _month;
  @override
  int getDays() => _day;
  @override
  int getHours() => _hour;
  @override
  int getMinutes() => _minute;
  @override
  int getSeconds() => _second;
  @override
  int getMilliseconds() => _millisecond;

  @override
  int getDayOfWeek() => _rataDie.getDayOfWeek();

  @override
  int getDayOfYear() {
    return IslamicRataDie.cumMonthLengths[_month - 1] + _day;
  }

  @override
  int getEra() => _year > 0 ? 1 : -1;

  @override
  double getRataDie() => _rataDie.getRataDie();

  @override
  double getJulianDay() => _rataDie.getJulianDay();

  @override
  String getCalendar() => 'islamic';

  @override
  String? get timezone => _timezone;

  @override
  ILibRataDie getRataDieInstance() => _rataDie;

  @override
  ILibRataDie newRd({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
  }) {
    return IslamicRataDie(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
    );
  }

  @override
  ILibRataDie newRdFromRd(double rd) {
    return IslamicRataDie(rataDie: rd);
  }
}
