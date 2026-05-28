import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ILibCalendar factory', () {
    test('unknown type throws ArgumentError', () {
      expect(() => ILibCalendar('unknown'), throwsArgumentError);
    });
    test('empty string throws ArgumentError', () {
      expect(() => ILibCalendar(''), throwsArgumentError);
    });
    test('han throws UnimplementedError', () {
      expect(() => ILibCalendar('han'), throwsA(isA<UnimplementedError>()));
    });
    test('getCalendars returns supported types', () {
      final List<String> calendars = ILibCalendar.getCalendars();
      expect(calendars, contains('gregorian'));
      expect(calendars, contains('islamic'));
      expect(calendars, contains('hebrew'));
      expect(calendars, isNot(contains('han')));
    });
  });
}
