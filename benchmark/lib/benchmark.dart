// flutter_ilib performance / memory benchmark (version A/B comparison)
//
// Goal: compare this branch (pure Dart, v2.0+) against the JS-interop release
// (v1.3.0) using the SAME workload, to confirm startup / per-op / memory gains.
//
// HOW TO RUN (do NOT use debug mode — it skews results), from benchmark/:
//   flutter run --profile -d linux -t lib/benchmark.dart
// The results are shown on screen AND printed to the console (look for `[BENCH]`).
//
// HOW TO COMPARE WITH v1.3.0 (its example/ uses the released flat layout):
//   git worktree add ../flutter_ilib-v1.3.0 v1.3.0
//   cp lib/benchmark.dart ../flutter_ilib-v1.3.0/example/lib/benchmark.dart
//   # v1.3.0 needs the QuickJS bridge built (see that tag's README / execute_unit_test.sh)
//   cd ../flutter_ilib-v1.3.0/example && flutter run --profile -d linux -t lib/benchmark.dart
// Then put the two result tables side by side.
//
// This file uses ONLY the public API shared by v1.3.0 and the current branch,
// so the same file runs unmodified on both.

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

// Measures "main() entry → iLib ready" (the JS-engine boot cost that v2.0
// removes). NOTE: a top-level `Stopwatch()..start()` is lazily initialized on
// first access (which is `.stop()` in _onReady), so it would report ~0 ms —
// start it explicitly at the top of main() instead.
final Stopwatch _bootSw = Stopwatch();

// ---- Workload knobs ----------------------------------------------------------
const List<String> _locales = <String>[
  'en-US',
  'en-GB',
  'ko-KR',
  'fa-IR',
  'am-ET',
];
const int _formatIters = 5000; // ILibDateFmt.format() calls
const int _constructIters = 5000; // ILibDateFmt construct + format
const int _localeInfoIters = 20000; // ILibLocaleInfo.getFirstDayOfWeek()
const int _sustainRounds = 6; // sustained-workload rounds (memory trend)
const int _sustainOps = 5000; // ops per round
// -----------------------------------------------------------------------------

int _rssMb() => ProcessInfo.currentRss ~/ (1024 * 1024);

/// Returns microseconds per operation, with a warm-up pass first.
double _perOp(int iters, void Function() body) {
  final int warm = (iters ~/ 10).clamp(1, 2000);
  for (int i = 0; i < warm; i++) {
    body();
  }
  final Stopwatch sw = Stopwatch()..start();
  for (int i = 0; i < iters; i++) {
    body();
  }
  sw.stop();
  return sw.elapsedMicroseconds / iters;
}

void main() {
  _bootSw.start();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BenchmarkApp());
}

class BenchmarkApp extends StatefulWidget {
  const BenchmarkApp({super.key});

  @override
  State<BenchmarkApp> createState() => _BenchmarkAppState();
}

class _BenchmarkAppState extends State<BenchmarkApp> {
  final FlutterILib _ilib = FlutterILib.instance;
  String _report = 'Running benchmark…';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      if (_ilib.isILibReady) {
        _onReady();
      } else {
        _ilib.addListener(_onReady);
      }
    });
  }

  bool _done = false;
  void _onReady() {
    if (_done) {
      return;
    }
    _done = true;
    _bootSw.stop();
    // Let the first frame settle, then run off the build phase.
    Future<void>.delayed(const Duration(milliseconds: 50), _runBenchmark);
  }

  Future<void> _runBenchmark() async {
    final List<String> lines = <String>[];
    void row(String label, String value) {
      lines.add('${label.padRight(26)} $value');
      // Console line for log capture / headless comparison.
      // ignore: avoid_print
      print('[BENCH] ${label.padRight(26)} $value');
    }

    // getVersion is String on this branch but String? on v1.3.0 — interpolate
    // so the same file compiles on both.
    String version;
    try {
      // ignore: unnecessary_string_interpolations
      version = '${_ilib.getVersion}';
    } catch (_) {
      version = '(unknown)';
    }

    row('iLib version', version);
    row('init → ready', '${_bootSw.elapsedMilliseconds} ms');
    final int rssAfterReady = _rssMb();
    row('RSS after ready', '$rssAfterReady MB');

    // Preload the benchmark locales, then let async loads settle.
    _locales.forEach(_ilib.loadLocaleData);
    await Future<void>.delayed(const Duration(milliseconds: 800));
    final int rssAfterLoad = _rssMb();
    row('RSS after locale load', '$rssAfterLoad MB');

    // --- format(): reused formatter, steady-state per-op cost ---
    final ILibDateOptions date = ILibDateOptions(dateTime: DateTime.now());
    int li = 0;
    final List<ILibDateFmt> fmts = _locales
        .map((String lo) => ILibDateFmt(ILibDateFmtOptions(
              locale: lo,
              length: 'full',
              type: 'datetime',
              useNative: false,
              timezone: 'local',
            )))
        .toList();
    final double formatUs = _perOp(_formatIters, () {
      fmts[li++ % fmts.length].format(date);
    });
    row('format() reused', '${formatUs.toStringAsFixed(3)} µs/op');

    // --- construct + format(): realistic per-call cost ---
    int ci = 0;
    final double constructUs = _perOp(_constructIters, () {
      final String lo = _locales[ci++ % _locales.length];
      ILibDateFmt(ILibDateFmtOptions(
        locale: lo,
        length: 'full',
        type: 'datetime',
        useNative: false,
        timezone: 'local',
      )).format(date);
    });
    row('construct + format()', '${constructUs.toStringAsFixed(3)} µs/op');

    // --- ILibLocaleInfo lookup ---
    int ii = 0;
    final double infoUs = _perOp(_localeInfoIters, () {
      ILibLocaleInfo(_locales[ii++ % _locales.length]).getFirstDayOfWeek();
    });
    row('LocaleInfo lookup', '${infoUs.toStringAsFixed(3)} µs/op');

    final int rssAfterWork = _rssMb();
    row('RSS after workload', '$rssAfterWork MB');

    // --- Sustained workload: track RSS over rounds (v1.3.0's JS heap churns
    //     under repeated evaluate() calls; pure Dart stays flat). ---
    int peak = rssAfterWork;
    for (int r = 1; r <= _sustainRounds; r++) {
      for (int i = 0; i < _sustainOps; i++) {
        fmts[i % fmts.length].format(date);
        ILibLocaleInfo(_locales[i % _locales.length]).getFirstDayOfWeek();
      }
      final int rss = _rssMb();
      if (rss > peak) {
        peak = rss;
      }
      row('RSS sustain r$r', '$rss MB');
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
        appBar: AppBar(title: const Text('flutter_ilib benchmark')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Text(
              _report,
              style: const TextStyle(
                fontFamily: 'monospace',
                fontSize: 22,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
