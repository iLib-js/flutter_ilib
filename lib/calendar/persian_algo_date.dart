import '../ilib_localeinfo.dart';
import 'ilib_date.dart';
import 'persian_algo_rata_die.dart';
import 'rata_die.dart';

class PersianAlgoDate extends ILibCalendarDate {
  PersianAlgoDate(
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
      String? timezone,
      bool? dst}) {
    _timezone =
        timezone ?? (locale != null ? ILibLocaleInfo(locale).getTimeZone() : null);
    this.dst = dst;
    final bool fromComponents = julianDay == null && rd == null && unixtime == null &&
        ILibRataDie.hasDateComponents(year: year, month: month, day: day,
            hour: hour, minute: minute, second: second, millisecond: millisecond);
    if (fromComponents) {
      _year = year ?? 0;
      _month = month ?? 1;
      _day = day ?? 1;
      _hour = hour ?? 0;
      _minute = minute ?? 0;
      _second = second ?? 0;
      _millisecond = millisecond ?? 0;
      _rataDie = PersianAlgoRataDie(
          year: year, month: month, day: day, hour: hour,
          minute: minute, second: second, millisecond: millisecond);
      _rataDie = PersianAlgoRataDie(rataDie: adjustRdForTimezone(_rataDie.getRataDie()));
    } else {
      _rataDie = PersianAlgoRataDie(
          julianDay: julianDay, rataDie: rd, unixtime: unixtime);
      _calcDateComponents();
    }
  }

  late PersianAlgoRataDie _rataDie;
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
    _year = PersianAlgoRataDie.calcYear(rd);

    final PersianAlgoRataDie yearStart = PersianAlgoRataDie(
      year: _year, month: 1, day: 1,
      hour: 0, minute: 0, second: 0, millisecond: 0,
    );
    final int dayOfYear = (rd - yearStart.getRataDie()).floor() + 1;

    if (dayOfYear <= 186) {
      _month = ((dayOfYear - 1) ~/ 31) + 1;
      _day = dayOfYear - (_month - 1) * 31;
    } else {
      _month = ((dayOfYear - 187) ~/ 30) + 7;
      _day = dayOfYear - PersianAlgoRataDie.cumMonthLengths[_month - 1];
    }

    final double fractionalDay = rd - rd.floorToDouble();
    final int timeMs = (fractionalDay * 86400000).round();
    _hour = timeMs ~/ 3600000;
    _minute = (timeMs % 3600000) ~/ 60000;
    _second = (timeMs % 60000) ~/ 1000;
    _millisecond = timeMs % 1000;
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
  int getDayOfWeek() => _rataDie.getDayOfWeek(offset: tzOffsetDays);

  @override
  int getDayOfYear() {
    return PersianAlgoRataDie.cumMonthLengths[_month - 1] + _day;
  }

  @override
  int getEra() => _year > 0 ? 1 : -1;

  @override
  double getRataDie() => _rataDie.getRataDie();

  @override
  double getJulianDay() => _rataDie.getJulianDay();

  @override
  String getCalendar() => 'persian-algo';

  @override
  String? get timezone => _timezone ?? 'local';

  @override
  ILibRataDie getRataDieInstance() => _rataDie;

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
    return PersianAlgoRataDie(
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
    return PersianAlgoRataDie(rataDie: rd);
  }

  @override
  PersianAlgoDate newDateFromRd(double rd) {
    return PersianAlgoDate(rd: rd, timezone: _timezone);
  }
}
