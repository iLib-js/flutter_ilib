import 'package:flutter/material.dart';
import 'package:flutter_ilib_example/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const Duration localeTapVisualDelay = Duration(milliseconds: 700);

  final List<String> testLocales = <String>[
    'en-GB',
    'en-US',
    'de-DE',
    'hi-IN',
    'ko-KR',
    'ru-RU',
    'fa-IR',
    'am-ET'
  ];

  final Map<String, String> expectedDateTimeValues = <String, String>{
    'en-GB': '23 May 2026 at 16:30',
    'en-US': 'May 23, 2026 at 4:30\u202FPM',
    'de-DE': '23. Mai 2026 um 16:30',
    'hi-IN': '23 मई 2026 को 4:30 pm बजे',
    'ko-KR': '2026년 5월 23일 오후 4:30',
    'ru-RU': '23 мая 2026\u202Fг. в 16:30',
    'fa-IR': '\u200F1405 خرداد 2، ساعت \u200F16:30',
    'am-ET': '15 ግንቦት 2018 10:30 ከሰዓት',
  };

  final Map<String, String> expectedFirstDayValues = <String, String>{
    'en-GB': 'Monday',
    'en-US': 'Sunday',
    'de-DE': 'Monday',
    'hi-IN': 'Sunday',
    'ko-KR': 'Sunday',
    'ru-RU': 'Monday',
    'fa-IR': 'Saturday',
    'am-ET': 'Sunday',
  };

  final Map<String, String> expectedClockValues = <String, String>{
    'en-GB': '24',
    'en-US': '12',
    'de-DE': '24',
    'hi-IN': '12',
    'ko-KR': '12',
    'ru-RU': '24',
    'fa-IR': '24',
    'am-ET': '12',
  };

  final Map<String, String> expectedNumberFormatValues = <String, String>{
    'en-GB': '111,123,456.785',
    'en-US': '111,123,456.785',
    'de-DE': '111.123.456,785',
    'hi-IN': '११,११,२३,४५६.७८५ (11,11,23,456.785)',
    'ko-KR': '111,123,456.785',
    'ru-RU': '111\u00A0123\u00A0456,785',
    'fa-IR': '۱۱۱٬۱۲۳٬۴۵۶٫۷۸۵ (111٬123٬456٫785)',
    'am-ET': '111,123,456.785',
  };

  final Map<String, String> expectedDurationValues = <String, String>{
    'en-GB': '1 hr, 30 mins',
    'en-US': '1 hr, 30 min',
    'de-DE': '1 Std., 30 Min.',
    'hi-IN': '1 घं॰, 30 मि॰',
    'ko-KR': '1시간 30분',
    'ru-RU': '1 ч 30 мин',
    'fa-IR': '\u200F۱ ساعت،\u200F ۳۰ دقیقه',
    'am-ET': '1 ሰዓ፣ 30 ደቂቃ',
  };

  // The app shows one reference country (KR) localized per locale, so the same
  // country renders differently in each language.
  final Map<String, String> expectedCountryValues = <String, String>{
    'en-GB': 'South Korea',
    'en-US': 'South Korea',
    'de-DE': 'Südkorea',
    'hi-IN': 'दक्षिण कोरिया',
    'ko-KR': '대한민국',
    'ru-RU': 'Республика Корея',
    'fa-IR': 'کرهٔ جنوبی',
    'am-ET': 'ደቡብ ኮሪያ',
  };

  group('Real usage locale flow integration tests', () {
    testWidgets(
        'Single app session should pass through all locales in sequence',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await _waitForInit(tester);

      final List<String> failures = <String>[];

      for (final String locale in testLocales) {
        try {
          final Finder localeButton = find.widgetWithText(FilledButton, locale);
          if (localeButton.evaluate().isEmpty) {
            failures.add('[$locale] Locale button not found');
            continue;
          }

          await _tapWithVisualDelay(tester, localeButton,
              delay: localeTapVisualDelay);

          await _waitForLabelToEqual(tester, 'Current Locale', locale);

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'Current Locale',
            actual: _tryGetValueForLabel(tester, 'Current Locale'),
            expected: locale,
          );

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'DateTime (full)',
            actual: _tryGetValueForLabel(tester, 'DateTime (full)'),
            expected: expectedDateTimeValues[locale],
          );

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'First Day Of the Week',
            actual: _tryGetValueForLabel(tester, 'First Day Of the Week'),
            expected: expectedFirstDayValues[locale],
          );

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'Clock (12 or 24)',
            actual: _tryGetValueForLabel(tester, 'Clock (12 or 24)'),
            expected: expectedClockValues[locale],
          );

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'Number Format',
            actual: _tryGetValueForLabel(tester, 'Number Format'),
            expected: expectedNumberFormatValues[locale],
          );

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'Country (KR)',
            actual: _tryGetValueForLabel(tester, 'Country (KR)'),
            expected: expectedCountryValues[locale],
          );

          _collectMismatch(
            failures: failures,
            locale: locale,
            label: 'Duration Format (long)',
            actual: _tryGetValueForLabel(tester, 'Duration Format (long)'),
            expected: expectedDurationValues[locale],
          );

          // _collectMismatch(
          //   failures: failures,
          //   locale: locale,
          //   label: 'Country',
          //   actual: _tryGetValueForLabel(tester, 'Country'),
          //   expected: expectedCountryValues[locale],
          // );
        } catch (error) {
          failures.add('[$locale] Unexpected error: $error');
        }
      }

      if (failures.isNotEmpty) {
        fail('Found ${failures.length} mismatches:\n${failures.join('\n')}');
      }
    });
  });
}

void _collectMismatch({
  required List<String> failures,
  required String locale,
  required String label,
  required String? actual,
  required String? expected,
}) {
  if (actual == null) {
    failures.add('[$locale] $label missing in UI');
    return;
  }

  if (expected == null) {
    failures.add('[$locale] $label expected value is null in test data');
    return;
  }

  if (actual != expected) {
    failures.add(
        '[$locale] $label mismatch | expected: "$expected" | actual: "$actual"');
  }
}

Future<void> _tapWithVisualDelay(WidgetTester tester, Finder button,
    {Duration delay = const Duration(milliseconds: 700)}) async {
  await tester.tap(button);
  await tester.pumpAndSettle();
  await tester.pump(delay);
}

Future<void> _waitForInit(WidgetTester tester) async {
  await _waitUntil(tester, 'Based on iLib', (value) => value != 'Unknown iLib');
}

Future<void> _waitForLabelToEqual(
    WidgetTester tester, String label, String expected) async {
  await _waitUntil(tester, label, (value) => value == expected);
}

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
  await tester.pumpAndSettle();
}

String? _tryGetValueForLabel(WidgetTester tester, String label) {
  final Finder labelFinder = find.text(label);
  if (labelFinder.evaluate().isEmpty) return null;

  // Use the nearest (innermost) Row ancestor: the info row wrapping this
  // label. Matching all ancestor Rows would also catch the outer two-column
  // layout Row and pull in unrelated Text widgets.
  final Finder rowFinder = find
      .ancestor(
        of: labelFinder,
        matching: find.byType(Row),
      )
      .first;
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
