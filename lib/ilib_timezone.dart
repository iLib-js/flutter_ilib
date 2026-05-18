import 'ilib_date_accessor.dart';

class ILibTimeZone {
  ILibTimeZone(this._id, Map<String, dynamic> allZoneData) {
    _zone = allZoneData[_id] as Map<String, dynamic>?;
    if (_zone != null) {
      _offset = _parseOffset(_zone!['o'] as String? ?? '0:0');
      if (_zone!.containsKey('s') && _zone!.containsKey('e')) {
        final Map<String, dynamic> s = _zone!['s'] as Map<String, dynamic>;
        _dstSavings = _parseOffsetMinutes(s['v'] as String? ?? '1:0');
      }
    }
  }

  final String _id;
  Map<String, dynamic>? _zone;
  double _offset = 0;
  double _dstSavings = 60;

  String getId() => _id;

  double getOffsetMinutes(ILibDate date) {
    return _offset + (inDaylightTime(date) ? _dstSavings : 0);
  }

  String getDisplayName(ILibDate date, String style) {
    if (_zone == null) {
      return 'UTC';
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

  bool inDaylightTime(ILibDate date) {
    if (_zone == null) {
      return false;
    }
    if (!_useDaylightTime()) {
      return false;
    }

    final int year = date.year ?? DateTime.now().year;
    final int month = date.month ?? 1;
    final int day = date.day ?? 1;
    final int hour = date.hour ?? 0;
    final int minute = date.minute ?? 0;
    final int second = date.second ?? 0;

    final double rd = _toRd(year, month, day, hour, minute, second);

    final Map<String, dynamic> startRule = _zone!['s'] as Map<String, dynamic>;
    final Map<String, dynamic> endRule = _zone!['e'] as Map<String, dynamic>;

    double startRd = _calcRuleStart(startRule, year);
    double endRd = _calcRuleStart(endRule, year);

    startRd -= _offset / 1440;
    endRd -= (_offset + _dstSavings) / 1440;

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
