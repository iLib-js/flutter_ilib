import 'calendar/greg_rata_die.dart';
import 'ilib_date_accessor.dart';
import 'ilib_init.dart';
import 'ilib_localeinfo.dart';
import 'internal/ilib_utils.dart';

class ILibTimeZone {
  ILibTimeZone(String id, [Map<String, dynamic>? allZoneData]) : _id = id {
    allZoneData ??= _getZoneData();
    final Object? entry = allZoneData[_id];
    if (entry is String) {
      _zone = allZoneData[entry] as Map<String, dynamic>?;
    } else if (entry is Map<String, dynamic>) {
      _zone = entry;
    } else {
      _zone = allZoneData['Etc/UTC'] as Map<String, dynamic>?;
    }
    if (_zone != null) {
      _offset = _parseOffset(_zone!['o'] as String? ?? '0:0');
      if (_zone!.containsKey('s') && _zone!.containsKey('e')) {
        final Map<String, dynamic> s = _zone!['s'] as Map<String, dynamic>;
        _dstSavings = _parseOffsetMinutes(s['v'] as String? ?? '1:0');
      }
    }
  }

  ILibTimeZone.fromOffset(int offsetMinutes)
      : _id = _offsetToRfc822(offsetMinutes) {
    _offset = offsetMinutes.toDouble();
    _dstSavings = 0;
  }

  ILibTimeZone.fromLocale(String locale, [Map<String, dynamic>? allZoneData])
      : this(ILibLocaleInfo(locale).getTimeZone(), allZoneData);

  ILibTimeZone.defaultZone([Map<String, dynamic>? allZoneData])
      : this(ILibLocaleInfo(currentLocale).getTimeZone(), allZoneData);

  static String _offsetToRfc822(int offsetMinutes) {
    if (offsetMinutes == 0) {
      return 'UTC';
    }
    final String sign = offsetMinutes > 0 ? '+' : '-';
    final int abs = offsetMinutes.abs();
    final int h = abs ~/ 60;
    final int m = abs % 60;
    return 'UTC$sign${h.toString().padLeft(2, '0')}${m.toString().padLeft(2, '0')}';
  }

  static Map<String, dynamic> _getZoneData() {
    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(currentLocale);
    return (localeData?['ilib.data.zoneinfo'] as Map<String, dynamic>?) ??
        <String, dynamic>{};
  }

  static List<String> getAvailableIds([String? country]) {
    final Map<String, dynamic> zoneData = _getZoneData();
    if (country == null) {
      return <String>['local', ...zoneData.keys];
    }
    final Map<String, dynamic>? zonetab =
        zoneData['zonetab'] as Map<String, dynamic>?;
    if (zonetab != null && zonetab.containsKey(country)) {
      return List<String>.from(zonetab[country] as List<dynamic>);
    }
    return <String>[];
  }

  final String _id;
  Map<String, dynamic>? _zone;
  double _offset = 0;
  double _dstSavings = 60;

  String getId() => _id;

  Map<String, int> getRawOffset() => _minutesToHm(_offset);

  double getRawOffsetMinutes() => _offset;

  String getRawOffsetStr() => _minutesToStr(_offset);

  Map<String, int> getDSTSavings() =>
      _minutesToHm(_useDaylightTime() ? _dstSavings : 0);

  double getDSTSavingsMinutes() => _useDaylightTime() ? _dstSavings : 0;

  String getDSTSavingsStr() => _minutesToStr(getDSTSavingsMinutes());

  bool useDaylightTime() => _useDaylightTime();

  String getCountry() => (_zone?['c'] as String?) ?? '';

  Map<String, int> getOffset(ILibDate date) =>
      _minutesToHm(getOffsetMinutes(date));

  double getOffsetMinutes(ILibDate date, {bool wallTime = false}) {
    return _offset + (inDaylightTime(date, wallTime: wallTime) ? _dstSavings : 0);
  }

