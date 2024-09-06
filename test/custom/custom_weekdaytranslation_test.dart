import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_WeekdayTranslation_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });

  group('testWeekdayTranslation_ar_IQ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'الأحد',
      1: 'الاثنين',
      2: 'الثلاثاء',
      3: 'الأربعاء',
      4: 'الخميس',
      5: 'الجمعة',
      6: 'السبت',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-IQ',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ar_IQ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'الأحد',
      1: 'الاثنين',
      2: 'الثلاثاء',
      3: 'الأربعاء',
      4: 'الخميس',
      5: 'الجمعة',
      6: 'السبت'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-IQ',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ar_IQ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'أحد',
      1: 'إثنين',
      2: 'ثلاثاء',
      3: 'أربعاء',
      4: 'خميس',
      5: 'جمعة',
      6: 'سبت'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-IQ',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ar_IQ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'الأحد',
      1: 'الاثنين',
      2: 'الثلاثاء',
      3: 'الأربعاء',
      4: 'الخميس',
      5: 'الجمعة',
      6: 'السبت'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-IQ',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_CH', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sonntag',
      1: 'Montag',
      2: 'Dienstag',
      3: 'Mittwoch',
      4: 'Donnerstag',
      5: 'Freitag',
      6: 'Samstag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-CH',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_CH_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So',
      1: 'Mo',
      2: 'Di',
      3: 'Mi',
      4: 'Do',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-CH',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_CH_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So', //standAlone format
      1: 'Mo', //standAlone format
      2: 'Di', //standAlone format
      3: 'Mi', //standAlone format
      4: 'Do', //standAlone format
      5: 'Fr', //standAlone format
      6: 'Sa', //standAlone format
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-CH',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_CH_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Mo.',
      2: 'Di.',
      3: 'Mi.',
      4: 'Do.',
      5: 'Fr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-CH',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_DE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sonntag',
      1: 'Montag',
      2: 'Dienstag',
      3: 'Mittwoch',
      4: 'Donnerstag',
      5: 'Freitag',
      6: 'Samstag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-DE',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_DE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So',
      1: 'Mo',
      2: 'Di',
      3: 'Mi',
      4: 'Do',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-DE',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_DE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Mo.',
      2: 'Di.',
      3: 'Mi.',
      4: 'Do.',
      5: 'Fr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-DE',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_DE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Mo.',
      2: 'Di.',
      3: 'Mi.',
      4: 'Do.',
      5: 'Fr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-DE',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });

  group('testWeekdayTranslation_de_LU', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sonntag',
      1: 'Montag',
      2: 'Dienstag',
      3: 'Mittwoch',
      4: 'Donnerstag',
      5: 'Freitag',
      6: 'Samstag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-LU',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_LU_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So',
      1: 'Mo',
      2: 'Di',
      3: 'Mi',
      4: 'Do',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-LU',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_LU_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Mo.',
      2: 'Di.',
      3: 'Mi.',
      4: 'Do.',
      5: 'Fr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-LU',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_de_LU_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Mo.',
      2: 'Di.',
      3: 'Mi.',
      4: 'Do.',
      5: 'Fr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-LU',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });

  group('testWeekdayTranslation_es_CO', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'lunes',
      2: 'martes',
      3: 'miércoles',
      4: 'jueves',
      5: 'viernes',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-CO',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_es_CO_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom',
      1: 'lun',
      2: 'mar',
      3: 'mié',
      4: 'jue',
      5: 'vie',
      6: 'sáb'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-CO',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_es_CO_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'DO',
      1: 'LU',
      2: 'MA',
      3: 'MI',
      4: 'JU',
      5: 'VI',
      6: 'SA'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-CO',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_es_CO_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'DO',
      1: 'LU',
      2: 'MA',
      3: 'MI',
      4: 'JU',
      5: 'VI',
      6: 'SA'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-CO',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_pl_PL', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Niedziela',
      1: 'Poniedziałek',
      2: 'Wtorek',
      3: 'Środa',
      4: 'Czwartek',
      5: 'Piątek',
      6: 'Sobota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pl-PL',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_pl_PL_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Niedz.',
      1: 'Pon.',
      2: 'Wt.',
      3: 'Śr.',
      4: 'Czw.',
      5: 'Pt.',
      6: 'Sob.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pl-PL',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_pl_PL_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Nie',
      1: 'Pon',
      2: 'Wto',
      3: 'Śro',
      4: 'Czw',
      5: 'Pią',
      6: 'Sob'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pl-PL',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_pl_PL_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'N',
      1: 'P',
      2: 'W',
      3: 'Ś',
      4: 'C',
      5: 'P',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pl-PL',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_BY', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскресенье',
      1: 'понедельник',
      2: 'вторник',
      3: 'среда',
      4: 'четверг',
      5: 'пятница',
      6: 'суббота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-BY',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_BY_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскр.',
      1: 'понед.',
      2: 'вторн.',
      3: 'среда',
      4: 'четв.',
      5: 'пятн.',
      6: 'субб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-BY',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_BY_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-BY',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_BY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-BY',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскресенье',
      1: 'понедельник',
      2: 'вторник',
      3: 'среда',
      4: 'четверг',
      5: 'пятница',
      6: 'суббота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KG',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскр.',
      1: 'понед.',
      2: 'вторн.',
      3: 'среда',
      4: 'четв.',
      5: 'пятн.',
      6: 'субб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KG',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KG',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KG',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскресенье',
      1: 'понедельник',
      2: 'вторник',
      3: 'среда',
      4: 'четверг',
      5: 'пятница',
      6: 'суббота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KZ',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскр.',
      1: 'понед.',
      2: 'вторн.',
      3: 'среда',
      4: 'четв.',
      5: 'пятн.',
      6: 'субб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KZ',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KZ',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_KZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-KZ',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_GE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскресенье',
      1: 'понедельник',
      2: 'вторник',
      3: 'среда',
      4: 'четверг',
      5: 'пятница',
      6: 'суббота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-GE',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_GE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскр.',
      1: 'понед.',
      2: 'вторн.',
      3: 'среда',
      4: 'четв.',
      5: 'пятн.',
      6: 'субб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-GE',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_GE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-GE',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_GE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-GE',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_RU', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскресенье',
      1: 'понедельник',
      2: 'вторник',
      3: 'среда',
      4: 'четверг',
      5: 'пятница',
      6: 'суббота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-RU',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_RU_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскр.',
      1: 'понед.',
      2: 'вторн.',
      3: 'среда',
      4: 'четв.',
      5: 'пятн.',
      6: 'субб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-RU',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_RU_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-RU',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_RU_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-RU',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_UA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскресенье',
      1: 'понедельник',
      2: 'вторник',
      3: 'среда',
      4: 'четверг',
      5: 'пятница',
      6: 'суббота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-UA',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_UA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'воскр.',
      1: 'понед.',
      2: 'вторн.',
      3: 'среда',
      4: 'четв.',
      5: 'пятн.',
      6: 'субб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-UA',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_UA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-UA',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ru_UA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'вс',
      1: 'пн',
      2: 'вт',
      3: 'ср',
      4: 'чт',
      5: 'пт',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-UA',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_fa_IR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'یکشنبه',
      1: 'دوشنبه',
      2: 'سه‌شنبه',
      3: 'چهارشنبه',
      4: 'پنجشنبه',
      5: 'جمعه',
      6: 'شنبه'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fa-IR',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'Etc/UTC');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'persian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });

  group('testWeekdayTranslation_fa_IR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'یکشنبه',
      1: 'دوشنبه',
      2: 'سه‌شنبه',
      3: 'چهارشنبه',
      4: 'پنجشنبه',
      5: 'جمعه',
      6: 'شنبه'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fa-IR',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'Etc/UTC');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'persian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_fa_IR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'یکشنبه',
      1: 'دوشنبه',
      2: 'سه‌شنبه',
      3: 'چهارشنبه',
      4: 'پنجشنبه',
      5: 'جمعه',
      6: 'شنبه'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fa-IR',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'Etc/UTC');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 2, type: 'persian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
}
