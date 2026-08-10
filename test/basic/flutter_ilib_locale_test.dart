import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_locale_test.dart] file.');
  final FlutterILib plugin = FlutterILib.instance;
  final ILibLoader loader = ILibLoader.instance;

  late String savedLocale;

  setUp(() async {
    savedLocale = plugin.locale;
    await loader.loadJSON();
  });

  tearDown(() {
    // Restore the shared singleton default locale for other suites.
    plugin.locale = savedLocale;
  });

  group('locale getter/setter', () {
    test('setting locale is reflected by the getter', () {
      plugin.locale = 'ko-KR';
      expect(plugin.locale, 'ko-KR');
    });

    test('setter normalizes the value (C/POSIX/und -> en-US)', () {
      plugin.locale = 'C';
      expect(plugin.locale, 'en-US');

      plugin.locale = 'ko_KR';
      expect(plugin.locale, 'ko-KR');
    });

    test('setting locale alone does NOT notify listeners', () {
      int calls = 0;
      void listener() => calls++;
      plugin.addListener(listener);
      addTearDown(() => plugin.removeListener(listener));

      plugin.locale = 'fr-FR';
      plugin.locale = 'de-DE';

      expect(calls, 0);
    });
  });

  group('loadLocaleData notify', () {
    test('loading a different locale notifies exactly once', () async {
      // Seed the last-loaded locale so the target below is a real change.
      await plugin.loadLocaleData('en-US');

      int calls = 0;
      void listener() => calls++;
      plugin.addListener(listener);
      addTearDown(() => plugin.removeListener(listener));

      await plugin.loadLocaleData('ko-KR');

      expect(calls, 1);
    });

    test('reloading the same locale does not notify', () async {
      await plugin.loadLocaleData('fr-FR');

      int calls = 0;
      void listener() => calls++;
      plugin.addListener(listener);
      addTearDown(() => plugin.removeListener(listener));

      await plugin.loadLocaleData('fr-FR');

      expect(calls, 0);
    });

    test(
        'setting locale then loading it still notifies '
        '(no order-dependent miss)', () async {
      await plugin.loadLocaleData('en-US');

      // Change the app-wide default first; notify must still fire on load
      // because the decision is based on the last *loaded* locale, not the
      // default locale.
      plugin.locale = 'ja-JP';

      int calls = 0;
      void listener() => calls++;
      plugin.addListener(listener);
      addTearDown(() => plugin.removeListener(listener));

      await plugin.loadLocaleData('ja-JP');

      expect(calls, 1);
    });
  });
}
