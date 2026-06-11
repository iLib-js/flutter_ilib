import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    for (final String locale in <String>[
      'ar-AE', 'km-KH', 'az-Latn-AZ', 'si-LK', 'sw-Latn-KE', 'th-TH'
    ]) {
      await ILibLoader.instance.loadILibLocaleData(locale);
    }
  });

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
    // testGetCalendars: JS asserts the exact set (equalIgnoringOrder). 'han' is
    // omitted here because the Han calendar is deferred / not yet implemented in the
    // Dart port (see CLAUDE.md Deferred Work) and ILibCalendar('han') throws.
    test('testGetCalendars', () {
      expect(ILibCalendar.getCalendars().toSet(), <String>{
        'gregorian', 'thaisolar', 'julian', 'islamic', 'persian',
        'persian-algo', 'ethiopic', 'coptic', 'hebrew'
      });
    });

    // testCalendarFactoryDefaultRightType: JS CalendarFactory() defaults to
    // gregorian; the Dart factory takes the type explicitly.
    test('testCalendarFactoryDefaultRightType', () {
      expect(ILibCalendar('gregorian').getType(), 'gregorian');
    });
    test('testCalendarFactorySpecific', () {
      expect(ILibCalendar('julian').getType(), 'julian');
    });
  });

  // JS CalendarFactory({locale: ...}) -> ILibCalendar.fromLocale(...)
  group('ILibCalendar.fromLocale', () {
    test('testCalendarFactoryDefaultForLocale', () {
      expect(ILibCalendar.fromLocale('ar-AE').getType(), 'gregorian');
    });
    test('testCalendarFactoryDefaultForLocale_KH', () {
      expect(ILibCalendar.fromLocale('km-KH').getType(), 'gregorian');
    });
    test('testCalendarFactoryDefaultForLocale_AZ', () {
      expect(ILibCalendar.fromLocale('az-Latn-AZ').getType(), 'gregorian');
    });
    test('testCalendarFactoryDefaultForLocale_LK', () {
      expect(ILibCalendar.fromLocale('si-LK').getType(), 'gregorian');
    });
    test('testCalendarFactoryDefaultForLocale_KE', () {
      expect(ILibCalendar.fromLocale('sw-Latn-KE').getType(), 'gregorian');
    });
    test('testCalendarFactoryDefaultForLocaleOther', () {
      expect(ILibCalendar.fromLocale('th-TH').getType(), 'thaisolar');
    });
    // testCalendarFactoryOverrideLocale: an explicit type wins over the locale
    // default; in Dart that is simply the type-based factory.
    test('testCalendarFactoryOverrideLocale', () {
      expect(ILibCalendar('gregorian').getType(), 'gregorian');
    });
  });
}
