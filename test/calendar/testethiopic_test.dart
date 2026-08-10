import 'package:flutter/foundation.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  debugPrint('Testing [testethiopic_test.dart] file.');
  group('EthiopicCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = EthiopicCal();
      expect(cal.getNumMonths(2007), 13);
    });
    test('GetMonLength 1', () {
      expect(EthiopicCal().getMonLength(1, 2007), 30);
    });
    test('GetMonLength 2', () {
      expect(EthiopicCal().getMonLength(2, 2007), 30);
    });
    test('GetMonLength 3', () {
      expect(EthiopicCal().getMonLength(3, 2007), 30);
    });
    test('GetMonLength 4', () {
      expect(EthiopicCal().getMonLength(4, 2007), 30);
    });
    test('GetMonLength 5', () {
      expect(EthiopicCal().getMonLength(5, 2007), 30);
    });
    test('GetMonLength 6', () {
      expect(EthiopicCal().getMonLength(6, 2007), 30);
    });
    test('GetMonLength 7', () {
      expect(EthiopicCal().getMonLength(7, 2007), 30);
    });
    test('GetMonLength 8', () {
      expect(EthiopicCal().getMonLength(8, 2007), 30);
    });
    test('GetMonLength 9', () {
      expect(EthiopicCal().getMonLength(9, 2007), 30);
    });
    test('GetMonLength 10', () {
      expect(EthiopicCal().getMonLength(10, 2007), 30);
    });
    test('GetMonLength 11', () {
      expect(EthiopicCal().getMonLength(11, 2007), 30);
    });
    test('GetMonLength 12', () {
      expect(EthiopicCal().getMonLength(12, 2007), 30);
    });
    test('GetMonLength 13 LeapYear', () {
      final ILibCalendar cal = EthiopicCal();
      expect(cal.getMonLength(13, 2007), 6);
    });
    test('GetMonLength 13', () {
      final ILibCalendar cal = EthiopicCal();
      expect(cal.getMonLength(13, 2008), 5);
    });
    test('IsLeapYear', () {
      expect(EthiopicCal().isLeapYear(2007), true);
    });
    test('IsLeapYear 1', () {
      expect(EthiopicCal().isLeapYear(2008), false);
    });
    test('IsLeapYear 2', () {
      expect(EthiopicCal().isLeapYear(2009), false);
    });
    test('IsLeapYear 3', () {
      expect(EthiopicCal().isLeapYear(2010), false);
    });
    test('IsLeapYear 4', () {
      expect(EthiopicCal().isLeapYear(2011), true);
    });
    test('IsLeapYear BM0', () {
      expect(EthiopicCal().isLeapYear(0), false);
    });
    test('IsLeapYear BMMinus1', () {
      expect(EthiopicCal().isLeapYear(-1), true);
    });
    test('IsLeapYear BMMinus2', () {
      expect(EthiopicCal().isLeapYear(-2), false);
    });
    test('IsLeapYear BMMinus3', () {
      expect(EthiopicCal().isLeapYear(-3), false);
    });
    test('IsLeapYear BMMinus4', () {
      expect(EthiopicCal().isLeapYear(-4), false);
    });
    test('IsLeapYear OnMillenium', () {
      expect(EthiopicCal().isLeapYear(2003), true);
    });
    test('IsLeapYear OnCentury0', () {
      expect(EthiopicCal().isLeapYear(1603), true);
    });
    test('IsLeapYear OnCentury1', () {
      expect(EthiopicCal().isLeapYear(1703), true);
    });
    test('IsLeapYear OnCentury2', () {
      expect(EthiopicCal().isLeapYear(1803), true);
    });
    test('IsLeapYear OnCentury3', () {
      expect(EthiopicCal().isLeapYear(1903), true);
    });
    test('IsLeapYear OnQuadCentennial', () {
      expect(EthiopicCal().isLeapYear(2003), true);
    });
  });
}
