import 'calendar_utils.dart';
import 'gregorian_date.dart';
import 'ilib_astro.dart';
import 'rata_die.dart';

/// Persian Rata Die implementation.
class PersianRataDie extends ILibRataDie {
  /// Create a [PersianRataDie] from date components, a Julian Day, or unix time.
  PersianRataDie(
      {int? year,
      int? month,
      int? day,
      int? hour,
      int? minute,
      int? second,
      int? millisecond,
      double? julianDay,
      double? rataDie,
      int? unixtime}) {
    if (rataDie != null) {
      _rd = rataDie;
    } else if (julianDay != null) {
      _rd = ILibRataDie.snapToMillis(julianDay - epoch);
    } else if (unixtime != null) {
      _rd = ILibRataDie.snapToMillis(
          ILibRataDie.unixTimeToRd(unixtime) + 1721424.5 - epoch);
    } else if (ILibRataDie.hasDateComponents(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond)) {
      _rd = _dateToRd(
        year ?? 1,
        month ?? 1,
        day ?? 1,
        hour ?? 0,
        minute ?? 0,
        second ?? 0,
        millisecond ?? 0,
      );
    } else {
      _rd = ILibRataDie.nowToRd(epoch);
    }
  }

  /// The Julian Day of the Persian calendar epoch.
  static const double epoch = 1948319.5;

  /// Cumulative day counts at the start of each month in a standard year.
  static const List<int> cumMonthLengths = <int>[
    0,
    31,
    62,
    93,
    124,
    155,
    186,
    216,
    246,
    276,
    306,
    336,
    366
  ];

  late double _rd;

  @override
  double getRataDie() => _rd;

  @override
  double getJulianDay() => _rd + epoch;

  @override
  int getDayOfWeek({double offset = 0}) {
    final int rd = (_rd + offset).floor();
    return mod(rd - 3, 7);
  }

  double _onOrBefore(double rd, int dayOfWeek) {
    return rd - mod(rd.floor() - dayOfWeek - 3, 7).toDouble();
  }

  @override
  double onOrBefore(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd + offset, dayOfWeek) - offset;
  }

  @override
  double onOrAfter(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd + 6 + offset, dayOfWeek) - offset;
  }

  @override
  double before(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd - 1 + offset, dayOfWeek) - offset;
  }

  @override
  double after(int dayOfWeek, {double offset = 0}) {
    return _onOrBefore(_rd + 7 + offset, dayOfWeek) - offset;
  }

  static double _tehranEquinox(int year) {
    final double equJED = ILibAstro.equinox(year, 0);
    final double equJD =
        equJED - (ILibAstro.deltat(year.toDouble()) / (24 * 60 * 60));
    double eot = ILibAstro.equationOfTime(equJED) * 360;
    eot = (eot - 20 * (eot / 20).floorToDouble()) / 360;
    final double equAPP = equJD + eot;
    const double dtTehran = 52.5 / 360;
    return equAPP + dtTehran;
  }

  static ({int year, double equinox}) _getYear(double jd) {
    final GregorianDate gd = GregorianDate(julianDay: jd);
    int guess = gd.getYears() - 2;

    double equinox = _tehranEquinox(guess);
    while (equinox > jd) {
      guess--;
      equinox = _tehranEquinox(guess);
    }

    double nexteq = equinox - 1;
    while (!(equinox.floor() + 0.5 <= jd && jd < nexteq.floor() + 0.5)) {
      equinox = nexteq;
      guess++;
      nexteq = _tehranEquinox(guess);
    }

    final int year = ((equinox - epoch - 1) / 365.24219878).round() + 1;
    return (year: year, equinox: equinox);
  }

  static double _dateToRd(int year, int month, int day, int hour, int minute,
      int second, int millisecond) {
    double guess = epoch + 1 + 365.24219878 * (year - 2);
    ({int year, double equinox}) adr = (year: year - 1, equinox: 0.0);

    while (adr.year < year) {
      adr = _getYear(guess);
      guess = adr.equinox + 365.24219878 + 2;
    }

    double jd = adr.equinox.floor() +
        (month <= 7 ? (month - 1) * 31 : (month - 1) * 30 + 6) +
        (day - 1 + 0.5);

    jd += (hour * 3600000 + minute * 60000 + second * 1000 + millisecond) /
        86400000;

    return jd - epoch;
  }

  /// The calendar year that contains the rata die [rd].
  static int calcYear(double rd) {
    return _getYear(rd + epoch).year;
  }
}
