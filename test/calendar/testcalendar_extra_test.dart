import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

// Dart-only tests with no JS counterpart: edge cases of the ILibCalendar factory
// that arise from the Dart error-handling design (throw vs JS undefined) and the
// deferred Han calendar.
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ILibCalendar factory (Dart-only)', () {
    test('empty string throws ArgumentError', () {
      expect(() => ILibCalendar(''), throwsArgumentError);
    });
    test('han throws UnimplementedError', () {
      expect(() => ILibCalendar('han'), throwsA(isA<UnimplementedError>()));
    });
    // The cal tests build calendars directly (e.g. PersianAlgoCal()), matching JS
    // `new XxxCal()`. ILibCalendar('type') is the other public construction path;
    // this smoke test confirms a factory-built calendar is fully functional (its
    // calculation methods work), not just the right getType(). Includes the
    // persian-algo type the cal tests construct.
    test('factory-constructed calendars are functional', () {
      expect(ILibCalendar('gregorian').getMonLength(2, 2012), 29);
      expect(ILibCalendar('coptic').getNumMonths(1731), 13);
      expect(ILibCalendar('persian-algo').isLeapYear(1395),
          PersianAlgoCal().isLeapYear(1395));
    });
  });
}
