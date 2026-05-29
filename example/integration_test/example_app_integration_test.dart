// Integration test to verify that "Current Time" (always en-US) and
// "DateTime (full)" match when the locale is set to en-US.
//
// Both fields use DateTime.now() with identical ILibDateFmtOptions
// (locale: 'en-US', length: 'full', type: 'datetime', useNative: false,
// timezone: 'local'), so their displayed values must be equal.

import 'package:flutter/material.dart';
import 'package:flutter_ilib_example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Version integration tests', () {
    const String ILIB_VERSION = '14.22.0';
    const String CLDR_VERSION = '48.2';

    testWidgets('iLib version should be displayed and valid',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      final String iLibVersion = _getValueForLabel(tester, 'iLib Version');
      expect(iLibVersion.isNotEmpty, true,
          reason: 'iLib Version should not be empty');
      expect(iLibVersion, equals(ILIB_VERSION));
    });

    testWidgets('CLDR version should be displayed and valid',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      final String cldrVersion = _getValueForLabel(tester, 'CLDR Version');
      expect(cldrVersion.isNotEmpty, true,
          reason: 'CLDR Version should not be empty');
      expect(cldrVersion, equals(CLDR_VERSION));
    });
  });

  group('DateTime format integration tests', () {
    testWidgets(
        'Current Time and DateTime (full) should match when locale is en-US',
        (WidgetTester tester) async {
      // Build the example app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Wait for iLib initialization and first render.
      // The app uses endOfFrame callback to initialize, so we need to pump
      // multiple frames to allow async initialization to complete.
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Tap the en-US locale button to ensure locale is set to en-US.
      final Finder enUSButton = find.widgetWithText(ElevatedButton, 'en-US');
      expect(enUSButton, findsOneWidget);
      await tester.tap(enUSButton);
      await tester.pumpAndSettle();

      // Find the "Current Time" and "DateTime (full)" display values.
      // Each _customTextBox is a SizedBox containing a Row with two Text
      // widgets: [label, value].
      final String currentTimeValue = _getValueForLabel(tester, 'Current Time');
      final String dateTimeFullValue =
          _getValueForLabel(tester, 'DateTime (full)');

      // Both should be non-empty.
      expect(currentTimeValue.isNotEmpty, true,
          reason: 'Current Time should not be empty');
      expect(dateTimeFullValue.isNotEmpty, true,
          reason: 'DateTime (full) should not be empty');

      // When locale is en-US, both fields format DateTime.now() with the same
      // options, so they must produce the same result.
      expect(dateTimeFullValue, equals(currentTimeValue),
          reason:
              'DateTime (full) with en-US locale should equal Current Time '
              '(both use full datetime format with en-US)');
    });

    testWidgets(
        'Current Time remains en-US format even when locale is changed',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Switch to ko-KR locale.
      final Finder koKRButton = find.widgetWithText(ElevatedButton, 'ko-KR');
      expect(koKRButton, findsOneWidget);
      await tester.tap(koKRButton);
      await tester.pumpAndSettle();

      // Get displayed values.
      final String currentTimeValue = _getValueForLabel(tester, 'Current Time');
      final String dateTimeFullValue =
          _getValueForLabel(tester, 'DateTime (full)');

      // Current Time should still be in en-US format (contains month name in
      // English and AM/PM).
      expect(
          currentTimeValue.contains(RegExp(
              r'(January|February|March|April|May|June|July|August|September|October|November|December)')),
          true,
          reason: 'Current Time should contain English month name (en-US)');
      expect(currentTimeValue.contains(RegExp(r'(AM|PM)')), true,
          reason: 'Current Time should contain AM/PM (en-US 12-hour format)');

      // DateTime (full) should now be in ko-KR format (different from en-US).
      // ko-KR full datetime uses Korean characters like '년', '월', '일'.
      expect(dateTimeFullValue.contains('년'), true,
          reason: 'DateTime (full) with ko-KR should contain Korean 년');
      expect(dateTimeFullValue.contains('월'), true,
          reason: 'DateTime (full) with ko-KR should contain Korean 월');
      expect(dateTimeFullValue.contains('일'), true,
          reason: 'DateTime (full) with ko-KR should contain Korean 일');

      // The two values should NOT be equal when locale differs.
      expect(dateTimeFullValue, isNot(equals(currentTimeValue)),
          reason:
              'DateTime (full) with ko-KR should differ from Current Time (en-US)');
    });

    testWidgets('Current Locale display updates when locale button is pressed',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Tap de-DE button.
      final Finder deDEButton = find.widgetWithText(ElevatedButton, 'de-DE');
      expect(deDEButton, findsOneWidget);
      await tester.tap(deDEButton);
      await tester.pumpAndSettle();

      // Verify Current Locale shows de-DE.
      final String currentLocaleValue =
          _getValueForLabel(tester, 'Current Locale');
      expect(currentLocaleValue, equals('de-DE'));
    });
  });

  group('Number format integration tests', () {
    testWidgets('Number Format should display correct de-DE format',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle(const Duration(seconds: 3));

      // Tap de-DE button
      final Finder deDEButton = find.widgetWithText(ElevatedButton, 'de-DE');
      expect(deDEButton, findsOneWidget);
      await tester.tap(deDEButton);
      await tester.pumpAndSettle();

      // Verify Number Format shows de-DE formatted value
      final String numFmtValue = _getValueForLabel(tester, 'Number Format');
      expect(numFmtValue.isNotEmpty, true,
          reason: 'Number Format should not be empty');
      expect(numFmtValue, equals('-111.123.456,785'));
    });
  });
}

/// Helper to extract the displayed value text for a given label.
///
/// The example app uses _customTextBox which creates a SizedBox > Row with
/// two Text children: [label, value]. This function finds the Row containing
/// the label and returns the second Text widget's data.
String _getValueForLabel(WidgetTester tester, String label) {
  // Find all Text widgets.
  final Finder labelFinder = find.text(label);
  expect(labelFinder, findsOneWidget,
      reason: 'Should find label "$label" in the widget tree');

  // Get the parent Row of this label text.
  final Finder rowFinder = find.ancestor(
    of: labelFinder,
    matching: find.byType(Row),
  );
  expect(rowFinder, findsOneWidget,
      reason: 'Label "$label" should be inside a Row');

  // Get all Text widgets inside this Row.
  final Finder textsInRow = find.descendant(
    of: rowFinder,
    matching: find.byType(Text),
  );

  // The Row should contain exactly 2 Text widgets: [label, value].
  final List<Text> textWidgets =
      textsInRow.evaluate().map((Element e) => e.widget as Text).toList();
  expect(textWidgets.length, equals(2),
      reason: 'Row for "$label" should have 2 Text widgets');

  // Return the value (second Text widget).
  return textWidgets[1].data ?? '';
}
