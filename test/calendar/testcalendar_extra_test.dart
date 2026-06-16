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
  });
}
