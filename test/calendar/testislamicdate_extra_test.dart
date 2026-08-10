import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [testislamicdate_extra_test.dart] file.');
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('IslamicDate from JD', () {
    test('basic JD', () {
      final IslamicDate d =
          IslamicDate(julianDay: 2450138.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 1416);
      expect(d.getMonths(), 10);
      expect(d.getDays(), 5);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('IslamicDate from components', () {
    test('basic date', () {
      final IslamicDate d = IslamicDate(
          year: 1445,
          month: 9,
          day: 1,
          hour: 5,
          minute: 30,
          second: 0,
          millisecond: 0,
          timezone: 'Etc/UTC');
      expect(d.getYears(), 1445);
      expect(d.getMonths(), 9);
      expect(d.getDays(), 1);
      expect(d.getHours(), 5);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('IslamicDate getCalendar', () {
    test('returns islamic', () {
      final IslamicDate d = IslamicDate(year: 1445, month: 1, day: 1);
      expect(d.getCalendar(), 'islamic');
    });
  });
}