  String getOffsetStr(ILibDate date) => _minutesToStr(getOffsetMinutes(date));

  int getOffsetMillis(ILibDate date) => (getOffsetMinutes(date) * 60000).round();

  int getRawOffsetMillis() => (_offset * 60000).round();

  String getDisplayName(ILibDate date, String style) {
    if (_zone == null) {
      return _formatRfc822(_offset);
    }

    switch (style) {
      case 'rfc822':
        final double totalOffset =
            _offset + (inDaylightTime(date) ? _dstSavings : 0);
        return _formatRfc822(totalOffset);
      case 'long':
        final String? n = _zone!['n'] as String?;
        if (n != null) {
          if (n.contains('{c}')) {
            final String str =
                inDaylightTime(date) ? 'Daylight' : 'Standard';
            return n.replaceAll('{c}', str);
          }
          return n;
        }
        return _formatGmtOffset(date);
      default:
        final String? f = _zone!['f'] as String?;
        if (f != null && f != 'zzz') {
          if (f.contains('{c}')) {
            String letter;
            if (inDaylightTime(date)) {
              final Map<String, dynamic>? s =
                  _zone!['s'] as Map<String, dynamic>?;
              letter = (s?['c'] as String?) ?? '';
            } else {
              final Map<String, dynamic>? e =
                  _zone!['e'] as Map<String, dynamic>?;
              letter = (e?['c'] as String?) ?? '';
            }
            return f.replaceAll('{c}', letter);
          }
          return f;
        }
        return _formatGmtOffset(date);
    }
  }

  bool inDaylightTime(ILibDate date, {bool wallTime = false}) {
    if (_zone == null) {
      return false;
    }
    if (!_useDaylightTime()) {
      return false;
    }

    // The Gregorian RD of the date's instant, regardless of its calendar (mirrors JS:
    // gregorian dates use date.rd directly, others convert through getTimeExtended()).
    // getJulianDay() is the absolute Julian Day, so subtracting the Gregorian epoch
    // yields the Gregorian RD in the same time base the rules are evaluated against.
    final double rd = date.getJulianDay() - GregRataDie.epoch;
    final int year = GregRataDie.calcYear(rd);

    final Map<String, dynamic> startRule = _zone!['s'] as Map<String, dynamic>;
    final Map<String, dynamic> endRule = _zone!['e'] as Map<String, dynamic>;

    // These calculate the start/end in local wall time.
    double startRd = _calcRuleStart(startRule, year);
    double endRd = _calcRuleStart(endRule, year);

    if (wallTime) {
      // rd is local wall time: skip the missing hour at the start of DST when
      // standard time ends and daylight time begins.
      startRd += _dstSavings / 1440;
    } else {
      // rd is a UTC instant: convert the boundaries to UTC so they can be compared
      // directly. When DST starts the time is standard already, so subtract the
      // offset; when DST ends it is daylight already, so subtract the DST savings
      // then the offset.
      startRd -= _offset / 1440;
      endRd -= (_offset + _dstSavings) / 1440;
    }

    if (startRd < endRd) {
      return rd >= startRd && rd < endRd;
    }
    return rd >= startRd || rd < endRd;
  }

  bool _useDaylightTime() {
    return _zone != null &&
        _zone!.containsKey('s') &&
        _zone!.containsKey('e');
  }

