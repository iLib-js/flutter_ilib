import '../ilib_calendar.dart';

class IslamicCal implements ILibCalendar {
  static const List<int> _monthLengths = <int>[
    30,
    29,
    30,
    29,
    30,
    29,
    30,
    29,
    30,
    29,
    30,
    29
  ];

  @override
  String getType() => 'islamic';

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
    return mod(14 + 11 * year, 30) < 11;
  }
}
