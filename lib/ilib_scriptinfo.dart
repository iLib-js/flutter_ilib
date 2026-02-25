import 'flutter_ilib.dart';
import 'ilib_init.dart';

class ILibScriptInfo {
  /// [script] The ISO 15924 4-letter identifier for the script
  ILibScriptInfo(String this.script);
  String? script;

  /// Return the 4-letter ISO 15924 identifier associated with this script.
  String? getCode() {
    final String jscode1 = 'new ScriptInfo("$script").getCode()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Get the ISO 15924 code number associated with this script.
  int? getCodeNumber() {
    final String jscode1 = 'new ScriptInfo("$script").getCodeNumber()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return 0;
    }
    return int.tryParse(result);
  }

  /// Get the name of this script in English.
  String? getName() {
    final String jscode1 = 'new ScriptInfo("$script").getName()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Get the long identifier associated with this script.
  String? getLongCode() {
    final String jscode1 = 'new ScriptInfo("$script").getLongCode()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    if (result == null || result.isEmpty || result == 'null') {
      return null;
    }
    return result;
  }

  /// Return the usual direction that text in this script is written in.<br>
  /// Possible return values are "rtl" for right-to-left,<br>
  /// "ltr" for left-to-right, and "ttb" for top-to-bottom.
  String getScriptDirection() {
    final String jscode1 = 'new ScriptInfo("$script").getScriptDirection()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return true if this script typically requires an input method engine
  /// to enter its characters.
  bool getNeedsIME() {
    final String jscode1 = 'new ScriptInfo("$script").getNeedsIME()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result.toLowerCase() == 'true';
  }

  /// Return true if this script uses lower- and upper-case characters.
  bool getCasing() {
    final String jscode1 = 'new ScriptInfo("$script").getCasing()';
    final String result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result.toLowerCase() == 'true';
  }
}
