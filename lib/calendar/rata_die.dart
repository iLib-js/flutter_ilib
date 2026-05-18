import 'calendar_utils.dart';

abstract class ILibRataDie {
  double getRataDie();
  double getJulianDay();
  int getDayOfWeek({double offset = 0});
  double onOrBefore(int dayOfWeek, {double offset = 0});

  double onOrAfter(int dayOfWeek, {double offset = 0}) {
    return onOrBefore(dayOfWeek, offset: offset) + 7;
  }

  double before(int dayOfWeek, {double offset = 0}) {
    return onOrBefore(dayOfWeek, offset: offset) - 1;
  }

  double after(int dayOfWeek, {double offset = 0}) {
    return onOrBefore(dayOfWeek, offset: offset) + 6;
  }

  static double unixTimeToRd(int millis) {
    return 719163.0 + millis / 86400000.0;
  }

  static double timeToRd(int hour, int minute, int second, int millisecond) {
    return (hour * 3600000 + minute * 60000 + second * 1000 + millisecond) /
        86400000.0;
  }

  static int dayOfWeekFromRd(double rd, int offset) {
    return mod(rd.floor() + offset, 7);
  }

  static double onOrBeforeFromRd(double rd, int dayOfWeek, int modOffset) {
    final int rdFloor = rd.floor();
    return rdFloor - mod(rdFloor - dayOfWeek + modOffset, 7).toDouble();
  }
}
