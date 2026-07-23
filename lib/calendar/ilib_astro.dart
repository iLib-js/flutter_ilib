import 'dart:math';

import 'package:flutter/foundation.dart' show visibleForTesting;

import '../ilib_init.dart';
import 'greg_rata_die.dart';

/// Astronomical calculations used by calendar systems that track solar and
/// lunar events (equinoxes, new moons, solar longitude).
///
/// All methods operate on Julian Day numbers and return values in degrees
/// unless noted otherwise. Data is loaded lazily from the bundled
/// `ilib.data.astro` table in `root.json`.
class ILibAstro {
  ILibAstro._();

  static Map<String, dynamic>? _data;

  static Map<String, dynamic> _getData() {
    // astro is locale-independent (root.json only), so read it from root data
    // directly. Never cache an empty map, so a too-early call can recover later.
    if (_data != null && _data!.isNotEmpty) {
      return _data!;
    }
    final Map<String, dynamic>? rootData = ILibLoader.instance.getRootData();
    final Map<String, dynamic>? astro =
        rootData?['ilib.data.astro'] as Map<String, dynamic>?;
    if (astro != null && astro.isNotEmpty) {
      _data = astro;
    }
    return astro ?? const <String, dynamic>{};
  }

  static double _dtr(double d) => d * pi / 180.0;
  static double _rtd(double r) => r * 180.0 / pi;
  static double _dcos(double d) => cos(_dtr(d));
  static double _dsin(double d) => sin(_dtr(d));

  static double _fixangle(double a) => a - 360.0 * (a / 360.0).floorToDouble();

  static double _fixangr(double a) =>
      a - (2 * pi) * (a / (2 * pi)).floorToDouble();

  /// The Julian Day of the equinox or solstice for [year].
  /// [which]: 0 = March equinox, 1 = June solstice, 2 = September equinox,
  /// 3 = December solstice.
  static double equinox(int year, int which) {
    final Map<String, dynamic> data = _getData();
    final List<dynamic> jde0tab;
    final double y;

    if (year < 1000) {
      jde0tab = data['_JDE0tab1000'] as List<dynamic>;
      y = year / 1000.0;
    } else {
      jde0tab = data['_JDE0tab2000'] as List<dynamic>;
      y = (year - 2000) / 1000.0;
    }

    final List<dynamic> coeffs = jde0tab[which] as List<dynamic>;
    final double jde0 = (coeffs[0] as num).toDouble() +
        (coeffs[1] as num).toDouble() * y +
        (coeffs[2] as num).toDouble() * y * y +
        (coeffs[3] as num).toDouble() * y * y * y +
        (coeffs[4] as num).toDouble() * y * y * y * y;

    final double t = (jde0 - 2451545.0) / 36525;
    final double w = 35999.373 * t - 2.47;
    final double deltaL = 1 + 0.0334 * _dcos(w) + 0.0007 * _dcos(2 * w);

    final List<dynamic> eqTerms = data['_EquinoxpTerms'] as List<dynamic>;
    double s = 0;
    int j = 0;
    for (int i = 0; i < 24; i++) {
      s += (eqTerms[j] as num).toDouble() *
          _dcos((eqTerms[j + 1] as num).toDouble() +
              (eqTerms[j + 2] as num).toDouble() * t);
      j += 3;
    }

    return jde0 + (s * 0.00001) / deltaL;
  }

  /// The difference ΔT (seconds) between Terrestrial Dynamical Time and
  /// Universal Time for the given decimal [year].
  static double deltat(double year) {
    final Map<String, dynamic> data = _getData();
    final List<dynamic> deltaTtab = data['_deltaTtab'] as List<dynamic>;
    double dt;

    if (year >= 1620 && year <= 2014) {
      final int i = (year - 1620).floor();
      final double f = (year - 1620) - i;
      dt = (deltaTtab[i] as num).toDouble() +
          ((deltaTtab[i + 1] as num).toDouble() -
                  (deltaTtab[i] as num).toDouble()) *
              f;
    } else {
      final double t = (year - 2000) / 100;
      if (year < 948) {
        dt = 2177 + 497 * t + 44.1 * t * t;
      } else {
        dt = 102 + 102 * t + 25.3 * t * t;
        if (year > 2000 && year < 2100) {
          dt += 0.37 * (year - 2100);
        }
      }
    }
    return dt;
  }

