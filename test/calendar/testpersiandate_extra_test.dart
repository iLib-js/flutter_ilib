import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [testpersiandate_extra_test.dart] file.');
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('PersianAlgoDate from JD', () {
    test('basic JD', () {
      final PersianAlgoDate d =
          PersianAlgoDate(julianDay: 2450138.5, timezone: 'Etc/UTC');
      expect(d.getYears(), 1374);
      expect(d.getMonths(), 12);
      expect(d.getDays(), 6);
      expect(d.getHours(), 0);
      expect(d.getMinutes(), 0);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('PersianAlgoDate from components', () {
    test('basic date', () {
      final PersianAlgoDate d = PersianAlgoDate(
          year: 1402,
          month: 7,
          day: 15,
          hour: 10,
          minute: 30,
          second: 0,
          millisecond: 0);
      expect(d.getYears(), 1402);
      expect(d.getMonths(), 7);
      expect(d.getDays(), 15);
      expect(d.getHours(), 10);
      expect(d.getMinutes(), 30);
      expect(d.getSeconds(), 0);
      expect(d.getMilliseconds(), 0);
    });
  });

  group('PersianAlgoDate getCalendar', () {
    test('returns persian-algo', () {
      final PersianAlgoDate d = PersianAlgoDate(year: 1402, month: 1, day: 1);
      expect(d.getCalendar(), 'persian-algo');
    });
  });
}
