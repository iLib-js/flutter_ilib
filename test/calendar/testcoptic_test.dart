import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CopticCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = ILibCalendar('coptic');
      expect(cal.getNumMonths(1731), 13);
    });
    test('GetMonLength 1', () { expect(ILibCalendar('coptic').getMonLength(1, 1731), 30); });
    test('GetMonLength 2', () { expect(ILibCalendar('coptic').getMonLength(2, 1731), 30); });
    test('GetMonLength 3', () { expect(ILibCalendar('coptic').getMonLength(3, 1731), 30); });
    test('GetMonLength 4', () { expect(ILibCalendar('coptic').getMonLength(4, 1731), 30); });
    test('GetMonLength 5', () { expect(ILibCalendar('coptic').getMonLength(5, 1731), 30); });
    test('GetMonLength 6', () { expect(ILibCalendar('coptic').getMonLength(6, 1731), 30); });
    test('GetMonLength 7', () { expect(ILibCalendar('coptic').getMonLength(7, 1731), 30); });
    test('GetMonLength 8', () { expect(ILibCalendar('coptic').getMonLength(8, 1731), 30); });
    test('GetMonLength 9', () { expect(ILibCalendar('coptic').getMonLength(9, 1731), 30); });
    test('GetMonLength 10', () { expect(ILibCalendar('coptic').getMonLength(10, 1731), 30); });
    test('GetMonLength 11', () { expect(ILibCalendar('coptic').getMonLength(11, 1731), 30); });
    test('GetMonLength 12', () { expect(ILibCalendar('coptic').getMonLength(12, 1731), 30); });
    test('GetMonLength 13 LeapYear', () {
      expect(ILibCalendar('coptic').getMonLength(13, 1731), 6);
    });
    test('GetMonLength 13', () {
      expect(ILibCalendar('coptic').getMonLength(13, 1732), 5);
    });
    test('IsLeapYear 1731', () { expect(ILibCalendar('coptic').isLeapYear(1731), true); });
    test('IsLeapYear 1732', () { expect(ILibCalendar('coptic').isLeapYear(1732), false); });
    test('IsLeapYear 1733', () { expect(ILibCalendar('coptic').isLeapYear(1733), false); });
    test('IsLeapYear 1734', () { expect(ILibCalendar('coptic').isLeapYear(1734), false); });
    test('IsLeapYear 1735', () { expect(ILibCalendar('coptic').isLeapYear(1735), true); });
    test('IsLeapYear BM0', () { expect(ILibCalendar('coptic').isLeapYear(0), false); });
    test('IsLeapYear BMMinus1', () { expect(ILibCalendar('coptic').isLeapYear(-1), true); });
    test('IsLeapYear BMMinus2', () { expect(ILibCalendar('coptic').isLeapYear(-2), false); });
    test('IsLeapYear BMMinus3', () { expect(ILibCalendar('coptic').isLeapYear(-3), false); });
    test('IsLeapYear BMMinus4', () { expect(ILibCalendar('coptic').isLeapYear(-4), false); });
    test('IsLeapYear OnMillenium', () { expect(ILibCalendar('coptic').isLeapYear(2003), true); });
    test('IsLeapYear OnCentury0', () { expect(ILibCalendar('coptic').isLeapYear(1603), true); });
    test('IsLeapYear OnCentury1', () { expect(ILibCalendar('coptic').isLeapYear(1703), true); });
    test('IsLeapYear OnCentury2', () { expect(ILibCalendar('coptic').isLeapYear(1803), true); });
    test('IsLeapYear OnCentury3', () { expect(ILibCalendar('coptic').isLeapYear(1903), true); });
    test('IsLeapYear OnQuadCentennial', () { expect(ILibCalendar('coptic').isLeapYear(2003), true); });
  });
}
