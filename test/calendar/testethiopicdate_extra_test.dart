import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EthiopicDate getCalendar', () {
    test('testEthiopicDateGetCalendar', () {
      final EthiopicDate ed = EthiopicDate(year: 2010, month: 1, day: 1);
      expect(ed.getCalendar(), 'ethiopic');
    });
  });
}
