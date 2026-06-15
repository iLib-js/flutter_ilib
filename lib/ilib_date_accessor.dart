abstract class ILibDate {
  int? get year;
  int? get month;
  int? get day;
  int? get hour;
  int? get minute;
  int? get second;
  int? get millisecond;
  String? get timezone;
  // Optional DST disambiguation for the overlap hour at the end of DST (when the same
  // local wall time occurs twice). null = unspecified. Mirrors JS IDate.dst.
  bool? get dst;
  int getDayOfWeek();
  int getWeekOfYear();
  int getDayOfYear();
  // Mirrors JS IDate.getWeekOfMonth(locale): resolves the first day of week from the
  // locale internally (via ILibLocaleInfo.getFirstDayOfWeek), not a pre-resolved int.
  int getWeekOfMonth(String? locale);
  int getEra();

  // Instant accessors, mirroring the JS IDate surface (RataDie/getTime/getCalendar).
  // These expose the underlying UTC instant so timezone/DST logic can reason about a
  // date independently of its calendar-specific year/month/day components.
  double getRataDie();
  double getJulianDay();
  int getTime();
  int getTimeExtended();
  String getCalendar();
}
