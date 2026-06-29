import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_numfmt_test.dart] file.');
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    await ILibLoader.instance.loadILibLocaleDataAll();
  });

  group('iLibNumFmt-format()', () {
    test('testNumFmtNumberFormatNull', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(null), '');
    });
    test('testNumFmtNumberFormatNaN', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(double.nan), 'NaN');
    });
    test('testNumFmtNumberFormatNaNNegative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(-double.nan), 'NaN');
    });
    test('testNumFmtNumberFormatInfinity', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(double.infinity), 'Infinity');
    });
    test('testNumFmtNumberFormatInfinityNegative', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(fmt.format(-double.infinity), '-Infinity');
    });
    test('testNumFmtInvalidArgumentType', () {
      final ILibNumFmt fmt = ILibNumFmt(ILibNumFmtOptions());

      expect(fmt, isNotNull);
      expect(() => fmt.format(<dynamic>[]), throwsArgumentError);
      expect(() => fmt.format(<String, dynamic>{}), throwsArgumentError);
      expect(() => fmt.format(null), returnsNormally);
    });
  });
}
