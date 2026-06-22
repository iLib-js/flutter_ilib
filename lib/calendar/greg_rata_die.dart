import 'gregorian_cal.dart';
import 'rata_die.dart';

class GregRataDie extends ILibRataDie {
  GregRataDie(
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
      _rd = ILibRataDie.snapToMillis(_unixTimeToRd(unixtime));
    } else if (ILibRataDie.hasDateComponents(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond)) {
      _rd = _dateToRd(
        year ?? 1,
        month ?? 1,
        day ?? 1,
        hour ?? 0,
        minute ?? 0,
        second ?? 0,
        millisecond ?? 0,
      );
    } else {
      _rd = ILibRataDie.nowToRd(epoch);
    }
  }

  static const double epoch = 1721424.5;

  static const List<int> _cumMonthLengths = <int>[
    0,
    31,
    59,
    90,
    120,
    151,
    181,
    212,
    243,
    273,
    304,
    334,
    365
  ];
  static const List<int> _cumMonthLengthsLeap = <int>[
    0,
    31,
    60,
    91,
    121,
    152,
    182,
    213,
    244,
    274,
    305,
    335,
    366
  ];

  static final GregorianCal _cal = GregorianCal();

  late double _rd;

  @override
  double getRataDie() => _rd;

  @override
  double getJulianDay() => _rd + epoch;

  @override
  int getDayOfWeek({double offset = 0}) {
    final int rd = (_rd + offset).floor();
    return _mod(rd, 7);
  }

  double _onOrBefore(double rd, int dayOfWeek) {
    return rd - _mod(rd.floor() - dayOfWeek, 7).toDouble();
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

  static double _dateToRd(int year, int month, int day, int hour, int minute,
      int second, int millisecond) {
    final int y1 = year - 1;
    final int years =
        365 * y1 + floorDiv(y1, 4) - floorDiv(y1, 100) + floorDiv(y1, 400);
    final bool isLeap = _cal.isLeapYear(year);
    final List<int> cumLengths =
        isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;
    final int dayInYear = (month > 1 ? cumLengths[month - 1] : 0) + day;
    final double rdTime =
        (hour * 3600000 + minute * 60000 + second * 1000 + millisecond) /
            86400000.0;
    return years + dayInYear + rdTime;
  }

  static double _unixTimeToRd(int millis) {
    return 719163.0 + millis / 86400000.0;
  }

  static int floorDiv(int a, int b) {
    final int q = a ~/ b;
    final int r = a - q * b;
    if (r != 0 && (r ^ b) < 0) {
      return q - 1;
    }
    return q;
  }

  static int _floorMod(int a, int b) {
    return a - floorDiv(a, b) * b;
  }

  static int _mod(int dividend, int modulus) {
    if (modulus == 0) {
      return 0;
    }
    final int x = dividend % modulus;
    return x < 0 ? x + modulus : x;
  }

  static int calcYear(double rd) {
    final int rdInt = rd.floor() - 1;
    final int y400 = floorDiv(rdInt, 146097);
    final int d400 = _floorMod(rdInt, 146097);
    final int y100 = d400 ~/ 36524;
    final int d100 = d400 % 36524;
    final int y4 = d100 ~/ 1461;
    final int d4 = d100 % 1461;
    final int y1 = d4 ~/ 365;
    int year = 400 * y400 + 100 * y100 + 4 * y4 + y1;
    if (y100 != 4 && y1 != 4) {
      year++;
    }
    return year;
  }

  static int calcDayOfYear(int year, int month, int day) {
    final bool isLeap = _cal.isLeapYear(year);
    final List<int> cumLengths =
        isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;
    return (month > 1 ? cumLengths[month - 1] : 0) + day;
  }

  static int calcMonthFromDayOfYear(int year, int dayOfYear) {
    final bool isLeap = _cal.isLeapYear(year);
    final List<int> cumLengths =
        isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;
    for (int i = cumLengths.length - 1; i >= 1; i--) {
      if (dayOfYear > cumLengths[i - 1]) {
        return i;
      }
    }
    return 1;
  }
}
