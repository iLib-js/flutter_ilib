import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThaiSolarCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getNumMonths(2554), 12);
    });
    test('getMonLength Jan', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(1, 2554), 31);
    });
    test('getMonLength Feb', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(2, 2554), 28);
    });
    test('getMonLength Feb LeapYear', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(2, 2555), 29);
    });
    test('getMonLength Mar', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(3, 2554), 31);
    });
    test('getMonLength Apr', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(4, 2554), 30);
    });
    test('getMonLength May', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(5, 2554), 31);
    });
    test('getMonLength Jun', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(6, 2554), 30);
    });
    test('getMonLength Jul', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(7, 2554), 31);
    });
    test('getMonLength Aug', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(8, 2554), 31);
    });
    test('getMonLength Sep', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(9, 2554), 30);
    });
    test('getMonLength Oct', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(10, 2554), 31);
    });
    test('getMonLength Nov', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(11, 2554), 30);
    });
    test('getMonLength Dec', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.getMonLength(12, 2554), 31);
    });
    test('IsLeapYear', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.isLeapYear(2555), true);
    });
    test('IsLeapYear Not', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.isLeapYear(2554), false);
    });
    test('IsLeapYear NotOnCentury1', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.isLeapYear(2243), false);
    });
    test('IsLeapYear NotOnCentury2', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.isLeapYear(2343), false);
    });
    test('IsLeapYear NotOnCentury3', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.isLeapYear(2443), false);
    });
    test('IsLeapYear OnQuadCentennial', () {
      final ILibCalendar cal = ILibCalendar('thaisolar');
      expect(cal.isLeapYear(2543), true);
    });
  });
}
