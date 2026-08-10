import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [testgregorian_test.dart] file.');
  group('GregorianCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getNumMonths(2011), 12);
    });
    test('getMonLength Jan', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(1, 2011), 31);
    });
    test('getMonLength Feb', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(2, 2011), 28);
    });
    test('getMonLength Feb LeapYear', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(2, 2012), 29);
    });
    test('getMonLength Mar', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(3, 2011), 31);
    });
    test('getMonLength Apr', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(4, 2011), 30);
    });
    test('getMonLength May', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(5, 2011), 31);
    });
    test('getMonLength Jun', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(6, 2011), 30);
    });
    test('getMonLength Jul', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(7, 2011), 31);
    });
    test('getMonLength Aug', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(8, 2011), 31);
    });
    test('getMonLength Sep', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(9, 2011), 30);
    });
    test('getMonLength Oct', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(10, 2011), 31);
    });
    test('getMonLength Nov', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(11, 2011), 30);
    });
    test('getMonLength Dec', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.getMonLength(12, 2011), 31);
    });
    test('IsLeapYear', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.isLeapYear(2012), true);
    });
    test('IsLeapYear Not', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.isLeapYear(2011), false);
    });
    test('IsLeapYear NotOnCentury1', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.isLeapYear(1700), false);
    });
    test('IsLeapYear NotOnCentury2', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.isLeapYear(1800), false);
    });
    test('IsLeapYear NotOnCentury3', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.isLeapYear(1900), false);
    });
    test('IsLeapYear OnQuadCentennial', () {
      final ILibCalendar cal = GregorianCal();
      expect(cal.isLeapYear(2000), true);
    });
  });
}
