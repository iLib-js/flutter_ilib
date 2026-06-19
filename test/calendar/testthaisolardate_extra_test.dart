import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('ThaiSolarDate from JD', () {
    test('basic JD', () {
      final ThaiSolarDate d = ThaiSolarDate(julianDay: 2450138.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 2539);
      expect(d.getMonths(), 2);
      expect(d.getDays(), 25);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('ThaiSolarDate from components', () {
    test('basic date', () {
      final ThaiSolarDate d = ThaiSolarDate(
          year: 2567, month: 3, day: 15, hour: 8, minute: 30, second: 0, millisecond: 0);
      expect(d.getYears(), 2567);
      expect(d.getMonths(), 3);
      expect(d.getDays(), 15);
      expect(d.getHours(), 8);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('ThaiSolarDate getCalendar', () {
    test('returns thaisolar', () {
      final ThaiSolarDate d = ThaiSolarDate(year: 2567, month: 1, day: 1);
      expect(d.getCalendar(), 'thaisolar');
    });
  });
}
