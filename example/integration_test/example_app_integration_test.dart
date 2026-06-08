// Integration test that verifies the example app's behavior:
// - Version display
// - "Current Time" and "DateTime (full)" matching when locale is en-US
// - Locale change updates UI correctly
// - Number format display
//
// All locale-changing scenarios run in a single testWidgets to keep the
// app instance alive (listener stays registered for loadLocaleData callbacks).

import 'package:flutter/material.dart';
import 'package:flutter_ilib_example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const String ILIB_VERSION = '14.22.0';
  const String CLDR_VERSION = '48.2';

  group('Version integration tests', () {
    testWidgets('iLib and CLDR versions should be displayed correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await _waitForInit(tester);

      final String iLibVersion = _getValueForLabel(tester, 'iLib Version');
      expect(iLibVersion, equals(ILIB_VERSION));

      final String cldrVersion = _getValueForLabel(tester, 'CLDR Version');
      expect(cldrVersion, equals(CLDR_VERSION));
    });
  });

  group('DateTime format integration tests', () {
    testWidgets('Current Time and DateTime (full) should match for en-US',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await _waitForInit(tester);

      // Tap en-US to ensure locale is set.
      final Finder enUSButton = find.widgetWithText(ElevatedButton, 'en-US');
      expect(enUSButton, findsOneWidget);
      await tester.tap(enUSButton);
      await tester.pumpAndSettle();

      final String currentTimeValue = _getValueForLabel(tester, 'Current Time');
      final String dateTimeFullValue =
          _getValueForLabel(tester, 'DateTime (full)');

      expect(currentTimeValue.isNotEmpty, true);
      expect(dateTimeFullValue.isNotEmpty, true);
      expect(dateTimeFullValue, equals(currentTimeValue));
    });
  });

  group('Locale change integration tests', () {
    testWidgets('Locale change updates UI correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await _waitForInit(tester);

      // --- Switch to ko-KR ---
      final Finder koKRButton = find.widgetWithText(ElevatedButton, 'ko-KR');
      expect(koKRButton, findsOneWidget);
      await tester.tap(koKRButton);

      // Wait until DateTime (full) reflects ko-KR format.
      await _waitForLabelToContain(tester, 'DateTime (full)', '년');

      final String currentTimeValue = _getValueForLabel(tester, 'Current Time');
      final String dateTimeFullValue =
          _getValueForLabel(tester, 'DateTime (full)');

      // Current Time should remain in en-US format.
      expect(
          currentTimeValue.contains(RegExp(
              r'(January|February|March|April|May|June|July|August|September|October|November|December)')),
          true,
          reason: 'Current Time should contain English month name (en-US)');
      expect(currentTimeValue.contains(RegExp(r'(AM|PM)')), true,
          reason: 'Current Time should contain AM/PM (en-US 12-hour format)');

      // DateTime (full) should be in ko-KR format.
      expect(dateTimeFullValue.contains('년'), true);
      expect(dateTimeFullValue.contains('월'), true);
      expect(dateTimeFullValue.contains('일'), true);

      // They should NOT be equal.
      expect(dateTimeFullValue, isNot(equals(currentTimeValue)));

      // --- Switch to de-DE ---
      final Finder deDEButton = find.widgetWithText(ElevatedButton, 'de-DE');
      expect(deDEButton, findsOneWidget);
      await tester.tap(deDEButton);

      // Wait until Current Locale reflects de-DE.
      await _waitForLabelToEqual(tester, 'Current Locale', 'de-DE');

      final String currentLocaleValue =
          _getValueForLabel(tester, 'Current Locale');
      expect(currentLocaleValue, equals('de-DE'));

      // Number Format should be in de-DE format.
      final String numFmtValue = _getValueForLabel(tester, 'Number Format');
      expect(numFmtValue, equals('-111.123.456,785'));
    });
  });
}

// --- Helper functions ---

/// Wait for iLib initialization to complete (UI shows actual values).
Future<void> _waitForInit(WidgetTester tester) async {
  await _waitUntil(
      tester, 'iLib Version', (value) => value != 'Unknown iLib');
}

/// Wait until the value for [label] contains [substring].
Future<void> _waitForLabelToContain(
    WidgetTester tester, String label, String substring) async {
  await _waitUntil(tester, label, (value) => value.contains(substring));
}

/// Wait until the value for [label] equals [expected].
Future<void> _waitForLabelToEqual(
    WidgetTester tester, String label, String expected) async {
  await _waitUntil(tester, label, (value) => value == expected);
}

/// Core retry logic: pumps frames with real time delay until the UI
/// reflects the expected value. IntegrationTestWidgetsFlutterBinding uses
/// live async, so pump(Duration) allows real async operations (like
/// loadLocaleData) to complete between frames.
Future<void> _waitUntil(
    WidgetTester tester, String label, bool Function(String) condition,
    {int maxRetries = 100}) async {
  for (int i = 0; i < maxRetries; i++) {
    await tester.pump(const Duration(milliseconds: 100));

    final String? value = _tryGetValueForLabel(tester, label);
    if (value != null && condition(value)) {
      await tester.pumpAndSettle();
      return;
    }
  }
  // Final attempt — let the test's expect report the failure.
  await tester.pumpAndSettle();
}

/// Try to get the value text for a given label. Returns null if not found.
String? _tryGetValueForLabel(WidgetTester tester, String label) {
  final Finder labelFinder = find.text(label);
  if (labelFinder.evaluate().isEmpty) return null;

  final Finder rowFinder = find.ancestor(
    of: labelFinder,
    matching: find.byType(Row),
  );
  if (rowFinder.evaluate().isEmpty) return null;

  final Finder textsInRow = find.descendant(
    of: rowFinder,
    matching: find.byType(Text),
  );

  final List<Text> textWidgets =
      textsInRow.evaluate().map((Element e) => e.widget as Text).toList();
  if (textWidgets.length != 2) return null;

  return textWidgets[1].data;
}

/// Extract the displayed value text for a given label (asserts existence).
String _getValueForLabel(WidgetTester tester, String label) {
  final Finder labelFinder = find.text(label);
  expect(labelFinder, findsOneWidget,
      reason: 'Should find label "$label" in the widget tree');

  final Finder rowFinder = find.ancestor(
    of: labelFinder,
    matching: find.byType(Row),
  );
  expect(rowFinder, findsOneWidget,
      reason: 'Label "$label" should be inside a Row');

  final Finder textsInRow = find.descendant(
    of: rowFinder,
    matching: find.byType(Text),
  );

  final List<Text> textWidgets =
      textsInRow.evaluate().map((Element e) => e.widget as Text).toList();
  expect(textWidgets.length, equals(2),
      reason: 'Row for "$label" should have 2 Text widgets');

  return textWidgets[1].data ?? '';
}
