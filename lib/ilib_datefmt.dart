import 'ilib_calendar.dart';
import 'ilib_date.dart';
import 'ilib_date_accessor.dart';
import 'ilib_init.dart';
import 'ilib_localeinfo.dart';
import 'ilib_timezone.dart';
import 'internal/ilib_utils.dart' as ilib_utils;

class ILibDateFmt {
  ILibDateFmt(ILibDateFmtOptions options) {
    _locale = options.locale ?? ilib_utils.getLocale();
    _type = options.type ?? 'date';
    _length = _mapLength(options.length ?? 'short');
    _clock = options.clock;
    _useNative = options.useNative;

    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);
    _timezone = options.timezone ?? locInfo.getTimeZone();
    _calName = options.calendar ?? locInfo.getCalendar();
    _calendar = ILibCalendar(_calName);
    _clock ??= locInfo.getClock();
    _meridiems = options.meridiems;
    if (_meridiems == null || _meridiems == 'default') {
      _meridiems = locInfo.getMeridiemsStyle();
    }

    _dateComponents = _normalizeDateComponents(options.date ?? 'dmy');
    _timeComponents = _normalizeTimeComponents(options.time ?? 'ahm');

    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(_locale);
    _formats = (localeData?['ilib.data.dateformats'] as Map<String, dynamic>?) ??
        <String, dynamic>{};
    _sysres = (localeData?['ilib.data.sysres'] as Map<String, dynamic>?) ??
        <String, dynamic>{};
    _zoneInfo =
        (localeData?['ilib.data.zoneinfo'] as Map<String, dynamic>?) ??
            <String, dynamic>{};
    final dynamic rawDayPeriods = _formats['dayPeriods'];
    _dayPeriods =
        (rawDayPeriods is List<dynamic>) ? rawDayPeriods : <dynamic>[];

    if (options.template != null && options.template!.isNotEmpty) {
      _template = options.template!;
      if (options.clock != null) {
        _massageTemplate();
      } else {
        _templateArr = _tokenize(_template);
      }
    } else {
      _initTemplate();
      _massageTemplate();
    }

