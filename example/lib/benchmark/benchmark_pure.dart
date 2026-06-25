// Empty Flutter app baseline — NO flutter_ilib, NO i18n, NO workload.
//
// Purpose: measure the floor — how much RSS the bare Flutter desktop engine +
// Dart runtime use, and how long main()→first-frame takes. Subtract this from
// the flutter_ilib / v1.3.0 numbers to see iLib's marginal cost.
//
// HOW TO RUN (from example/):
//   flutter run --profile -d linux -t lib/benchmark/benchmark_pure.dart

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

final Stopwatch _bootSw = Stopwatch();

int _rssMb() => ProcessInfo.currentRss ~/ (1024 * 1024);

void main() {
  _bootSw.start();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PureBaselineApp());
}

class PureBaselineApp extends StatefulWidget {
  const PureBaselineApp({super.key});

  @override
  State<PureBaselineApp> createState() => _PureBaselineAppState();
}

class _PureBaselineAppState extends State<PureBaselineApp> {
  String _report = 'Measuring empty-app baseline…';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      _bootSw.stop();
      _measure();
    });
  }

  Future<void> _measure() async {
    final List<String> lines = <String>[];
    void row(String label, String value) {
      lines.add('${label.padRight(26)} $value');
      // ignore: avoid_print
      print('[BENCH] ${label.padRight(26)} $value');
    }

    row('variant', 'empty app (no flutter_ilib)');
    row('init → ready', '${_bootSw.elapsedMilliseconds} ms');
    row('RSS after ready', '${_rssMb()} MB');

    // Idle and re-probe to show the steady baseline (no workload runs).
    int peak = _rssMb();
    for (int r = 1; r <= 6; r++) {
      await Future<void>.delayed(const Duration(seconds: 1));
      final int rss = _rssMb();
      if (rss > peak) {
        peak = rss;
      }
      row('RSS idle r$r', '$rss MB');
    }
    row('RSS peak', '$peak MB');

    if (!mounted) {
      return;
    }
    setState(() => _report = lines.join('\n'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('empty-app baseline')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Text(
              _report,
              style: const TextStyle(fontFamily: 'monospace', fontSize: 22),
            ),
          ),
        ),
      ),
    );
  }
}
