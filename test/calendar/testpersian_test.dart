import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PersianAlgoCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getNumMonths(1392), 12);
    });
    test('GetMonLength 1', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(1, 1392), 31);
    });
    test('GetMonLength 2', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(2, 1392), 31);
    });
    test('GetMonLength 3', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(3, 1392), 31);
    });
    test('GetMonLength 4', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(4, 1392), 31);
    });
    test('GetMonLength 5', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(5, 1392), 31);
    });
    test('GetMonLength 6', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(6, 1392), 31);
    });
    test('GetMonLength 7', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(7, 1392), 30);
    });
    test('GetMonLength 8', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(8, 1392), 30);
    });
    test('GetMonLength 9', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(9, 1392), 30);
    });
    test('GetMonLength 10', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(10, 1392), 30);
    });
    test('GetMonLength 11', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(11, 1392), 30);
    });
    test('GetMonLength 12', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(12, 1392), 29);
    });
    test('GetMonLength 12 LeapYear', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.getMonLength(12, 1391), 30);
    });
    test('IsLeapYear', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.isLeapYear(1391), true);
    });
    test('IsLeapYear Not', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.isLeapYear(1392), false);
    });
    test('IsLeapYear 1393', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.isLeapYear(1393), false);
    });
    test('IsLeapYear 1394', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.isLeapYear(1394), false);
    });
    test('IsLeapYear 1395', () {
      final ILibCalendar cal = PersianAlgoCal();
      expect(cal.isLeapYear(1395), true);
    });
  });
}
