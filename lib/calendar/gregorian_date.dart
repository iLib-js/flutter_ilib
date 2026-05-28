import 'greg_rata_die.dart';
import 'gregorian_cal.dart';
import 'ilib_date.dart';
import 'rata_die.dart';

class GregorianDate extends ILibCalendarDate {
  GregorianDate(
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
    _rataDie = GregRataDie(
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

  static final GregorianCal _cal = GregorianCal();
  static const List<int> _cumMonthLengths = <int>[
    0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334, 365
  ];
  static const List<int> _cumMonthLengthsLeap = <int>[
    0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335, 366
  ];

  late GregRataDie _rataDie;
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
    _year = GregRataDie.calcYear(rd);

    final int rdFloor = rd.floor();
    final bool isLeap = _cal.isLeapYear(_year);
    final List<int> cumLengths = isLeap ? _cumMonthLengthsLeap : _cumMonthLengths;

    final int y1 = _year - 1;
    final int yearStart = 365 * y1 +
        GregRataDie.floorDiv(y1, 4) -
        GregRataDie.floorDiv(y1, 100) +
        GregRataDie.floorDiv(y1, 400);
    final int dayOfYear = rdFloor - yearStart;

    _month = 1;
    for (int i = cumLengths.length - 1; i >= 1; i--) {
      if (dayOfYear > cumLengths[i - 1]) {
        _month = i;
        break;
      }
    }
    _day = dayOfYear - cumLengths[_month - 1];

    final double fractionalDay = rd - rdFloor;
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
    return GregRataDie.calcDayOfYear(_year, _month, _day);
  }

  @override
  int getEra() => _year > 0 ? 1 : -1;

  @override
  double getRataDie() => _rataDie.getRataDie();

  @override
  double getJulianDay() => _rataDie.getJulianDay();

  @override
  String getCalendar() => 'gregorian';

  @override
  String? get timezone => _timezone ?? 'local';

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
    return GregRataDie(
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
    return GregRataDie(rataDie: rd);
  }
}
