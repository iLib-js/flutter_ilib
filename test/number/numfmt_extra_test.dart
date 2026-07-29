import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [numfmt_extra_test.dart] file.');
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleDataAll();
  });

  group('iLibNumFmt extra', () {
    // Dart-specific: no JS counterpart. NumFmt.js falls back to halfdown when
    // MathUtils[roundingMode] is undefined; verify the reported mode and the
    // applied rounding both fall back for an unknown mode name.
    test('testNumFmtInvalidRoundingModeFallsBackToHalfdown', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
        roundingMode: 'bogus',
        maxFractionDigits: 0,
      ));

      expect(fmt, isNotNull);
      expect(fmt.getRoundingMode(), 'halfdown');
      // halfdown: a tie rounds toward zero.
      expect(fmt.format(2.5), '2');
      expect(fmt.format(3.5), '3');
    });

    test('testNumFmtValidRoundingModeIsPreserved', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions(
        roundingMode: 'halfup',
        maxFractionDigits: 0,
      ));

      expect(fmt.getRoundingMode(), 'halfup');
      // halfup: a tie rounds away from zero.
      expect(fmt.format(2.5), '3');
    });
  });
}