    _initDigits(locInfo);
  }

  late String _locale;
  late String _type;
  late String _length;
  String? _clock;
  String? _timezone;
  bool? _useNative;
  late String _calName;
  late ILibCalendar _calendar;
  String? _meridiems;
  late String _dateComponents;
  late String _timeComponents;
  late Map<String, dynamic> _formats;
  late Map<String, dynamic> _sysres;
  late Map<String, dynamic> _zoneInfo;
  late List<dynamic> _dayPeriods;
  String _template = '';
  late List<String> _templateArr;
  String? _digits;

  String format(ILibDate date) {
    ILibDate resolved = date;
    if (date is ILibDateOptions) {
      resolved = _resolveDateOptions(date);
    }
    resolved = _convertToFormatterCalendar(resolved);
    return _formatTemplate(resolved, _templateArr);
  }

  ILibDate _convertToFormatterCalendar(ILibDate date) {
    String dateCalendar = _calName;
    if (date is ILibDateOptions) {
      dateCalendar = date.type ?? date.calendar ?? _calName;
    } else if (date is ILibCalendarDate) {
      dateCalendar = date.getCalendar();
    }
    if (dateCalendar == _calName) {
      return date;
    }
    final ILibCalendarDate calDate = (date is ILibDateOptions)
        ? _createCalendarDate(dateCalendar,
            year: date.year, month: date.month, day: date.day,
            hour: date.hour, minute: date.minute, second: date.second,
            millisecond: date.millisecond)
        : date as ILibCalendarDate;
    final double jd = calDate.getJulianDay();
    return _createCalendarDate(_calName, julianDay: jd);
  }

  ILibCalendarDate _createCalendarDate(String calendar, {
    int? year, int? month, int? day,
    int? hour, int? minute, int? second, int? millisecond,
    double? julianDay,
  }) {
    switch (calendar) {
      case 'ethiopic':
        return EthiopicDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'coptic':
        return CopticDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'hebrew':
        return HebrewDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'islamic':
        return IslamicDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'julian':
        return JulianDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'persian':
        return PersianDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'persian-algo':
        return PersianAlgoDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      case 'thaisolar':
        return ThaiSolarDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
      default:
        return GregorianDate(year: year, month: month, day: day, hour: hour, minute: minute, second: second, millisecond: millisecond, julianDay: julianDay);
    }
  }

  ILibDateOptions _resolveDateOptions(ILibDateOptions date) {
    if (date.dateTime != null) {
      DateTime dt = date.dateTime!;
      if (dt.isUtc && _timezone != null && _timezone!.isNotEmpty) {
        final ILibTimeZone tz = ILibTimeZone(_timezone!, _zoneInfo);
        final ILibDateOptions tempDate = ILibDateOptions(
          year: dt.year,
          month: dt.month,
          day: dt.day,
          hour: dt.hour,
          minute: dt.minute,
          second: dt.second,
        );
        final double offsetMinutes = tz.getOffsetMinutes(tempDate);
        dt = dt.add(Duration(minutes: offsetMinutes.round()));
      }
      return ILibDateOptions(
        locale: date.locale,
        year: date.year ?? dt.year,
        month: date.month ?? dt.month,
        day: date.day ?? dt.day,
        hour: date.hour ?? dt.hour,
        minute: date.minute ?? dt.minute,
        second: date.second ?? dt.second,
        millisecond: date.millisecond ?? dt.millisecond,
        timezone: date.timezone,
        calendar: date.calendar,
        type: date.type,
      );
    }
    return date;
  }

  ILibCalendar getCalendar() => _calendar;

  int getClock() {
    return int.parse(_clock ?? '12');
  }

  String getTemplate() {
    return _template;
  }

  List<MeridiemsInfo> getMeridiemsRange() {
    switch (_meridiems) {
      case 'chinese':
        return <MeridiemsInfo>[
          MeridiemsInfo(
              name: _getSysString('azh0'), start: '00:00', end: '05:59'),
          MeridiemsInfo(
              name: _getSysString('azh1'), start: '06:00', end: '08:59'),
          MeridiemsInfo(
              name: _getSysString('azh2'), start: '09:00', end: '11:59'),
          MeridiemsInfo(
              name: _getSysString('azh3'), start: '12:00', end: '12:59'),
          MeridiemsInfo(
              name: _getSysString('azh4'), start: '13:00', end: '17:59'),
          MeridiemsInfo(
              name: _getSysString('azh5'), start: '18:00', end: '20:59'),
          MeridiemsInfo(
              name: _getSysString('azh6'), start: '21:00', end: '23:59'),
        ];
      case 'ethiopic':
        return <MeridiemsInfo>[
          MeridiemsInfo(
              name: _getSysString('a0-ethiopic'),
              start: '00:00',
              end: '05:59'),
          MeridiemsInfo(
              name: _getSysString('a1-ethiopic'),
              start: '06:00',
              end: '06:00'),
          MeridiemsInfo(
              name: _getSysString('a2-ethiopic'),
              start: '06:01',
              end: '11:59'),
          MeridiemsInfo(
              name: _getSysString('a3-ethiopic'),
              start: '12:00',
              end: '17:59'),
          MeridiemsInfo(
              name: _getSysString('a4-ethiopic'),
              start: '18:00',
              end: '23:59'),
        ];
      default:
        return <MeridiemsInfo>[
          MeridiemsInfo(
              name: _getSysString('a0'), start: '00:00', end: '11:59'),
          MeridiemsInfo(
              name: _getSysString('a1'), start: '12:00', end: '23:59'),
        ];
    }
  }

  String getDateComponentOrder() {
    final Map<String, dynamic>? calFormats = _getCalendarFormats();
    if (calFormats == null) {
      return 'dmy';
    }
    final Map<String, dynamic>? dateFormats =
        calFormats['date'] as Map<String, dynamic>?;
    if (dateFormats == null) {
      return 'dmy';
    }
    final String tmpl = _getLengthFormat(dateFormats['dmy'], 'l') ?? 'dMy';
    return tmpl
        .replaceAll(RegExp(r'[^dMy]'), '')
        .replaceAll(RegExp(r'y+'), 'y')
        .replaceAll(RegExp(r'd+'), 'd')
        .replaceAll(RegExp(r'M+'), 'm');
  }

  // --- private methods ---

  void _initTemplate() {
    final Map<String, dynamic>? calFormats = _getCalendarFormats();
    if (calFormats == null) {
      _template = '';
      _templateArr = <String>[];
      return;
    }

    switch (_type) {
      case 'datetime':
        final String order =
            _getLengthFormat(calFormats['order'], _length) ?? '{date} {time}';
        final String datePart = _getFormat(
                calFormats['date'] as Map<String, dynamic>?,
                _dateComponents,
                _length) ??
            '';
        final String timePart = _getFormat(
                (calFormats['time'] as Map<String, dynamic>?)?[_clock]
                    as Map<String, dynamic>?,
                _timeComponents,
                _length) ??
            '';
        _template = order
            .replaceAll('{date}', datePart)
            .replaceAll('{time}', timePart);
        break;
      case 'time':
        _template = _getFormat(
                (calFormats['time'] as Map<String, dynamic>?)?[_clock]
                    as Map<String, dynamic>?,
                _timeComponents,
                _length) ??
            '';
        break;
      default:
        _template = _getFormat(
                calFormats['date'] as Map<String, dynamic>?,
                _dateComponents,
                _length) ??
            '';
        break;
    }
  }

  Map<String, dynamic>? _getCalendarFormats() {
    final dynamic calEntry = _formats[_calName];
    if (calEntry == null) {
      return _formats['gregorian'] as Map<String, dynamic>?;
    }
    if (calEntry is String) {
      return _formats[calEntry] as Map<String, dynamic>?;
    }
    return calEntry as Map<String, dynamic>?;
  }

  static const Map<String, String> _standAlones = <String, String>{
    'm': 'l',
    'my': 'mys',
    'd': 'a',
    'w': 'e',
    'y': 'r',
  };

  String? _getFormat(
      Map<String, dynamic>? obj, String components, String length) {
    if (obj == null) {
      return null;
    }
    if (_standAlones.containsKey(components)) {
      final String? tmp =
          _getFormatInternal(obj, _standAlones[components]!, length);
      if (tmp != null) {
        return tmp;
      }
    }
    return _getFormatInternal(obj, components, length);
  }

  String? _getFormatInternal(
      Map<String, dynamic> obj, String components, String length) {
    final dynamic entry = obj[components];
    if (entry == null) {
      return null;
    }
    return _getLengthFormat(entry, length);
  }

  String? _getLengthFormat(dynamic obj, String length) {
    if (obj is String) {
      return obj;
    }
    if (obj is Map<String, dynamic>) {
      return obj[length] as String?;
    }
    return null;
  }

  void _massageTemplate() {
    if (_clock != null && _template.isNotEmpty) {
      final StringBuffer temp = StringBuffer();
      int i = 0;
      while (i < _template.length) {
        if (_template[i] == "'") {
          temp.write(_template[i]);
          i++;
          while (i < _template.length && _template[i] != "'") {
            temp.write(_template[i]);
            i++;
          }
          if (i < _template.length) {
            temp.write(_template[i]);
            i++;
          }
        } else if (_clock == '24') {
          if (_template[i] == 'K') {
            temp.write('k');
          } else if (_template[i] == 'h') {
            temp.write('H');
          } else {
            temp.write(_template[i]);
          }
          i++;
        } else if (_clock == '12') {
          if (_template[i] == 'k') {
            temp.write('K');
          } else if (_template[i] == 'H') {
            temp.write('h');
          } else {
            temp.write(_template[i]);
          }
          i++;
        } else {
          temp.write(_template[i]);
          i++;
        }
      }
      _template = temp.toString();
    }

    _templateArr = _tokenize(_template);
  }

  void _initDigits(ILibLocaleInfo locInfo) {
    if (_useNative ?? false) {
      _digits = locInfo.getNativeDigits();
    } else if (_useNative == null && locInfo.getDigitsStyle() == 'native') {
      _digits = locInfo.getNativeDigits();
    }
  }

  List<String> _tokenize(String template) {
    final List<String> arr = <String>[];
    int i = 0;

    while (i < template.length) {
      final int start = i;
      final String ch = template[i];

      if (ch == "'") {
        i++;
        while (i < template.length && template[i] != "'") {
          i++;
        }
        if (i < template.length) {
          i++;
        }
      } else if (_isLetter(ch)) {
        final String letter = template[i];
        while (i < template.length && template[i] == letter) {
          i++;
        }
      } else {
        while (i < template.length &&
            template[i] != "'" &&
            !_isLetter(template[i])) {
          i++;
        }
      }
      arr.add(template.substring(start, i));
    }

    return arr;
  }

  static bool _isLetter(String ch) {
    final int code = ch.codeUnitAt(0);
    return (code >= 65 && code <= 90) || (code >= 97 && code <= 122);
  }

  ILibCalendarDate _getCalendarDate(ILibDate date) {
    if (date is ILibCalendarDate) {
      return date;
    }
    final ILibDateOptions opts = date as ILibDateOptions;
    return _createCalendarDate(_calName,
        year: opts.year, month: opts.month, day: opts.day,
        hour: opts.hour, minute: opts.minute, second: opts.second,
        millisecond: opts.millisecond);
  }

  String _formatTemplate(ILibDate date, List<String> templateArr) {
    final StringBuffer str = StringBuffer();
    ILibCalendarDate? calDate;

    for (int i = 0; i < templateArr.length; i++) {
      switch (templateArr[i]) {
        case 'd':
          str.write(date.day ?? 1);
          break;
        case 'dd':
          str.write((date.day ?? 1).toString().padLeft(2, '0'));
          break;
        case 'yy':
          str.write(((date.year ?? 0) % 100).toString().padLeft(2, '0'));
          break;
        case 'yyyy':
          str.write((date.year ?? 0).toString().padLeft(4, '0'));
          break;
        case 'M':
          str.write(date.month ?? 1);
          break;
        case 'MM':
          str.write((date.month ?? 1).toString().padLeft(2, '0'));
          break;
        case 'h':
          int temp = (date.hour ?? 0) % 12;
          if (temp == 0) {
            temp = 12;
          }
          str.write(temp);
          break;
        case 'hh':
          int temp = (date.hour ?? 0) % 12;
          if (temp == 0) {
            temp = 12;
          }
          str.write(temp.toString().padLeft(2, '0'));
          break;
        case 'K':
          str.write((date.hour ?? 0) % 12);
          break;
        case 'KK':
          str.write(((date.hour ?? 0) % 12).toString().padLeft(2, '0'));
          break;
        case 'H':
          str.write(date.hour ?? 0);
          break;
        case 'HH':
          str.write((date.hour ?? 0).toString().padLeft(2, '0'));
          break;
        case 'k':
          str.write((date.hour ?? 0) == 0 ? 24 : date.hour);
          break;
        case 'kk':
          final int kVal = (date.hour ?? 0) == 0 ? 24 : (date.hour ?? 0);
          str.write(kVal.toString().padLeft(2, '0'));
          break;
        case 'm':
          str.write(date.minute ?? 0);
          break;
        case 'mm':
          str.write((date.minute ?? 0).toString().padLeft(2, '0'));
          break;
        case 's':
          str.write(date.second ?? 0);
          break;
        case 'ss':
          str.write((date.second ?? 0).toString().padLeft(2, '0'));
          break;
        case 'S':
          str.write(date.millisecond ?? 0);
          break;
        case 'SSS':
          str.write((date.millisecond ?? 0).toString().padLeft(3, '0'));
          break;
        case 'N':
        case 'NN':
        case 'MMM':
        case 'MMMM':
          final String key = '${templateArr[i]}${date.month ?? 1}';
          str.write(_getSysString(key));
          break;
        case 'L':
        case 'LL':
        case 'LLL':
        case 'LLLL':
          final String lKey = '${templateArr[i]}${date.month ?? 1}';
          String val = _getSysString(lKey);
          if (val.isEmpty) {
            final String mKey =
                '${templateArr[i].replaceAll('L', 'M')}${date.month ?? 1}';
            val = _getSysString(mKey);
          }
          str.write(val);
          break;
        case 'E':
        case 'EE':
        case 'EEE':
        case 'EEEE':
        case 'c':
        case 'cc':
        case 'ccc':
        case 'cccc':
          calDate ??= _getCalendarDate(date);
          final String key = '${templateArr[i]}${calDate.getDayOfWeek()}';
          str.write(_getSysString(key));
          break;
        case 'a':
          str.write(_formatMeridiem(date));
          break;
        case 'B':
          str.write(_findMeridiem(date.hour ?? 0, date.minute ?? 0));
          break;
        case 'G':
          calDate ??= _getCalendarDate(date);
          final String key = 'G${calDate.getEra()}';
          str.write(_getSysString(key));
          break;
        case 'O':
          str.write(_formatOrdinal(date.day ?? 1));
          break;
        case 'w':
          calDate ??= _getCalendarDate(date);
          str.write(calDate.getWeekOfYear());
          break;
        case 'ww':
          calDate ??= _getCalendarDate(date);
          str.write(calDate.getWeekOfYear().toString().padLeft(2, '0'));
          break;
        case 'D':
          calDate ??= _getCalendarDate(date);
          str.write(calDate.getDayOfYear());
          break;
        case 'DD':
          calDate ??= _getCalendarDate(date);
          str.write(calDate.getDayOfYear().toString().padLeft(2, '0'));
          break;
        case 'DDD':
          calDate ??= _getCalendarDate(date);
          str.write(calDate.getDayOfYear().toString().padLeft(3, '0'));
          break;
        case 'W':
          calDate ??= _getCalendarDate(date);
          str.write(calDate.getWeekOfMonth(_locale));
          break;
        case 'z':
          str.write(_getTimezoneDisplay(date, 'standard'));
          break;
        case 'Z':
          str.write(_getTimezoneDisplay(date, 'rfc822'));
          break;
        default:
          str.write(templateArr[i].replaceAll("'", ''));
          break;
      }
    }

    String result = str.toString();
    if (_digits != null) {
      result = _mapDigits(result, _digits!);
    }
    return result;
  }

  String _formatMeridiem(ILibDate date) {
    final int hour = date.hour ?? 0;
    final int minute = date.minute ?? 0;
    String key;

    switch (_meridiems) {
      case 'chinese':
        if (hour < 6) {
          key = 'azh0';
        } else if (hour < 9) {
          key = 'azh1';
        } else if (hour < 12) {
          key = 'azh2';
        } else if (hour < 13) {
          key = 'azh3';
        } else if (hour < 18) {
          key = 'azh4';
        } else if (hour < 21) {
          key = 'azh5';
        } else {
          key = 'azh6';
        }
        break;
      case 'ethiopic':
        if (hour < 6) {
          key = 'a0-ethiopic';
        } else if (hour == 6 && minute == 0) {
          key = 'a1-ethiopic';
        } else if (hour >= 6 && hour < 12) {
          key = 'a2-ethiopic';
        } else if (hour >= 12 && hour < 18) {
          key = 'a3-ethiopic';
        } else {
          key = 'a4-ethiopic';
        }
        break;
      default:
        key = hour < 12 ? 'a0' : 'a1';
        break;
    }

    return _getSysString(key);
  }

  String _findMeridiem(int hours, int minutes) {
    if (_dayPeriods.isEmpty) {
      return '';
    }
    final int minuteOfDay = hours * 60 + minutes;
    String shortestName = '';
    int shortestLength = 2000;

    for (int i = 0; i < _dayPeriods.length; i++) {
      final Map<String, dynamic> period =
          _dayPeriods[i] as Map<String, dynamic>;
      final bool matches;
      if (period.containsKey('at')) {
        matches = minuteOfDay == (period['at'] as int);
      } else {
        final int from = period['from'] as int;
        final int to = period['to'] as int;
        if (from <= to) {
          matches = minuteOfDay >= from && minuteOfDay < to;
        } else {
          matches = minuteOfDay >= from || minuteOfDay < to;
        }
      }

      if (matches) {
        final int length =
            period.containsKey('at') ? 0 : ((period['to'] as int) - (period['from'] as int)).abs();
        if (length < shortestLength) {
          shortestLength = length;
          final String periodCode = 'B$i';
          shortestName = _getSysString(periodCode);
        }
      }
    }

    return shortestName;
  }

  String _formatOrdinal(int day) {
    final String choiceStr = (_sysres['ordinalChoice-$_calName'] as String?) ??
        (_sysres['ordinalChoice'] as String?) ??
        '#{num}th';
    return _parseChoice(choiceStr, day);
  }

  String _parseChoice(String choiceStr, int num) {
    final List<String> choices = choiceStr.split('|');
    String defaultVal = '$num';

    for (final String choice in choices) {
      final int hashIdx = choice.indexOf('#');
      if (hashIdx == -1) {
        continue;
      }
      final String condition = choice.substring(0, hashIdx);
      final String value = choice.substring(hashIdx + 1);

      if (condition.isEmpty) {
        defaultVal = value.replaceAll('{num}', '$num');
      } else {
        final int? condNum = int.tryParse(condition);
        if (condNum != null && condNum == num) {
          return value.replaceAll('{num}', '$num');
        }
      }
    }

    return defaultVal;
  }

  String _getSysString(String key) {
    return (_sysres['$key-$_calName'] as String?) ??
        (_sysres[key] as String?) ??
        '';
  }

  String _getTimezoneDisplay(ILibDate date, String style) {
    if (_timezone == null || _timezone!.isEmpty) {
      return '';
    }
    final ILibTimeZone tz = ILibTimeZone(_timezone!, _zoneInfo);
    return tz.getDisplayName(date, style);
  }

  static String _mapDigits(String str, String digits) {
    final StringBuffer result = StringBuffer();
    for (int i = 0; i < str.length; i++) {
      final int code = str.codeUnitAt(i);
      if (code >= 48 && code <= 57) {
        final int idx = code - 48;
        result.write(digits[idx]);
      } else {
        result.write(str[i]);
      }
    }
    return result.toString();
  }

  static String _mapLength(String length) {
    switch (length) {
      case 'short':
        return 's';
      case 'medium':
        return 'm';
      case 'long':
        return 'l';
      case 'full':
        return 'f';
      default:
        return length;
    }
  }

  static String _normalizeDateComponents(String components) {
    final List<String> chars = components.split('')..sort();
    return chars.join();
  }

  static String _normalizeTimeComponents(String components) {
    final List<String> chars = components.split('')..sort();
    return chars.join();
  }
}

class ILibDateFmtOptions {
  ILibDateFmtOptions(
      {this.locale,
      this.length,
      this.type,
      this.calendar,
      this.timezone,
      this.useNative,
      this.date,
      this.time,
      this.clock,
      this.template,
      this.meridiems});
  String? locale;
  String? length;
  String? type;
  String? calendar;
  String? timezone;
  String? date;
  String? time;
  String? clock;
  String? template;
  String? meridiems;
  bool? useNative;
}

class MeridiemsInfo {
  MeridiemsInfo({this.name, this.start, this.end});
  String? name;
  String? start;
  String? end;
}
