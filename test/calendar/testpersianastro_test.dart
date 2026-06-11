import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
  });

  group('PersianCal getNumMonths', () {
    test('testPersianGetNumMonths', () {
      final PersianCal cal = PersianCal();
      expect(cal.getNumMonths(1392), 12);
    });
  });

  group('PersianCal getMonLength', () {
    test('testPersianGetMonLength1', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(1, 1392), 31);
    });
    test('testPersianGetMonLength2', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(2, 1392), 31);
    });
    test('testPersianGetMonLength3', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(3, 1392), 31);
    });
    test('testPersianGetMonLength4', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(4, 1392), 31);
    });
    test('testPersianGetMonLength5', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(5, 1392), 31);
    });
    test('testPersianGetMonLength6', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(6, 1392), 31);
    });
    test('testPersianGetMonLength7', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(7, 1392), 30);
    });
    test('testPersianGetMonLength8', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(8, 1392), 30);
    });
    test('testPersianGetMonLength9', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(9, 1392), 30);
    });
    test('testPersianGetMonLength10', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(10, 1392), 30);
    });
    test('testPersianGetMonLength11', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(11, 1392), 30);
    });
    test('testPersianGetMonLength12', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(12, 1392), 29);
    });
    test('testPersianGetMonLength12LeapYear', () {
      final PersianCal cal = PersianCal();
      expect(cal.getMonLength(12, 1391), 30);
    });
  });

  group('PersianCal isLeapYear', () {
    test('testPersianIsLeapYear', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1391), true);
    });
    test('testPersianIsLeapYearNot', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1392), false);
    });
    test('testPersianIsLeapYear1', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1393), false);
    });
    test('testPersianIsLeapYear2', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1394), false);
    });
    test('testPersianIsLeapYear3', () {
      final PersianCal cal = PersianCal();
      expect(cal.isLeapYear(1395), true);
    });
  });
}
