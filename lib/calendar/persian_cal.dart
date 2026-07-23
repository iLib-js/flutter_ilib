import '../ilib_calendar.dart';

/// The Persian astronomical calendar.
class PersianCal implements ILibCalendar {
  static const List<int> _monthLengths = <int>[
    31,
    31,
    31,
    31,
    31,
    31,
    30,
    30,
    30,
    30,
    30,
    29
  ];

  @override
  String getType() => 'persian';

  @override
  int getNumMonths(int year) => 12;

  @override
  int getMonLength(int month, int year) {
    if (month == 12 && isLeapYear(year)) {
      return 30;
    }
    return _monthLengths[month - 1];
  }

  @override
  bool isLeapYear(int year) {
    final double rd1 = PersianRataDie(
      year: year,
      month: 1,
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    ).getRataDie();
    final double rd2 = PersianRataDie(
      year: year + 1,
      month: 1,
      day: 1,
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    ).getRataDie();
    return (rd2 - rd1) > 365;
  }
}
