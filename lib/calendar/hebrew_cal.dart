import '../ilib_calendar.dart';

class HebrewCal implements ILibCalendar {
  static int elapsedDays(int year) {
    final int months = (235 * year - 234) ~/ 19;
    final int parts = 204 + 793 * mod(months, 1080);
    final int hours = 11 + 12 * months + 793 * (months ~/ 1080) + parts ~/ 1080;
    final int days = 29 * months + hours ~/ 24;
    return mod(3 * (days + 1), 7) < 3 ? days + 1 : days;
  }

  static int newYearsCorrection(int year, int elapsed) {
    final int lastYear = elapsedDays(year - 1);
    final int thisYear = elapsed;
    final int nextYear = elapsedDays(year + 1);
    if (nextYear - thisYear == 356) {
      return 2;
    }
    if (thisYear - lastYear == 382) {
      return 1;
    }
    return 0;
  }

  static int newYear(int year) {
    final int elapsed = elapsedDays(year);
    return elapsed + newYearsCorrection(year, elapsed);
  }

  static int daysInYear(int year) {
    return newYear(year + 1) - newYear(year);
  }

  static bool longHeshvan(int year) {
    return mod(daysInYear(year), 10) == 5;
  }

  static bool longKislev(int year) {
    return mod(daysInYear(year), 10) != 3;
  }

  static int lastDayOfMonth(int month, int year) {
    switch (month) {
      case 2:
      case 4:
      case 6:
      case 10:
        return 29;
      case 13:
        return mod(1 + 7 * year, 19) < 7 ? 29 : 0;
      case 8:
        return longHeshvan(year) ? 30 : 29;
      case 9:
        return longKislev(year) ? 30 : 29;
      case 1:
      case 3:
      case 5:
      case 7:
      case 11:
      case 12:
        return 30;
      default:
        return 0;
    }
  }

  @override
  String getType() => 'hebrew';

  @override
  int getNumMonths(int year) {
    return isLeapYear(year) ? 13 : 12;
  }

  @override
  int getMonLength(int month, int year) {
    if (month < 1 || month > 13) {
      return 0;
    }
    if (month == 13 && !isLeapYear(year)) {
      return 0;
    }
    return lastDayOfMonth(month, year);
  }

  @override
  bool isLeapYear(int year) {
    return mod(1 + 7 * year, 19) < 7;
  }
}
