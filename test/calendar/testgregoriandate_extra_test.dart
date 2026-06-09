import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GregorianDate getCalendar', () {
    test('testGregDateGetCalendar', () {
      final GregorianDate gd = GregorianDate(year: 2011, month: 1, day: 1);
      expect(gd.getCalendar(), 'gregorian');
    });
  });
}
