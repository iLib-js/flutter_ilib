import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HebrewCal', () {
    test('GetNumMonths', () {
      final ILibCalendar cal = HebrewCal();
      expect(cal.getNumMonths(5772), 12);
    });
    test('GetMonLength 1', () {
      expect(HebrewCal().getMonLength(1, 5772), 30);
    });
    test('GetMonLength 2', () {
      expect(HebrewCal().getMonLength(2, 5772), 29);
    });
    test('GetMonLength 3', () {
      expect(HebrewCal().getMonLength(3, 5772), 30);
    });
    test('GetMonLength 4', () {
      expect(HebrewCal().getMonLength(4, 5772), 29);
    });
    test('GetMonLength 5', () {
      expect(HebrewCal().getMonLength(5, 5772), 30);
    });
    test('GetMonLength 6', () {
      expect(HebrewCal().getMonLength(6, 5772), 29);
    });
    test('GetMonLength 7', () {
      expect(HebrewCal().getMonLength(7, 5772), 30);
    });
    test('GetMonLength 8', () {
      expect(HebrewCal().getMonLength(8, 5772), 29);
    });
    test('GetMonLength 9', () {
      expect(HebrewCal().getMonLength(9, 5772), 30);
    });
    test('GetMonLength 10', () {
      expect(HebrewCal().getMonLength(10, 5772), 29);
    });
    test('GetMonLength 11', () {
      expect(HebrewCal().getMonLength(11, 5772), 30);
    });
    test('GetMonLength 12', () {
      expect(HebrewCal().getMonLength(12, 5772), 30);
    });
    test('GetMonLength 13 non-leap', () {
      expect(HebrewCal().getMonLength(13, 5772), 0);
    });
  });

  group('HebrewCal LeapYear', () {
    test('GetNumMonths Leap', () {
      expect(HebrewCal().getNumMonths(5774), 13);
    });
    test('GetMonLength 1 Leap', () {
      expect(HebrewCal().getMonLength(1, 5774), 30);
    });
    test('GetMonLength 2 Leap', () {
      expect(HebrewCal().getMonLength(2, 5774), 29);
    });
    test('GetMonLength 3 Leap', () {
      expect(HebrewCal().getMonLength(3, 5774), 30);
    });
    test('GetMonLength 4 Leap', () {
      expect(HebrewCal().getMonLength(4, 5774), 29);
    });
    test('GetMonLength 5 Leap', () {
      expect(HebrewCal().getMonLength(5, 5774), 30);
    });
    test('GetMonLength 6 Leap', () {
      expect(HebrewCal().getMonLength(6, 5774), 29);
    });
    test('GetMonLength 7 Leap', () {
      expect(HebrewCal().getMonLength(7, 5774), 30);
    });
    test('GetMonLength 8 Leap', () {
      expect(HebrewCal().getMonLength(8, 5774), 30);
    });
    test('GetMonLength 9 Leap', () {
      expect(HebrewCal().getMonLength(9, 5774), 30);
    });
    test('GetMonLength 10 Leap', () {
      expect(HebrewCal().getMonLength(10, 5774), 29);
    });
    test('GetMonLength 11 Leap', () {
      expect(HebrewCal().getMonLength(11, 5774), 30);
    });
    test('GetMonLength 12 Leap', () {
      expect(HebrewCal().getMonLength(12, 5774), 30);
    });
    test('GetMonLength 13 Leap', () {
      expect(HebrewCal().getMonLength(13, 5774), 29);
    });
  });

  group('HebrewCal IsLeapYear cycle', () {
    test('IsLeapYear 1', () {
      expect(HebrewCal().isLeapYear(1), false);
    });
    test('IsLeapYear 2', () {
      expect(HebrewCal().isLeapYear(2), false);
    });
    test('IsLeapYear 3', () {
      expect(HebrewCal().isLeapYear(3), true);
    });
    test('IsLeapYear 4', () {
      expect(HebrewCal().isLeapYear(4), false);
    });
    test('IsLeapYear 5', () {
      expect(HebrewCal().isLeapYear(5), false);
    });
    test('IsLeapYear 6', () {
      expect(HebrewCal().isLeapYear(6), true);
    });
    test('IsLeapYear 7', () {
      expect(HebrewCal().isLeapYear(7), false);
    });
    test('IsLeapYear 8', () {
      expect(HebrewCal().isLeapYear(8), true);
    });
    test('IsLeapYear 9', () {
      expect(HebrewCal().isLeapYear(9), false);
    });
    test('IsLeapYear 10', () {
      expect(HebrewCal().isLeapYear(10), false);
    });
    test('IsLeapYear 11', () {
      expect(HebrewCal().isLeapYear(11), true);
    });
    test('IsLeapYear 12', () {
      expect(HebrewCal().isLeapYear(12), false);
    });
    test('IsLeapYear 13', () {
      expect(HebrewCal().isLeapYear(13), false);
    });
    test('IsLeapYear 14', () {
      expect(HebrewCal().isLeapYear(14), true);
    });
    test('IsLeapYear 15', () {
      expect(HebrewCal().isLeapYear(15), false);
    });
    test('IsLeapYear 16', () {
      expect(HebrewCal().isLeapYear(16), false);
    });
    test('IsLeapYear 17', () {
      expect(HebrewCal().isLeapYear(17), true);
    });
    test('IsLeapYear 18', () {
      expect(HebrewCal().isLeapYear(18), false);
    });
    test('IsLeapYear 19', () {
      expect(HebrewCal().isLeapYear(19), true);
    });
    test('IsLeapYear 20', () {
      expect(HebrewCal().isLeapYear(20), false);
    });
    test('IsLeapYear 21', () {
      expect(HebrewCal().isLeapYear(21), false);
    });
    test('IsLeapYear 22', () {
      expect(HebrewCal().isLeapYear(22), true);
    });
    test('IsLeapYear 23', () {
      expect(HebrewCal().isLeapYear(23), false);
    });
    test('IsLeapYear 24', () {
      expect(HebrewCal().isLeapYear(24), false);
    });
    test('IsLeapYear 25', () {
      expect(HebrewCal().isLeapYear(25), true);
    });
    test('IsLeapYear 26', () {
      expect(HebrewCal().isLeapYear(26), false);
    });
    test('IsLeapYear 27', () {
      expect(HebrewCal().isLeapYear(27), true);
    });
    test('IsLeapYear 28', () {
      expect(HebrewCal().isLeapYear(28), false);
    });
    test('IsLeapYear 29', () {
      expect(HebrewCal().isLeapYear(29), false);
    });
    test('IsLeapYear 30', () {
      expect(HebrewCal().isLeapYear(30), true);
    });
  });

  group('HebrewCal GetNumMonths', () {
    test('GetNumMonths 1', () {
      expect(HebrewCal().getNumMonths(1), 12);
    });
    test('GetNumMonths 2', () {
      expect(HebrewCal().getNumMonths(2), 12);
    });
    test('GetNumMonths 3', () {
      expect(HebrewCal().getNumMonths(3), 13);
    });
    test('GetNumMonths 4', () {
      expect(HebrewCal().getNumMonths(4), 12);
    });
    test('GetNumMonths 5', () {
      expect(HebrewCal().getNumMonths(5), 12);
    });
    test('GetNumMonths 6', () {
      expect(HebrewCal().getNumMonths(6), 13);
    });
  });

  group('HebrewCal lastDayOfMonth', () {
    test('lastDayOfMonth 1', () {
      expect(HebrewCal.lastDayOfMonth(1, 5772), 30);
    });
    test('lastDayOfMonth 2', () {
      expect(HebrewCal.lastDayOfMonth(2, 5772), 29);
    });
    test('lastDayOfMonth 3', () {
      expect(HebrewCal.lastDayOfMonth(3, 5772), 30);
    });
    test('lastDayOfMonth 4', () {
      expect(HebrewCal.lastDayOfMonth(4, 5772), 29);
    });
    test('lastDayOfMonth 5', () {
      expect(HebrewCal.lastDayOfMonth(5, 5772), 30);
    });
    test('lastDayOfMonth 6', () {
      expect(HebrewCal.lastDayOfMonth(6, 5772), 29);
    });
    test('lastDayOfMonth 7', () {
      expect(HebrewCal.lastDayOfMonth(7, 5772), 30);
    });
    test('lastDayOfMonth 8 ShortHeshvan', () {
      expect(HebrewCal.lastDayOfMonth(8, 5772), 29);
    });
    test('lastDayOfMonth 8 LongHeshvan', () {
      expect(HebrewCal.lastDayOfMonth(8, 5771), 30);
    });
    test('lastDayOfMonth 9 ShortKislev', () {
      expect(HebrewCal.lastDayOfMonth(9, 5773), 29);
    });
    test('lastDayOfMonth 9 LongKislev', () {
      expect(HebrewCal.lastDayOfMonth(9, 5772), 30);
    });
    test('lastDayOfMonth 10', () {
      expect(HebrewCal.lastDayOfMonth(10, 5772), 29);
    });
    test('lastDayOfMonth 11', () {
      expect(HebrewCal.lastDayOfMonth(11, 5772), 30);
    });
    test('lastDayOfMonth 12', () {
      expect(HebrewCal.lastDayOfMonth(12, 5772), 30);
    });
    test('lastDayOfMonth 13 NotLeap', () {
      expect(HebrewCal.lastDayOfMonth(13, 5772), 0);
    });
    test('lastDayOfMonth 13 Leap', () {
      expect(HebrewCal.lastDayOfMonth(13, 5771), 29);
    });
    test('lastDayOfMonth Bogus', () {
      expect(HebrewCal.lastDayOfMonth(2313, 5772), 0);
    });
    test('lastDayOfMonth Negative', () {
      expect(HebrewCal.lastDayOfMonth(-2, 5772), 0);
    });
  });

  group('HebrewCal elapsedDays', () {
    test('elapsedDays 1', () {
      expect(HebrewCal.elapsedDays(1), 0);
    });
    test('elapsedDays 2', () {
      expect(HebrewCal.elapsedDays(2), 355);
    });
    test('elapsedDays 3', () {
      expect(HebrewCal.elapsedDays(3), 710);
    });
    test('elapsedDays 4', () {
      expect(HebrewCal.elapsedDays(4), 1093);
    });
    test('elapsedDays 5', () {
      expect(HebrewCal.elapsedDays(5), 1447);
    });
    test('elapsedDays 6', () {
      expect(HebrewCal.elapsedDays(6), 1802);
    });
    test('elapsedDays 5773', () {
      expect(HebrewCal.elapsedDays(5773), 2108190);
    });
  });
}
