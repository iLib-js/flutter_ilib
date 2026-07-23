import 'calendar_utils.dart';
import 'gregorian_cal.dart';

/// The Thai Solar calendar.
class ThaiSolarCal extends GregorianCal {
  @override
  String getType() => 'thaisolar';

  @override
  bool isLeapYear(int year) {
    final int gregYear = year - 543;
    final int centuries = mod(gregYear, 400);
    return mod(gregYear, 4) == 0 &&
        centuries != 100 &&
        centuries != 200 &&
        centuries != 300;
  }
}
