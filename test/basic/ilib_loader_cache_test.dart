import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [ilib_loader_cache_test.dart] file.');
  final ILibLoader loader = ILibLoader.instance;
  final FlutterILib plugin = FlutterILib.instance;

  setUp(() async {
    await loader.loadJSON();
    await loader.loadILibLocaleData('en-US');
  });

  group('clearLocale', () {
    test('drops the cached locale but keeps iLib ready', () async {
      expect(loader.getLocaleData('en-US'), isNotNull);
      expect(loader.isILibReady, true);

      loader.clearLocale('en-US');

      // iLib stays ready; data re-merges lazily from the file cache.
      expect(loader.isILibReady, true);
      expect(loader.getLocaleData('en-US'), isNotNull);
    });

    test('leaves other locales untouched', () async {
      await loader.loadILibLocaleData('fr-FR');
      expect(loader.getLocaleData('fr-FR'), isNotNull);

      loader.clearLocale('en-US');

      expect(loader.getLocaleData('fr-FR'), isNotNull);
    });

    test('normalizes the locale key (underscore spelling matches)', () async {
      // Data is stored under the normalized key 'ko-KR'. clearLocale and
      // getLocaleData must normalize too, so the underscore spelling resolves
      // to the same entry instead of missing it.
      await loader.loadILibLocaleData('ko-KR');
      expect(loader.getLocaleData('ko_KR'), isNotNull);

      loader.clearLocale('ko_KR');

      // Re-merges from the file cache under the normalized key.
      expect(loader.getLocaleData('ko-KR'), isNotNull);
    });
  });

  group('getLocaleData lazy merge', () {
    test('returns null when an existing asset is not cached yet', () {
      // de-DE.json exists on disk but has not been loaded in this test, so it
      // is not in the file cache. getLocaleData must not fabricate partial data
      // from the ancestor files (root/de) that happen to be cached — merging
      // now would silently drop de-DE.json, so it returns null instead.
      expect(loader.getLocaleData('de-DE'), isNull);
    });

    test('re-merges a locale that was loaded then cleared', () async {
      await loader.loadILibLocaleData('de-DE');
      expect(loader.getLocaleData('de-DE'), isNotNull);

      loader.clearLocale('de-DE');

      // Every file is still in the shared file cache, so the merge is complete
      // and the data comes back on next access.
      expect(loader.getLocaleData('de-DE'), isNotNull);
    });

    test('resolves a region with no file of its own via language fallback', () {
      // en-CW has no en-CW.json (nor und-CW.json); it legitimately resolves to
      // the 'en' language data. Once root+en are cached (loadJSON loaded the
      // en-US system locale), the merge is complete despite the absent files,
      // so getLocaleData returns data rather than null.
      expect(loader.getLocaleData('en-CW'), isNotNull);
    });
  });

  group('clearCache', () {
    test('resets to the not-ready state', () async {
      expect(loader.isILibReady, true);

      loader.clearCache();

      expect(loader.isILibReady, false);

      // Restore shared singleton state for the rest of the suite.
      await loader.loadJSON();
      expect(loader.isILibReady, true);
    });
  });

  group('FlutterILib.clearLocaleData wrapper', () {
    test('delegates to ILibLoader.clearLocale', () async {
      expect(loader.getLocaleData('en-US'), isNotNull);

      plugin.clearLocaleData('en-US');

      // iLib stays ready and the data re-merges from the file cache.
      expect(loader.isILibReady, true);
      expect(loader.getLocaleData('en-US'), isNotNull);
    });
  });
}