  /// The obliquity of the ecliptic (degrees) at Julian Day [jd].
  static double obliqeq(double jd) {
    final Map<String, dynamic> data = _getData();
    final List<dynamic> oterms = data['_oterms'] as List<dynamic>;

    final double u = (jd - 2451545.0) / 3652500.0;
    double v = u;
    double eps = 23 + 26 / 60.0 + 21.448 / 3600.0;

    if (u.abs() < 1.0) {
      for (int i = 0; i < 10; i++) {
        eps += (oterms[i] as num).toDouble() / 3600.0 * v;
        v *= u;
      }
    }
    return eps;
  }

  /// Sun position data at Julian Day [jd]. Returns a map with keys
  /// `meanLongitude`, `meanAnomaly`, `equationOfCenter`, `sunLongitude`,
  /// `apparentLong`, `inclination`, and `apparentRightAscension` (all degrees).
  static Map<String, double> sunpos(double jd) {
    final double t = (jd - 2451545.0) / 36525.0;
    final double t2 = t * t;
    final double t3 = t * t2;

    final double meanLongitude =
        _fixangle(280.46646 + 36000.76983 * t + 0.0003032 * t2);
    final double meanAnomaly = _fixangle(
        357.52911 + 35999.05029 * t - 0.0001537 * t2 - 0.00000048 * t3);
    final double equationOfCenter =
        (1.914602 - 0.004817 * t - 0.000014 * t2) * _dsin(meanAnomaly) +
            (0.019993 - 0.000101 * t) * _dsin(2 * meanAnomaly) +
            0.000289 * _dsin(3 * meanAnomaly);
    final double sunLongitude = meanLongitude + equationOfCenter;
    final double omega = 125.04 - 1934.136 * t;
    final double apparentLong =
        sunLongitude + (-0.00569) + (-0.00478 * _dsin(omega));
    final double epsilon0 = obliqeq(jd);
    final double epsilon = epsilon0 + 0.00256 * _dcos(omega);
    final double inclination = _fixangle(
        23.4392911 - 0.013004167 * t - 0.00000016389 * t2 + 0.0000005036 * t3);
    final double apparentRightAscension = _fixangle(
        _rtd(atan2(_dcos(epsilon) * _dsin(apparentLong), _dcos(apparentLong))));

    return <String, double>{
      'meanLongitude': meanLongitude,
      'meanAnomaly': meanAnomaly,
      'equationOfCenter': equationOfCenter,
      'sunLongitude': sunLongitude,
      'apparentLong': apparentLong,
      'inclination': inclination,
      'apparentRightAscension': apparentRightAscension,
    };
  }

  /// Nutation components at Julian Day [jd]. Returns `deltaPsi` (nutation in
  /// longitude) and `deltaEpsilon` (nutation in obliquity), both in degrees.
  static Map<String, double> nutation(double jd) {
    final Map<String, dynamic> data = _getData();
    final List<dynamic> nutArgMult = data['_nutArgMult'] as List<dynamic>;
    final List<dynamic> nutArgCoeff = data['_nutArgCoeff'] as List<dynamic>;

    final double t = (jd - 2451545.0) / 36525.0;
    final double t2 = t * t;
    final double t3 = t * t2;

    final List<double> ta = <double>[
      _fixangr(
          _dtr(297.850363 + 445267.11148 * t - 0.0019142 * t2 + t3 / 189474.0)),
      _fixangr(
          _dtr(357.52772 + 35999.05034 * t - 0.0001603 * t2 - t3 / 300000.0)),
      _fixangr(
          _dtr(134.96298 + 477198.867398 * t + 0.0086972 * t2 + t3 / 56250.0)),
      _fixangr(
          _dtr(93.27191 + 483202.017538 * t - 0.0036825 * t2 + t3 / 327270)),
      _fixangr(
          _dtr(125.04452 - 1934.136261 * t + 0.0020708 * t2 + t3 / 450000.0)),
    ];

    final double to10 = t / 10.0;
    double dp = 0;
    double de = 0;

    for (int i = 0; i < 63; i++) {
      double ang = 0;
      for (int j = 0; j < 5; j++) {
        final int mult = (nutArgMult[i * 5 + j] as num).toInt();
        if (mult != 0) {
          ang += mult * ta[j];
        }
      }
      dp += ((nutArgCoeff[i * 4] as num).toDouble() +
              (nutArgCoeff[i * 4 + 1] as num).toDouble() * to10) *
          sin(ang);
      de += ((nutArgCoeff[i * 4 + 2] as num).toDouble() +
              (nutArgCoeff[i * 4 + 3] as num).toDouble() * to10) *
          cos(ang);
    }

    return <String, double>{
      'deltaPsi': dp / (3600.0 * 10000.0),
      'deltaEpsilon': de / (3600.0 * 10000.0),
    };
  }

