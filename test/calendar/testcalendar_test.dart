import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  setUpAll(() async {
    await ILibLoader.instance.loadJSON();
    for (final String locale in <String>[
      'ar-AE',
      'km-KH',
      'az-Latn-AZ',
      'si-LK',
      'sw-Latn-KE',
      'th-TH'
    ]) {
      await ILibLoader.instance.loadILibLocaleData(locale);
    }
  });

  group('ILibCalendar factory', () {
    // testCalendarFactoryUnknown: JS CalendarFactory({type: "asdf"}) returns
    // undefined; the Dart factory throws ArgumentError for an unknown type.
    test('testCalendarFactoryUnknown', () {
      expect(() => ILibCalendar('unknown'), throwsArgumentError);
    });
    // testGetCalendars: JS asserts the exact set (equalIgnoringOrder). 'han' is
    // omitted here because the Han calendar is deferred / not yet implemented in the
    // Dart port (see CLAUDE.md Deferred Work) and ILibCalendar('han') throws.
    test('testGetCalendars', () {
      expect(ILibCalendar.getCalendars().toSet(), <String>{
        'gregorian',
        'thaisolar',
        'julian',
        'islamic',
        'persian',
        'persian-algo',
        'ethiopic',
        'coptic',
        'hebrew'
      });
    });

    // testCalendarFactoryDefault: JS CalendarFactory() with no args returns a
    // defined calendar; the Dart no-arg factory defaults to gregorian.
    test('testCalendarFactoryDefault', () {
      expect(ILibCalendar(), isNotNull);
    });
    // testCalendarFactoryDefaultRightType: JS CalendarFactory() defaults to
    // gregorian; the Dart no-arg factory does the same.
    test('testCalendarFactoryDefaultRightType', () {
      expect(ILibCalendar().getType(), 'gregorian');
    });
    test('testCalendarFactorySpecific', () {
      expect(ILibCalendar('julian').getType(), 'julian');
    });
    // Verify the factory dispatches every supported type string to the matching
    // calendar. JS testcalendar.js only checks one type via CalendarFactory; each
    // calendar's own testcal_*.js uses `new XxxCal()` directly (which the Dart cal
    // tests now mirror with direct construction), so this consolidates factory
    // dispatch coverage for all types in the one factory test file.
    test('testCalendarFactoryAllTypes', () {
      for (final String type in <String>[
        'gregorian',
        'thaisolar',
        'julian',
        'islamic',
        'persian',
        'persian-algo',
        'ethiopic',
        'coptic',
        'hebrew'
      ]) {
        expect(ILibCalendar(type).getType(), type);
      }
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
