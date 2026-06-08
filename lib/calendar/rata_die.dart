import 'calendar_utils.dart';

abstract class ILibRataDie {
  double getRataDie();
  double getJulianDay();
  int getDayOfWeek({double offset = 0});
  double onOrBefore(int dayOfWeek, {double offset = 0});
  double onOrAfter(int dayOfWeek, {double offset = 0});
  double before(int dayOfWeek, {double offset = 0});
  double after(int dayOfWeek, {double offset = 0});

  static double unixTimeToRd(int millis) {
    return 719163.0 + millis / 86400000.0;
  }

  static double nowToRd(double epoch) {
    return unixTimeToRd(DateTime.now().millisecondsSinceEpoch) +
        1721424.5 - epoch;
  }

  static bool hasDateComponents(
      {int? year,
      int? month,
      int? day,
      int? hour,
      int? minute,
      int? second,
      int? millisecond}) {
    return year != null ||
        month != null ||
        day != null ||
        hour != null ||
        minute != null ||
        second != null ||
        millisecond != null;
  }

  // Round a rata die to millisecond resolution, mirroring iLib RataDie which stores
  // `halfup((jd - epoch) * 86400000) / 86400000`. This removes sub-millisecond
  // floating-point noise so day boundaries decompose consistently.
  static double snapToMillis(double rd) {
    return (rd * 86400000).round() / 86400000.0;
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
