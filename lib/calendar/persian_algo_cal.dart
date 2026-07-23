import '../ilib_calendar.dart';

/// The Persian algorithmic calendar.
class PersianAlgoCal implements ILibCalendar {
  /// Create a [PersianAlgoCal], optionally forcing leap-year overrides.
  PersianAlgoCal([this._type = 'persian-algo']);

  final String _type;

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
  String getType() => _type;

  @override
  int getNumMonths(int year) => 12;

  @override
  int getMonLength(int month, int year) {
    if (month == 12 && isLeapYear(year)) {
      return 30;
    }
    return _monthLengths[month - 1];
  }

  /// The equivalent year within the 2820-year cycle used to determine leap years.
  int equivalentCycleYear(int year) {
    final int y = year - (year >= 0 ? 474 : 473);
    return mod(y, 2820) + 474;
  }

  @override
  bool isLeapYear(int year) {
    return mod((equivalentCycleYear(year) + 38) * 682, 2816) < 682;
  }
}
