import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [numfmt3_test.dart] file.');
  setUpAll(() async {
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
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
