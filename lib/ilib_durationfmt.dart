import 'ilib_date.dart';
import 'ilib_datefmt.dart';
import 'ilib_init.dart';
import 'ilib_localeinfo.dart';
import 'internal/ilib_plural.dart';
import 'internal/ilib_utils.dart' as ilib_utils;

/// RTL script codes (hardcoded to avoid requiring ScriptInfo conversion).
const Set<String> _rtlScripts = <String>{
  'Arab',
  'Hebr',
  'Thaa',
  'Mand',
  'Syrc',
  'Samr',
  'Nkoo',
  'Tfng',
  'Adlm',
};

class ILibDurationFmt {
  /// [options] Set the Options for formatting
  ILibDurationFmt(ILibDurationFmtOptions options) {
    _locale = options.locale ?? ilib_utils.getLocale();
    _length = _validLength(options.length);
    _style = _validStyle(options.style);
    _useNative = options.useNative;

    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);
    _script = locInfo.getScript();

    final Map<String, dynamic>? localeData = ILibLoader.instance.getLocaleData(_locale);
    _sysres = (localeData?['ilib.data.sysres'] as Map<String, dynamic>?) ?? <String, dynamic>{};
    _pluralRules =
        (localeData?['ilib.data.plurals'] as Map<String, dynamic>?) ?? <String, dynamic>{};

    // Medium → short for non-Latin/Greek/Cyrillic scripts
    if (_length == 'medium' && _script != 'Latn' && _script != 'Grek' && _script != 'Cyrl') {
      _length = 'short';
    }

    _loadComponents();

    if (_style == 'clock') {
      _initClockFormats(locInfo);
    }

