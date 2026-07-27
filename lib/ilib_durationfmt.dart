import 'ilib_date.dart';
import 'ilib_datefmt.dart';
import 'ilib_init.dart';
import 'ilib_localeinfo.dart';
import 'ilib_scriptinfo.dart';
import 'internal/ilib_utils.dart' as ilib_utils;
import 'internal/plural_utils.dart' as plural_utils;

/// Formats a duration (years, months, weeks, days, hours, minutes, seconds,
/// milliseconds) as a localized string.
///
/// Configure with [ILibDurationFmtOptions] and call [format] with an
/// [ILibDateOptions] that carries the duration components. The formatter is
/// immutable once created. Two styles are supported: `'text'` (all units) and
/// `'clock'` (large units as text + small units as a clock time such as
/// `1:23:45`).
class ILibDurationFmt {
  /// Create a formatter from [options]. Unspecified options fall back to the
  /// locale's defaults.
  ILibDurationFmt(ILibDurationFmtOptions options) {
    _locale = options.locale ?? ilib_utils.getLocale();

    _length = 'short';
    if (options.length == 'short' ||
        options.length == 'medium' ||
        options.length == 'long' ||
        options.length == 'full') {
      _length = options.length!;
    }

    _style = 'text';
    if (options.style == 'text' || options.style == 'clock') {
      _style = options.style!;
    }

    _useNative = options.useNative;

    final ILibLocaleInfo locInfo = ILibLocaleInfo(_locale);
    final String script = locInfo.getScript();

    if (_length == 'medium' &&
        script != 'Latn' &&
        script != 'Grek' &&
        script != 'Cyrl') {
      _length = 'short';
    }

    final Map<String, dynamic>? localeData =
        ILibLoader.instance.getLocaleData(_locale);
    final Map<String, dynamic> sysres =
        (localeData?['ilib.data.sysres'] as Map<String, dynamic>?) ??
            <String, dynamic>{};
    _pluralRules =
        (localeData?['ilib.data.plurals'] as Map<String, dynamic>?) ??
            <String, dynamic>{};

    _components = _buildComponents(sysres, _length);

    final ILibScriptInfo scriptInfo = ILibScriptInfo(script);
    _scriptDirection = scriptInfo.getScriptDirection();

    if (_useNative ?? false) {
      _digits = locInfo.getNativeDigits();
    } else if (_useNative == null && locInfo.getDigitsStyle() == 'native') {
      _useNative = true;
      _digits = locInfo.getNativeDigits();
    }

    if (_style == 'clock') {
      _timeFmtMS = _buildClockFmt('ms');
      _timeFmtHM = _buildClockFmt('hm');
      _timeFmtHMS = _buildClockFmt('hms');
    }
  }

  /// Build a time formatter for clock style: create the DateFmt with the
  /// locale-default clock, then munge its rendered template so hours are 24h
  /// no-padding (`hh?` → `H`, first match only). The `ms` formatter is not
  /// munged.
  ILibDateFmt _buildClockFmt(String time) {
    final ILibDateFmt fmt = ILibDateFmt(
      ILibDateFmtOptions(
        locale: _locale,
        calendar: 'gregorian',
        type: 'time',
        time: time,
        useNative: _useNative,
      ),
    );
    if (time == 'ms') {
      return fmt;
    }
    final String munged = fmt.getTemplate().replaceFirst(RegExp('hh?'), 'H');
    return ILibDateFmt(
      ILibDateFmtOptions(
        locale: _locale,
        calendar: 'gregorian',
        type: 'time',
        template: munged,
        useNative: _useNative,
      ),
    );
  }

  /// Component order per style.
  static const Map<String, List<String>> _complist = <String, List<String>>{
    'text': <String>[
      'year',
      'month',
      'week',
      'day',
      'hour',
      'minute',
      'second',
      'millisecond',
    ],
    'clock': <String>['year', 'month', 'week', 'day'],
  };

