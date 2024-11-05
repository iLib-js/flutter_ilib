## 0.4.0
* Updated the structure to load separate locale data files.  
  Previously, the dependent ilib was a fully assembled JS file. Now, the ilib files are separated into JS and locale files. 
  Now, the ilib files is separated the js and locale file. The JS code is assembled as `ilib-all.js`, and the locale files are generated with names like [language].js, e.g. `en.js`, `ko.js`. The iLib files are generated using the [ilib-assemble](https://github.com/iLib-js/ilib-assemble) tool. This change brings memory savings over previous versions of flutter-ilib.

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