import 'ilib_init.dart';

/// Information about scripts, based on the ISO 15924 registry.
///
/// The script metadata is locale-independent (it lives in `root.json` only,
/// under the `ilib.data.scripts` key). Each entry maps a 4-letter script code
/// to its number (`nb`), English name (`nm`), long identifier (`lid`), and the
/// `rtl`/`ime`/`casing` flags.
class ILibScriptInfo {
  /// [script] The ISO 15924 4-letter identifier for the script. Required; pass
  /// an empty string `''` for a no-info instance, where `_info` is null and all
  /// getters return their defaults.
  ILibScriptInfo(this.script) {
    final Map<String, dynamic>? rootData = ILibLoader.instance.getRootData();
    final Map<String, dynamic>? scripts =
        rootData?['ilib.data.scripts'] as Map<String, dynamic>?;
    _info = scripts?[script] as Map<String, dynamic>?;
  }

  /// The ISO 15924 4-letter script code this instance was created with.
  String? script;

  /// Metadata for [script], or null if the script code is unknown.
  Map<String, dynamic>? _info;

  /// Return an array of all ISO 15924 4-letter script identifiers that this
  /// copy of ilib knows about, in the order they appear in the data.
  static List<String> getAllScripts() {
    final Map<String, dynamic>? rootData = ILibLoader.instance.getRootData();
    final Map<String, dynamic>? scripts =
        rootData?['ilib.data.scripts'] as Map<String, dynamic>?;
    final List<String> result = <String>[];
    if (scripts != null) {
      for (final MapEntry<String, dynamic> entry in scripts.entries) {
        if (entry.key.isNotEmpty && entry.value != null) {
          result.add(entry.key);
        }
      }
    }
    return result;
  }

  /// Return the 4-letter ISO 15924 identifier associated with this script.
  String? getCode() {
    return _info == null ? null : script;
  }

  /// Get the ISO 15924 code number associated with this script.
  int? getCodeNumber() {
    return (_info?['nb'] as num?)?.toInt() ?? 0;
  }

  /// Get the name of this script in English.
  String? getName() {
    return _info?['nm'] as String?;
  }

  /// Get the long identifier associated with this script.
  String? getLongCode() {
    return _info?['lid'] as String?;
  }

  /// Return the usual direction that text in this script is written in.<br>
  /// Possible return values are "rtl" for right-to-left,<br>
  /// "ltr" for left-to-right, and "ttb" for top-to-bottom.
  String getScriptDirection() {
    return (_info?['rtl'] as bool?) ?? false ? 'rtl' : 'ltr';
  }

  /// Return true if this script typically requires an input method engine
  /// to enter its characters.
  bool getNeedsIME() {
    return (_info?['ime'] as bool?) ?? false;
  }

  /// Return true if this script uses lower- and upper-case characters.
  bool getCasing() {
    return (_info?['casing'] as bool?) ?? false;
  }
}
