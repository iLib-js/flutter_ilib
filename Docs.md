# Date
## ILibDateOptions

### Properties

|name|description|
|------|---|
|_\<String?>_ locale | Locales are specified either with a specifier string that follows the BCP-47 convention, <br>(roughly: "language-script-region").|
|_\<int?>_ year | The year|
|_\<int?>_ month | The month|
|_\<int?>_ week | The week|
|_\<int?>_ day | The day of the month|
|_\<int?>_ hour | The hour of the day|
|_\<int?>_ minute | The minute [0..59]|
|_\<int?>_ second | The second [0..59]|
|_\<int?>_ millisecond | The millisecond [0..999]|
|_\<int?>_ unixtime | Sets the time of this instance according to the given unix time.<br>Unix time is the number of milliseconds since midnight on Jan 1, 1970.|
|_\<String?>_ timezone | Time zone name as a string|
|_\<String?>_ type | Specifies the type/calendar of the date desired. <br>The list of valid values changes depending on which calendars are defined. i.e. "gregorian", "ethiopic", "thaisolar", "persian" etc. <br> This property may also be given as "calendar" instead of "type".|
|_\<String?>_ calendar | Same as "type" property |
|_\<DateTime?>_ dateTime |[DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html) class of flutter|

 ### Constructors
```dart
ILibDateOptions (String? locale, int? year, int? month, int? week, int? day, int? hour, int? minute, int? second, int? millisecond, int? unixtime, String? type, String? calendar, DateTime? dateTime)
```

 ### Methods
|name|description|
|------|---|
|_String_ toJsonString() | A string representation of parameters to call functions of iLib library properly|


# Date Formatting
## ILibDateFmtOptions

### Properties
|name|description|
|------|---|
|_\<String?>_ locale| Locale to use when formatting the date/time |
|_\<String?>_ type| Specifies whether this formatter should format times only, dates only, or both times and dates together. Valid values are "time", "date", and "datetime". <br> Note that in some locales, the standard format uses the order "time followed by date" and in others, the order is exactly opposite,<br> so it is better to create a single "datetime" formatter than it is to create a time formatter and a date formatter separately and concatenate the results. <br> A "datetime" formatter will get the order correct for the locale.<br> The default type if none is specified in with the type option is "date".|
|_\<String?>_ length| Specifies the length of the format to use. The length is the approximate size of the formatted string. <br> - "short": use a short representation of the time. This is the most compact format possible for the locale."<br> - "medium": use a medium length representation of the time. This is a slightly longer format. <br> - "long": use a long representation of the time. This is a fully specified format, but some of the textual components may still be abbreviated <br> - "full": use a full representation of the time. This is a fully specified format where all the textual components are spelled out completely <br><br> Note that the length parameter does not specify which components are to be formatted. Use the "date" and the "time" properties to specify the components.<br> Also, very few of the components of a time format differ according to the length, so this property has little to no effect on time formatting.|
|_\<String?>_ timezone| Time zone to use when formatting times. <br>This may be a time zone instance or a time zone specifier from the IANA list of time zone database names (eg. "America/Los_Angeles"), <br>the string "local", or a string specifying the offset in RFC 822 format. |
|_\<String?>_ calendar|The type of calendar to use for this format. <br> The value should be a string containing the name of the calendar. <br> the supported types are "gregorian", "julian", "persian", "ethiopic", "thaisolar", "arabic", "hebrew", or "chinese". <br> If the calendar is not specified, then the default calendar for the locale is used.|
|_\<String?>_ date| This property tells which components of a date format to use. <br> For example, sometimes you may wish to format a date that only contains the month and date without the year, such as when displaying a person's yearly birthday. <br>The value of this property allows you to specify only those components you want to see in the final output, ordered correctly for the locale. <br> Valid values are: "dmwy", "dmy", "dmw", "dm", "my", "dw", "d", "m","n","y" <br> Default components, if this property is not specified, is "dmy".|
|_\<String?>_ time|This property gives which components of a time format to use.<br> The time will be formatted correctly for the locale with only the time components requested. <br>For example, a clock might only display the hour and minute and not need the seconds or the am/pm component. In this case, the time property should be set to "hm".<br> Valid values for this property are: "ahmsz", "ahms", "hmsz", "hms", "ahmz", "ahm", hmz", ah", "hm", "ms", "h", "m", "s" <br> Default value if this property is not specified is "hma". |
|_\<bool?>_ useNative|The flag used to determine whether to use the native script settings for formatting the numbers.|
|_\<String?>_ meridiems|String that specifies what style of meridiems to use with this format. The choices are "default", "gregorian", "ethiopic", and "chinese".|

 ### Constructors
