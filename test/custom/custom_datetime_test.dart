import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [custom/datefmt_template_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
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
      expect(fmt1.getTemplate(), 'EEEE፣ MMMM d ቀን yyyy ዓ.ም');
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

      expect(fmt5.getTemplate(), 'EEEE፣ MMMM d ቀን yyyy ዓ.ም a h:mm');
      expect(fmt6.getTemplate(), 'E፣ dd/MM/yyyy a h:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'am-ET',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'a h:mm:ss z');
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
      expect(fmt1.getTemplate(), 'EEEE, dd. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, dd. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, dd. MMM. yyyy.');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy.');

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
      expect(fmt5.getTemplate(), "EEEE, dd. MMMM yyyy. 'u' HH:mm");
      expect(fmt6.getTemplate(), "E, dd.MM.yy. 'u' HH:mm");

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
      expect(fmt1.getTemplate(), 'EEEE, dd. MMMM yyyy.');
      expect(fmt2.getTemplate(), 'EEE, dd. MMMM yyyy.');
      expect(fmt3.getTemplate(), 'EE, dd. MMM. yyyy.');
      expect(fmt4.getTemplate(), 'E, dd.MM.yy.');

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

      expect(fmt5.getTemplate(), "EEEE, dd. MMMM yyyy. 'u' HH:mm");
      expect(fmt6.getTemplate(), "E, dd.MM.yy. 'u' HH:mm");

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
      expect(fmt1.getTemplate(), '‏EEEE، d MMMM yyyy');
      expect(fmt2.getTemplate(), '‏EEE، d MMMM yyyy');
      expect(fmt3.getTemplate(), '‏EE، d MMM yyyy');
      expect(fmt4.getTemplate(), '‏E، d‏/M‏/yyyy');

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

      expect(fmt5.getTemplate(), 'ساعت ‏H:mm، ‏EEEE، d MMMM yyyy');
      expect(fmt6.getTemplate(), '‏H:mm،‏ ‏E، d‏/M‏/yyyy');

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

      expect(fmt5.getTemplate(), "EEEE d MMMM, yyyy 'da' h:mm a");
      expect(fmt6.getTemplate(), 'E d/M/yy, h:mm a');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'ha-Latn-NG',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'h:mm:ss a z');
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
      expect(fmt1.getTemplate(), 'EEEE ,d בMMMM yyyy');
      expect(fmt2.getTemplate(), 'EEE ,d בMMMM yyyy');
      expect(fmt3.getTemplate(), 'EE ,d בMMM yyyy');
      expect(fmt4.getTemplate(), 'E ,d.M.yyyy');

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

      expect(fmt5.getTemplate(), 'EEEE ,d בMMMM yyyy בשעה ‏H:mm');
      expect(fmt6.getTemplate(), 'E ,d.M.yyyy ,‏H:mm');

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
      expect(fmt4.getTemplate(), 'yyyy年M月d日E');

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
      expect(fmt6.getTemplate(), 'yyyy年M月d日E ah:mm');

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

      expect(fmt5.getTemplate(), 'yyyy年M月d日 EEEE H:mm');
      expect(fmt6.getTemplate(), 'yyyy/M/d E H:mm');

      final ILibDateFmtOptions fmtOptions7 = ILibDateFmtOptions(
          locale: 'zh-Hant-TW',
          type: 'time',
          time: 'ahmsz',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt7 = ILibDateFmt(fmtOptions7);
      expect(fmt7.getTemplate(), 'H:mm:ss [z]');
    });
    test('testDateTimeFormat_es_DO', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'datetime',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'datetime',
          date: 'dmwy',
          length: 'medium',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'es-DO',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');

      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);

      expect(fmt1.getTemplate(), "EEEE, d 'de' MMMM 'de' yyyy h:mm a");
      expect(fmt2.getTemplate(), "EEE, d 'de' MMMM 'de' yyyy h:mm a");
      expect(fmt3.getTemplate(), 'EE, d MMM yyyy h:mm a');
      expect(fmt4.getTemplate(), 'E, d/M/yy h:mm a');
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
      expect(fmt2.getTemplate(), "yyyy 'm'. MMM d 'd'., EEE");
      expect(fmt3.getTemplate(), 'yyyy-MM-dd, EE');
      expect(fmt4.getTemplate(), 'yyyy-MM-dd, E');
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
          length: 'short',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      expect(fmt1.getTemplate(), 'EEEE d MMMM yyyy');
      expect(fmt2.getTemplate(), 'E yy-MM-dd');

      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions4 = ILibDateFmtOptions(
          locale: 'fr-CA',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);
      final ILibDateFmt fmt4 = ILibDateFmt(fmtOptions4);
      expect(fmt3.getTemplate(), "EEEE d MMMM yyyy 'à' HH 'h' mm");
      expect(fmt4.getTemplate(), "E yy-MM-dd HH 'h' mm");
    });
    test('testDateTimeFormat_te_IN', () {
      final ILibDateFmtOptions fmtOptions1 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'full',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions2 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'long',
          useNative: false,
          timezone: 'local');
      final ILibDateFmtOptions fmtOptions3 = ILibDateFmtOptions(
          locale: 'te-IN',
          type: 'datetime',
          date: 'dmwy',
          length: 'short',
          useNative: false,
          timezone: 'local');
      final ILibDateFmt fmt1 = ILibDateFmt(fmtOptions1);
      final ILibDateFmt fmt2 = ILibDateFmt(fmtOptions2);
      final ILibDateFmt fmt3 = ILibDateFmt(fmtOptions3);

      expect(fmt1.getTemplate(), 'd, MMMM yyyy, EEEE h:mm a');
      expect(fmt2.getTemplate(), 'd MMMM, yyyy, EEE h:mm a');
      expect(fmt3.getTemplate(), 'dd-MM-yy, E h:mm a');
    });
  });
}
