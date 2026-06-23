// Regression: a date built from a Flutter `DateTime` (a Gregorian instant) must
// be converted to the formatter's calendar. For am-ET (ethiopic) / fa-IR
// (persian), formatting `DateTime` 2026-06-23 must yield the converted year
// (2018 / 1405), not the raw Gregorian year (2026) with localized labels.
//
// The conversion is timezone-independent (the offset only shifts the instant by
// hours, which can't change the year), so this is verified for an explicit
// zone, 'local', and an omitted timezone. Dart-only (the example's
// `ILibDateOptions(dateTime: ...)` path).

import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final ILibLoader loader = ILibLoader.instance;

  setUpAll(() async {
    await loader.loadJSON();
    await loader.loadILibLocaleData('am-ET');
    await loader.loadILibLocaleData('fa-IR');
  });

  // 2026-06-23 12:00 UTC → ethiopic 2018, persian 1405 (year is tz-independent).
  void expectConverted(String locale, String expectYear, String? timezone) {
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime.utc(2026, 6, 23, 12));
    final String out = ILibDateFmt(ILibDateFmtOptions(
      locale: locale,
      length: 'long',
      type: 'date',
      useNative: false,
      timezone: timezone,
    )).format(date);
    // Label only — 'unset' means the `timezone` argument was not passed (null)
    final String tzLabel = timezone ?? 'unset';
    expect(out, contains(expectYear), reason: '$locale tz=$tzLabel → "$out"');
    expect(out, isNot(contains('2026')), reason: '$locale tz=$tzLabel → "$out"');
  }

  // Exact full-date check. With the timezone omitted, the formatter uses the
  // LOCALE's timezone (am-ET → Africa/Addis_Ababa), which is host-independent —
  // so the exact day/month/year is deterministic. Only integer-based calendars
  // are asserted exactly: am-ET (ethiopic) and en-US (gregorian). fa-IR uses the
  // *astronomical* Persian calendar (equinox-based, floating point), whose exact
  // day can vary by ±1 across platforms/Dart versions, so it is only
  // year-checked below.
  test('exact converted date — timezone unset, 2026-06-23 12:00', () {
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime.utc(2026, 6, 23, 12));
    ILibDateFmt fmt(String locale) => ILibDateFmt(ILibDateFmtOptions(
          locale: locale,
          length: 'long',
          type: 'date',
          useNative: false,
        ));
    expect(fmt('am-ET').format(date), '16 ሰኔ 2018'); // ethiopic (integer)
    expect(fmt('en-US').format(date), 'June 23, 2026'); // gregorian
  });

  // am-ET (ethiopic) → year 2018, across timezone variants.
  test('am-ET (ethiopic) converts a DateTime — tz=Etc/UTC', () {
    expectConverted('am-ET', '2018', 'Etc/UTC');
  });
  test('am-ET (ethiopic) converts a DateTime — tz=local', () {
    expectConverted('am-ET', '2018', 'local');
  });
  test('am-ET (ethiopic) converts a DateTime — tz unset (no timezone arg)', () {
    expectConverted('am-ET', '2018', null);
  });

  // fa-IR (persian) → year 1405, across timezone variants.
  test('fa-IR (persian) converts a DateTime — tz=Etc/UTC', () {
    expectConverted('fa-IR', '1405', 'Etc/UTC');
  });
  test('fa-IR (persian) converts a DateTime — tz=local', () {
    expectConverted('fa-IR', '1405', 'local');
  });
  test('fa-IR (persian) converts a DateTime — tz unset (no timezone arg)', () {
    expectConverted('fa-IR', '1405', null);
  });

  // unixtime input is also a Gregorian instant and must convert the same way.
  test('unixtime input converts to the locale calendar (am-ET / fa-IR)', () {
    final int ms = DateTime.utc(2026, 6, 23, 12).millisecondsSinceEpoch;
    final ILibDateOptions date = ILibDateOptions(unixtime: ms);
    String fmt(String locale) => ILibDateFmt(ILibDateFmtOptions(
          locale: locale,
          length: 'long',
          type: 'date',
          useNative: false,
        )).format(date);
    expect(fmt('am-ET'), '16 ሰኔ 2018'); // ethiopic (was '1 መስከረም 0000')
    expect(fmt('en-US'), 'June 23, 2026'); // gregorian
    // fa-IR is astronomical persian (FP) → year-level only (see exact test note)
    expect(fmt('fa-IR'), contains('1405'));
    expect(fmt('fa-IR'), isNot(contains('2026')));
  });

  test('Gregorian formatter leaves a DateTime unchanged (no spurious convert)',
      () {
    final ILibDateOptions date =
        ILibDateOptions(dateTime: DateTime.utc(2026, 6, 23, 12));
    final String out = ILibDateFmt(ILibDateFmtOptions(
      locale: 'en-US',
      length: 'long',
      type: 'date',
    )).format(date);
    expect(out, contains('2026'));
  });
}
