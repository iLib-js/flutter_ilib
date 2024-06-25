import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await initializeiLib();

      FlutterError.onError = (FlutterErrorDetails details) {
        FlutterError.presentError(details);
        debugPrint(
          'FlutterError.onError : ${details.exceptionAsString()}, stackTrace: ${details.stack}',
        );
      };

      runApp(const MyApp());
    },
    (Object error, StackTrace stackTrace) {
      debugPrint(
        'runZonedGuarded : ${error.toString()}, stackTrace: $stackTrace',
      );
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // String _platformVersion = 'Unknown';
  String _iLibVersion = 'Unknown iLib';
  String _iLibCLDRVersion = 'CLDR';
  final _flutterIlibPlugin = FlutterIlib();

  var newList = ['-', '-', '-'];
  String curLocale = '-';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String iLibVersion;
    try {
      iLibVersion = await _flutterIlibPlugin.getVersion() ?? 'Unknown iLib version';
    } on PlatformException {
      iLibVersion = 'Failed to get iLib version.';
    }

    String iLibCLDRVersion;
    try {
      iLibCLDRVersion = await _flutterIlibPlugin.getCLDRVersion() ?? 'Unknown CLDR version';
    } on PlatformException {
      iLibCLDRVersion = 'Failed to get iLib CLDR version.';
    }

    String currentTime;
    try {
      currentTime = await getDateTimeFormatNow('ko-KR') ?? 'Now';
    } on PlatformException {
      currentTime = 'Failed to get iLib DatFmt.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      //_platformVersion = platformVersion;
      _iLibVersion = iLibVersion;
      _iLibCLDRVersion = iLibCLDRVersion;
    });
  }

  static const textStyle = TextStyle(fontSize: 30);
  static const itemTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const infoTextStyle = TextStyle(fontSize: 20);
  static const infoItemTextStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const buttonTextStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  var localeList = ['en-GB', 'en-US', 'ko-KR', 'fa-IR', 'am-ET'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterIlibPlugin example app'),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _customTextBox('Current Locale', curLocale),
              _customTextBox('DateTime (full)', newList[0]),
              _customTextBox('First Day Of the Week', newList[1]),
              _customTextBox('Clock (12 or 24)', newList[2]),
              const SizedBox(
                height: 30,
              ),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                children: [
                  const Text('Change Locale', style: itemTextStyle),
                  for (int i = 0; i < localeList.length; i++)
                    ElevatedButton(
                      child: Text(localeList[i], style: buttonTextStyle),
                      onPressed: () async {
                        curLocale = localeList[i];
                        final result1 = await getDateTimeFormatNow(curLocale);
                        final result2 = await getFirstDayOfWeek(curLocale);
                        final result3 = await getClock(curLocale);
                        setState(() {
                          newList = [result1, result2, result3];
                        });
                      },
                    )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              _customTextBox('iLib Version', _iLibVersion, main:false),
              _customTextBox('CLDR Version', _iLibCLDRVersion, main:false),
              // _customTextBox('Current Time', _currentTime),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTextBox(String item, String value, {bool main=true}) {
    return SizedBox(
      width: 700,
      height: (main? 40: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item, style: (main? itemTextStyle: infoItemTextStyle)),
          Text(value, style: (main? textStyle: infoTextStyle)),
        ],
      ),
    );
  }

  Future<String> getDateTimeFormat(String curlo) async {
    curLocale = curlo;
    ILibDateOptions dateOptions = ILibDateOptions(dateTime: DateTime.parse('2024-03-23 10:42'));
    ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: curlo, length: "full", type: "datetime", useNative: false, timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);

    return fmt.format(dateOptions);
  }

  Future<String> getDateTimeFormatNow(String curlo) async {
    ILibDateOptions dateOptions = ILibDateOptions(dateTime: DateTime.now());
    ILibDateFmtOptions fmtOptions =
        ILibDateFmtOptions(locale: curlo, length: "full", type: "datetime", useNative: false, timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    return fmt.format(dateOptions);
  }

  Future<String> getFirstDayOfWeek(String curlo) async {
    ILibLocaleInfo locInfo = ILibLocaleInfo(curlo);
    var days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

    int firstDay = await locInfo.getFirstDayOfWeek();

    return days[firstDay];
  }

  Future<String> getClock(String curlo) async {
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: curlo);

    int clock = await ILibDateFmt(fmtOptions).getClock();

    return '$clock';
  }
}