  static double _poly(double x, List<dynamic> coefficients) {
    double result = (coefficients[0] as num).toDouble();
    double xpow = x;
    for (int i = 1; i < coefficients.length; i++) {
      result += (coefficients[i] as num).toDouble() * xpow;
      xpow *= x;
    }
    return result;
  }

  /// Correction (days) from Universal Time to Ephemeris Time at Julian Day [jd].
  @visibleForTesting
  static double ephemerisCorrection(double jd) {
    final int year = GregRataDie.calcYear(jd - 1721424.5);

    if (1988 <= year && year <= 2019) {
      return (year - 1933) / 86400;
    }

    if (1800 <= year && year <= 1987) {
      final GregRataDie jul1 = GregRataDie(
          year: year,
          month: 7,
          day: 1,
          hour: 0,
          minute: 0,
          second: 0,
          millisecond: 0);
      final double theta = (jul1.getRataDie() - 693596) / 36525;
      final Map<String, dynamic> data = _getData();
      final List<dynamic> coeffs = (1900 <= year)
          ? data['_coeff19th'] as List<dynamic>
          : data['_coeff18th'] as List<dynamic>;
      return _poly(theta, coeffs);
    }

    if (1620 <= year && year <= 1799) {
      final double y = (year - 1600).toDouble();
      return (196.58333 - 4.0675 * y + 0.0219167 * y * y) / 86400;
    }

    final GregRataDie jan1 = GregRataDie(
        year: year,
        month: 1,
        day: 1,
        hour: 0,
        minute: 0,
        second: 0,
        millisecond: 0);
    final double x = 0.5 + (jan1.getRataDie() - 660724);
    return ((x * x / 41048480) - 15) / 86400;
  }

  static double _ephemerisFromUniversal(double jd) {
    return jd + ephemerisCorrection(jd);
  }

  static double _universalFromEphemeris(double jd) {
    return jd - ephemerisCorrection(jd);
  }

  /// Julian centuries from J2000.0 for Julian Day [jd] in Ephemeris Time.
  @visibleForTesting
  static double julianCenturies(double jd) {
    return (_ephemerisFromUniversal(jd) - 2451545.0) / 36525.0;
  }

  /// Solar aberration correction (degrees) for Julian centuries [c].
  @visibleForTesting
  static double aberration(double c) {
    return 9.74e-05 * _dcos(177.63 + 35999.01847999999 * c) - 0.005575;
  }

  /// Nutation correction (degrees) for Julian centuries [c].
  @visibleForTesting
  static double nutation2(double c) {
    final Map<String, dynamic> data = _getData();
    final List<dynamic> nutCoeffA = data['_nutCoeffA'] as List<dynamic>;
    final List<dynamic> nutCoeffB = data['_nutCoeffB'] as List<dynamic>;
    final double a = _poly(c, nutCoeffA);
    final double b = _poly(c, nutCoeffB);
    return -0.004778 * _dsin(a) - 0.0003667 * _dsin(b);
  }

  /// The apparent solar longitude (degrees) at Julian Day [jd].
  static double solarLongitude(double jd) {
    final Map<String, dynamic> data = _getData();
    final double c = julianCenturies(jd);
    final List<dynamic> solarCoeff = data['_solarLongCoeff'] as List<dynamic>;
    final List<dynamic> solarAddends =
        data['_solarLongAddends'] as List<dynamic>;
    final List<dynamic> solarMultipliers =
        data['_solarLongMultipliers'] as List<dynamic>;

    double longitude = 0;
    for (int i = 0; i < solarCoeff.length; i++) {
      longitude += (solarCoeff[i] as num).toDouble() *
          _dsin((solarAddends[i] as num).toDouble() +
              (solarMultipliers[i] as num).toDouble() * c);
    }
    longitude *= 5.729577951308232e-06;
    longitude += 282.77718340000001 + 36000.769537439999 * c;
    longitude += aberration(c) + nutation2(c);
    return _fixangle(longitude);
  }

