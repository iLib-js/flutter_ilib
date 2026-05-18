import '../ilib_calendar.dart';

class JulianCal implements ILibCalendar {
  static const List<int> _monthLengths = <int>[
    31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
  ];

  @override
  String getType() => 'julian';

  @override
  int getNumMonths(int year) => 12;

  @override
  int getMonLength(int month, int year) {
    if (month == 2 && isLeapYear(year)) {
      return 29;
    }
    return _monthLengths[month - 1];
  }

  @override
  bool isLeapYear(int year) {
    return mod(year, 4) == (year > 0 ? 0 : 3);
  }
}
