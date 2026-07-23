import 'calendar_utils.dart';

/// Abstract base for all calendar-specific Rata Die (fixed-day) implementations.
///
/// A Rata Die is a continuous day count that allows calendars with different
/// epoch offsets to interoperate. Each concrete subclass (e.g. [GregRataDie],
/// [IslamicRataDie]) overrides [getRataDie] and [getJulianDay] with its own
/// epoch arithmetic; this class supplies the shared unix-time, day-of-week,
/// and "on or before/after" utilities that depend only on those two values.
abstract class ILibRataDie {
  /// The Rata Die (fixed-day) number for this date's instant.
  double getRataDie();

  /// The Julian Day number for this date's instant.
  double getJulianDay();

  /// The day of week (0 = Sunday … 6 = Saturday), evaluated at
  /// `rd + offset` to support wall-clock (local-time) calculations.
  int getDayOfWeek({double offset = 0});

  /// The rata die of the nearest day on or before [dayOfWeek].
  double onOrBefore(int dayOfWeek, {double offset = 0});

  /// The rata die of the nearest day on or after [dayOfWeek].
  double onOrAfter(int dayOfWeek, {double offset = 0});

  /// The rata die of the nearest day strictly before [dayOfWeek].
  double before(int dayOfWeek, {double offset = 0});

  /// The rata die of the nearest day strictly after [dayOfWeek].
  double after(int dayOfWeek, {double offset = 0});

  /// Unix time (milliseconds since the epoch) for this rata die, or -1 when
  /// the instant is outside the representable range.
  int getTime() {
    final double jd = getJulianDay();
    if (jd < 2440587.5 || jd > 2465442.634803241) {
      return -1;
    }
    return ((jd - 2440587.5) * 86400000).round();
  }

  /// Extended unix time covering instants outside [getTime]'s range, or -1
  /// when the instant is outside the extended representable range.
  int getTimeExtended() {
    final double jd = getJulianDay();
    if (jd < -97559412.5 || jd > 102440587.5) {
      return -1;
    }
    return ((jd - 2440587.5) * 86400000).round();
  }

  /// Convert unix time [millis] to a Gregorian rata die.
  static double unixTimeToRd(int millis) {
    return 719163.0 + millis / 86400000.0;
  }

  /// The current instant as a calendar-specific rata die, given the calendar's
  /// [epoch] offset from the Gregorian rata die.
  static double nowToRd(double epoch) {
    return unixTimeToRd(DateTime.now().millisecondsSinceEpoch) +
        1721424.5 -
        epoch;
  }

  /// Whether any of the given date component arguments is non-null.
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

  /// Round [rd] to millisecond resolution. Removes sub-millisecond
  /// floating-point noise so day boundaries decompose consistently.
  static double snapToMillis(double rd) {
    return (rd * 86400000).round() / 86400000.0;
  }

  /// Convert a time-of-day to a fractional rata die (fraction of a day).
  static double timeToRd(int hour, int minute, int second, int millisecond) {
    return (hour * 3600000 + minute * 60000 + second * 1000 + millisecond) /
        86400000.0;
  }

  /// The day of week (0 = Sunday) for the rata die [rd] shifted by [offset]
  /// fractional days.
  static int dayOfWeekFromRd(double rd, int offset) {
    return mod(rd.floor() + offset, 7);
  }

  /// The rata die of the nearest day on or before [rd] whose day of week
  /// equals [dayOfWeek], using [modOffset] to adjust the modular arithmetic
  /// for the calendar's epoch.
  static double onOrBeforeFromRd(double rd, int dayOfWeek, int modOffset) {
    final int rdFloor = rd.floor();
    return rdFloor - mod(rdFloor - dayOfWeek + modOffset, 7).toDouble();
  }
}
