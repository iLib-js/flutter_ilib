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
      debugPrint('runZonedGuarded : $error, stackTrace: $stackTrace');
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _flutterILibVersion = 'flutter_ilib';
  String _iLibVersion = 'Unknown iLib';
  String _iLibCLDRVersion = 'CLDR';
  String _currentTime = 'Current Time';
  String _currentTimeFormat = 'Current Time Format';
  static const int _numOfItems = 6;
  List<String> newList = List<String>.generate(_numOfItems, (int index) => '-');
  String curLocale = PlatformDispatcher.instance.locale.toLanguageTag();
  List<String> results = List<String>.filled(_numOfItems, '');
  final FlutterILib _flutterIlibPlugin = FlutterILib.instance;

  final List<String> localeList = <String>[
    'en-GB',
    'en-US',
    'de-DE',
    'hi-IN',
    'ko-KR',
    'ru-RU',
    'fa-IR',
    'am-ET',
  ];

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
      _flutterIlibPlugin.addListener(() => updateState());
      if (_flutterIlibPlugin.isILibReady) {
        updateState();
      }
    });
  }

  void updateState() {
    if (!mounted) return;

    String flutterILibVersion;
    String iLibVersion;
    String currentTime;
    String iLibCLDRVersion;

    try {
      flutterILibVersion = _flutterIlibPlugin.getVersion;
    } on PlatformException {
      flutterILibVersion = 'Failed to get flutter_ilib version.';
    }

    try {
      iLibVersion = _flutterIlibPlugin.getILibVersion;
    } on PlatformException {
      iLibVersion = 'Failed to get iLib version.';
    }

    try {
      iLibCLDRVersion =
          _flutterIlibPlugin.getCLDRVersion ?? 'Unknown CLDR version';
    } on PlatformException {
      iLibCLDRVersion = 'Failed to get iLib CLDR version.';
    }

    final DateTime now = DateTime.now();
    currentTime =
        '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}';

    results[0] = getDateTimeFormatFixed(curLocale);
    results[1] = getFirstDayOfWeek(curLocale);
    results[2] = getClock(curLocale);
    results[3] = getNumFmt(curLocale);
    results[4] = getCalendarName(curLocale);
    results[5] = getDurationFmt(curLocale);

    setState(() {
      _flutterILibVersion = flutterILibVersion;
      _iLibVersion = iLibVersion;
      _iLibCLDRVersion = iLibCLDRVersion;
      _currentTime = currentTime;
      _currentTimeFormat = getDateTimeFormatNow(curLocale);
      newList = results;
    });
  }

  Future<void> _onLocaleSelected(String locale) async {
    curLocale = locale;
    await _flutterIlibPlugin.loadLocaleData(curLocale);
    _currentTimeFormat = getDateTimeFormatNow(curLocale);
    results[0] = getDateTimeFormatFixed(curLocale);
    results[1] = getFirstDayOfWeek(curLocale);
    results[2] = getClock(curLocale);
    results[3] = getNumFmt(curLocale);
    results[4] = getCalendarName(curLocale);
    results[5] = getDurationFmt(curLocale);
    setState(() {
      newList = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    const Color seed = Color(0xFFDC2626);
    const Color background = Color(0xFF0B0B0F);
    final ColorScheme scheme = ColorScheme.fromSeed(
      seedColor: seed,
      brightness: Brightness.dark,
    );
    final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: background,
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        foregroundColor: scheme.onSurface,
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
    );
    return MaterialApp(
      title: '[flutter_ilib] Example',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: darkTheme,
      darkTheme: darkTheme,
      home: Builder(builder: _buildHome),
    );
  }

  Widget _buildHome(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1.2),
      ),
      child: _buildScaffold(context),
    );
  }

  Widget _buildScaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        title: const Text(
          '[flutter_ilib]',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1120),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _heroCard(context),
                  const SizedBox(height: 8),
                  _localeSwitcherCard(context, perRow: 8),
                  const SizedBox(height: 8),
                  _sectionCard(
                    context,
                    title: 'Locale details',
                    icon: Icons.tune,
                    children: <Widget>[
                      _infoRow(context, 'DateTime (full)', newList[0],
                          large: true),
                      _infoRow(context, 'Default Calendar', newList[4],
                          large: true),
                      _infoRow(context, 'First Day Of the Week', newList[1],
                          large: true),
                      _infoRow(context, 'Clock (12 or 24)', newList[2],
                          large: true),
                      _infoRow(context, 'Number Format', newList[3],
                          large: true),
                      _infoRow(context, 'Duration Format', newList[5],
                          large: true),
                    ],
                  ),
                  const SizedBox(height: 8),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: _sectionCard(
                            context,
                            title: 'Live clock',
                            icon: Icons.schedule,
                            children: <Widget>[
                              _infoRow(context, 'Current Time', _currentTime),
                              _infoRow(
                                context,
                                'Current DateTime (full)',
                                _currentTimeFormat,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: _sectionCard(
                            context,
                            title: 'Library info',
                            icon: Icons.info_outline,
                            children: <Widget>[
                              _infoRow(context, 'Package Version',
                                  _flutterILibVersion,
                                  subtle: true),
                              _infoRow(context, 'Based on iLib', _iLibVersion,
                                  subtle: true),
                              _infoRow(
                                  context, 'Based on CLDR', _iLibCLDRVersion,
                                  subtle: true),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _heroCard(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme cs = theme.colorScheme;
    return Card(
      elevation: 0,
      color: cs.primaryContainer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.6, vertical: 10.2),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 15.3,
              backgroundColor: cs.primary,
              foregroundColor: cs.onPrimary,
              child: const Icon(Icons.public, size: 17),
            ),
            const SizedBox(width: 11.9),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Current Locale',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: cs.onPrimaryContainer,
                      fontSize:
                          (theme.textTheme.labelMedium?.fontSize ?? 12) * 0.85,
                    ),
                  ),
                  const SizedBox(height: 1.7),
                  Text(
                    curLocale,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: cs.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                      fontSize:
                          (theme.textTheme.titleLarge?.fontSize ?? 22) * 0.85,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme cs = theme.colorScheme;
    return Card(
      elevation: 0,
      color: cs.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon, size: 18, color: cs.primary),
                const SizedBox(width: 8),
                Text(
                  title.toUpperCase(),
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: cs.primary,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _infoRow(
    BuildContext context,
    String label,
    String value, {
    bool subtle = false,
    bool large = false,
  }) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme cs = theme.colorScheme;
    final TextStyle? labelStyle =
        (large ? theme.textTheme.bodyLarge : theme.textTheme.bodyMedium)
            ?.copyWith(color: cs.onSurfaceVariant);
    final TextStyle? valueStyle = subtle
        ? theme.textTheme.bodyMedium?.copyWith(color: cs.onSurfaceVariant)
        : (large ? theme.textTheme.titleLarge : theme.textTheme.titleMedium)
            ?.copyWith(color: cs.onSurface, fontWeight: FontWeight.w600);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(label, style: labelStyle),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right,
              style: valueStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _localeSwitcherCard(BuildContext context, {int perRow = 4}) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme cs = theme.colorScheme;
    return Card(
      elevation: 0,
      color: cs.surfaceContainerHighest,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(Icons.translate, size: 18, color: cs.primary),
                const SizedBox(width: 8),
                Text(
                  'CHANGE LOCALE',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: cs.primary,
                    letterSpacing: 0.8,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),
            _localeGrid(context, perRow: perRow),
          ],
        ),
      ),
    );
  }

  Widget _localeGrid(BuildContext context, {int perRow = 4}) {
    final List<Widget> rows = <Widget>[];
    for (int i = 0; i < localeList.length; i += perRow) {
      final List<Widget> cells = <Widget>[];
      for (int j = 0; j < perRow; j++) {
        if (j > 0) {
          cells.add(const SizedBox(width: 8));
        }
        final int idx = i + j;
        cells.add(
          Expanded(
            child: idx < localeList.length
                ? _localeButton(context, localeList[idx])
                : const SizedBox.shrink(),
          ),
        );
      }
      if (rows.isNotEmpty) {
        rows.add(const SizedBox(height: 8));
      }
      rows.add(Row(children: cells));
    }
    return Column(children: rows);
  }

  Widget _localeButton(BuildContext context, String locale) {
    final ColorScheme cs = Theme.of(context).colorScheme;
    final bool selected = locale == curLocale;
    return FilledButton(
      style: FilledButton.styleFrom(
        elevation: selected ? 6 : 2,
        shadowColor: Colors.black,
        backgroundColor: selected ? cs.primary : cs.secondaryContainer,
        foregroundColor: selected ? cs.onPrimary : cs.onSecondaryContainer,
        overlayColor: selected ? cs.onPrimary : cs.onSecondaryContainer,
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: selected ? cs.primary : cs.outline,
            width: 1.4,
          ),
        ),
      ),
      onPressed: () => _onLocaleSelected(locale),
      child: Text(
        locale,
        style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
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

  String getDateTimeFormatFixed(String lo) {
    final ILibDateOptions dateOptions =
        ILibDateOptions(dateTime: DateTime(2026, 5, 23, 16, 30, 0));
    final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: lo,
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
    const double sample = 111123456.785;
    final String native = ILibNumFmt(
      ILibNumFmtOptions(locale: curlo, useNative: true),
    ).format(sample);
    final String latin = ILibNumFmt(
      ILibNumFmtOptions(locale: curlo, useNative: false),
    ).format(sample);
    return native == latin ? native : '$native ($latin)';
  }

  String getCalendarName(String curlo) {
    final ILibLocaleInfo locInfo = ILibLocaleInfo(curlo);
    return locInfo.getCalendar();
  }

  String getDurationFmt(String curlo) {
    final ILibDurationFmt fmt =
        ILibDurationFmt(ILibDurationFmtOptions(locale: curlo, length: 'long'));
    return fmt.format(ILibDateOptions(hour: 1, minute: 30));
  }
}
