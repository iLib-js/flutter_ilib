# flutter_ilib

A wrapper plugin to use [iLib](https://github.com/iLib-js/iLib) conveniently in Flutter apps.  
This plugin uses the [flutter_js](https://pub.dev/packages/flutter_js) to make the javascript file in the Flutter application work properly.

## General
We provide `evaluateILib()` to use any class of APIs from ILib.  

#### evaluateILib() 
```dart
import 'package:flutter_ilib/flutter_ilib.dart';

String lo = "ko-KR";
String jscode1 = 'new LocaleInfo("$lo").getCalendar()';
await evaluateILib(jscode1);
// 'gregorian'
```
To give a more efficient way, we provide some classes that can be easily used in a Flutter app.   
Currently, We have a `ILibDateFmt` and `ILibLocaleInfo` classes.
We have a plan to provide more classes and methods.  

#### class ILibDateFmt
- Class: [ILibDateOptions](./Docs.md/#ilibdateoptions)
- Class: [ILibDateFmtOptions](./Docs.md/#ilibdatefmtoptions)  
- Class: [ILibDateFmt](./Docs.md#ilibdatefmt)
   - Methods: `format()`, `getClock()`  

```dart
import 'package:flutter_ilib/flutter_ilib.dart';

ILibDateFmtOptions fmtOptions =
    ILibDateFmtOptions(locale: "ko-KR", length: "short");
ILibDateFmt fmt = ILibDateFmt(fmtOptions);

ILibDateOptions dateOptions = ILibDateOptions(
    locale: "ko-KR",
    year: 2024,
    month: 6,
    day: 27,
    hour: 13,
    minute: 45,
    second: 0,
    millisecond: 0);
await fmt.format(dateOptions);
// "24. 6. 27."
```

#### class ILibLocaleInfo
- Class: [ILibLocaleInfo](./Docs.md/#iliblocaleinfo)
   - Methods:  `getFirstDayOfWeek()`, `getWeekEndStart()`, `getWeekEndStart()` 

```dart
import 'package:flutter_ilib/flutter_ilib.dart';

// 0:sun, 1:mon, 2:tue, 3:wed, 4:thu, 5:fri, 6:sat
ILibLocaleInfo locInfo = ILibLocaleInfo("ko-KR");
await locInfo.getFirstDayOfWeek();
// 0
await locInfo.getWeekEndStart();
// 6
await locInfo.getWeekEndEnd();
// 0
```

#### Locales
The results of the following locales are checked by unit tests.  
They have the same result as the original iLib methods.
```
af-ZA,am-ET,ar-AE,ar-EG,ar-IQ,ar-MA,ar-SA,as-IN,az-Latn-AZ,bg-BG,bn-IN,    
bs-Latn-BA,bs-Latn-ME,cs-CZ,da-DK,de-AT,de-CH,de-DE,de-LU,el-CY,el-GR, 
en-AM,en-AU,en-AZ,en-CA,en-CN,en-GB, en-GE,en-GH,en-HK,en-IE,en-IN,en-IS,  
en-JP,en-KE,en-LK,en-MM,en-MW,en-MX,en-MY,en-NG,en-NZ,en-PH,en-PR,en-SG,  
en-TW,en-UG,en-US,en-ZA,en-ZM,es-AR,es-BO,es-CA,es-CL,es-CO,es-DO,es-EC,  
es-ES,es-GT,es-HN,es-MX,es-NI,es-PA,es-PE,es-PR,es-PY,es-SV,es-US,es-UY,  
es-VE,et-EE,fa-IR,fi-FI,fr-BE,fr-CA,fr-CH,fr-FR,fr-LU,ga-IE,gu-IN,ha-Latn-NG,  
he-IL,hi-IN,hr-HR,hr-ME,hu-HU,id-ID,is-IS,it-CH,it-IT,ja-JP,kk-Cyrl-KZ,km-KH,  
kn-IN,ko-KR,ko-US,ku-Arab-IQ,lt-LT,lv-LV,mk-MK,ml-IN,mn-Cyrl-MN,mr-IN,ms-MY,  
nb-NO,nl-BE,nl-NL,or-IN,pa-IN,pl-PL,pt-BR,pt-PT,ro-RO,ru-BY,ru-GE,ru-KG,ru-KZ,  
ru-RU,ru-UA,si-LK,sk-SK,sl-SI,sq-AL,sq-ME,sr-Latn-ME,sr-Latn-RS,sv-FI,sv-SE,  
sw-Latn-KE,ta-IN,te-IN,th-TH,tr-AM, tr-AZ,tr-CY,tr-TR,uk-UA,ur-IN,uz-Latn-UZ,  
vi-VN,zh-Hans-CN,zh-Hant-HK,zh-Hant-TW
```

## TEST
### Run the Unit Test
On Linux, you need to export an environment variable called `LIBQUICKJSC_TEST_PATH` pointing to the file `libquickjs_c_bridge_plugin.so`.

```
export LIBQUICKJSC_TEST_PATH="${PWD}/test/linux/libquickjs_c_bridge_plugin.so"
flutter test test/flutter_ilib_test.dart
```
We have the script file for the above works to do everything at once.

```
./execute_unit_test.sh
```

### Excute the example
```
cd example
flutter build linux --release
flutter run -d linux --release
```

## License

Copyright (c) 2024, JEDLSoft

This plugin is license under Apache2. See the [LICENSE](./LICENSE)
file for more details.

## Release Notes
### v0.0.1
- initial version