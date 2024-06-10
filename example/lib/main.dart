import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  runApp(const MyApp());
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
  String _currentTime = 'Now';
  final _flutterIlibPlugin = FlutterIlib();

  String ilibresult = "result";
  String curLocale = "locale";

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String iLibVersion;
    try {
      iLibVersion =
          await _flutterIlibPlugin.getVersion() ?? 'Unknown iLib version';
    } on PlatformException {
      iLibVersion = 'Failed to get iLib version.';
    }

    String iLibCLDRVersion;
    try {
      iLibCLDRVersion =
          await _flutterIlibPlugin.getCLDRVersion() ?? 'Unknown CLDR version';
    } on PlatformException {
      iLibCLDRVersion = 'Failed to get iLib CLDR version.';
    }

    String currentTime;
    try {
      currentTime =
          await getDateTimeFormatNow('ko-KR') ?? 'Now';
    } on PlatformException {
      currentTime = 'Failed to get iLib DatFmt.';
    }

    // String platformVersion;
    // // Platform messages may fail, so we use a try/catch PlatformException.
    // // We also handle the message potentially returning null.
    // try {
    //   platformVersion =
    //       await _flutterIlibPlugin.getPlatformVersion() ?? 'Unknown platform version';
    // } on PlatformException {
    //   platformVersion = 'Failed to get platform version.';
    // }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      //_platformVersion = platformVersion;
      _iLibVersion = iLibVersion;
      _iLibCLDRVersion = iLibCLDRVersion;
      _currentTime = currentTime;
    });
  }
  static const textStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  
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
          child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text('iLib Version: $_iLibVersion', style: textStyle ),
              Text('iLib CLDR Version: $_iLibCLDRVersion', style: textStyle ),
              Text(_currentTime, style: textStyle ),
              const SizedBox(height: 20,),

              Text( curLocale, style: textStyle ),
              Text( ilibresult, style: textStyle ),
              const SizedBox(height: 20,),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                children: <Widget>[
                  const Text( 'DateTimeFmt', style: textStyle ),

                  ElevatedButton(
                    onPressed: () async {
                      final result = await getDateTimeFormat('en-US');
                      setState(() {
                        ilibresult = result;
                      });
                    },
                    child: const Text("en-US")),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await getDateTimeFormat('en-GB');
                      setState(() {
                        ilibresult = result;
                      });
                    },
                    child: const Text('en-GB')),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await getDateTimeFormat('ko-KR');
                      setState(() {
                        ilibresult = result;
                      });
                    },
                    child: const Text('ko-KR')),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await getDateTimeFormat('fa-IR');
                      setState(() {
                        ilibresult = result;
                      });
                    },
                    child: const Text('fa-IR')),
                  ElevatedButton(
                    onPressed: () async {
                      final result = await getDateTimeFormat('am-ET');
                      setState(() {
                        ilibresult = result;
                      });
                    },
                    child: const Text('am-ET')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  dynamic getDateTimeFormat(String curlo) async {
    curLocale = curlo;
    ILibDateOptions dateOptions = ILibDateOptions(dateTime: DateTime.parse('2024-03-23 10:42'));
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: curlo, length: "full", type: "datetime", useNative: false);
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    return fmt.format(dateOptions);
  }

  dynamic getDateTimeFormatNow(String curlo) async {
    ILibDateOptions dateOptions = ILibDateOptions(dateTime: DateTime.now());
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: curlo, length: "full", type: "datetime");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    return fmt.format(dateOptions);
  }
}