```dart
ILibDateFmtOptions (String? locale, String? length, String? type, String? calendar, String? timezone, String? date, String? time, bool? useNative, String? meridiems)
```

## ILibDateFmt

### Properties

|name|description|
|------|---|
| _\<ILibDateFmtOptions>_ options | Options for the DateFormating|

 ### Constructors
```dart
ILibDateFmt(ILibDateFmtOptions options)
```
 ### Methods
|name|description|
|------|---|
|_String_ toJsonString() | A string representation of parameters to call functions of iLib library properly|
|_String_ format()| Formats a particular date instance according to the settings of this formatter object|
|_int_ getClock()| Returns the default clock from the locale is returned instead."12" or "24" depending on whether this formatter uses the 12-hour or 24-hour clock|
|_String_ getTemplate()| Return the template string that is used to format date/times for this formatter instance|
|_List\<MeridiemsInfo>_ getMeridiemsRange()| Return the range of possible meridiems (times of day like "AM" or "PM") in this date formatter.|



# Duration Formatting
## ILibDurationFmtOptions
### Properties
|name|description|
|------|---|
|_\<String?>_ locale| locale to use when formatting the duration. If the locale is not specified, then the default locale of the app will be used |
|_\<String?>_ length| Specify the length of the format to use. The length is the approximate size of the formatted string. <br> <li><i>short</i> - use a short representation of the duration. This is the most compact format possible for the locale. eg. 1y 1m 1w 1d 1:01:01 <br> <li><i>medium</i> - use a medium length representation of the duration. This is a slightly longer format. eg. 1 yr 1 mo 1 wk 1 dy 1 hr 1 mi 1 se <br> <li><i>long</i> - use a long representation of the duration. This is a fully specified format, but some of the textual <br> <li><i>full</i> - use a full representation of the duration. This is a fully specified format where all the textual parts are spelled out completely. eg. 1 year, 1 month, 1 week, 1 day, 1 hour, 1 minute and 1 second parts may still be abbreviated. eg. 1 yr 1 mo 1 wk 1 day 1 hr 1 min 1 sec|
|_\<String?>_ style| whether hours, minutes, and seconds should be formatted as a text string or as a regular time as on a clock. eg. text is "1 hour, 15 minutes", whereas clock is "1:15:00". Valid values for this property are "text" or "clock". Default if this property is not specified is "text". |
|_\<Bool?>_ useNative| the flag used to determaine whether to use the native script settings for formatting the numbers |

 ### Constructors
```dart
ILibDurationFmtOptions (String? locale, String? length, String? style, bool? useNative)
```

## ILibDurationFmt
### Properties
|name|description|
|------|---|
| _\<ILibDurationFmtOptions>_ options | Options for the DurationFormating|

 ### Constructors
```dart
ILibDurationFmt(ILibDurationFmtOptions options)
```
 ### Methods
|name|description|
|------|---|
|_String_ toJsonString() | A string representation of parameters to call functions of iLib library properly|
|_String_ format()| Formats a particular date instance according to the settings of this formatter object|
|_String_ getLocale()| Return the locale that was used to construct this duration formatter object.|
|_String_ getLength()| Return the length that was used to construct this duration formatter object.|
|_String_ getStyle()| Return the style that was used to construct this duration formatter object.|


# LocaleInfo
## ILibLocaleInfo
### Properties
|name|description|
|------|---|
|_\<String>_ locale| The locale for which the info is sought |

 ### Constructors
