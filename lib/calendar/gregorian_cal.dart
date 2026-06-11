import '../ilib_calendar.dart';

class GregorianCal implements ILibCalendar {
  static const List<int> _monthLengths = <int>[
    31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
  ];

  @override
  String getType() => 'gregorian';

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
    final int centuries = mod(year, 400);
    return mod(year, 4) == 0 &&
        centuries != 100 &&
        centuries != 200 &&
        centuries != 300;
  }
}
