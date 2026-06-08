import '../ilib_localeinfo.dart';
import 'hebrew_cal.dart';
import 'hebrew_rata_die.dart';
import 'ilib_date.dart';
import 'rata_die.dart';

class HebrewDate extends ILibCalendarDate {
  HebrewDate(
      {int? year,
      int? month,
      int? day,
      int? hour,
      int? minute,
      int? second,
      int? millisecond,
      double? julianDay,
      double? rd,
      int? unixtime,
      String? locale,
      String? timezone}) {
    _timezone =
        timezone ?? (locale != null ? ILibLocaleInfo(locale).getTimeZone() : null);
    final bool fromComponents = julianDay == null && rd == null && unixtime == null &&
        ILibRataDie.hasDateComponents(year: year, month: month, day: day,
            hour: hour, minute: minute, second: second, millisecond: millisecond);
    if (fromComponents) {
      _year = year ?? 0;
      _month = month ?? 7;
      _day = day ?? 1;
      _hour = hour ?? 0;
      _minute = minute ?? 0;
      _second = second ?? 0;
      _millisecond = millisecond ?? 0;
      _rataDie = HebrewRataDie(
          year: year, month: month, day: day, hour: hour,
          minute: minute, second: second, millisecond: millisecond);
      _rataDie = HebrewRataDie(rataDie: adjustRdForTimezone(_rataDie.getRataDie()));
    } else {
      _rataDie = HebrewRataDie(
          julianDay: julianDay, rataDie: rd, unixtime: unixtime);
      _calcDateComponents();
    }
  }

  static final HebrewCal _cal = HebrewCal();

  late HebrewRataDie _rataDie;
  String? _timezone;
  late int _year;
  late int _month;
  late int _day;
  late int _hour;
  late int _minute;
  late int _second;
  late int _millisecond;

  void _calcDateComponents() {
    _decomposeRd(_rataDie.getRataDie());
    calcTimezoneOffset();
    if (tzOffsetDays != 0) {
      _decomposeRd(getWallClockRd());
    }
  }

  void _decomposeRd(double rd) {
    _year = HebrewRataDie.calcYear(rd);

    final int newYearRd = HebrewCal.newYear(_year);
    final double remainder = rd - newYearRd;

    final bool isLeap = _cal.isLeapYear(_year);
    final List<int> table =
        isLeap ? HebrewRataDie.cumMonthLengthsLeap : HebrewRataDie.cumMonthLengths;

    _month = 7;
    for (int i = 1; i <= table.length; i++) {
      final int idx = ((i + 6 - 1) % (isLeap ? 13 : 12)) + 1;
      int cumDays = table[idx - 1];
      if ((idx < 7 || idx > 8) && HebrewCal.longHeshvan(_year)) {
        cumDays++;
      }
      if ((idx < 7 || idx > 9) && HebrewCal.longKislev(_year)) {
        cumDays++;
      }
      if (remainder < cumDays + HebrewCal.lastDayOfMonth(idx, _year)) {
        _month = idx;
        break;
      }
    }

    int monthStart = table[_month - 1];
    if ((_month < 7 || _month > 8) && HebrewCal.longHeshvan(_year)) {
      monthStart++;
    }
    if ((_month < 7 || _month > 9) && HebrewCal.longKislev(_year)) {
      monthStart++;
    }
    _day = (remainder - monthStart).floor() + 1;

    final double fractionalDay = rd - rd.floorToDouble();
    final int timeMs = (fractionalDay * 86400000).round();
    if (timeMs < 21600000) {
      _hour = timeMs ~/ 3600000 + 18;
      final int rem = timeMs % 3600000;
      _minute = rem ~/ 60000;
      _second = (rem % 60000) ~/ 1000;
      _millisecond = rem % 1000;
    } else {
      final int adjustedMs = timeMs - 21600000;
      _hour = adjustedMs ~/ 3600000;
      final int rem = adjustedMs % 3600000;
      _minute = rem ~/ 60000;
      _second = (rem % 60000) ~/ 1000;
      _millisecond = rem % 1000;
    }
  }

  @override
  int getYears() => _year;
  @override
  int getMonths() => _month;
  @override
  int getDays() => _day;
  @override
  int getHours() => _hour;
  @override
  int getMinutes() => _minute;
  @override
  int getSeconds() => _second;
  @override
  int getMilliseconds() => _millisecond;

  @override
  int getDayOfWeek() => _rataDie.getDayOfWeek();

  @override
  int getDayOfYear() {
    final List<int> table = _cal.isLeapYear(_year)
        ? HebrewRataDie.cumMonthLengthsLeap
        : HebrewRataDie.cumMonthLengths;
    int days = table[_month - 1];
    if ((_month < 7 || _month > 8) && HebrewCal.longHeshvan(_year)) {
      days++;
    }
    if ((_month < 7 || _month > 9) && HebrewCal.longKislev(_year)) {
      days++;
    }
    return days + _day;
  }

  @override
  int getEra() => _year > 0 ? 1 : -1;

  @override
  double getRataDie() => _rataDie.getRataDie();

  @override
  double getJulianDay() => _rataDie.getJulianDay();

  @override
  String getCalendar() => 'hebrew';

  @override
  String? get timezone => _timezone ?? 'local';

  @override
  ILibRataDie getRataDieInstance() => _rataDie;

  @override
  double firstSunday(int year) {
    final ILibRataDie tishri1 = HebrewRataDie(
      year: year,
      month: 7,
      day: 1,
      hour: 18,
      minute: 0,
      second: 0,
      millisecond: 0,
    );
    final double firstThuRd = tishri1.onOrAfter(4);
    final ILibRataDie firstThu = HebrewRataDie(rataDie: firstThuRd);
    return firstThu.before(0);
  }

  @override
  int getWeekOfMonth(int firstDayOfWeek) {
    final ILibRataDie first = HebrewRataDie(
      year: _year,
      month: _month,
      day: 1,
      hour: 18,
      minute: 0,
      second: 0,
      millisecond: 0,
    );
    final double rd = _rataDie.getRataDie();
    double weekStart = first.onOrAfter(firstDayOfWeek);

    if (weekStart - first.getRataDie() > 3) {
      weekStart -= 7;
    }
    if (rd < weekStart) {
      return 0;
    }
    return (rd - weekStart) ~/ 7 + 1;
  }

  @override
  ILibRataDie newRd({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required int millisecond,
  }) {
    return HebrewRataDie(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
    );
  }

  @override
  ILibRataDie newRdFromRd(double rd) {
    return HebrewRataDie(rataDie: rd);
  }

  @override
  HebrewDate newDateFromRd(double rd) {
    return HebrewDate(rd: rd);
  }
}
