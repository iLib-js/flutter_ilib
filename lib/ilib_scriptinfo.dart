import 'dart:convert';
import 'dart:io';

// not evaluate the js code, but load the data from json file directly

class ILibScriptInfo {
  ILibScriptInfo(this.script) {
    if (scripts == null) {
      _loadScripts();
    }
    info = script != null && scripts != null
        ? scripts![script] as Map<String, dynamic>?
        : null;
  }
  final String? script;
  static Map<String, dynamic>? scripts;
  Map<String, dynamic>? info;

  /// Load the scripts.json data
  void _loadScripts() {
    try {
      // Assuming scripts.json is in the same directory as the script
      final File file = File('assets/json/scripts.json');
      final String jsonData = file.readAsStringSync();
      scripts = jsonDecode(jsonData) as Map<String, dynamic>;
    } catch (e) {
      // Fallback to default data if scripts.json is not found
      scripts = <String, dynamic>{
        'Latn': <String, Object>{
          'nb': 215,
          'nm': 'Latin',
          'lid': 'Latin',
          'rtl': false,
          'ime': false,
          'casing': true
        }
      };
    }
  }

  /// Return the 4-letter ISO 15924 identifier associated with this script.
  String? getCode() {
    return (info != null) ? script : null;
  }

  /// Get the ISO 15924 code number associated with this script
  int getCodeNumber() {
    if (info != null && info!.containsKey('nb')) {
      return info!['nb'] as int;
    }
    return 0;
  }

  /// Get the name of this script in English
  String? getName() {
    if (info != null && info!.containsKey('nm')) {
      return info!['nm'] as String;
    }
    return null;
  }

  /// Get the long identifier associated with this script
  String? getLongCode() {
    if (info != null && info!.containsKey('lid')) {
      return info!['lid'] as String;
    }
    return null;
  }

  /// Return the usual direction that text in this script is written in
  String getScriptDirection() {
    if (info != null && info!.containsKey('rtl')) {
      return (info!['rtl'] as bool) ? 'rtl' : 'ltr';
    }
    return 'ltr';
  }

  /// Return true if this script typically requires an input method engine
  bool getNeedsIME() {
    if (info != null && info!.containsKey('ime')) {
      return info!['ime'] as bool;
    }
    return false;
  }

  /// Return true if this script uses lower- and upper-case characters
  bool getCasing() {
    if (info != null && info!.containsKey('casing')) {
      return info!['casing'] as bool;
    }
    return false;
  }
}
