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
}
