import 'dart:convert';
import 'ilib_date.dart';
import 'ilib_init.dart';

class ILibDateFmt {
  /// [options] Set the Options for formatting
  ILibDateFmt(ILibDateFmtOptions options) {
    locale = options.locale;
    type = options.type;
    length = options.length;
    date = options.date;
    time = options.time;
    calendar = options.calendar;
    timezone = options.timezone;
    clock = options.clock;
    template = options.template;
    meridiems = options.meridiems;
    useNative = options.useNative;

    //ILibJS.instance.loadILibLocaleData(locale);
  }

  String? locale;
  String? type;
  String? length;
  String? timezone;
  String? calendar;
  String? date;
  String? time;
  String? clock;
  String? template;
  String? meridiems;
  bool? useNative;

  /// A string representation of parameters to call functions of iLib library properly
  String toJsonString() {
    String result = '';
    String completeOption = '';

    final Map<String, String> paramInfo = <String, String>{
      'locale': '$locale',
      'type': '$type',
      'length': '$length',
      'date': '$date',
      'time': '$time',
      'calendar': '$calendar',
      'timezone': '$timezone',
      'clock': '$clock',
      'template': '$template',
      'meridiems': '$meridiems',
    };
    paramInfo.forEach((String key, String value) {
      if (value != 'null') {
        result += '$key:"$value",';
      }
    });

    if (useNative != null) {
      result += 'useNative:$useNative,';
    }

    result =
        result.isNotEmpty ? result.substring(0, result.length - 1) : result;
    completeOption = '{$result}';

    return completeOption;
  }

  /// Formats a particular date instance according to the settings of this formatter object
  String format(ILibDateOptions date) {
    String result = '';
    final String formatOptions = toJsonString();
    final String dateOptions = date.toJsonString();
    result = ILibJS.instance
        .evaluate(
            'new DateFmt($formatOptions).format(DateFactory($dateOptions))')
        .stringResult;
    return result;
  }

  /// Returns the default clock from the locale is returned instead.
  /// "12" or "24" depending on whether this formatter uses the 12-hour or 24-hour clock
  int getClock() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DateFmt($formatOptions).getClock()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return int.parse(result);
  }

  /// Return the template string that is used to format date/times for this formatter instance
  String getTemplate() {
    String result = '';
    final String formatOptions = toJsonString();
    final String jscode1 = 'new DateFmt($formatOptions).getTemplate()';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    return result;
  }

  /// Return the range of possible meridiems (times of day like "AM" or "PM") in this date formatter.
  List<MeridiemsInfo> getMeridiemsRange() {
    String result = '';
    final String formatOptions = toJsonString();
    final List<MeridiemsInfo> meridems = [];
    final String jscode1 =
        'JSON.stringify(new DateFmt($formatOptions).getMeridiemsRange())';
    result = ILibJS.instance.evaluate(jscode1).stringResult;
    final dynamic meridiemlist = json.decode(result);

    meridiemlist.forEach((dynamic item) {
      meridems.add(MeridiemsInfo(
          name: item['name'].toString(),
          start: item['start'].toString(),
          end: item['end'].toString()));
    });

    return meridems;
  }
}

class ILibDateFmtOptions {
  /// [locale] Locales are specified either with a specifier string that follows the BCP-47 convention,
  /// [length] Specifies the length of the format to use.Valid values are "short", "medium", "long" and "full".
  /// [type] Specifies whether this formatter should format times only, dates only, or both times and dates together. Valid values are "time", "date", and "datetime".
  /// [calendar] The type of calendar to use for this format.
  /// [timezone] Time zone to use when formatting times.
  /// [useNative] The flag used to determine whether to use the native script settings for formatting the numbers.
  /// [date] This property tells which components of a date format to use. Valid values are: "dmwy", "dmy", "dmw", "dm", "my", "dw", "d", "m","n","y". Default components, if this property is not specified, is "dmy".
  /// [time] This property gives which components of a time format to use. Valid values for this property are: "ahmsz", "ahms", "hmsz", "hms", "ahmz", "ahm", hmz", ah", "hm", "ms", "h", "m", "s". Default value if this property is not specified is "hma".
  /// [clock] Hour format. Valid values: "12", "24".
  /// [template] Custom date/time format string.
  /// [meridiems] string that specifies what style of meridiems to use with this format. The choices are "default", "gregorian", "ethiopic", and "chinese".
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
  /// [name] The name of the meridiem
  /// [start] The startTime of meridiem
  /// [end] The endTime of meridiem
  MeridiemsInfo({this.name, this.start, this.end});
  String? name;
  String? start;
  String? end;
}
