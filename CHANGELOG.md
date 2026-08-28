## 2.0.0
* The 2.0.0 pure-Dart rewrite of flutter_ilib.
* Remove the `flutter_js` JavaScript interop entirely. flutter_ilib is now a pure-Dart
  implementation that reads iLib's CLDR locale data (JSON) directly — no JavaScript runtime
  (and no `flutter_js` dependency) is required.
* Convert all public classes to pure Dart:
  * `ILibLocale`, `ILibLocaleInfo`, `ILibCaseMapper`
  * `ILibDateFmt` — date/time formatting engine
  * `ILibDurationFmt` — duration formatting with CLDR plural rules
  * `ILibNumFmt` — number and currency formatting
  * `ILibTimeZone` — timezone and DST calculation
  * `ILibCalendar` and 9 calendars: gregorian, thaisolar, julian, islamic, hebrew, ethiopic,
    coptic, persian (astronomical), and persian-algo (algorithmic)
  * `ILibScriptInfo` — script metadata (direction, name, code)
  * `ILibCountry` — country name/code lookup per locale
* Add system `'local'` timezone support (DST-aware). An omitted timezone defaults to `'local'`,
  matching iLib JS behavior.
* Add `ILibLocale.getAvailableLocales()` API.
* Support 144 locales with CLDR 48.2 data.
* Add integration tests and rework test runner with unit/integration mode support.
* Based on iLib v15.0.0 / CLDR 48.2.
* The public API is unchanged from v1.x — upgrade without code changes.

## 1.9.1
* Regenerate `ilib-init.js` from the npm ilib package via the new `scripts/assemble_ilib/generate_assets.sh`. The diff is minification-only (different internal variable names); logic and iLib version (14.22.0) are unchanged.
* Expand the integration test to validate all features, and make the example app render a fixed datetime for consistent locale comparison.

## 1.9.0
* Update the iLib files to version 14.22.0.
  * iLib version 14.22.0 incorporates CLDR 48.2
* Update unit test expectations for locale formatting changes introduced by CLDR 48.2, including webOS-specific expectations where results still differ from upstream.
* Fix empty asset path crash in loadJS when locale is invalid

## 1.8.0
* Implement `ILibCountry` class for Country Information

## 1.7.0
* Implement the `ILibScriptInfo` class for ScriptInfomation
* Add new methods to `ILibLocaleInfo`:  
`getLanguageName()`, `getRegionName()`, `getClock()`, `getLocale()`, `getUnits()`, `getCalendar()`, `getTimeZone()`, `getPrimaryGroupingDigits()`, `getSecondaryGroupingDigits()`, `getPercentageSymbol()`, `getExponential()`, `getNativeExponential()`, `getNativePercentageSymbol()`, `getNegativeNumberFormat()`, `getDigitsStyle()`, `getDigits()`, `getNativeDigits()`, `getRoundingMode()`, `getScript()`, `getDefaultScript()`, `getAllScripts()`, `getMeridiemsStyle()`, `getPaperSize()`, `getDelimiterQuotationStart()`, `getDelimiterQuotationEnd()`
* Implement `ILibLocale`
* Implement `ILibCaseMapper`

## 1.6.0
* Implement the `ILibNumFmt` class to enable NumberFormatting
* Add new methods for NumberFormatting to `ILibLocaleInfo`:  
`getDecimalSeparator()`, `getGroupingSeparator()`, `getPercentageFormat()`, `getNegativePercentageFormat()`,`getCurrency()`, `getCurrencyFormats()`
* Update `ilib-init.js` including `NumFmt.js` and `Currency.js`

## 1.5.0
* Implement the `ILibDurationFmt` class to enable DurationFormatting.

## 1.4.0
* Include the `DurationFmt.js` file from iLib in the `ilib-init.js` file within the assets.  
  The developer can use `evaluate()` to obtain the result of Duration formatting until the DurationFmt class is properly implemented.

## 1.3.0
* Added `clock` field to ILibDateFmtOptions for specifying time format (e.g., 12-hour or 24-hour).
* Added `template` field to ILibDateFmtOptions for defining custom date/time display patterns.
* Fixed proper handling of `meridiems` field in ILibDateFmtOptions, which was previously ignored.

## 1.2.1
* Fixed incorrect timezone handling when [DateTime](https://api.flutter.dev/flutter/dart-core/DateTime-class.html) where UTC-based times were being misinterpreted as local time during formatting and parsing.

## 1.2.0
* Added `isILibReady` getter to `ILibJS` class to expose internal `_iLibPrepared` state.
* Added `isILibReady` getter to `FlutterILib` class for external access to ILibJS initialization status.
* Updated logging system to use the logging package with support for multiple log levels

## 1.1.0
* Updated the iLib files to version 14.21.0 since the new version of iLib has been released.
  * iLib version 14.21.0 incorporates CLDR 46
* Updated the test cases where expectations have aligned between webOS versions and upstream since the CLDR update to 46

## 1.0.0
* Updated the structure to load separate locale data files.
  Previously, the dependent ilib was a fully assembled JS file. Now, the ilib files are divided into the js and locale files.  
  The JS code is assembled as `ilib-init.js`, and the locale files are generated with names like [language].js, e.g. `en.js`, `ko.js`. The iLib files are generated using the [ilib-assemble](https://github.com/iLib-js/ilib-assemble) tool. This change brings memory savings over previous versions of flutter_ilib.  
  Initially, when the app is launched, the package automatically loads the locale data by detecting the system's locale. To load the updated locale data file when the locale changes, I suggest adding the following method at the appropriate time when the locale chanages. 
  ```dart
  _flutterIlibPlugin.loadLocaleData(curLocale);
  ```

## 0.4.0
* Added `libquickjs_c_bridge_plugin.so` for aarch64-webos
* Updated `CMakeLists.txt` for webos to support both arm and aarch64

## 0.3.0
* Added the method `getMeridiemsRange()` in the class ILibDateFmt.
* Updated test files to use ILib's `loadJS()` instead of `loadJSwithPath()`.
* Updated the test files to share them between flutter_ilib and another flutter_ilib for webOS. The webOS overrides some of the locale data, so some test cases return different results.

## 0.2.0
* Added the method `getTemplate()` in the class ILibDateFmt.
* Regenerated the assemble ilib file to return the correct released version number.
* Changed the name of the assemble ilib file to `ilib-all.js`.

## 0.1.0
* Updated the `README.md` file.
* Updated the minor version up for release.

## 0.0.4
* Added more of the API comments in codes.

## 0.0.3
* Updated to show a sample screenshot image in the published package.

## 0.0.2
* Updated structure by using `ChangeNotifier` so that APIs can be used synchronously.
  *  First, the app must add a listener to receive a callback message that the iLib is ready for use. then the APIs can be used synchronously.
* Added the linter file (`analysis_options.yaml`) and fixed warnings.

## 0.0.1
* initial version