  static double _bisectionSearch(double start, double end, double tolerance,
      double Function(double) testFn) {
    double lo = start;
    double hi = end;
    while (hi - lo > tolerance) {
      final double mid = (lo + hi) / 2;
      if (testFn(mid) > 0) {
        hi = mid;
      } else {
        lo = mid;
      }
    }
    return (lo + hi) / 2;
  }

  /// The Julian Day of the next moment at or after [jd] when the sun reaches
  /// the given ecliptic [longitude] (degrees).
  static double nextSolarLongitude(double jd, double longitude) {
    const double rate = 365.242189 / 360.0;
    final double tau = jd + rate * _fixangle(longitude - solarLongitude(jd));
    final double start = jd > tau - 5.0 ? jd : tau - 5.0;
    final double end = tau + 5.0;
    return _bisectionSearch(start, end, 1e-6, (double l) {
      return 180 - _fixangle(solarLongitude(l) - longitude);
    });
  }

  /// The apparent lunar longitude (degrees) at Julian Day [jd].
  static double lunarLongitude(double jd) {
    final Map<String, dynamic> data = _getData();
    final double c = julianCenturies(jd);
    final double meanMoon =
        _fixangle(_poly(c, data['_meanMoonCoeff'] as List<dynamic>));
    final double elongation =
        _fixangle(_poly(c, data['_elongationCoeff'] as List<dynamic>));
    final double solarAnomaly =
        _fixangle(_poly(c, data['_solarAnomalyCoeff'] as List<dynamic>));
    final double lunarAnomaly =
        _fixangle(_poly(c, data['_lunarAnomalyCoeff'] as List<dynamic>));
    final double moonNode =
        _fixangle(_poly(c, data['_moonFromNodeCoeff'] as List<dynamic>));
    final double e = _poly(c, data['_eCoeff'] as List<dynamic>);

    final List<dynamic> lunarElongCoeff =
        data['_lunarElongationLongCoeff'] as List<dynamic>;
    final List<dynamic> solarAnomalyCoeff =
        data['_solarAnomalyLongCoeff'] as List<dynamic>;
    final List<dynamic> lunarAnomalyCoeff =
        data['_lunarAnomalyLongCoeff'] as List<dynamic>;
    final List<dynamic> moonNodeCoeff =
        data['_moonFromNodeLongCoeff'] as List<dynamic>;
    final List<dynamic> sineCoeff = data['_sineCoeff'] as List<dynamic>;

    double sum = 0;
    for (int i = 0; i < lunarElongCoeff.length; i++) {
      final int x = (solarAnomalyCoeff[i] as num).toInt();
      sum += (sineCoeff[i] as num).toDouble() *
          pow(e, x.abs()) *
          _dsin((lunarElongCoeff[i] as num).toDouble() * elongation +
              x * solarAnomaly +
              (lunarAnomalyCoeff[i] as num).toDouble() * lunarAnomaly +
              (moonNodeCoeff[i] as num).toDouble() * moonNode);
    }
    final double longitude = sum / 1000000;
    final double venus =
        3958.0 / 1000000 * _dsin(119.75 + c * 131.84899999999999);
    final double jupiter =
        318.0 / 1000000 * _dsin(53.090000000000003 + c * 479264.28999999998);
    final double flatEarth = 1962.0 / 1000000 * _dsin(meanMoon - moonNode);

    return _fixangle(
        meanMoon + longitude + venus + jupiter + flatEarth + nutation2(c));
  }

  static double _lunarSolarAngle(double jd) {
    return _fixangle(lunarLongitude(jd) - solarLongitude(jd));
  }

