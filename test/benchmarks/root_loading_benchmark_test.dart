import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_ilib/ilib_init.dart';
import 'package:flutter_ilib/internal/ilib_utils.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('root loading benchmark', () async {
    const bool embedded =
        bool.fromEnvironment('ILIB_USE_EMBEDDED_ROOT', defaultValue: false);

    setLocale('ko-KR');

    final int rssBefore = ProcessInfo.currentRss;
    final Stopwatch stopwatch = Stopwatch()..start();

    final ILibLoader loader = ILibLoader.instance;
    await loader.loadJSON();

    stopwatch.stop();
    final int rssAfter = ProcessInfo.currentRss;

    // ignore: avoid_print
    print(
      'ROOT_BENCH mode=${embedded ? 'embedded' : 'asset'} '
      'elapsed_ms=${stopwatch.elapsedMilliseconds} '
      'rss_before=$rssBefore rss_after=$rssAfter '
      'rss_delta=${rssAfter - rssBefore} ready=${loader.isILibReady}',
    );

    expect(loader.isILibReady, isTrue);
  });
}