  late String _locale;
  late String _length;
  late String _style;
  bool? _useNative;
  String? _digits;
  late String _scriptDirection;
  late Map<String, String> _components;
  late Map<String, dynamic> _pluralRules;
  ILibDateFmt? _timeFmtHM;
  ILibDateFmt? _timeFmtHMS;
  ILibDateFmt? _timeFmtMS;

  /// Build the per-unit template map for [length]. Keys are the unit names
  /// plus `separator` and `finalSeparator`.
  Map<String, String> _buildComponents(
    Map<String, dynamic> sysres,
    String length,
  ) {
    // Resolve a sysres string: prefer the named key, else the source string.
    String getString(String str, [String? key]) {
      if (key != null) {
        final dynamic v = sysres[key];
        if (v is String) {
          return v;
        }
      }
      final dynamic v = sysres[str];
      if (v is String) {
        return v;
      }
      return str;
    }

    switch (length) {
      case 'short':
        return <String, String>{
          'year': getString('#{num}y'),
          'month': getString('#{num}m', 'durationShortMonths'),
          'week': getString('#{num}w'),
          'day': getString('#{num}d'),
          'hour': getString('#{num}h'),
          'minute': getString('#{num}m', 'durationShortMinutes'),
          'second': getString('#{num}s'),
          'millisecond': getString('#{num}m', 'durationShortMillis'),
          'separator': getString(' ', 'separatorShort'),
          'finalSeparator': '', // not used at this length
        };
      case 'medium':
        return <String, String>{
          'year': getString('1#1 yr|#{num} yrs', 'durationMediumYears'),
          'month': getString('1#1 mo|#{num} mos'),
          'week': getString('1#1 wk|#{num} wks', 'durationMediumWeeks'),
          'day': getString('1#1 dy|#{num} dys'),
          'hour': getString('1#1 hr|#{num} hrs', 'durationMediumHours'),
          'minute': getString('1#1 mi|#{num} min'),
          'second': getString('1#1 se|#{num} sec'),
          'millisecond': getString('#{num} ms', 'durationMediumMillis'),
          'separator': getString(' ', 'separatorMedium'),
          'finalSeparator': '', // not used at this length
        };
      case 'long':
        return <String, String>{
          'year': getString('1#1 yr|#{num} yrs'),
          'month': getString('1#1 mon|#{num} mons'),
          'week': getString('1#1 wk|#{num} wks'),
          'day': getString('1#1 day|#{num} days', 'durationLongDays'),
          'hour': getString('1#1 hr|#{num} hrs'),
          'minute': getString('1#1 min|#{num} min'),
          'second': getString('1#1 sec|#{num} sec'),
          'millisecond': getString('#{num} ms'),
          'separator': getString(', ', 'separatorLong'),
          'finalSeparator': '', // not used at this length
        };
      case 'full':
      default:
        return <String, String>{
          'year': getString('1#1 year|#{num} years'),
          'month': getString('1#1 month|#{num} months'),
          'week': getString('1#1 week|#{num} weeks'),
          'day': getString('1#1 day|#{num} days'),
          'hour': getString('1#1 hour|#{num} hours'),
          'minute': getString('1#1 minute|#{num} minutes'),
          'second': getString('1#1 second|#{num} seconds'),
          'millisecond': getString('1#1 millisecond|#{num} milliseconds'),
          'separator': getString(', ', 'separatorFull'),
          'finalSeparator': getString(' and ', 'finalSeparatorFull'),
        };
    }
  }

  String _mapDigits(num n) {
    final String s = n.toString();
    if ((_useNative ?? false) && _digits != null && _digits!.length >= 10) {
      final StringBuffer buf = StringBuffer();
      for (final int cp in s.runes) {
        final int digit = cp - 0x30;
        if (digit >= 0 && digit <= 9) {
          buf.write(_digits![digit]);
        } else {
          buf.writeCharCode(cp);
        }
      }
      return buf.toString();
    }
    return s;
  }

