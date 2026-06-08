abstract class ILibDate {
  int? get year;
  int? get month;
  int? get day;
  int? get hour;
  int? get minute;
  int? get second;
  int? get millisecond;
  String? get timezone;
  int getDayOfWeek();
  int getWeekOfYear();
  int getDayOfYear();
  int getWeekOfMonth(int firstDayOfWeek);
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
