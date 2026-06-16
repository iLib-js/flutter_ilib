import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IslamicCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getNumMonths(1), 12);
    });
    test('getMonLength 1', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(1, 1), 30);
    });
    test('getMonLength 2', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(2, 1), 29);
    });
    test('getMonLength 3', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(3, 1), 30);
    });
    test('getMonLength 4', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(4, 1), 29);
    });
    test('getMonLength 5', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(5, 1), 30);
    });
    test('getMonLength 6', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(6, 1), 29);
    });
    test('getMonLength 7', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(7, 1), 30);
    });
    test('getMonLength 8', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(8, 1), 29);
    });
    test('getMonLength 9', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(9, 1), 30);
    });
    test('getMonLength 10', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(10, 1), 29);
    });
    test('getMonLength 11', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(11, 1), 30);
    });
    test('getMonLength 12', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(12, 1), 29);
    });
    test('getMonLength 12 LeapYear', () {
      final ILibCalendar cal = IslamicCal();
      expect(cal.getMonLength(12, 2), 30);
    });
    test('IsLeapYear 1', () { expect(IslamicCal().isLeapYear(1), false); });
    test('IsLeapYear 2', () { expect(IslamicCal().isLeapYear(2), true); });
    test('IsLeapYear 3', () { expect(IslamicCal().isLeapYear(3), false); });
    test('IsLeapYear 4', () { expect(IslamicCal().isLeapYear(4), false); });
    test('IsLeapYear 5', () { expect(IslamicCal().isLeapYear(5), true); });
    test('IsLeapYear 6', () { expect(IslamicCal().isLeapYear(6), false); });
    test('IsLeapYear 7', () { expect(IslamicCal().isLeapYear(7), true); });
    test('IsLeapYear 8', () { expect(IslamicCal().isLeapYear(8), false); });
    test('IsLeapYear 9', () { expect(IslamicCal().isLeapYear(9), false); });
    test('IsLeapYear 10', () { expect(IslamicCal().isLeapYear(10), true); });
    test('IsLeapYear 11', () { expect(IslamicCal().isLeapYear(11), false); });
    test('IsLeapYear 12', () { expect(IslamicCal().isLeapYear(12), false); });
    test('IsLeapYear 13', () { expect(IslamicCal().isLeapYear(13), true); });
    test('IsLeapYear 14', () { expect(IslamicCal().isLeapYear(14), false); });
    test('IsLeapYear 15', () { expect(IslamicCal().isLeapYear(15), false); });
    test('IsLeapYear 16', () { expect(IslamicCal().isLeapYear(16), true); });
    test('IsLeapYear 17', () { expect(IslamicCal().isLeapYear(17), false); });
    test('IsLeapYear 18', () { expect(IslamicCal().isLeapYear(18), true); });
    test('IsLeapYear 19', () { expect(IslamicCal().isLeapYear(19), false); });
    test('IsLeapYear 20', () { expect(IslamicCal().isLeapYear(20), false); });
    test('IsLeapYear 21', () { expect(IslamicCal().isLeapYear(21), true); });
    test('IsLeapYear 22', () { expect(IslamicCal().isLeapYear(22), false); });
    test('IsLeapYear 23', () { expect(IslamicCal().isLeapYear(23), false); });
    test('IsLeapYear 24', () { expect(IslamicCal().isLeapYear(24), true); });
    test('IsLeapYear 25', () { expect(IslamicCal().isLeapYear(25), false); });
    test('IsLeapYear 26', () { expect(IslamicCal().isLeapYear(26), true); });
    test('IsLeapYear 27', () { expect(IslamicCal().isLeapYear(27), false); });
    test('IsLeapYear 28', () { expect(IslamicCal().isLeapYear(28), false); });
    test('IsLeapYear 29', () { expect(IslamicCal().isLeapYear(29), true); });
    test('IsLeapYear 30', () { expect(IslamicCal().isLeapYear(30), false); });
  });
}
