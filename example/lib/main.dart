import 'dart:async';

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
  final FlutterILib _flutterIlibPlugin = FlutterILib.instance;

  List<String> newList = <String>['-', '-', '-'];
  String curLocale = '-';

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
      _flutterIlibPlugin.addListener(() => initPlatformState());
    });
  }

  void initPlatformState() {
    String iLibVersion;
    try {
      iLibVersion = _flutterIlibPlugin.getVersion ?? 'Unknown iLib version';
    } on PlatformException {
      iLibVersion = 'Failed to get iLib version.';
    }

    String iLibCLDRVersion;
    try {
      iLibCLDRVersion =
          _flutterIlibPlugin.getCLDRVersion ?? 'Unknown CLDR version';
    } on PlatformException {
      iLibCLDRVersion = 'Failed to get iLib CLDR version.';
    }

    String currentTime;
    try {
      currentTime = getDateTimeFormatNow('ko-KR');
    } on PlatformException {
      currentTime = 'Failed to get iLib DatFmt.';
    }

    setState(() {
      _iLibVersion = iLibVersion;
      _iLibCLDRVersion = iLibCLDRVersion;
      _currentTime = currentTime;
    });
  }

  static const TextStyle textStyle = TextStyle(fontSize: 30);
  static const TextStyle itemTextStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const TextStyle infoTextStyle = TextStyle(fontSize: 20);
  static const TextStyle infoItemTextStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle buttonTextStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<String> localeList = <String>[
    'en-GB',
    'en-US',
    'ko-KR',
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
                        final String result1 = getDateTimeFormatNow(curLocale);
                        final String result2 = getFirstDayOfWeek(curLocale);
                        final String result3 = getClock(curLocale);
                        setState(() {
                          newList = <String>[result1, result2, result3];
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

  Widget _customTextBox(String item, String value, {bool main = true}) {
    return SizedBox(
      width: 700,
      height: (main ? 40 : 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(item, style: (main ? itemTextStyle : infoItemTextStyle)),
          Text(value, style: (main ? textStyle : infoTextStyle)),
        ],
      ),
    );
  }

  String getDateTimeFormat(String curlo) {
    curLocale = curlo;
    final ILibDateOptions dateOptions =
        ILibDateOptions(dateTime: DateTime.parse('2024-03-23 10:42'));
    final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: curlo,
        length: 'full',
        type: 'datetime',
        useNative: false,
        timezone: 'local');
    final ILibDateFmt fmt = ILibDateFmt(fmtOptions);

    return fmt.format(dateOptions);
  }

  String getDateTimeFormatNow(String curlo) {
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
}
