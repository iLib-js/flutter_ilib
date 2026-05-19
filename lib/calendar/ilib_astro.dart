import 'dart:math';

import '../ilib_init.dart';
import '../internal/ilib_utils.dart';

class ILibAstro {
  ILibAstro._();

  static Map<String, dynamic>? _data;

  static Map<String, dynamic> _getData() {
    if (_data != null) {
      return _data!;
    }
    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(currentLocale);
    _data = (localeData?['ilib.data.astro'] as Map<String, dynamic>?) ??
        <String, dynamic>{};
    return _data!;
  }

  static double _dtr(double d) => d * pi / 180.0;
  static double _rtd(double r) => r * 180.0 / pi;
  static double _dcos(double d) => cos(_dtr(d));
  static double _dsin(double d) => sin(_dtr(d));


  static double _fixangle(double a) => a - 360.0 * (a / 360.0).floorToDouble();

  static double _fixangr(double a) =>
      a - (2 * pi) * (a / (2 * pi)).floorToDouble();

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

  static Map<String, double> sunpos(double jd) {
    final double t = (jd - 2451545.0) / 36525.0;
    final double t2 = t * t;
    final double t3 = t * t2;

    final double meanLongitude =
        _fixangle(280.46646 + 36000.76983 * t + 0.0003032 * t2);
    final double meanAnomaly =
        _fixangle(357.52911 + 35999.05029 * t - 0.0001537 * t2 - 0.00000048 * t3);
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

  static Map<String, double> nutation(double jd) {
    final Map<String, dynamic> data = _getData();
    final List<dynamic> nutArgMult = data['_nutArgMult'] as List<dynamic>;
    final List<dynamic> nutArgCoeff = data['_nutArgCoeff'] as List<dynamic>;

    final double t = (jd - 2451545.0) / 36525.0;
    final double t2 = t * t;
    final double t3 = t * t2;

    final List<double> ta = <double>[
      _fixangr(_dtr(297.850363 + 445267.11148 * t - 0.0019142 * t2 + t3 / 189474.0)),
      _fixangr(_dtr(357.52772 + 35999.05034 * t - 0.0001603 * t2 - t3 / 300000.0)),
      _fixangr(_dtr(134.96298 + 477198.867398 * t + 0.0086972 * t2 + t3 / 56250.0)),
      _fixangr(_dtr(93.27191 + 483202.017538 * t - 0.0036825 * t2 + t3 / 327270)),
      _fixangr(_dtr(125.04452 - 1934.136261 * t + 0.0020708 * t2 + t3 / 450000.0)),
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
