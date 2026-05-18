class JulianDay {
  JulianDay(double jd) : _days = jd.floor(), _fraction = jd - jd.floor();

  int _days;
  double _fraction;

  double getDate() => _days + _fraction;

  int getDays() => _days;

  double getDayFraction() => _fraction;

  void setDate(double jd) {
    _days = jd.floor();
    _fraction = jd - jd.floor();
  }

  // ignore: use_setters_to_change_properties
  void setDays(int days) {
    _days = days;
  }

  void setDayFraction(double frac) {
    _fraction = frac - frac.floor();
  }

  JulianDay addDate(double amount) {
    return JulianDay(getDate() + amount);
  }
}