  double _calcRuleStart(Map<String, dynamic> rule, int year) {
    String type = '=';
    int weekday = 0;
    int day;
    int hour = 0;
    int minute = 0;
    int second = 0;

    final String r = rule['r'] as String;
    final int m = rule['m'] as int;

    if (r.startsWith('l') || r.startsWith('f')) {
      type = r[0];
      weekday = int.parse(r.substring(1));
      day = (type == 'l') ? _getMonthLength(m, year) : 1;
    } else {
      int idx = r.indexOf('<');
      if (idx == -1) {
        idx = r.indexOf('>');
      }

      if (idx != -1) {
        type = r[idx];
        weekday = int.parse(r.substring(0, idx));
        day = int.parse(r.substring(idx + 1));
      } else {
        day = int.parse(r);
      }
    }

    if (rule.containsKey('t')) {
      final List<String> parts = (rule['t'] as String).split(':');
      hour = int.parse(parts[0]);
      if (parts.length > 1) {
        minute = int.parse(parts[1]);
      }
      if (parts.length > 2) {
        second = int.parse(parts[2]);
      }
    }

    double refRd = _toRd(year, m, day, hour, minute, second);

    switch (type) {
      case 'l':
      case '<':
        refRd = _onOrBefore(refRd, weekday);
        break;
      case 'f':
      case '>':
        refRd = _onOrAfter(refRd, weekday);
        break;
    }

    return refRd;
  }

  static double _onOrBefore(double rd, int dayOfWeek) {
    return rd - _mod(rd.floor() - dayOfWeek, 7);
  }

  static double _onOrAfter(double rd, int dayOfWeek) {
    return _onOrBefore(rd + 6, dayOfWeek);
  }

  static int _mod(int dividend, int modulus) {
    if (modulus == 0) {
      return 0;
    }
    final int x = dividend % modulus;
    return x < 0 ? x + modulus : x;
  }

  static double _toRd(int year, int month, int day,
      [int hour = 0, int minute = 0, int second = 0]) {
    final int correction =
        month <= 2 ? 0 : (_isLeapYear(year) ? -1 : -2);

    final int rd = 365 * (year - 1) +
        (year - 1) ~/ 4 -
        (year - 1) ~/ 100 +
        (year - 1) ~/ 400 +
        (367 * month - 362) ~/ 12 +
        correction +
        day;

    return rd + hour / 24.0 + minute / 1440.0 + second / 86400.0;
  }

  static bool _isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }

  static int _getMonthLength(int month, int year) {
    const List<int> lengths = <int>[
      0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    ];
    if (month == 2 && _isLeapYear(year)) {
      return 29;
    }
    return lengths[month];
  }

  double _parseOffset(String offsetStr) {
    final List<String> parts = offsetStr.split(':');
    final double h = double.parse(parts[0]);
    final double m = parts.length > 1 ? double.parse(parts[1]) : 0;
    return h * 60 + (h < 0 ? -m : m);
  }

  double _parseOffsetMinutes(String offsetStr) {
    final List<String> parts = offsetStr.split(':');
    final double h = double.parse(parts[0]);
    final double m = parts.length > 1 ? double.parse(parts[1]) : 0;
    return h.abs() * 60 + m;
  }

  static Map<String, int> _minutesToHm(double minutes) {
    final int h = minutes ~/ 60;
    final int m = (minutes.abs() % 60).round();
    if (m == 0) {
      return <String, int>{'h': h};
    }
    return <String, int>{'h': h, 'm': m};
  }

  static String _minutesToStr(double minutes) {
    final int h = minutes ~/ 60;
    final int m = (minutes.abs() % 60).round();
    return '$h:$m';
  }

  String _formatRfc822(double offsetMinutes) {
    if (offsetMinutes == 0) {
      return 'UTC';
    }
    final String sign = offsetMinutes > 0 ? '+' : '-';
    final int absMinutes = offsetMinutes.abs().round();
    final int h = absMinutes ~/ 60;
    final int m = absMinutes % 60;
    return 'UTC$sign${h.toString().padLeft(2, '0')}${m.toString().padLeft(2, '0')}';
  }

  String _formatGmtOffset(ILibDate date) {
    String result = 'GMT${_zone!['o']}';
    if (inDaylightTime(date)) {
      final Map<String, dynamic> s = _zone!['s'] as Map<String, dynamic>;
      result += '+${s['v']}';
    }
    return result;
  }
}
