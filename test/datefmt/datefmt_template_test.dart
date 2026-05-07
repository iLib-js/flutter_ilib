import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_template_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });
  group('format()', () {
    test('testDateTimeFormat_ar_EG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      expect(fmt1.getTemplate(), 'EEEE، d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE، d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE، dd/MM/yyyy');
      expect(fmt4.getTemplate(), 'E، d/M/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE، d MMMM yyyy في ‏h:mm a');
      expect(fmt6.getTemplate(), 'E، d/M/yyyy، ‏h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ar-EG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏h:mm:ss a z');
    });
    test('testDateTimeFormat_ar_IQ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      final String result3 =
          (testPlatform == 'webOS') ? 'EE، dd‏/MM‏/yyyy' : 'EE، dd/MM/yyyy';
      final String result4 =
          (testPlatform == 'webOS') ? 'E، d‏/M‏/yyyy' : 'E، d/M/yyyy';

      expect(fmt1.getTemplate(), 'EEEE، d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE، d MMMM yyyy');
      expect(fmt3.getTemplate(), result3);
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE، d MMMM yyyy في ‏h:mm a');

      final String result6 = (testPlatform == 'webOS')
          ? 'E، d‏/M‏/yyyy، ‏h:mm a'
          : 'E، d/M/yyyy، ‏h:mm a';
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ar-IQ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏h:mm:ss a z');
    });
    test('testDateTimeFormat_ar_MA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE، d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE، d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE، dd/MM/yyyy');
      expect(fmt4.getTemplate(), 'E، d/M/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), 'EEEE، d MMMM yyyy في ‏HH:mm');
      expect(fmt6.getTemplate(), 'E، d/M/yyyy، ‏HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ar-MA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏HH:mm:ss z');
    });
    test('testDateTimeFormat_as_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, dd-MM-yyyy');
      expect(fmt4.getTemplate(), 'E, d-M-yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), "EEEE, d MMMM, yyyy 'at' a h.mm");
      expect(fmt6.getTemplate(), 'E, d-M-yyyy, a h.mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'as-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'a h.mm.ss z');
    });
    test('testDateTimeFormat_bg_BG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d.MM.yyyy 'г'.");
      expect(fmt4.getTemplate(), "E, d.MM.yy 'г'.");

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' H:mm");
      expect(fmt6.getTemplate(), "E, d.MM.yy 'г'., H:mm");

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'bg-BG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H:mm:ss z');
    });
    test('testDateTimeFormat_bn_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM, yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), 'EEEE, d MMMM, yyyy এ h:mm a');
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'bn-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      final String result1 = (testPlatform == 'webOS')
          ? 'EEEE, dd. MMMM yyyy.'
          : 'EEEE, d. MMMM yyyy.';
      final String result2 = (testPlatform == 'webOS')
          ? 'EEE, dd. MMMM yyyy.'
          : 'EEE, d. MMMM yyyy.';
      final String result3 =
          (testPlatform == 'webOS') ? 'EE, dd. MMM. yyyy.' : 'EE, d. MMM yyyy.';
      final String result4 =
          (testPlatform == 'webOS') ? 'E, dd.MM.yy.' : 'E, d. M. yyyy.';

      expect(fmt1.getTemplate(), result1);
      expect(fmt2.getTemplate(), result2);
      expect(fmt3.getTemplate(), result3);
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? "EEEE, dd. MMMM yyyy. 'u' HH:mm"
          : "EEEE, d. MMMM yyyy. 'u' HH:mm";
      final String result6 = (testPlatform == 'webOS')
          ? "E, dd.MM.yy. 'u' HH:mm"
          : "E, d. M. yyyy. 'u' HH:mm";

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'bs-Latn-BA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_bs_Latn_ME', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      final String result1 = (testPlatform == 'webOS')
          ? 'EEEE, dd. MMMM yyyy.'
          : 'EEEE, d. MMMM yyyy.';
      final String result2 = (testPlatform == 'webOS')
          ? 'EEE, dd. MMMM yyyy.'
          : 'EEE, d. MMMM yyyy.';
      final String result3 =
          (testPlatform == 'webOS') ? 'EE, dd. MMM. yyyy.' : 'EE, d. MMM yyyy.';
      final String result4 =
          (testPlatform == 'webOS') ? 'E, dd.MM.yy.' : 'E, d. M. yyyy.';

      expect(fmt1.getTemplate(), result1);
      expect(fmt2.getTemplate(), result2);
      expect(fmt3.getTemplate(), result3);
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? "EEEE, dd. MMMM yyyy. 'u' HH:mm"
          : "EEEE, d. MMMM yyyy. 'u' HH:mm";
      final String result6 = (testPlatform == 'webOS')
          ? "E, dd.MM.yy. 'u' HH:mm"
          : "E, d. M. yyyy. 'u' HH:mm";

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'bs-Latn-ME',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d. M. yyyy');
      expect(fmt4.getTemplate(), 'E dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), "EEEE d. MMMM yyyy 'v' H:mm");
      expect(fmt6.getTemplate(), 'E dd.MM.yy H:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'cs-CZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H:mm:ss z');
    });
    test('testDateTimeFormat_da_DK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE 'den' d. MMMM yyyy");
      expect(fmt2.getTemplate(), "EEE 'den' d. MMMM yyyy");
      expect(fmt3.getTemplate(), "EE 'den' d. MMM yyyy");
      expect(fmt4.getTemplate(), "E 'den' dd.MM.yyyy");

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), "EEEE 'den' d. MMMM yyyy 'kl'. HH.mm");
      expect(fmt6.getTemplate(), "E 'den' dd.MM.yyyy, HH.mm");

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'da-DK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH.mm.ss z');
    });
    test('testDateTimeFormat_de_AT', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, dd.MM.yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy 'um' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'de-AT',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_de_CH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, dd.MM.yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy 'um' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'de-CH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_de_DE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, dd.MM.yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy 'um' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'de-DE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_de_LU', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, dd.MM.yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy 'um' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'de-LU',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_el_CY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE d MMMM yyyy στις h:mm a');
      expect(fmt6.getTemplate(), 'E d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'el-CY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_el_GR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE d MMMM yyyy στις h:mm a');
      expect(fmt6.getTemplate(), 'E d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'el-GR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_AM', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-AM',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_AU', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-AU',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_AZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-AZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_CA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, yyyy-MM-dd');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, yyyy-MM-dd, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-CA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_GB', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-GB',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_GH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-GH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_HK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-HK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_IE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-IE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, dd/MM/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_IS', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-IS',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_JP', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-JP',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_KE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-KE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_KR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-KR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_LK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-LK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_MM', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-MM',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_MW', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-MW',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_MY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-MY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_NG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-NG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_NZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-NZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_PH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-PH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_PR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-PR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_SG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-SG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_US', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-US',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_UG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-UG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_ZA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, dd MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, dd MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, dd MMM yyyy');
      expect(fmt4.getTemplate(), 'E, yyyy/MM/dd');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, dd MMMM yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, yyyy/MM/dd, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-ZA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_ZM', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-ZM',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_AR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-AR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_BO', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), "EE, d MMM 'de' yyyy");
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-BO',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_CL', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, dd-MM-yyyy');
      expect(fmt4.getTemplate(), 'E, dd-MM-yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, dd-MM-yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-CL',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_CO', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");

      final String result3 =
          (testPlatform == 'webOS') ? 'EE, d/MMM/yyyy' : 'EE, d/MM/yyyy';
      final String result4 =
          (testPlatform == 'webOS') ? 'E, dd/MMM/yy' : 'E, d/MM/yy';

      expect(fmt3.getTemplate(), result3);
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");

      final String result6 = (testPlatform == 'webOS')
          ? 'E, dd/MMM/yy, h:mm a'
          : 'E, d/MM/yy, h:mm a';
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-CO',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_DO', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? "EEEE, d 'de' MMMM 'de' yyyy h:mm a"
          : "EEEE, d 'de' MMMM 'de' yyyy, h:mm a";
      final String result6 =
          (testPlatform == 'webOS') ? 'E, d/M/yy h:mm a' : 'E, d/M/yy, h:mm a';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_EC', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? "EEEE, d 'de' MMMM 'de' yyyy h:mm a"
          : "EEEE, d 'de' MMMM 'de' yyyy, h:mm a";
      final String result6 =
          (testPlatform == 'webOS') ? 'E, d/M/yy h:mm a' : 'E, d/M/yy, h:mm a';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-EC',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_ES', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, H:mm");
      expect(fmt6.getTemplate(), 'E, d/M/yy, H:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-ES',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H:mm:ss z');
    });
    test('testDateTimeFormat_es_GT', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d/MM/yyyy');
      expect(fmt4.getTemplate(), 'E, d/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/MM/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-GT',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_HN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE dd 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE dd 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE dd 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-HN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_MX', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');

      final String result4 =
          (testPlatform == 'webOS') ? 'E, dd/MMM/yy' : 'E, dd/MM/yy';
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      final String result6 = (testPlatform == 'webOS')
          ? 'E, dd/MMM/yy, h:mm a'
          : 'E, dd/MM/yy, h:mm a';

      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-MX',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_NI', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-NI',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_PA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, MM/dd/yyyy');
      expect(fmt4.getTemplate(), 'E, MM/dd/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, MM/dd/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-PA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_PE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/MM/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-PE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_PR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, MM/dd/yyyy');
      expect(fmt4.getTemplate(), 'E, MM/dd/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, MM/dd/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-PR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_PY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-PY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_SV', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-SV',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_US', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yyyy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-US',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_UY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-UY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_es_VE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mm a");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-VE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_et_EE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d. MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy, 'kell' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'et-EE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_fa_IR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      final String result1 = (testPlatform == 'webOS')
          ? '‏EEEE، d MMMM yyyy'
          : '‏yyyy MMMM d, EEEE';
      final String result2 =
          (testPlatform == 'webOS') ? '‏EEE، d MMMM yyyy' : '‏d MMMM yyyy, EEE';
      final String result3 =
          (testPlatform == 'webOS') ? '‏EE، d MMM yyyy' : '‏d MMM yyyy, EE';
      final String result4 =
          (testPlatform == 'webOS') ? '‏E، d‏/M‏/yyyy' : '‏yyyy/M/d, E';

      expect(fmt1.getTemplate(), result1);
      expect(fmt2.getTemplate(), result2);
      expect(fmt3.getTemplate(), result3);
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? 'ساعت ‏H:mm، ‏EEEE، d MMMM yyyy'
          : '‏yyyy MMMM d, EEEE، ساعت ‏H:mm';
      final String result6 = (testPlatform == 'webOS')
          ? '‏H:mm،‏ ‏E، d‏/M‏/yyyy'
          : '‏yyyy/M/d, E،‏ ‏H:mm';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fa-IR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏H:mm:ss (z)');
    });
    test('testDateTimeFormat_fi_FI', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'cccc d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'ccc d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'cc d.M.yyyy');
      expect(fmt4.getTemplate(), 'c d.M.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "cccc d. MMMM yyyy 'klo' H.mm");
      expect(fmt6.getTemplate(), "c d.M.yyyy 'klo' H.mm");

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fi-FI',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H.mm.ss z');
    });
    test('testDateTimeFormat_fr_BE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E d/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'à' HH:mm");
      expect(fmt6.getTemplate(), 'E d/MM/yy HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fr-BE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_fr_CA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');

      final String result4 =
          (testPlatform == 'webOS') ? 'E yy-MM-dd' : 'E yyyy-MM-dd';
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'à' HH 'h' mm");

      final String result6 = (testPlatform == 'webOS')
          ? "E yy-MM-dd HH 'h' mm"
          : "E yyyy-MM-dd HH 'h' mm";
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), "HH 'h' mm 'min' ss 's' z");
    });
    test('testDateTimeFormat_fr_CH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'à' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fr-CH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_fr_FR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'à' HH:mm");
      expect(fmt6.getTemplate(), 'E dd/MM/yyyy HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fr-FR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_fr_LU', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'à' HH:mm");
      expect(fmt6.getTemplate(), 'E dd/MM/yyyy HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'fr-LU',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ga_IE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'ag' HH:mm");
      expect(fmt6.getTemplate(), 'E dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ga-IE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_gu_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM, yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d MMMM, yyyy એ hh:mm a વાગ્યે');
      expect(fmt6.getTemplate(), 'E, d/M/yy hh:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'gu-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'hh:mm:ss a z');
    });
    test('testDateTimeFormat_he_IL', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      final String result1 = (testPlatform == 'webOS')
          ? 'EEEE ,d בMMMM yyyy'
          : 'EEEE, d בMMMM yyyy';
      final String result2 =
          (testPlatform == 'webOS') ? 'EEE ,d בMMMM yyyy' : 'EEE, d בMMMM yyyy';
      final String result3 =
          (testPlatform == 'webOS') ? 'EE ,d בMMM yyyy' : 'EE, d בMMM yyyy';
      final String result4 =
          (testPlatform == 'webOS') ? 'E ,d.M.yyyy' : 'E, d.M.yyyy';

      expect(fmt1.getTemplate(), result1);
      expect(fmt2.getTemplate(), result2);
      expect(fmt3.getTemplate(), result3);
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? 'EEEE ,d בMMMM yyyy בשעה ‏H:mm'
          : 'EEEE, d בMMMM yyyy בשעה ‏H:mm';
      final String result6 = (testPlatform == 'webOS')
          ? 'E ,d.M.yyyy ,‏H:mm'
          : 'E, d.M.yyyy, ‏H:mm';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'he-IL',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏H:mm:ss z');
    });
    test('testDateTimeFormat_hi_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d MMMM yyyy को h:mm a बजे');
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'hi-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_hr_HR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, d. MMM yyyy.');
      expect(fmt4.getTemplate(), 'E, dd. MM. yyyy.');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy. 'u' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd. MM. yyyy. HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'hr-HR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_hr_ME', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, d. MMM yyyy.');
      expect(fmt4.getTemplate(), 'E, dd. MM. yyyy.');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy. 'u' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd. MM. yyyy. HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'hr-ME',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_hr_HU', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, d. MMM yyyy.');
      expect(fmt4.getTemplate(), 'E, dd. MM. yyyy.');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy. 'u' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd. MM. yyyy. HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'hr-HU',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_id_ID', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, dd MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, dd MMMM yyyy 'pukul' HH.mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yy, HH.mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'id-ID',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH.mm.ss z');
    });
    test('testDateTimeFormat_is_IS', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d. MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d.M.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy 'kl'. HH:mm");
      expect(fmt6.getTemplate(), 'E, d.M.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'is-IS',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_it_CH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'alle' 'ore' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'it-CH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_it_IT', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'alle' 'ore' HH:mm");
      expect(fmt6.getTemplate(), 'E dd/MM/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'it-IT',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ja_JP', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy年M月d日EEEE');
      expect(fmt2.getTemplate(), 'yyyy年M月d日EEE');
      expect(fmt3.getTemplate(), 'yyyy/MM/ddEE');
      expect(fmt4.getTemplate(), 'yyyy/MM/ddE');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'yyyy年M月d日EEEE H:mm');
      expect(fmt6.getTemplate(), 'yyyy/MM/ddE H:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ja-JP',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H:mm:ss z');
    });
    test('testDateTimeFormat_kk_KZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "yyyy 'ж'. d MMMM, EEEE");
      expect(fmt2.getTemplate(), "yyyy 'ж'. d MMMM, EEE");
      expect(fmt3.getTemplate(), "yyyy 'ж'. dd MMM, EE");
      expect(fmt4.getTemplate(), 'dd.MM.yy, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "yyyy 'ж'. d MMMM, EEEE, HH:mm");
      expect(fmt6.getTemplate(), 'dd.MM.yy, E, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'kk-KZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_kn_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, MMMM d, yyyy ರಂದು hh:mm a ಸಮಯಕ್ಕೆ');
      expect(fmt6.getTemplate(), 'E, d/M/yy, hh:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'kn-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'hh:mm:ss a z');
    });
    test('testDateTimeFormat_ko_KR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy년 MMMM d일 EEEE');
      expect(fmt2.getTemplate(), 'yyyy년 MMMM d일 EEE');
      expect(fmt3.getTemplate(), 'yyyy. M. d. EE');
      expect(fmt4.getTemplate(), 'yy. M. d. E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'yyyy년 MMMM d일 EEEE a h:mm');
      expect(fmt6.getTemplate(), 'yy. M. d. E a h:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ko-KR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'a h:mm:ss z');
    });
    test('testDateTimeFormat_ku_IQ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), '‏yyyy MMMM d, EEEE');
      expect(fmt2.getTemplate(), '‏dی MMMMی yyyy, EEE');
      expect(fmt3.getTemplate(), '‏yyyy MMM d, EE');
      expect(fmt4.getTemplate(), '‏yyyy-MM-dd, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), '‏yyyy MMMM d, EEEE ‏h:mm a');
      expect(fmt6.getTemplate(), '‏yyyy-MM-dd, E ‏h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ku-IQ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏h:mm:ss a z');
    });
    test('testDateTimeFormat_lt_LT', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "yyyy 'm'. MMMM d 'd'., EEEE");

      final String result2 = (testPlatform == 'webOS')
          ? "yyyy 'm'. MMM d 'd'., EEE"
          : "yyyy 'm'. MMMM d 'd'., EEE";
      expect(fmt2.getTemplate(), result2);

      expect(fmt3.getTemplate(), 'yyyy-MM-dd, EE');
      expect(fmt4.getTemplate(), 'yyyy-MM-dd, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "yyyy 'm'. MMMM d 'd'., EEEE HH:mm");
      expect(fmt6.getTemplate(), 'yyyy-MM-dd, E HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'lt-LT',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_lv_LV', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, yyyy. 'gada' d. MMMM");
      expect(fmt2.getTemplate(), "EEE, yyyy. 'gada' d. MMMM");
      expect(fmt3.getTemplate(), "EE, yyyy. 'gada' d. MMM");
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, yyyy. 'gada' d. MMMM HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'lv-LV',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_mk_MK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy \'г\'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy \'г\'.");
      expect(fmt3.getTemplate(), "EE, d.M.yyyy \'г\'.");
      expect(fmt4.getTemplate(), 'E, d.M.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy \'г\'., \'во\' HH:mm");
      expect(fmt6.getTemplate(), "E, d.M.yy, 'во' HH:mm");

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'mk-MK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ml_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy, MMMM d, EEEE');
      expect(fmt2.getTemplate(), 'yyyy, MMMM d, EEE');
      expect(fmt3.getTemplate(), 'yyyy, MMM d, EE');
      expect(fmt4.getTemplate(), 'd/M/yy, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'yyyy, MMMM d, EEEE h:mm a');
      expect(fmt6.getTemplate(), 'd/M/yy, E h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ml-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_mr_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM, yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d MMMM, yyyy रोजी h:mm a');
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'mr-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_ms_MY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'pada' h:mm a");
      expect(fmt6.getTemplate(), 'E, d/MM/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ms-MY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_nb_NO', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d. MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'datetime',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d. MMMM yyyy 'kl'. HH:mm");
      expect(fmt6.getTemplate(), "EEE d. MMMM yyyy 'kl'. HH:mm");

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'nb-NO',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_nl_BE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E d/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'om' HH:mm");
      expect(fmt6.getTemplate(), 'E d/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'nl-BE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_nl_NL', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E dd-MM-yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'om' HH:mm");
      expect(fmt6.getTemplate(), 'E dd-MM-yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'nl-NL',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_pa_Guru_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d MMMM yyyy h:mm a');
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'pa-Guru-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_pl_PL', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d MMMM yyyy HH:mm');
      expect(fmt6.getTemplate(), 'E, d.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'pl-PL',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_pt_BR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), "EE, d 'de' MMM 'de' yyyy");
      expect(fmt4.getTemplate(), 'E, dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy 'às' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'pt-BR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_pt_PT', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");

      final String result2 = (testPlatform == 'webOS')
          ? 'EEE, d MMMM yyyy'
          : "EEE, d 'de' MMMM 'de' yyyy";
      expect(fmt2.getTemplate(), result2);
      expect(fmt3.getTemplate(), 'EE, dd/MM/yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy 'às' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd/MM/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'pt-PT',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ro_RO', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'la' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ro-RO',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_sr_Cyrl_RS', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, d. M. yyyy.');
      expect(fmt4.getTemplate(), 'E, d. M. yyyy.');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d. MMMM yyyy. HH:mm');
      expect(fmt6.getTemplate(), 'E, d. M. yyyy. HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sr-Cyrl-RS',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, d. M. yyyy.');
      expect(fmt4.getTemplate(), 'E, d. M. yyyy.');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d. MMMM yyyy. HH:mm');
      expect(fmt6.getTemplate(), 'E, d. M. yyyy. HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sr-Latn-RS',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ru_BY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'г'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ru-BY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ru_KG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'г'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ru-KG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ru_KZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'г'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ru-KZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ru_GE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'г'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ru-GE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ru_RU', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'г'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ru-RU',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ru_UA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'г'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'г'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'г'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'г'. 'в' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yyyy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ru-UA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_sk_SK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d. M. yyyy');
      expect(fmt4.getTemplate(), 'E d. M. yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d. MMMM yyyy 'o' H:mm");
      expect(fmt6.getTemplate(), 'E d. M. yyyy H:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sk-SK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H:mm:ss z');
    });
    test('testDateTimeFormat_sl_SI', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d. MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d. MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d. MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d. M. yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d. MMMM yyyy 'ob' HH:mm");
      expect(fmt6.getTemplate(), 'E, d. M. yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sl-SI',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_sq_AL', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d.M.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'në' h:mm a");
      expect(fmt6.getTemplate(), 'E, d.M.yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sq-AL',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_sq_ME', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d.M.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'në' HH:mm");
      expect(fmt6.getTemplate(), 'E, d.M.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sq-ME',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_sv_FI', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E yyyy-MM-dd');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'kl'. HH:mm");
      expect(fmt6.getTemplate(), 'E yyyy-MM-dd HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sv-FI',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_sv_SE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E yyyy-MM-dd');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE d MMMM yyyy 'kl'. HH:mm");
      expect(fmt6.getTemplate(), 'E yyyy-MM-dd HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'sv-SE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ta_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM, yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d MMMM, yyyy அன்று h:mm a');
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ta-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_te_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'd, MMMM yyyy, EEEE');
      expect(fmt2.getTemplate(), 'd MMMM, yyyy, EEE');
      expect(fmt3.getTemplate(), 'd MMM, yyyy, EE');
      expect(fmt4.getTemplate(), 'dd-MM-yy, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? 'd, MMMM yyyy, EEEE h:mm a'
          : 'd, MMMM yyyy, EEEE h:mm aకి';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), 'dd-MM-yy, E h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_th_TH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEEที่ d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEEที่ d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EEที่ d MMM yyyy');
      expect(fmt4.getTemplate(), 'Eที่ d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEEที่ d MMMM yyyy เวลา HH:mm');
      expect(fmt6.getTemplate(), 'Eที่ d/M/yy HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'th-TH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_tr_AM', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'd MMMM yyyy EEEE');
      expect(fmt2.getTemplate(), 'd MMMM yyyy EEE');
      expect(fmt3.getTemplate(), 'd MMM yyyy EE');
      expect(fmt4.getTemplate(), 'd.MM.yyyy E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'd MMMM yyyy EEEE HH:mm');
      expect(fmt6.getTemplate(), 'd.MM.yyyy E HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'tr-AM',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_tr_AZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'd MMMM yyyy EEEE');
      expect(fmt2.getTemplate(), 'd MMMM yyyy EEE');
      expect(fmt3.getTemplate(), 'd MMM yyyy EE');
      expect(fmt4.getTemplate(), 'd.MM.yyyy E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'd MMMM yyyy EEEE HH:mm');
      expect(fmt6.getTemplate(), 'd.MM.yyyy E HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'tr-AZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_tr_CY', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'd MMMM yyyy EEEE');
      expect(fmt2.getTemplate(), 'd MMMM yyyy EEE');
      expect(fmt3.getTemplate(), 'd MMM yyyy EE');
      expect(fmt4.getTemplate(), 'd.MM.yyyy E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'd MMMM yyyy EEEE h:mm a');
      expect(fmt6.getTemplate(), 'd.MM.yyyy E h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'tr-CY',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_tr_TR', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'd MMMM yyyy EEEE');
      expect(fmt2.getTemplate(), 'd MMMM yyyy EEE');
      expect(fmt3.getTemplate(), 'd MMM yyyy EE');
      expect(fmt4.getTemplate(), 'd.MM.yyyy E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'd MMMM yyyy EEEE HH:mm');
      expect(fmt6.getTemplate(), 'd.MM.yyyy E HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'tr-TR',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_uk_UA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d MMMM yyyy 'р'.");
      expect(fmt2.getTemplate(), "EEE, d MMMM yyyy 'р'.");
      expect(fmt3.getTemplate(), "EE, d MMM yyyy 'р'.");
      expect(fmt4.getTemplate(), 'E, dd.MM.yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d MMMM yyyy 'р'. 'о' HH:mm");
      expect(fmt6.getTemplate(), 'E, dd.MM.yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'uk-UA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_ur_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE، d MMMM، yyyy');
      expect(fmt2.getTemplate(), 'EEE، d MMMM، yyyy');
      expect(fmt3.getTemplate(), 'EE، d MMM، yyyy');
      expect(fmt4.getTemplate(), 'E، d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE، d MMMM، yyyy کو ‏h:mm a');
      expect(fmt6.getTemplate(), 'E، d/M/yy، ‏h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ur-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏h:mm:ss a z');
    });
    test('testDateTimeFormat_uz_Latn_UZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d-MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d-MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, d-MMM, yyyy');
      expect(fmt4.getTemplate(), 'E, dd/MM/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE, d-MMMM, yyyy, HH:mm');
      expect(fmt6.getTemplate(), 'E, dd/MM/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'uz-Latn-UZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss (z)');
    });
    test('testDateTimeFormat_vi_VN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE, d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE, d MMM, yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "'lúc' HH:mm EEEE, d MMMM, yyyy");
      expect(fmt6.getTemplate(), 'HH:mm E, d/M/yy');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'vi-VN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy年M月d日EEEE');
      expect(fmt2.getTemplate(), 'yyyy年M月d日EEE');
      expect(fmt3.getTemplate(), 'yyyy年M月d日EE');
      expect(fmt4.getTemplate(), 'yyyy/M/dE');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'yyyy年M月d日EEEE HH:mm');
      expect(fmt6.getTemplate(), 'yyyy/M/dE HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'zh-Hans-CN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'z HH:mm:ss');
    });
    test('testDateTimeFormat_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy年M月d日EEEE');
      expect(fmt2.getTemplate(), 'yyyy年M月d日EEE');
      expect(fmt3.getTemplate(), 'yyyy年M月d日EE');

      final String result4 =
          (testPlatform == 'webOS') ? 'yyyy年M月d日E' : 'd/M/yyyyE';
      expect(fmt4.getTemplate(), result4);

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'yyyy年M月d日EEEE ah:mm');

      final String result6 =
          (testPlatform == 'webOS') ? 'yyyy年M月d日E ah:mm' : 'd/M/yyyyE ah:mm';
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'zh-Hant-HK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'ah:mm:ss [z]');
    });
    test('testDateTimeFormat_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy年M月d日 EEEE');
      expect(fmt2.getTemplate(), 'yyyy年M月d日 EEE');
      expect(fmt3.getTemplate(), 'yyyy年M月d日 EE');
      expect(fmt4.getTemplate(), 'yyyy/M/d E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? 'yyyy年M月d日 EEEE H:mm'
          : 'yyyy年M月d日 EEEE Bh:mm';
      final String result6 =
          (testPlatform == 'webOS') ? 'yyyy/M/d E H:mm' : 'yyyy/M/d E Bh:mm';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      final String result7 =
          (testPlatform == 'webOS') ? 'H:mm:ss [z]' : 'Bh:mm:ss [z]';
      expect(fmt7.getTemplate(), result7);
    });
    test('testDateTimeFormat_en_GE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-GE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_CN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' HH:mm");
      expect(fmt6.getTemplate(), 'E, M/d/yy, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-CN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_en_MX', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-MX',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_en_TW', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, MMMM d, yyyy 'at' h:mm a");
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'en-TW',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_mn_MN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "yyyy 'оны' MMMM'ын' d, EEEE 'гараг'");
      expect(fmt2.getTemplate(), "yyyy 'оны' MMMM'ын' d, EEE 'гараг'");
      expect(fmt3.getTemplate(), "yyyy 'оны' MMM'ын' d, EE 'гараг'");
      expect(fmt4.getTemplate(), "yyyy.MM.dd, E 'гараг'");

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "yyyy 'оны' MMMM'ын' d, EEEE 'гараг' HH:mm");
      expect(fmt6.getTemplate(), "yyyy.MM.dd, E 'гараг' HH:mm");

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'mn-Cyrl-MN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss (z)');
    });
    test('testDateTimeFormat_es_CA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy');
      expect(fmt4.getTemplate(), 'E, d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy, h:mma");
      expect(fmt6.getTemplate(), 'E, d/M/yy, h:mma');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'es-CA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ssa z');
    });
    test('testDateTimeFormat_af_ZA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE dd MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE dd MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE dd MMM yyyy');
      expect(fmt4.getTemplate(), 'E yyyy-MM-dd');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), "EEEE dd MMMM yyyy 'om' HH:mm");
      expect(fmt6.getTemplate(), 'E yyyy-MM-dd HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'af-ZA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_am_ET', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          calendar: 'ethiopic',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          calendar: 'ethiopic',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          calendar: 'ethiopic',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          calendar: 'ethiopic',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      final String result1 = (testPlatform == 'webOS')
          ? 'EEEE፣ MMMM d ቀን yyyy ዓ.ም'
          : 'EEEE፣ d MMMM yyyy';
      expect(fmt1.getTemplate(), result1);
      expect(fmt2.getTemplate(), 'EEE፣ d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE፣ d MMM yyyy');
      expect(fmt4.getTemplate(), 'E፣ dd/MM/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          calendar: 'ethiopic',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          calendar: 'ethiopic',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? 'EEEE፣ MMMM d ቀን yyyy ዓ.ም a h:mm'
          : 'EEEE፣ d MMMM yyyy h:mm a';
      final String result6 = (testPlatform == 'webOS')
          ? 'E፣ dd/MM/yyyy a h:mm'
          : 'E፣ dd/MM/yyyy h:mm a';
      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      final String result7 =
          (testPlatform == 'webOS') ? 'a h:mm:ss z' : 'h:mm:ss a z';
      expect(fmt7.getTemplate(), result7);
    });
    test('testDateTimeFormat_ha_Latn_NG', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      expect(fmt1.getTemplate(), 'EEEE d MMMM, yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM, yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM, yyyy');
      expect(fmt4.getTemplate(), 'E d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? "EEEE d MMMM, yyyy 'da' h:mm a"
          : "EEEE d MMMM, yyyy 'da' HH:mm";
      final String result6 =
          (testPlatform == 'webOS') ? 'E d/M/yy, h:mm a' : 'E d/M/yy, HH:mm';
      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), result6);

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      final String result7 =
          (testPlatform == 'webOS') ? 'h:mm:ss a z' : 'HH:mm:ss z';
      expect(fmt7.getTemplate(), result7);
    });
    test('testDateTimeFormat_or_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      expect(fmt1.getTemplate(), 'EEEE, MMMM d, yyyy');
      expect(fmt2.getTemplate(), 'EEE, MMMM d, yyyy');
      expect(fmt3.getTemplate(), 'EE, MMM d, yyyy');
      expect(fmt4.getTemplate(), 'E, M/d/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      final String result5 = (testPlatform == 'webOS')
          ? 'h:mm a ରେ EEEE, MMMM d, yyyy'
          : 'h:mm a ଠାରେ EEEE, MMMM d, yyyy';

      expect(fmt5.getTemplate(), result5);
      expect(fmt6.getTemplate(), 'E, M/d/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'or-IN',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_az_Latn_AZ', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      expect(fmt1.getTemplate(), 'd MMMM yyyy, EEEE');
      expect(fmt2.getTemplate(), 'd MMMM yyyy, EEE');
      expect(fmt3.getTemplate(), 'd MMM yyyy, EE');
      expect(fmt4.getTemplate(), 'dd.MM.yy, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), 'd MMMM yyyy, EEEE/HH:mm');
      expect(fmt6.getTemplate(), 'dd.MM.yy, E, HH:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'az-Latn-AZ',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH:mm:ss z');
    });
    test('testDateTimeFormat_km_KH', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE d MMM yyyy');
      expect(fmt4.getTemplate(), 'E d/M/yy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);
      expect(fmt5.getTemplate(), 'EEEE d MMMM yyyy នៅ​ម៉ោង h:mm a');
      expect(fmt6.getTemplate(), 'E d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'km-KH',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
    });
    test('testDateTimeFormat_si_LK', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'yyyy MMMM d, EEEE');
      expect(fmt2.getTemplate(), 'yyyy MMMM d, EEE');
      expect(fmt3.getTemplate(), 'yyyy MMM d, EE');
      expect(fmt4.getTemplate(), 'yyyy-MM-dd, E');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'yyyy MMMM d, EEEE දින HH.mm');
      expect(fmt6.getTemplate(), 'yyyy-MM-dd, E, HH.mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'si-LK',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'HH.mm.ss z');
    });
    test('testDateTimeFormat_ar_AE', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE، d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE، d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE، dd/MM/yyyy');
      expect(fmt4.getTemplate(), 'E، d/M/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE، d MMMM yyyy في ‏h:mm a');
      expect(fmt6.getTemplate(), 'E، d/M/yyyy، ‏h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ar-AE',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏h:mm:ss a z');
    });
    test('testDateTimeFormat_ar_SA', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'date',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'date',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'date',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'date',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt1.getTemplate(), 'EEEE، d MMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE، d MMMM yyyy');
      expect(fmt3.getTemplate(), 'EE، dd/MM/yyyy');
      expect(fmt4.getTemplate(), 'E، d/M/yyyy');

      final ILibDateFmtOptions fmtOptions5 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions6 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt5 = ILibDateFmt(fmtOptions5);
      final ILibDateFmt fmt6 = ILibDateFmt(fmtOptions6);

      expect(fmt5.getTemplate(), 'EEEE، d MMMM yyyy في ‏h:mm a');
      expect(fmt6.getTemplate(), 'E، d/M/yyyy، ‏h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ar-SA',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), '‏h:mm:ss a z');
    });
  });
}
