import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// flutter_ilib-specific (no JS counterpart): `ilib.data.astro` is locale-
// independent and lives only in root.json, so it is read from the root data
// directly (ILibLoader.getRootData) rather than via getLocaleData(currentLocale).
// This is the regression guard for the Persian/equinox crash that happened when
// the active locale had no astro-bearing data (`null as List` in equinox).
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  test('getRootData exposes locale-independent astro coefficients', () {
    final Map<String, dynamic>? root = ILibLoader.instance.getRootData();
    expect(root, isNotNull);
    expect(root!['ilib.data.astro'], isA<Map<String, dynamic>>());

    final Map<String, dynamic>? astro =
        root['ilib.data.astro'] as Map<String, dynamic>?;
    // The coefficient tables the equinox calculation indexes into.
    expect(astro!['_JDE0tab2000'], isA<List<dynamic>>());
    expect(astro['_JDE0tab1000'], isA<List<dynamic>>());
    expect(astro['_EquinoxpTerms'], isA<List<dynamic>>());
  });

  test('equinox resolves astro from root regardless of the active locale', () {
    // Only root + the system locale are loaded above; no Persian locale data
    // is loaded. equinox must still compute (astro comes from root.json) and
    // not throw `null as List`.
    final double jd = ILibAstro.equinox(2026, 0);
    expect(jd, isA<double>());
    expect(jd, greaterThan(2400000.0)); // a plausible Julian Day
  });
}