```dart
ILibLocaleInfo(String locale)
```

 ### Methods
|name|description|
|------|---|
|_int_ getFirstDayOfWeek() | Returns the day of week that starts weeks in the current locale. <br>Days are still numbered the standard way with 0 for Sunday through 6 for Saturday, <br> but calendars should be displayed and weeks calculated with the day of week returned from this function as the first day of the week.|
|_int_ getWeekEndStart() | Returns the day of week that starts weekend in the current locale.<br> Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.|
|_int_ getWeekEndEnd() | Returns the day of week that ends weekend in the current locale. <br>Days are still numbered the standard way with 0 for Sunday through 6 for Saturday.|
|_String_ getDecimalSeparator() | Returns the decimal separator for formatted numbers in this locale. |
|_String_ getGroupingSeparator() | Returns the separator character used to separate groups of digits on the integer side of the decimal character. |
|_String_ getPercentageFormat() | Returns the format template used to format percentages in this locale. |
|_String_ getNegativePercentageFormat() | Returns the format template used to format percentages in this locale with negative amounts. |
|_CurrencyFormats_ getCurrencyFormats() | Returns an object containing the format templates for formatting currencies in this locale. |
|_String_ getCurrency() | Returns the currency that is legal in the locale or most commonly used in commerce. |


# Number Formatting

## ILibNumFmtOptions

### Properties

|name|description|
|------|---|
|_\<String?>_ locale| Locale to use for number formatting. |
|_\<String?>_ type| Specifies the formatter type. Valid values: "number", "currency", "percentage". Default: "number". |
|_\<String?>_ currency| ISO 4217 currency code for "currency" type. Required for currency formatting. |
|_\<int?>_ maxFractionDigits| Maximum digits after the decimal. `-1` means unlimited, `0` means no fractional digits. |
|_\<int?>_ minFractionDigits| Minimum digits after the decimal. Pads with zeros if necessary. |
|_\<int?>_ significantDigits| Maximum significant digits, applied before and after the decimal. |
|_\<String?>_ style| Formatting style. For "currency": "common" (symbol) or "iso" (ISO code). For "number": "standard", "scientific", "native", or "nogrouping". |
|_\<String?>_ roundingMode| Governs rounding behavior. Examples: "up", "down", "halfup", "halfeven". |
|_\<bool?>_ useNative| Determines whether to use native script settings for formatting numbers. |

### Constructors
```dart
ILibNumFmtOptions({
  String? locale,
  String? type,
  String? currency,
  int? maxFractionDigits,
  int? minFractionDigits,
  int? significantDigits,
  String? style,
  String? roundingMode,
  bool? useNative,
})
```

## ILibNumFmt

### Properties

|name|description|
|------|---|
|_\<ILibNumFmtOptions>_ options| Options for configuring the number formatter. |

### Constructors
```dart
ILibNumFmt(ILibNumFmtOptions options)
```

### Methods

|name|description|
|------|---|
|_String_ format(dynamic number)| Formats a number according to the settings of this formatter instance. |
|_String_ constrain(int number)| Applies the constraints used in the current formatter to the given number. |
|_String_ getLocale()| Returns the locale used to construct this number formatter object. |
|_String_ getType()| Returns the type of formatter. Valid values are "number", "currency", and "percentage". |
|_bool_ isGroupingUsed()| Returns true if this formatter groups together digits in the integral portion of a number. |
|_int_ getMaxFractionDigits()| Returns the maximum fraction digits set up in the constructor. |
|_int_ getMinFractionDigits()| Returns the minimum fraction digits set up in the constructor. |
|_int_ getSignificantDigits()| Returns the significant digits set up in the constructor. |
|_int?_ getCurrency()| Returns the ISO 4217 code for the currency that this formatter formats. |
|_String_ getRoundingMode()| Returns the rounding mode set up in the constructor. |
|_String_ getStyle()| Returns the style used to construct this number formatter object. |
|_bool_ getUseNative()| Returns true if this formatter uses native digits to format the number. |