    _initDigits(locInfo);
  }

  late String _locale;
  late String _length;
  late String _style;
  bool? _useNative;
  late String _script;
  late Map<String, dynamic> _sysres;
  late Map<String, dynamic> _pluralRules;
  late Map<String, String> _components;
  String? _digits;
  late String _scriptDirection;

  // Clock-style time formatters
  late ILibDateFmt? _timeFmtMS;
  late ILibDateFmt? _timeFmtHM;
  late ILibDateFmt? _timeFmtHMS;

  static String _validLength(String? length) {
    if (length == 'short' || length == 'medium' || length == 'long' || length == 'full') {
      return length!;
    }
    return 'short';
  }

  static String _validStyle(String? style) {
    if (style == 'text' || style == 'clock') {
      return style!;
    }
    return 'text';
  }

  /// ResBundle.getString(source, key) equivalent:
  /// If key is provided, lookup by key first; if not found, use source as key.
  /// Returns the resolved template string.
  String _getString(String source, [String? key]) {
    final String lookupKey = key ?? source;
    final dynamic val = _sysres[lookupKey];
    if (val is String) {
      return val;
    }
    // If key lookup failed, try source as key
    if (key != null) {
      final dynamic valBySource = _sysres[source];
      if (valBySource is String) {
        return valBySource;
      }
    }
    return source;
  }

  void _loadComponents() {
    switch (_length) {
      case 'short':
        _components = <String, String>{
          'year': _getString('#{num}y'),
          'month': _getString('#{num}m', 'durationShortMonths'),
          'week': _getString('#{num}w'),
          'day': _getString('#{num}d'),
          'hour': _getString('#{num}h'),
          'minute': _getString('#{num}m', 'durationShortMinutes'),
          'second': _getString('#{num}s'),
          'millisecond': _getString('#{num}m', 'durationShortMillis'),
          'separator': _getString(' ', 'separatorShort'),
          'finalSeparator': _getString(' ', 'finalSeparatorShort'),
        };
        break;
      case 'medium':
        _components = <String, String>{
          'year': _getString('1#1 yr|#{num} yrs', 'durationMediumYears'),
          'month': _getString('1#1 mo|#{num} mos'),
          'week': _getString('1#1 wk|#{num} wks', 'durationMediumWeeks'),
          'day': _getString('1#1 dy|#{num} dys'),
          'hour': _getString('1#1 hr|#{num} hrs', 'durationMediumHours'),
          'minute': _getString('1#1 mi|#{num} min'),
          'second': _getString('1#1 se|#{num} sec'),
          'millisecond': _getString('#{num} ms', 'durationMediumMillis'),
          'separator': _getString(' ', 'separatorMedium'),
          'finalSeparator': _getString(' ', 'finalSeparatorMedium'),
        };
        break;
      case 'long':
        _components = <String, String>{
          'year': _getString('1#1 yr|#{num} yrs'),
          'month': _getString('1#1 mon|#{num} mons'),
          'week': _getString('1#1 wk|#{num} wks'),
          'day': _getString('1#1 day|#{num} days', 'durationLongDays'),
          'hour': _getString('1#1 hr|#{num} hrs'),
          'minute': _getString('1#1 min|#{num} min'),
          'second': _getString('1#1 sec|#{num} sec'),
          'millisecond': _getString('#{num} ms'),
          'separator': _getString(', ', 'separatorLong'),
          'finalSeparator': _getString(', ', 'finalSeparatorLong'),
        };
        break;
      case 'full':
        _components = <String, String>{
          'year': _getString('1#1 year|#{num} years'),
          'month': _getString('1#1 month|#{num} months'),
          'week': _getString('1#1 week|#{num} weeks'),
          'day': _getString('1#1 day|#{num} days'),
          'hour': _getString('1#1 hour|#{num} hours'),
          'minute': _getString('1#1 minute|#{num} minutes'),
          'second': _getString('1#1 second|#{num} seconds'),
          'millisecond': _getString('1#1 millisecond|#{num} milliseconds'),
          'separator': _getString(', ', 'separatorFull'),
          'finalSeparator': _getString(' and ', 'finalSeparatorFull'),
        };
        break;
    }
  }

  void _initClockFormats(ILibLocaleInfo locInfo) {
    _timeFmtMS = ILibDateFmt(ILibDateFmtOptions(
      locale: _locale,
      calendar: 'gregorian',
      type: 'time',
      time: 'ms',
      useNative: _useNative,
    ));
    _timeFmtHM = ILibDateFmt(ILibDateFmtOptions(
      locale: _locale,
      calendar: 'gregorian',
      type: 'time',
      time: 'hm',
      useNative: _useNative,
    ));
    _timeFmtHMS = ILibDateFmt(ILibDateFmtOptions(
      locale: _locale,
      calendar: 'gregorian',
      type: 'time',
      time: 'hms',
      useNative: _useNative,
    ));

    // Munge templates to force unpadded 24-hour format (H instead of hh/h)
    _timeFmtHM!.mungeTemplate(RegExp(r'hh?'), 'H');
    _timeFmtHMS!.mungeTemplate(RegExp(r'hh?'), 'H');
  }

  void _initDigits(ILibLocaleInfo locInfo) {
    _scriptDirection = _rtlScripts.contains(_script) ? 'rtl' : 'ltr';

    if (_useNative ?? false) {
      _digits = locInfo.getNativeDigits();
    } else if (_useNative == null && locInfo.getDigitsStyle() == 'native') {
      _useNative = true;
      _digits = locInfo.getNativeDigits();
    }
  }

  String _mapDigits(String str) {
    if ((_useNative ?? false) && _digits != null) {
      final StringBuffer result = StringBuffer();
      for (int i = 0; i < str.length; i++) {
        final int code = str.codeUnitAt(i);
        if (code >= 48 && code <= 57) {
          result.write(_digits![code - 48]);
        } else {
          result.write(str[i]);
        }
      }
      return result.toString();
    }
    return str;
  }

  /// Format a duration according to the format template of this formatter instance.
  ///
  /// The [duration] parameter should have any combination of:
  /// year, month, week, day, hour, minute, second, millisecond.
  String format(ILibDateOptions duration) {
    String str = '';
    bool secondlast = true;

    final List<String> list = _style == 'clock'
        ? <String>['year', 'month', 'week', 'day']
        : <String>['year', 'month', 'week', 'day', 'hour', 'minute', 'second', 'millisecond'];

    // Iterate from last to first (reverse)
    for (int i = list.length - 1; i >= 0; i--) {
      final int? value = _getComponent(duration, list[i]);
      if (value != null && value != 0) {
        if (str.isNotEmpty) {
          str = ((_length == 'full' && secondlast)
                  ? _components['finalSeparator']!
                  : _components['separator']!) +
              str;
          secondlast = false;
        }
        final String template = _components[list[i]]!;
        final String displayNum = _mapDigits(value.toString());
        str = formatChoice(template, value, displayNum, _pluralRules) + str;
      }
    }

    if (_style == 'clock') {
      final ILibDateFmt fmt;
      if (duration.hour != null && duration.hour != 0) {
        fmt = (duration.second != null && duration.second != 0) ? _timeFmtHMS! : _timeFmtHM!;
      } else {
        fmt = _timeFmtMS!;
      }

      if (str.isNotEmpty) {
        str += _components['separator']!;
      }
      str += fmt.formatDuration(duration);
    }

    if (_scriptDirection == 'rtl') {
      str = '\u200F$str';
    }
    return str;
  }

  int? _getComponent(ILibDateOptions opts, String component) {
    switch (component) {
      case 'year':
        return opts.year;
      case 'month':
        return opts.month;
      case 'week':
        return opts.week;
      case 'day':
        return opts.day;
      case 'hour':
        return opts.hour;
      case 'minute':
        return opts.minute;
      case 'second':
        return opts.second;
      case 'millisecond':
        return opts.millisecond;
    }
    return null;
  }

  /// Return the locale that was used to construct this duration formatter object.
  /// If the locale was not given as parameter to the constructor, this method
  /// returns the default locale of the system.
  String getLocale() {
    return _locale;
  }

  /// Return the length that was used to construct this duration formatter object.
  /// Valid values are "short", "medium", "long", and "full".
  String getLength() {
    return _length;
  }

  /// Return the style that was used to construct this duration formatter object.
  /// Returns one of "text" or "clock".
  String getStyle() {
    return _style;
  }
}

class ILibDurationFmtOptions {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention.
  /// [length] Specifies the length of the format to use. Valid values are "short", "medium", "long" and "full".
  /// [style] whether hours, minutes, and seconds should be formatted as a text string or as a regular time as on a clock.
  /// [useNative] The flag used to determine whether to use the native script settings for formatting the numbers.
  ILibDurationFmtOptions({
    this.locale,
    this.length,
    this.style,
    this.useNative,
  });
  String? locale;
  String? length;
  String? style;
  bool? useNative;
}
