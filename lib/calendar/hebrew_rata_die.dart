import 'calendar_utils.dart';
import 'hebrew_cal.dart';
import 'rata_die.dart';

class HebrewRataDie implements ILibRataDie {
  HebrewRataDie(
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
        year ?? 1, month ?? 7, day ?? 1,
        hour ?? 0, minute ?? 0, second ?? 0, millisecond ?? 0,
      );
    } else {
      _rd = ILibRataDie.nowToRd(epoch);
    }
  }

  static const double epoch = 347997.25;

  static const List<int> cumMonthLengths = <int>[
    176, 206, 235, 265, 294, 324, 0, 30, 59, 88, 117, 147
  ];

  static const List<int> cumMonthLengthsLeap = <int>[
    206, 236, 265, 295, 324, 354, 0, 30, 59, 88, 117, 147, 177
  ];

  static final HebrewCal _cal = HebrewCal();

  late double _rd;

  @override
  double getRataDie() => _rd;

  @override
  double getJulianDay() => _rd + epoch;

  @override
  int getDayOfWeek({double offset = 0}) {
    final int rd = (_rd + offset).floor();
    return mod(rd + 1, 7);
  }

  double _onOrBefore(double rd, int dayOfWeek) {
    return rd - mod(rd.floor() - dayOfWeek + 1, 7).toDouble();
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
    final int elapsed = HebrewCal.elapsedDays(year);
    int days = elapsed + HebrewCal.newYearsCorrection(year, elapsed) + day - 1;

    final List<int> table =
        _cal.isLeapYear(year) ? cumMonthLengthsLeap : cumMonthLengths;
    int sum = table[month - 1];

    if ((month < 7 || month > 8) && HebrewCal.longHeshvan(year)) {
      sum++;
    }
    if ((month < 7 || month > 9) && HebrewCal.longKislev(year)) {
      sum++;
    }

    days += sum;

    double time;
    if (hour >= 18) {
      time = ((hour - 18) * 3600000 +
              minute * 60000 +
              second * 1000 +
              millisecond) /
          86400000.0;
    } else {
      time = 0.25 +
          (hour * 3600000 + minute * 60000 + second * 1000 + millisecond) /
              86400000.0;
    }

    return days + time;
  }

  static int calcYear(double rd) {
    final int approx = ((rd - epoch) * 19 / 6939.688).floor() + 1;
    int year = approx - 1;
    while (HebrewCal.newYear(year) <= rd.floor()) {
      year++;
    }
    return year - 1;
  }
}
