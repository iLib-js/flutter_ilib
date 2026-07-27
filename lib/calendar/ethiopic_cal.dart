/// {@category Calendar}
library;

import '../ilib_calendar.dart';

/// The Ethiopic (Ge'ez) calendar.
class EthiopicCal implements ILibCalendar {
  @override
  String getType() => 'ethiopic';

  @override
  int getNumMonths(int year) => 13;

  @override
  int getMonLength(int month, int year) {
    if (month <= 12) {
      return 30;
    }
    return isLeapYear(year) ? 6 : 5;
  }

  @override
  bool isLeapYear(int year) {
    return mod(year, 4) == 3;
  }
}