  String _formatChoice(String template, num n, String numStr) {
    if (template.isEmpty) {
      return '';
    }

    final String pluralCls = plural_utils.getPluralCategory(_pluralRules, n);
    final List<String> choices = template.split('|');
    String defaultCase = '';
    String? pluralMatch;

    for (final String choice in choices) {
      final int hashIdx = choice.indexOf('#');
      if (hashIdx < 0) {
        continue;
      }
      final String limit = choice.substring(0, hashIdx);
      final String str = choice.substring(hashIdx + 1);

      if (limit.isEmpty || limit == 'other') {
        defaultCase = str;
        continue;
      }

      // Check exact numeric match first
      final num? exact = num.tryParse(limit);
      if (exact != null) {
        if (n == exact) {
          return str.replaceAll('{num}', numStr);
        }
        continue;
      }

      // Range match (e.g. "2-4")
      final int dashIdx = limit.indexOf('-');
      if (dashIdx > 0) {
        final int? start = int.tryParse(limit.substring(0, dashIdx));
        final int? end = int.tryParse(limit.substring(dashIdx + 1));
        if (start != null && end != null && n >= start && n <= end) {
          return str.replaceAll('{num}', numStr);
        }
        continue;
      }

      // CLDR plural class match
      if (limit == pluralCls) {
        pluralMatch = str;
      }
    }

    if (pluralMatch != null) {
      return pluralMatch.replaceAll('{num}', numStr);
    }
    return defaultCase.replaceAll('{num}', numStr);
  }

  /// Format a duration according to this formatter's style/length.
  ///
  /// Iterate the style's component list from smallest to largest, skip
  /// undefined/zero fields, join with the separator (finalSeparator before the
  /// last field at `full` length), then append the clock time and prepend the
  /// RTL marker when needed.
  String format(ILibDateOptions components) {
    final List<String> list = _complist[_style]!;

    // Field values indexed by component name.
    final Map<String, num?> vals = <String, num?>{
      'year': components.year,
      'month': components.month,
      'week': components.week,
      'day': components.day,
      'hour': components.hour,
      'minute': components.minute,
      'second': components.second,
      'millisecond': components.millisecond,
    };

    String str = '';
    bool secondlast = true;

    for (int i = list.length - 1; i >= 0; i--) {
      final num? value = vals[list[i]];
      if (value != null && value != 0) {
        if (str.isNotEmpty) {
          str = ((_length == 'full' && secondlast)
                  ? _components['finalSeparator']!
                  : _components['separator']!) +
              str;
          secondlast = false;
        }
        str = _formatChoice(_components[list[i]]!, value, _mapDigits(value)) +
            str;
      }
    }

    if (_style == 'clock') {
      final ILibDateFmt? fmt;
      if (components.hour != null) {
        fmt = (components.second != null) ? _timeFmtHMS : _timeFmtHM;
      } else {
        fmt = _timeFmtMS;
      }
      if (fmt != null) {
        if (str.isNotEmpty) {
          str += _components['separator']!;
        }
        str += fmt.format(
          ILibDateOptions(
            hour: components.hour ?? 0,
            minute: components.minute ?? 0,
            second: components.second ?? 0,
          ),
        );
      }
    }

    if (_scriptDirection == 'rtl') {
      str = '\u200F$str';
    }
    return str;
  }

  /// The BCP-47 locale this formatter was configured with.
  String getLocale() => _locale;

  /// The length setting (`'short'`, `'medium'`, `'long'`, or `'full'`).
  String getLength() => _length;

  /// The style setting (`'text'` or `'clock'`).
  String getStyle() => _style;
}

/// Options that configure an [ILibDurationFmt]. Unspecified options fall back
/// to the locale's defaults.
class ILibDurationFmtOptions {
  ILibDurationFmtOptions({
    this.locale,
    this.length,
    this.style,
    this.useNative,
  });

  /// BCP-47 locale string (e.g. `'en-US'`). Defaults to system locale.
  String? locale;

  /// `'short'`, `'medium'`, `'long'`, or `'full'`. Defaults to `'short'`.
  String? length;

  /// `'text'` or `'clock'`. Defaults to `'text'`.
  String? style;

  /// Whether to use native script digits. Defaults to locale setting.
  bool? useNative;
}
