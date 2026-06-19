import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('PersianCal getNumMonths', () {
    test('GetNumMonths', () {
      final PersianCal cal = PersianCal();
      expect(cal.getNumMonths(1392), 12);
    });
  });

  group('PersianCal getMonLength', () {
    test('GetMonLength 1', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(1, 1392), 31);
    });
    test('GetMonLength 2', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(2, 1392), 31);
    });
    test('GetMonLength 3', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(3, 1392), 31);
    });
    test('GetMonLength 4', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(4, 1392), 31);
    });
    test('GetMonLength 5', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(5, 1392), 31);
    });
    test('GetMonLength 6', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(6, 1392), 31);
    });
    test('GetMonLength 7', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(7, 1392), 30);
    });
    test('GetMonLength 8', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(8, 1392), 30);
    });
    test('GetMonLength 9', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(9, 1392), 30);
    });
    test('GetMonLength 10', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(10, 1392), 30);
    });
    test('GetMonLength 11', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(11, 1392), 30);
    });
    test('GetMonLength 12', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(12, 1392), 29);
    });
    test('GetMonLength 12 LeapYear', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(12, 1391), 30);
    });
  });

  group('PersianCal isLeapYear', () {
    test('IsLeapYear', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1391), true);
    });
    test('IsLeapYear Not', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1392), false);
    });
    test('IsLeapYear 1393', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1393), false);
    });
    test('IsLeapYear 1394', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1394), false);
    });
    test('IsLeapYear 1395', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1395), true);
    });
  });
}
