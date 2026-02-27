import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  runZonedGuarded<void>(
    () {
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
        'runZonedGuarded : $error, stackTrace: $stackTrace',
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
  String _iLibVersion = 'Unknown iLib';
  String _iLibCLDRVersion = 'CLDR';
  String _currentTime = 'Current Time';
  static const int _numOfItems = 6;
  List<String> newList = List.generate(_numOfItems, (index) => '-');
  String curLocale = window.locale.toString().replaceAll('_', '-');
  List<String> results = List.filled(_numOfItems, '');
  final FlutterILib _flutterIlibPlugin = FlutterILib.instance;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((void value) {
      // If the widget was removed from the tree while the asynchronous platform
      // message was in flight, we want to discard the reply rather than calling
      // setState to update our non-existent appearance.
      if (!mounted) {
        return;
      }
      if (!_flutterIlibPlugin.isILibReady) {
        _flutterIlibPlugin.addListener(() => updateState());
      } else {
        updateState();
      }
    });
  }

  void updateState() {
    String iLibVersion;
    String currentTime;
    String iLibCLDRVersion;

    try {
      iLibVersion = _flutterIlibPlugin.getVersion ?? 'Unknown iLib version';
    } on PlatformException {
      iLibVersion = 'Failed to get iLib version.';
    }

    try {
      iLibCLDRVersion =
          _flutterIlibPlugin.getCLDRVersion ?? 'Unknown CLDR version';
    } on PlatformException {
      iLibCLDRVersion = 'Failed to get iLib CLDR version.';
    }

    try {
      currentTime = getDateTimeFormatNow('en-US');
    } on PlatformException {
      currentTime = 'Failed to get iLib DatFmt.';
    }

    results[0] = getDateTimeFormat(curLocale);
    results[1] = getFirstDayOfWeek(curLocale);
    results[2] = getClock(curLocale);
    results[3] = getNumFmt(curLocale);
    results[4] = getScriptInfo(curLocale);
    results[5] = getScriptInfoWithJson(curLocale);

    setState(() {
      _iLibVersion = iLibVersion;
      _iLibCLDRVersion = iLibCLDRVersion;
      _currentTime = currentTime;
      newList = results;
    });
  }

  static const TextStyle textStyle = TextStyle(fontSize: 30);
  static const TextStyle itemTextStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const TextStyle infoTextStyle = TextStyle(fontSize: 20);
  static const TextStyle infoItemTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle buttonTextStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold);

  List<String> localeList = <String>[
    'en-GB',
    'en-US',
    'de-DE',
    'hi-IN',
    'ko-KR',
    'ru-RU',
    'fa-IR',
    'am-ET'
  ];

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
              _customTextBox('Number Format', newList[3]),
              _customTextBox('Script Info', newList[4]),
              _customTextBox('Script Info (json)', newList[5], color: Color(0xFF007AFF)),
              const SizedBox(
                height: 30,
              ),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                children: <Widget>[
                  const Text('Change Locale', style: itemTextStyle),
                  for (int i = 0; i < localeList.length; i++)
                    ElevatedButton(
                      child: Text(localeList[i], style: buttonTextStyle),
                      onPressed: () {
                        curLocale = localeList[i];
                        _flutterIlibPlugin.loadLocaleData(curLocale);
                        results[0] = getDateTimeFormat(curLocale);
                        results[1] = getFirstDayOfWeek(curLocale);
                        results[2] = getClock(curLocale);
                        results[3] = getNumFmt(curLocale);
                        results[4] = getScriptInfo(curLocale);
                        results[5] = getScriptInfoWithJson(curLocale);
                        setState(() {
                          newList = results;
                        });
                      },
                    )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              _customTextBox('iLib Version', _iLibVersion, main: false),
              _customTextBox('CLDR Version', _iLibCLDRVersion, main: false),
              _customTextBox('Current Time', _currentTime),
            ],
          ),
        ),
      ),
    );
  }

  Widget _customTextBox(String item, String value, {bool main = true, Color? color}) {
    return SizedBox(
      width: 1080,
      height: (main ? 40 : 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(item, style: (main ? itemTextStyle : infoItemTextStyle).copyWith(color: color)),
          Text(value, style: (main ? textStyle : infoTextStyle).copyWith(color: color)),
        ],
      ),
    );
  }

  String getDateTimeFormatNow(String lo) {
    final ILibDateOptions dateOptions =
        ILibDateOptions(dateTime: DateTime.now());
    final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: lo,
        length: 'full',
        type: 'datetime',
        useNative: false,
        timezone: 'local');
    final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    return fmt.format(dateOptions);
  }

  String getDateTimeFormat(String curlo) {
    final ILibDateOptions dateOptions =
        ILibDateOptions(dateTime: DateTime.now());
    final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: curlo,
        length: 'full',
        type: 'datetime',
        useNative: false,
        timezone: 'local');
    final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    return fmt.format(dateOptions);
  }

  String getFirstDayOfWeek(String curlo) {
    final ILibLocaleInfo locInfo = ILibLocaleInfo(curlo);
    final List<String> days = <String>[
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];

    final int firstDay = locInfo.getFirstDayOfWeek();
    return days[firstDay];
  }

  String getClock(String curlo) {
    final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: curlo);
    final int clock = ILibDateFmt(fmtOptions).getClock();
    return '$clock';
  }

  String getNumFmt(String curlo) {
    final ILibNumFmt fmt =
    ILibNumFmt(ILibNumFmtOptions(locale: curlo));
    return fmt.format(-111123456.785);
  }
    String getScriptInfo(String curlo) {
    final ILibLocaleInfo locInfo = ILibLocaleInfo(curlo);
    final ILibScriptInfo scinfo = ILibScriptInfo(locInfo.getScript());
    return '${scinfo.getName()}, Direction: ${scinfo.getScriptDirection()}';
  }

  String getScriptInfoWithJson(String curlo) {
    final ILibLocaleInfo locInfo = ILibLocaleInfo(curlo);
    final ILibScriptInfoWithJson scinfo = ILibScriptInfoWithJson(locInfo.getScript());
    return '${scinfo.getName()}, Direction: ${scinfo.getScriptDirection()}';
  }

}
