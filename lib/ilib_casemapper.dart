import 'flutter_ilib.dart';

/// A class that maps a string to upper or lower case in a locale-sensitive manner.
class ILibCaseMapper {
  ILibCaseMapper({String? locale, String? direction})
      : up = direction == null || direction == 'toupper',
        locale = locale != null ? ILibLocale(locale) : ILibLocale() {
    if (up) {
      mapData = <String, String>{
        'ß': 'SS', // German
        'ΐ': 'Ι', // Greek
        'ά': 'Α',
        'έ': 'Ε',
        'ή': 'Η',
        'ί': 'Ι',
        'ΰ': 'Υ',
        'ϊ': 'Ι',
        'ϋ': 'Υ',
        'ό': 'Ο',
        'ύ': 'Υ',
        'ώ': 'Ω',
        'Ӏ': 'Ӏ', // Russian and slavic languages
        'ӏ': 'Ӏ'
      };
    } else {
      mapData = <String, String>{
        'Ӏ': 'Ӏ' // Russian and slavic languages
      };
    }

    const Set<String> specialLanguages = <String>{
      'az',
      'tr',
      'crh',
      'kk',
      'krc',
      'tt'
    };
    if (specialLanguages.contains(this.locale.getLanguage())) {
      _setUpMap('iı', 'İI');
    }
  }
  bool up;
  ILibLocale locale;
  Map<String, String> mapData = <String, String>{};

  String _handleGreekSigma(String string, int i) {
    if (i < string.length) {
      final String nextChar = string[i];
      final int code = nextChar.codeUnitAt(0);
      // If the next char is not a Greek letter, this is the end of the word,
      // so use the final form of sigma. Otherwise, use the mid-word form.
      final bool isNotGreek =
          (code < 0x0388 && code != 0x0386) || code > 0x03CE;
      return (isNotGreek ? 'ς' : 'σ') + nextChar.toLowerCase();
    } else {
      // No next char means this is the end of the word,
      // so use the final form of sigma.
      return 'ς';
    }
  }

  String? _charMapper(String? string) {
    if (string == null || string.isEmpty) {
      return string;
    }

    final StringBuffer buffer = StringBuffer();
    int i = 0;
    final int len = string.length;

    while (i < len) {
      final String c = string[i];
      i++;

      if (!up && c == 'Σ') {
        buffer.write(_handleGreekSigma(string, i));
        if (i < len) {
          i++;
        }
      } else {
        buffer.write(mapData[c] ?? (up ? c.toUpperCase() : c.toLowerCase()));
      }
    }

    return buffer.toString();
  }

  void _setUpMap(String lower, String upper) {
    for (int i = 0; i < lower.length; i++) {
      if (up) {
        mapData[lower[i]] = upper[i];
      } else {
        mapData[upper[i]] = lower[i];
      }
    }
  }

  /// Return the locale that this mapper was constructed with.
  ILibLocale getLocale() {
    return locale;
  }

  /// Map a string to lower case in a locale-sensitive manner.
  String? map(String? string) {
    return _charMapper(string);
  }
}
