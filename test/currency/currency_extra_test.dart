// Dart-only tests for ILibCurrency that have no counterpart in the iLib JS
// testcurrency.js. Currency metadata is stored in the loader's rootData
// (ILibLoader.instance.getRootData()), so getAvailableCurrencies() enumerates
// currency codes from rootData rather than per-locale tables.

import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [currency_extra_test.dart] file.');
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleDataAll();
  });

  group('ILibCurrency extra', () {
    test('getAvailableCurrencies returns the bundled ISO 4217 codes', () {
      final List<String> currencies =
          ILibCurrency.getAvailableCurrencies();

      expect(currencies, isNotEmpty);
      // Common currencies that must be present in the bundled data.
      expect(currencies, contains('USD'));
      expect(currencies, contains('EUR'));
      expect(currencies, contains('JPY'));
    });
  });
}
