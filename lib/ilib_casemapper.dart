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

    switch (this.locale.getLanguage()) {
      case 'az':
      case 'tr':
      case 'crh':
      case 'kk':
      case 'krc':
      case 'tt':
        _setUpMap('iı', 'İI');
        break;
    }
  }
  bool up;
  ILibLocale locale;
  Map<String, String> mapData = <String, String>{};

  String? _charMapper(String? string) {
    if (string == null || string.isEmpty) {
      return string;
    }

    final StringBuffer buffer = StringBuffer();
    int i = 0;
    final int len = string.length;

    while (i < len) {
      String c = string[i];
      i++;

      if (!up && c == 'Σ') {
        if (i < len) {
          String nextChar = string[i];
          i++;

          int code = nextChar.codeUnitAt(0);

          // if the next char is not a greek letter, this is the end of the word so use the
          // final form of sigma. Otherwise, use the mid-word form.
          bool isNotGreek = (code < 0x0388 && code != 0x0386) || code > 0x03CE;
          buffer.write(isNotGreek ? 'ς' : 'σ');

          buffer.write(nextChar.toLowerCase());
        } else {
          // no next char means this is the end of the word, so use the final form of sigma
          buffer.write('ς');
        }
      } else {
        if (mapData.containsKey(c)) {
          buffer.write(mapData[c]);
        } else {
          buffer.write(up ? c.toUpperCase() : c.toLowerCase());
        }
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
