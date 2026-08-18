/// {@category API}
library;

/// The common read interface shared by every calendar date in this library.
///
/// A date exposes both its calendar-specific components (year/month/day/… in
/// its own calendar) and the underlying UTC instant (rata die / Julian Day /
/// unix time), so timezone and DST logic can reason about an instant
/// independently of how a particular calendar labels it. Concrete instances are
/// created via the date factories, not by implementing this interface directly.
abstract class ILibDate {
  /// The year in this date's own calendar, or null if unspecified.
  int? get year;

  /// The month (1-based) in this date's own calendar, or null if unspecified.
  int? get month;

  /// The day of the month in this date's own calendar, or null if unspecified.
  int? get day;

  /// The hour of the day (0–23), or null if unspecified.
  int? get hour;

  /// The minute of the hour (0–59), or null if unspecified.
  int? get minute;

  /// The second of the minute (0–59), or null if unspecified.
  int? get second;

  /// The millisecond of the second (0–999), or null if unspecified.
  int? get millisecond;

  /// The IANA timezone id associated with this date, or null if none.
  String? get timezone;

  /// The timezone associated with this date as a string, or null if none.
  ///
  /// Method form kept alongside the [timezone] getter for consistency with the
  /// other accessor methods like [getCalendar].
  String? getTimeZone();

  /// Optional DST disambiguation for the overlap hour at the end of DST, when
  /// the same local wall time occurs twice. Null when unspecified.
  bool? get dst;

  /// The day of the week for this date: 0 = Sunday through 6 = Saturday.
  int getDayOfWeek();

  /// The ISO 8601 week number within the current year.
  int getWeekOfYear();

  /// The ordinal day number within the current year (1 = January 1st).
  int getDayOfYear();

  /// The ordinal number of the week within the month.
  ///
  /// Resolves the first day of the week from [locale] internally (via
  /// [ILibLocaleInfo.getFirstDayOfWeek]), rather than taking a pre-resolved
  /// value.
  int getWeekOfMonth(String? locale);

  /// The era of this date: a calendar-specific code (e.g. 1 = CE, -1 = BCE for
  /// the Gregorian calendar).
  int getEra();

  /// The Rata Die (fixed day) number of this date's instant, regardless of its
  /// calendar.
  double getRataDie();

  /// The Julian Day equivalent to this date's instant as a number.
  double getJulianDay();

  /// The unix time (milliseconds since the epoch) equivalent to this date, or
  /// -1 when the instant falls outside the representable range.
  int getTime();

  /// The extended unix time equivalent to this date, covering instants outside
  /// the range representable by [getTime].
  int getTimeExtended();

  /// The name of the calendar this date belongs to (e.g. `'gregorian'`).
  String getCalendar();
}