  /// The Julian Day of the [n]-th new moon after the epoch (J2000.0).
  static double newMoonTime(double n) {
    final Map<String, dynamic> data = _getData();
    final double k = n - 24724;
    final double c = k / 1236.8499999999999;
    final double approx = _poly(c, data['_nmApproxCoeff'] as List<dynamic>);
    final double capE = _poly(c, data['_nmCapECoeff'] as List<dynamic>);
    final double solarAnomaly =
        _poly(c, data['_nmSolarAnomalyCoeff'] as List<dynamic>);
    final double lunarAnomaly =
        _poly(c, data['_nmLunarAnomalyCoeff'] as List<dynamic>);
    final double moonArgument =
        _poly(c, data['_nmMoonArgumentCoeff'] as List<dynamic>);
    final double capOmega = _poly(c, data['_nmCapOmegaCoeff'] as List<dynamic>);

    double correction = -0.00017 * _dsin(capOmega);
    final List<dynamic> nmSineCoeff = data['_nmSineCoeff'] as List<dynamic>;
    final List<dynamic> nmEFactor = data['_nmEFactor'] as List<dynamic>;
    final List<dynamic> nmSolarCoeff = data['_nmSolarCoeff'] as List<dynamic>;
    final List<dynamic> nmLunarCoeff = data['_nmLunarCoeff'] as List<dynamic>;
    final List<dynamic> nmMoonCoeff = data['_nmMoonCoeff'] as List<dynamic>;

    for (int i = 0; i < nmSineCoeff.length; i++) {
      correction += (nmSineCoeff[i] as num).toDouble() *
          pow(capE, (nmEFactor[i] as num).toDouble()) *
          _dsin((nmSolarCoeff[i] as num).toDouble() * solarAnomaly +
              (nmLunarCoeff[i] as num).toDouble() * lunarAnomaly +
              (nmMoonCoeff[i] as num).toDouble() * moonArgument);
    }

    double additional = 0;
    final List<dynamic> nmAddConst = data['_nmAddConst'] as List<dynamic>;
    final List<dynamic> nmAddCoeff = data['_nmAddCoeff'] as List<dynamic>;
    final List<dynamic> nmAddFactor = data['_nmAddFactor'] as List<dynamic>;

    for (int i = 0; i < nmAddConst.length; i++) {
      additional += (nmAddFactor[i] as num).toDouble() *
          _dsin((nmAddConst[i] as num).toDouble() +
              (nmAddCoeff[i] as num).toDouble() * k);
    }

    final double extra =
        0.000325 * _dsin(_poly(c, data['_nmExtra'] as List<dynamic>));
    return _universalFromEphemeris(
        approx + correction + extra + additional + 1721424.5);
  }

  /// The Julian Day of the most recent new moon strictly before [jd].
  static double newMoonBefore(double jd) {
    final double phase = _lunarSolarAngle(jd);
    double guess = ((jd - 11.450086114414322 - 1721424.5) / 29.530588853000001 -
                phase / 360)
            .round() -
        1;
    double current = newMoonTime(guess);
    double last = current;
    while (current < jd) {
      guess++;
      last = current;
      current = newMoonTime(guess);
    }
    return last;
  }

  /// The Julian Day of the first new moon at or after [jd].
  static double newMoonAtOrAfter(double jd) {
    final double phase = _lunarSolarAngle(jd);
    double guess = ((jd - 11.450086114414322 - 1721424.5) / 29.530588853000001 -
            phase / 360)
        .roundToDouble();
    double current;
    while ((current = newMoonTime(guess)) < jd) {
      guess++;
    }
    return current;
  }

  /// Round [jd] down to the start of its Julian Day (noon boundary).
  static double floorToJD(double jd) {
    return (jd - 0.5).floorToDouble() + 0.5;
  }

  /// Round [jd] up to the start of the next Julian Day (noon boundary).
  static double ceilToJD(double jd) {
    return (jd + 0.5).ceilToDouble() - 0.5;
  }

  /// Convert a local Julian Day [local] to Universal Time by subtracting the
  /// [zone] offset (minutes).
  static double universalFromLocal(double local, double zone) {
    return local - zone / 1440;
  }

  /// Convert a Universal Time Julian Day [universal] to local time by adding
  /// the [zone] offset (minutes).
  static double localFromUniversal(double universal, double zone) {
    return universal + zone / 1440;
  }

  /// The equation of time (fraction of a day) at Julian Day [jd]: the
  /// difference between apparent solar time and mean solar time.
  static double equationOfTime(double jd) {
    final double tau = (jd - 2451545.0) / 365250.0;
    double l0 = 280.4664567 +
        360007.6982779 * tau +
        0.03032028 * tau * tau +
        (tau * tau * tau) / 49931 -
        (tau * tau * tau * tau) / 15300 -
        (tau * tau * tau * tau * tau) / 2000000;
    l0 = _fixangle(l0);

    final Map<String, double> pos = sunpos(jd);
    final double alpha = pos['apparentRightAscension']!;
    final Map<String, double> nut = nutation(jd);
    final double deltaPsi = nut['deltaPsi']!;
    final double epsilon = obliqeq(jd) + nut['deltaEpsilon']!;

    double e = l0 - 0.0057183 - alpha + deltaPsi * _dcos(epsilon);
    if (e > 180) {
      e -= 360;
    }
    e = e * 4;
    e = e / (24 * 60);
    return e;
  }
}
