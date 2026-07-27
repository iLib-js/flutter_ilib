/// {@category Calendar}
library;

/// A Julian Day number split into its integer day and fractional day parts.
///
/// Splitting avoids floating-point precision loss when adding small time
/// offsets to large Julian Day numbers.
class JulianDay {
  /// Create a [JulianDay] from the Julian Day number [jd].
  JulianDay(double jd)
      : _days = jd.floor(),
        _fraction = jd - jd.floor();

  int _days;
  double _fraction;

  /// The full Julian Day number (integer part + fractional part).
  double getDate() => _days + _fraction;

  /// The integer (whole-day) part of the Julian Day number.
  int getDays() => _days;

  /// The fractional (sub-day) part of the Julian Day number (0.0–1.0).
  double getDayFraction() => _fraction;

  /// Replace this value with [jd].
  void setDate(double jd) {
    _days = jd.floor();
    _fraction = jd - jd.floor();
  }

  // ignore: use_setters_to_change_properties
  /// Set the integer day part to [days].
  void setDays(int days) {
    _days = days;
  }

  /// Set the fractional day part to the fractional portion of [frac].
  void setDayFraction(double frac) {
    _fraction = frac - frac.floor();
  }

  /// Return a new [JulianDay] advanced by [amount] days.
  JulianDay addDate(double amount) {
    return JulianDay(getDate() + amount);
  }
}
