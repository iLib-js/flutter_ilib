import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('HebrewDate from JD', () {
    test('basic JD', () {
      final HebrewDate d =
          HebrewDate(julianDay: 2450138.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 5756);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 5);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('HebrewDate from components', () {
    test('basic date', () {
      final HebrewDate d = HebrewDate(
          year: 5784,
          month: 7,
          day: 15,
          hour: 10,
          minute: 30,
          second: 0,
          millisecond: 0);
      expect(d.getYears(), 5784);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 15);
      expect(d.getHours(), 10);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('HebrewDate getCalendar', () {
    test('returns hebrew', () {
      final HebrewDate d = HebrewDate(year: 5784, month: 1, day: 1);
      expect(d.getCalendar(), 'hebrew');
    });
  });
}
