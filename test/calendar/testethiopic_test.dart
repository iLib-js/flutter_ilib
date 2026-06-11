import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EthiopicCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = ILibCalendar('ethiopic');
      expect(cal.getNumMonths(2007), 13);
    });
    test('GetMonLength 1', () { expect(ILibCalendar('ethiopic').getMonLength(1, 2007), 30); });
    test('GetMonLength 2', () { expect(ILibCalendar('ethiopic').getMonLength(2, 2007), 30); });
    test('GetMonLength 3', () { expect(ILibCalendar('ethiopic').getMonLength(3, 2007), 30); });
    test('GetMonLength 4', () { expect(ILibCalendar('ethiopic').getMonLength(4, 2007), 30); });
    test('GetMonLength 5', () { expect(ILibCalendar('ethiopic').getMonLength(5, 2007), 30); });
    test('GetMonLength 6', () { expect(ILibCalendar('ethiopic').getMonLength(6, 2007), 30); });
    test('GetMonLength 7', () { expect(ILibCalendar('ethiopic').getMonLength(7, 2007), 30); });
    test('GetMonLength 8', () { expect(ILibCalendar('ethiopic').getMonLength(8, 2007), 30); });
    test('GetMonLength 9', () { expect(ILibCalendar('ethiopic').getMonLength(9, 2007), 30); });
    test('GetMonLength 10', () { expect(ILibCalendar('ethiopic').getMonLength(10, 2007), 30); });
    test('GetMonLength 11', () { expect(ILibCalendar('ethiopic').getMonLength(11, 2007), 30); });
    test('GetMonLength 12', () { expect(ILibCalendar('ethiopic').getMonLength(12, 2007), 30); });
    test('GetMonLength 13 LeapYear', () {
      final ILibCalendar cal = ILibCalendar('ethiopic');
      expect(cal.getMonLength(13, 2007), 6);
    });
    test('GetMonLength 13', () {
      final ILibCalendar cal = ILibCalendar('ethiopic');
      expect(cal.getMonLength(13, 2008), 5);
    });
    test('IsLeapYear', () { expect(ILibCalendar('ethiopic').isLeapYear(2007), true); });
    test('IsLeapYear 1', () { expect(ILibCalendar('ethiopic').isLeapYear(2008), false); });
    test('IsLeapYear 2', () { expect(ILibCalendar('ethiopic').isLeapYear(2009), false); });
    test('IsLeapYear 3', () { expect(ILibCalendar('ethiopic').isLeapYear(2010), false); });
    test('IsLeapYear 4', () { expect(ILibCalendar('ethiopic').isLeapYear(2011), true); });
    test('IsLeapYear BM0', () { expect(ILibCalendar('ethiopic').isLeapYear(0), false); });
    test('IsLeapYear BMMinus1', () { expect(ILibCalendar('ethiopic').isLeapYear(-1), true); });
    test('IsLeapYear BMMinus2', () { expect(ILibCalendar('ethiopic').isLeapYear(-2), false); });
    test('IsLeapYear BMMinus3', () { expect(ILibCalendar('ethiopic').isLeapYear(-3), false); });
    test('IsLeapYear BMMinus4', () { expect(ILibCalendar('ethiopic').isLeapYear(-4), false); });
    test('IsLeapYear OnMillenium', () { expect(ILibCalendar('ethiopic').isLeapYear(2003), true); });
    test('IsLeapYear OnCentury0', () { expect(ILibCalendar('ethiopic').isLeapYear(1603), true); });
    test('IsLeapYear OnCentury1', () { expect(ILibCalendar('ethiopic').isLeapYear(1703), true); });
    test('IsLeapYear OnCentury2', () { expect(ILibCalendar('ethiopic').isLeapYear(1803), true); });
    test('IsLeapYear OnCentury3', () { expect(ILibCalendar('ethiopic').isLeapYear(1903), true); });
    test('IsLeapYear OnQuadCentennial', () { expect(ILibCalendar('ethiopic').isLeapYear(2003), true); });
  });
}
