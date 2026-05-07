import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_WeekdayTranslation_test.dart] file.');
  setUpAll(() async {
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });
  group('testWeekdayTranslation_ar_EG', () {
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
            locale: 'ar-EG',
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
  group('testWeekdayTranslation_ar_EG_long', () {
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
            locale: 'ar-EG',
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
  group('testWeekdayTranslation_ar_EG_medium', () {
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'أحد',
          1: 'اثنين',
          2: 'ثلاثاء',
          3: 'أربعاء',
          4: 'خميس',
          5: 'جمعة',
          6: 'سبت'
        };
      default:
        expectedResult = <int, String>{
          0: 'أحد',
          1: 'إثنين',
          2: 'ثلاثاء',
          3: 'أربعاء',
          4: 'خميس',
          5: 'جمعة',
          6: 'سبت'
        };
    }

    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-EG',
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
  group('testWeekdayTranslation_ar_EG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ح',
      1: 'ن',
      2: 'ث',
      3: 'ر',
      4: 'خ',
      5: 'ج',
      6: 'س',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-EG',
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
  group('testWeekdayTranslation_ar_IQ', () {
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'الأحد',
          1: 'الاثنين',
          2: 'الثلاثاء',
          3: 'الأربعاء',
          4: 'الخميس',
          5: 'الجمعة',
          6: 'السبت',
        };
      default:
        expectedResult = <int, String>{
          0: 'ح',
          1: 'ن',
          2: 'ث',
          3: 'ر',
          4: 'خ',
          5: 'ج',
          6: 'س'
        };
    }

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
  group('testWeekdayTranslation_ar_MA', () {
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
            locale: 'ar-MA',
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
  group('testWeekdayTranslation_ar_MA_long', () {
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
            locale: 'ar-MA',
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
  group('testWeekdayTranslation_ar_MA_medium', () {
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
            locale: 'ar-MA',
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
  group('testWeekdayTranslation_ar_MA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ح',
      1: 'ن',
      2: 'ث',
      3: 'ر',
      4: 'خ',
      5: 'ج',
      6: 'س'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-MA',
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
  group('testWeekdayTranslation_as_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'দেওবাৰ',
      1: 'সোমবাৰ',
      2: 'মঙ্গলবাৰ',
      3: 'বুধবাৰ',
      4: 'বৃহস্পতিবাৰ',
      5: 'শুক্ৰবাৰ',
      6: 'শনিবাৰ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'as-IN',
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
  group('testWeekdayTranslation_as_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'দেও',
      1: 'সোম',
      2: 'মঙ্গল',
      3: 'বুধ',
      4: 'বৃহ',
      5: 'শুক্ৰ',
      6: 'শনি'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'as-IN',
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
  group('testWeekdayTranslation_as_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'দেও',
      1: 'সোম',
      2: 'মঙ্গল',
      3: 'বুধ',
      4: 'বৃহ',
      5: 'শুক্ৰ',
      6: 'শনি'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'as-IN',
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
  group('testWeekdayTranslation_as_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'দ',
      1: 'স',
      2: 'ম',
      3: 'ব',
      4: 'ব',
      5: 'শ',
      6: 'শ',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'as-IN',
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
  group('testWeekdayTranslation_bg_BG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'неделя',
      1: 'понеделник',
      2: 'вторник',
      3: 'сряда',
      4: 'четвъртък',
      5: 'петък',
      6: 'събота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bg-BG',
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
  group('testWeekdayTranslation_bg_BG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нд',
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
            locale: 'bg-BG',
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
  group('testWeekdayTranslation_bg_BG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нд',
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
            locale: 'bg-BG',
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
  group('testWeekdayTranslation_bg_BG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'н',
      1: 'п',
      2: 'в',
      3: 'с',
      4: 'ч',
      5: 'п',
      6: 'с',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bg-BG',
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
  group('testWeekdayTranslation_bn_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'রবিবার',
      1: 'সোমবার',
      2: 'মঙ্গলবার',
      3: 'বুধবার',
      4: 'বৃহস্পতিবার',
      5: 'শুক্রবার',
      6: 'শনিবার'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bn-IN',
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
  group('testWeekdayTranslation_bn_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'রবি',
      1: 'সোম',
      2: 'মঙ্গল',
      3: 'বুধ',
      4: 'বৃহস্পতি',
      5: 'শুক্র',
      6: 'শনি'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bn-IN',
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
  group('testWeekdayTranslation_bn_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'রঃ',
      1: 'সোঃ',
      2: 'মঃ',
      3: 'বুঃ',
      4: 'বৃঃ',
      5: 'শুঃ',
      6: 'শঃ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bn-IN',
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
  group('testWeekdayTranslation_bn_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'র',
      1: 'সো',
      2: 'ম',
      3: 'বু',
      4: 'বৃ',
      5: 'শু',
      6: 'শ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bn-IN',
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
  group('testWeekdayTranslation_bs_Latn_BA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedjelja',
      1: 'ponedjeljak',
      2: 'utorak',
      3: 'srijeda',
      4: 'četvrtak',
      5: 'petak',
      6: 'subota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-BA',
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
  group('testWeekdayTranslation_bs_Latn_BA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-BA',
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
  group('testWeekdayTranslation_bs_Latn_BA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-BA',
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
  group('testWeekdayTranslation_bs_Latn_BA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-BA',
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
  group('testWeekdayTranslation_bs_Latn_ME', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedjelja',
      1: 'ponedjeljak',
      2: 'utorak',
      3: 'srijeda',
      4: 'četvrtak',
      5: 'petak',
      6: 'subota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-ME',
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
  group('testWeekdayTranslation_bs_Latn_ME_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-ME',
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
  group('testWeekdayTranslation_bs_Latn_ME_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-ME',
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
  group('testWeekdayTranslation_bs_Latn_ME_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'bs-Latn-ME',
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
  group('testWeekdayTranslation_cs_CZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'neděle',
      1: 'pondělí',
      2: 'úterý',
      3: 'středa',
      4: 'čtvrtek',
      5: 'pátek',
      6: 'sobota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'cs-CZ',
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
  group('testWeekdayTranslation_cs_CZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ne',
      1: 'po',
      2: 'út',
      3: 'st',
      4: 'čt',
      5: 'pá',
      6: 'so'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'cs-CZ',
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
  group('testWeekdayTranslation_cs_CZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ne',
      1: 'po',
      2: 'út',
      3: 'st',
      4: 'čt',
      5: 'pá',
      6: 'so'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'cs-CZ',
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
  group('testWeekdayTranslation_cs_CZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'N',
      1: 'P',
      2: 'Ú',
      3: 'S',
      4: 'Č',
      5: 'P',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'cs-CZ',
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
  group('testWeekdayTranslation_da_DK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'søndag',
      1: 'mandag',
      2: 'tirsdag',
      3: 'onsdag',
      4: 'torsdag',
      5: 'fredag',
      6: 'lørdag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'da-DK',
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
  group('testWeekdayTranslation_da_DK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'søn.',
      1: 'man.',
      2: 'tirs.',
      3: 'ons.',
      4: 'tors.',
      5: 'fre.',
      6: 'lør.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'da-DK',
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
  group('testWeekdayTranslation_da_DK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sø.',
      1: 'ma.',
      2: 'ti.',
      3: 'on.',
      4: 'to.',
      5: 'fr.',
      6: 'lø.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'da-DK',
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
  group('testWeekdayTranslation_da_DK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'O',
      4: 'T',
      5: 'F',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'da-DK',
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
  group('testWeekdayTranslation_de_AT', () {
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
            locale: 'de-AT',
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
  group('testWeekdayTranslation_de_AT_long', () {
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
            locale: 'de-AT',
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
  group('testWeekdayTranslation_de_AT_medium', () {
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
            locale: 'de-AT',
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
  group('testWeekdayTranslation_de_AT_short', () {
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'So.',
          1: 'Mo.',
          2: 'Di.',
          3: 'Mi.',
          4: 'Do.',
          5: 'Fr.',
          6: 'Sa.'
        };
      default:
        expectedResult = <int, String>{
          0: 'S',
          1: 'M',
          2: 'D',
          3: 'M',
          4: 'D',
          5: 'F',
          6: 'S'
        };
    }

    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'de-AT',
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'So.',
          1: 'Mo.',
          2: 'Di.',
          3: 'Mi.',
          4: 'Do.',
          5: 'Fr.',
          6: 'Sa.'
        };
      default:
        expectedResult = <int, String>{
          0: 'S',
          1: 'M',
          2: 'D',
          3: 'M',
          4: 'D',
          5: 'F',
          6: 'S'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'So.',
          1: 'Mo.',
          2: 'Di.',
          3: 'Mi.',
          4: 'Do.',
          5: 'Fr.',
          6: 'Sa.'
        };
      default:
        expectedResult = <int, String>{
          0: 'S',
          1: 'M',
          2: 'D',
          3: 'M',
          4: 'D',
          5: 'F',
          6: 'S'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'So.',
          1: 'Mo.',
          2: 'Di.',
          3: 'Mi.',
          4: 'Do.',
          5: 'Fr.',
          6: 'Sa.'
        };
      default:
        expectedResult = <int, String>{
          0: 'S',
          1: 'M',
          2: 'D',
          3: 'M',
          4: 'D',
          5: 'F',
          6: 'S'
        };
    }
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
  group('testWeekdayTranslation_el_CY', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κυριακή',
      1: 'Δευτέρα',
      2: 'Τρίτη',
      3: 'Τετάρτη',
      4: 'Πέμπτη',
      5: 'Παρασκευή',
      6: 'Σάββατο'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-CY',
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
  group('testWeekdayTranslation_el_CY_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κυρ',
      1: 'Δευ',
      2: 'Τρί',
      3: 'Τετ',
      4: 'Πέμ',
      5: 'Παρ',
      6: 'Σάβ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-CY',
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
  group('testWeekdayTranslation_el_CY_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κυ',
      1: 'Δε',
      2: 'Τρ',
      3: 'Τε',
      4: 'Πέ',
      5: 'Πα',
      6: 'Σά'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-CY',
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
  group('testWeekdayTranslation_el_CY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κ',
      1: 'Δ',
      2: 'Τ',
      3: 'Τ',
      4: 'Π',
      5: 'Π',
      6: 'Σ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-CY',
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
  group('testWeekdayTranslation_el_GR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κυριακή',
      1: 'Δευτέρα',
      2: 'Τρίτη',
      3: 'Τετάρτη',
      4: 'Πέμπτη',
      5: 'Παρασκευή',
      6: 'Σάββατο'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-GR',
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
  group('testWeekdayTranslation_el_GR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κυρ',
      1: 'Δευ',
      2: 'Τρί',
      3: 'Τετ',
      4: 'Πέμ',
      5: 'Παρ',
      6: 'Σάβ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-GR',
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
  group('testWeekdayTranslation_el_GR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κυ',
      1: 'Δε',
      2: 'Τρ',
      3: 'Τε',
      4: 'Πέ',
      5: 'Πα',
      6: 'Σά'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-GR',
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
  group('testWeekdayTranslation_el_GR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Κ',
      1: 'Δ',
      2: 'Τ',
      3: 'Τ',
      4: 'Π',
      5: 'Π',
      6: 'Σ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'el-GR',
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
  group('testWeekdayTranslation_en_AM', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AM',
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
  group('testWeekdayTranslation_en_AM_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AM',
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
  group('testWeekdayTranslation_en_AM_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AM',
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
  group('testWeekdayTranslation_en_AM_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AM',
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
  group('testWeekdayTranslation_en_AU', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AU',
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
  group('testWeekdayTranslation_en_AU_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AU',
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
  group('testWeekdayTranslation_en_AU_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AU',
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
  group('testWeekdayTranslation_en_AU_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AU',
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
  group('testWeekdayTranslation_en_AZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AZ',
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
  group('testWeekdayTranslation_en_AZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AZ',
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
  group('testWeekdayTranslation_en_AZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AZ',
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
  group('testWeekdayTranslation_en_AZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-AZ',
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
  group('testWeekdayTranslation_en_CA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CA',
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
  group('testWeekdayTranslation_en_CA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CA',
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
  group('testWeekdayTranslation_en_CA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CA',
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
  group('testWeekdayTranslation_en_CA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CA',
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
  group('testWeekdayTranslation_en_GB', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GB',
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
  group('testWeekdayTranslation_en_GB_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GB',
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
  group('testWeekdayTranslation_en_GB_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GB',
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
  group('testWeekdayTranslation_en_GB_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GB',
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
  group('testWeekdayTranslation_en_GH', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GH',
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
  group('testWeekdayTranslation_en_GH_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GH',
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
  group('testWeekdayTranslation_en_GH_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GH',
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
  group('testWeekdayTranslation_en_GH_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GH',
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
  group('testWeekdayTranslation_en_HK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
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
  group('testWeekdayTranslation_en_HK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
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
  group('testWeekdayTranslation_en_HK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
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
  group('testWeekdayTranslation_en_HK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-HK',
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
  group('testWeekdayTranslation_en_IE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IE',
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
  group('testWeekdayTranslation_en_IE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IE',
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
  group('testWeekdayTranslation_en_IE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IE',
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
  group('testWeekdayTranslation_en_IE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IE',
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
  group('testWeekdayTranslation_en_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IN',
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
  group('testWeekdayTranslation_en_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IN',
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
  group('testWeekdayTranslation_en_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IN',
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
  group('testWeekdayTranslation_en_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IN',
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
  group('testWeekdayTranslation_en_IS', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IS',
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
  group('testWeekdayTranslation_en_IS_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IS',
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
  group('testWeekdayTranslation_en_IS_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IS',
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
  group('testWeekdayTranslation_en_IS_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-IS',
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
  group('testWeekdayTranslation_en_JP', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-JP',
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
  group('testWeekdayTranslation_en_JP_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-JP',
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
  group('testWeekdayTranslation_en_JP_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-JP',
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
  group('testWeekdayTranslation_en_JP_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-JP',
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
  group('testWeekdayTranslation_en_KE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KE',
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
  group('testWeekdayTranslation_en_KE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KE',
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
  group('testWeekdayTranslation_en_KE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KE',
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
  group('testWeekdayTranslation_en_KE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KE',
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
  group('testWeekdayTranslation_en_KR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KR',
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
  group('testWeekdayTranslation_en_KR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KR',
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
  group('testWeekdayTranslation_en_KR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KR',
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
  group('testWeekdayTranslation_en_KR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-KR',
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

  group('testWeekdayTranslation_en_LK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-LK',
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
  group('testWeekdayTranslation_en_LK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-LK',
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
  group('testWeekdayTranslation_en_LK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-LK',
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
  group('testWeekdayTranslation_en_LK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-LK',
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
  group('testWeekdayTranslation_en_MM', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MM',
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
  group('testWeekdayTranslation_en_MM_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MM',
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
  group('testWeekdayTranslation_en_MM_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MM',
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
  group('testWeekdayTranslation_en_MM_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MM',
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
  group('testWeekdayTranslation_en_MW', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MW',
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
  group('testWeekdayTranslation_en_MW_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MW',
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
  group('testWeekdayTranslation_en_MW_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MW',
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
  group('testWeekdayTranslation_en_MW_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MW',
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
  group('testWeekdayTranslation_en_MY', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MY',
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
  group('testWeekdayTranslation_en_MY_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MY',
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
  group('testWeekdayTranslation_en_MY_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MY',
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
  group('testWeekdayTranslation_en_MY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MY',
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
  group('testWeekdayTranslation_en_NG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NG',
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
  group('testWeekdayTranslation_en_NG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NG',
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
  group('testWeekdayTranslation_en_NG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NG',
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
  group('testWeekdayTranslation_en_NG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NG',
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
  group('testWeekdayTranslation_en_NZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NZ',
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
  group('testWeekdayTranslation_en_NZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NZ',
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
  group('testWeekdayTranslation_en_NZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NZ',
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
  group('testWeekdayTranslation_en_NZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-NZ',
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
  group('testWeekdayTranslation_en_PH', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PH',
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
  group('testWeekdayTranslation_en_PH_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PH',
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
  group('testWeekdayTranslation_en_PH_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PH',
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
  group('testWeekdayTranslation_en_PH_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PH',
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
  group('testWeekdayTranslation_en_PR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PR',
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
  group('testWeekdayTranslation_en_PR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PR',
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
  group('testWeekdayTranslation_en_PR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PR',
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
  group('testWeekdayTranslation_en_PR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PR',
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
  group('testWeekdayTranslation_en_SG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-SG',
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
  group('testWeekdayTranslation_en_SG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-SG',
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
  group('testWeekdayTranslation_en_SG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-SG',
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
  group('testWeekdayTranslation_en_SG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-SG',
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
  group('testWeekdayTranslation_en_US', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-US',
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
  group('testWeekdayTranslation_en_US_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-US',
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
  group('testWeekdayTranslation_en_US_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-US',
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
  group('testWeekdayTranslation_en_US_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-US',
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
  group('testWeekdayTranslation_en_UG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-UG',
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
  group('testWeekdayTranslation_en_UG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-UG',
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
  group('testWeekdayTranslation_en_UG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-UG',
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
  group('testWeekdayTranslation_en_UG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-UG',
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
  group('testWeekdayTranslation_en_ZA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZA',
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
  group('testWeekdayTranslation_en_ZA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZA',
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
  group('testWeekdayTranslation_en_ZA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZA',
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
  group('testWeekdayTranslation_en_ZA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZA',
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
  group('testWeekdayTranslation_en_ZM', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZM',
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
  group('testWeekdayTranslation_en_ZM_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZM',
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
  group('testWeekdayTranslation_en_ZM_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZM',
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
  group('testWeekdayTranslation_en_ZM_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-ZM',
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
  group('testWeekdayTranslation_es_AR', () {
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
            locale: 'es-AR',
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
  group('testWeekdayTranslation_es_AR_long', () {
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
            locale: 'es-AR',
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
  group('testWeekdayTranslation_es_AR_medium', () {
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
            locale: 'es-AR',
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
  group('testWeekdayTranslation_es_AR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-AR',
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
  group('testWeekdayTranslation_es_BO', () {
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
            locale: 'es-BO',
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
  group('testWeekdayTranslation_es_BO_long', () {
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
            locale: 'es-BO',
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
  group('testWeekdayTranslation_es_BO_medium', () {
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
            locale: 'es-BO',
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
  group('testWeekdayTranslation_es_BO_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-BO',
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
  group('testWeekdayTranslation_es_CL', () {
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
            locale: 'es-CL',
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
  group('testWeekdayTranslation_es_CL_long', () {
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
            locale: 'es-CL',
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
  group('testWeekdayTranslation_es_CL_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'do',
      1: 'lu',
      2: 'ma',
      3: 'mi',
      4: 'ju',
      5: 'vi',
      6: 'sá'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-CL',
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
  group('testWeekdayTranslation_es_CL_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-CL',
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'DO',
          1: 'LU',
          2: 'MA',
          3: 'MI',
          4: 'JU',
          5: 'VI',
          6: 'SA'
        };
      default:
        expectedResult = <int, String>{
          0: 'd',
          1: 'l',
          2: 'm',
          3: 'm',
          4: 'j',
          5: 'v',
          6: 's'
        };
    }

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
  group('testWeekdayTranslation_es_DO', () {
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
            locale: 'es-DO',
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
  group('testWeekdayTranslation_es_DO_long', () {
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
            locale: 'es-DO',
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
  group('testWeekdayTranslation_es_DO_medium', () {
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
            locale: 'es-DO',
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
  group('testWeekdayTranslation_es_DO_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-DO',
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
  group('testWeekdayTranslation_es_EC', () {
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
            locale: 'es-EC',
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
  group('testWeekdayTranslation_es_EC_long', () {
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
            locale: 'es-EC',
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
  group('testWeekdayTranslation_es_EC_medium', () {
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
            locale: 'es-EC',
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
  group('testWeekdayTranslation_es_EC_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-EC',
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
  group('testWeekdayTranslation_es_ES', () {
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
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_ES_long', () {
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
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_ES_medium', () {
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
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_ES_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'X',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_GT', () {
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
            locale: 'es-GT',
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
  group('testWeekdayTranslation_es_GT_long', () {
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
            locale: 'es-GT',
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
  group('testWeekdayTranslation_es_GT_medium', () {
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
            locale: 'es-GT',
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
  group('testWeekdayTranslation_es_GT_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-GT',
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
  group('testWeekdayTranslation_es_HN', () {
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
            locale: 'es-HN',
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
  group('testWeekdayTranslation_es_HN_long', () {
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
            locale: 'es-HN',
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
  group('testWeekdayTranslation_es_HN_medium', () {
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
            locale: 'es-HN',
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
  group('testWeekdayTranslation_es_HN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-HN',
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
  group('testWeekdayTranslation_es_MX', () {
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
            locale: 'es-MX',
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
  group('testWeekdayTranslation_es_MX_long', () {
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
            locale: 'es-MX',
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
  group('testWeekdayTranslation_es_MX_medium', () {
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
            locale: 'es-MX',
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
  group('testWeekdayTranslation_es_MX_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-MX',
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
  group('testWeekdayTranslation_es_NI', () {
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
            locale: 'es-NI',
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
  group('testWeekdayTranslation_es_NI_long', () {
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
            locale: 'es-NI',
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
  group('testWeekdayTranslation_es_NI_medium', () {
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
            locale: 'es-NI',
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
  group('testWeekdayTranslation_es_NI_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-NI',
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
  group('testWeekdayTranslation_es_PA', () {
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
            locale: 'es-PA',
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
  group('testWeekdayTranslation_es_PA_long', () {
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
            locale: 'es-PA',
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
  group('testWeekdayTranslation_es_PA_medium', () {
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
            locale: 'es-PA',
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
  group('testWeekdayTranslation_es_PA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-PA',
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
  group('testWeekdayTranslation_es_PE', () {
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
            locale: 'es-PE',
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
  group('testWeekdayTranslation_es_PE_long', () {
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
            locale: 'es-PE',
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
  group('testWeekdayTranslation_es_PE_medium', () {
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
            locale: 'es-PE',
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
  group('testWeekdayTranslation_es_PE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-PE',
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
  group('testWeekdayTranslation_es_PR', () {
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
            locale: 'es-PR',
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
  group('testWeekdayTranslation_es_PR_long', () {
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
            locale: 'es-PR',
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
  group('testWeekdayTranslation_es_PR_medium', () {
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
            locale: 'es-PR',
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
  group('testWeekdayTranslation_es_PR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-PR',
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
  group('testWeekdayTranslation_es_PY', () {
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
            locale: 'es-PY',
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
  group('testWeekdayTranslation_es_PY_long', () {
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
            locale: 'es-PY',
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
  group('testWeekdayTranslation_es_PY_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Do',
      1: 'Lu',
      2: 'Ma',
      3: 'Mi',
      4: 'Ju',
      5: 'Vi',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-PY',
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
  group('testWeekdayTranslation_es_PY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-PY',
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
  group('testWeekdayTranslation_es_SV', () {
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
            locale: 'es-SV',
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
  group('testWeekdayTranslation_es_SV_long', () {
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
            locale: 'es-SV',
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
  group('testWeekdayTranslation_es_SV_medium', () {
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
            locale: 'es-SV',
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
  group('testWeekdayTranslation_es_SV_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-SV',
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
  group('testWeekdayTranslation_es_US', () {
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
            locale: 'es-US',
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
  group('testWeekdayTranslation_es_US_long', () {
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
            locale: 'es-US',
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
  group('testWeekdayTranslation_es_US_medium', () {
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
            locale: 'es-US',
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
  group('testWeekdayTranslation_es_US_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-US',
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
  group('testWeekdayTranslation_es_UY', () {
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
            locale: 'es-UY',
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
  group('testWeekdayTranslation_es_UY_long', () {
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
            locale: 'es-UY',
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
  group('testWeekdayTranslation_es_UY_medium', () {
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
            locale: 'es-UY',
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
  group('testWeekdayTranslation_es_UY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-UY',
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
  group('testWeekdayTranslation_es_VE', () {
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
            locale: 'es-VE',
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
  group('testWeekdayTranslation_es_VE_long', () {
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
            locale: 'es-VE',
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
  group('testWeekdayTranslation_es_VE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Do',
      1: 'Lu',
      2: 'Ma',
      3: 'Mi',
      4: 'Ju',
      5: 'Vi',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-VE',
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
  group('testWeekdayTranslation_es_VE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-VE',
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
  group('testWeekdayTranslation_et_EE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'pühapäev',
      1: 'esmaspäev',
      2: 'teisipäev',
      3: 'kolmapäev',
      4: 'neljapäev',
      5: 'reede',
      6: 'laupäev'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'et-EE',
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
  group('testWeekdayTranslation_et_EE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'E',
      2: 'T',
      3: 'K',
      4: 'N',
      5: 'R',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'et-EE',
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
  group('testWeekdayTranslation_et_EE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'E',
      2: 'T',
      3: 'K',
      4: 'N',
      5: 'R',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'et-EE',
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
  group('testWeekdayTranslation_et_EE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'E',
      2: 'T',
      3: 'K',
      4: 'N',
      5: 'R',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'et-EE',
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
            year: 2015,
            month: 8,
            day: num + 1,
            type: 'persian',
            timezone: 'Etc/UTC');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_fa_IR_long', () {
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
            year: 2015,
            month: 8,
            day: num + 2,
            type: 'persian-algo',
            timezone: 'Etc/UTC');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_fa_IR_short', () {
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'یکشنبه',
          1: 'دوشنبه',
          2: 'سه‌شنبه',
          3: 'چهارشنبه',
          4: 'پنجشنبه',
          5: 'جمعه',
          6: 'شنبه'
        };
      default:
        expectedResult = <int, String>{
          0: 'ی',
          1: 'د',
          2: 'س',
          3: 'چ',
          4: 'پ',
          5: 'ج',
          6: 'ش'
        };
    }
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
            year: 2015,
            month: 8,
            day: num + 2,
            type: 'persian-algo',
            timezone: 'Etc/UTC');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_fi_FI', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sunnuntai',
      1: 'maanantai',
      2: 'tiistai',
      3: 'keskiviikko',
      4: 'torstai',
      5: 'perjantai',
      6: 'lauantai'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fi-FI',
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
  group('testWeekdayTranslation_fi_FI_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'su',
      1: 'ma',
      2: 'ti',
      3: 'ke',
      4: 'to',
      5: 'pe',
      6: 'la'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fi-FI',
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
  group('testWeekdayTranslation_fi_FI_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'su',
      1: 'ma',
      2: 'ti',
      3: 'ke',
      4: 'to',
      5: 'pe',
      6: 'la'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fi-FI',
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
  group('testWeekdayTranslation_fi_FI_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'K',
      4: 'T',
      5: 'P',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fi-FI',
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
  group('testWeekdayTranslation_fr_BE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dimanche',
      1: 'lundi',
      2: 'mardi',
      3: 'mercredi',
      4: 'jeudi',
      5: 'vendredi',
      6: 'samedi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-BE',
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
  group('testWeekdayTranslation_fr_BE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dim.',
      1: 'lun.',
      2: 'mar.',
      3: 'mer.',
      4: 'jeu.',
      5: 'ven.',
      6: 'sam.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-BE',
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
  group('testWeekdayTranslation_fr_BE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'di',
      1: 'lu',
      2: 'ma',
      3: 'me',
      4: 'je',
      5: 've',
      6: 'sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-BE',
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
  group('testWeekdayTranslation_fr_BE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-BE',
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
  group('testWeekdayTranslation_fr_CA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dimanche',
      1: 'lundi',
      2: 'mardi',
      3: 'mercredi',
      4: 'jeudi',
      5: 'vendredi',
      6: 'samedi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dim.',
      1: 'lun.',
      2: 'mar.',
      3: 'mer.',
      4: 'jeu.',
      5: 'ven.',
      6: 'sam.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'di',
      1: 'lu',
      2: 'ma',
      3: 'me',
      4: 'je',
      5: 've',
      6: 'sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dimanche',
      1: 'lundi',
      2: 'mardi',
      3: 'mercredi',
      4: 'jeudi',
      5: 'vendredi',
      6: 'samedi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dim.',
      1: 'lun.',
      2: 'mar.',
      3: 'mer.',
      4: 'jeu.',
      5: 'ven.',
      6: 'sam.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'di',
      1: 'lu',
      2: 'ma',
      3: 'me',
      4: 'je',
      5: 've',
      6: 'sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_CA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-CA',
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
  group('testWeekdayTranslation_fr_FR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dimanche',
      1: 'lundi',
      2: 'mardi',
      3: 'mercredi',
      4: 'jeudi',
      5: 'vendredi',
      6: 'samedi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-FR',
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
  group('testWeekdayTranslation_fr_FR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dim.',
      1: 'lun.',
      2: 'mar.',
      3: 'mer.',
      4: 'jeu.',
      5: 'ven.',
      6: 'sam.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-FR',
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
  group('testWeekdayTranslation_fr_FR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'di',
      1: 'lu',
      2: 'ma',
      3: 'me',
      4: 'je',
      5: 've',
      6: 'sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-FR',
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
  group('testWeekdayTranslation_fr_FR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-FR',
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
  group('testWeekdayTranslation_fr_LU', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dimanche',
      1: 'lundi',
      2: 'mardi',
      3: 'mercredi',
      4: 'jeudi',
      5: 'vendredi',
      6: 'samedi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-LU',
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
  group('testWeekdayTranslation_fr_LU_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dim.',
      1: 'lun.',
      2: 'mar.',
      3: 'mer.',
      4: 'jeu.',
      5: 'ven.',
      6: 'sam.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-LU',
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
  group('testWeekdayTranslation_fr_LU_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'di',
      1: 'lu',
      2: 'ma',
      3: 'me',
      4: 'je',
      5: 've',
      6: 'sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-LU',
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
  group('testWeekdayTranslation_fr_LU_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'fr-LU',
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
  group('testWeekdayTranslation_ga_IE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Dé Domhnaigh',
      1: 'Dé Luain',
      2: 'Dé Máirt',
      3: 'Dé Céadaoin',
      4: 'Déardaoin',
      5: 'Dé hAoine',
      6: 'Dé Sathairn'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ga-IE',
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
  group('testWeekdayTranslation_ga_IE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Domh',
      1: 'Luan',
      2: 'Máirt',
      3: 'Céad',
      4: 'Déar',
      5: 'Aoine',
      6: 'Sath'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ga-IE',
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
  group('testWeekdayTranslation_ga_IE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Do',
      1: 'Lu',
      2: 'Má',
      3: 'Cé',
      4: 'Dé',
      5: 'Ao',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ga-IE',
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
  group('testWeekdayTranslation_ga_IE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'C',
      4: 'D',
      5: 'A',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ga-IE',
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
  group('testWeekdayTranslation_gu_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'રવિવાર',
      1: 'સોમવાર',
      2: 'મંગળવાર',
      3: 'બુધવાર',
      4: 'ગુરુવાર',
      5: 'શુક્રવાર',
      6: 'શનિવાર'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'gu-IN',
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
  group('testWeekdayTranslation_gu_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'રવિ',
      1: 'સોમ',
      2: 'મંગળ',
      3: 'બુધ',
      4: 'ગુરુ',
      5: 'શુક્ર',
      6: 'શનિ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'gu-IN',
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
  group('testWeekdayTranslation_gu_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ર',
      1: 'સો',
      2: 'મં',
      3: 'બુ',
      4: 'ગુ',
      5: 'શુ',
      6: 'શ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'gu-IN',
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
  group('testWeekdayTranslation_gu_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ર',
      1: 'સો',
      2: 'મં',
      3: 'બુ',
      4: 'ગુ',
      5: 'શુ',
      6: 'શ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'gu-IN',
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
  group('testWeekdayTranslation_he_IL', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'יום ראשון',
      1: 'יום שני',
      2: 'יום שלישי',
      3: 'יום רביעי',
      4: 'יום חמישי',
      5: 'יום שישי',
      6: 'יום שבת'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'he-IL',
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
  group('testWeekdayTranslation_he_IL_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'יום א׳',
      1: 'יום ב׳',
      2: 'יום ג׳',
      3: 'יום ד׳',
      4: 'יום ה׳',
      5: 'יום ו׳',
      6: 'שבת'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'he-IL',
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
  group('testWeekdayTranslation_he_IL_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'א׳',
      1: 'ב׳',
      2: 'ג׳',
      3: 'ד׳',
      4: 'ה׳',
      5: 'ו׳',
      6: 'ש׳'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'he-IL',
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
  group('testWeekdayTranslation_he_IL_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'א׳',
      1: 'ב׳',
      2: 'ג׳',
      3: 'ד׳',
      4: 'ה׳',
      5: 'ו׳',
      6: 'ש׳'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'he-IL',
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
  group('testWeekdayTranslation_hi_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'रविवार',
      1: 'सोमवार',
      2: 'मंगलवार',
      3: 'बुधवार',
      4: 'गुरुवार',
      5: 'शुक्रवार',
      6: 'शनिवार'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hi-IN',
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
  group('testWeekdayTranslation_hi_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'रवि',
      1: 'सोम',
      2: 'मंगल',
      3: 'बुध',
      4: 'गुरु',
      5: 'शुक्र',
      6: 'शनि'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hi-IN',
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
  group('testWeekdayTranslation_hi_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'र',
      1: 'सो',
      2: 'मं',
      3: 'बु',
      4: 'गु',
      5: 'शु',
      6: 'श'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hi-IN',
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
  group('testWeekdayTranslation_hi_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'र',
      1: 'सो',
      2: 'मं',
      3: 'बु',
      4: 'गु',
      5: 'शु',
      6: 'श'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hi-IN',
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
  group('testWeekdayTranslation_hr_HR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedjelja',
      1: 'ponedjeljak',
      2: 'utorak',
      3: 'srijeda',
      4: 'četvrtak',
      5: 'petak',
      6: 'subota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HR',
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
  group('testWeekdayTranslation_hr_HR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HR',
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
  group('testWeekdayTranslation_hr_HR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HR',
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
  group('testWeekdayTranslation_hr_HR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HR',
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
  group('testWeekdayTranslation_hr_ME', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedjelja',
      1: 'ponedjeljak',
      2: 'utorak',
      3: 'srijeda',
      4: 'četvrtak',
      5: 'petak',
      6: 'subota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-ME',
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
  group('testWeekdayTranslation_hr_ME_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-ME',
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
  group('testWeekdayTranslation_hr_ME_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-ME',
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
  group('testWeekdayTranslation_hr_ME_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-ME',
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
  group('testWeekdayTranslation_hr_HU', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedjelja',
      1: 'ponedjeljak',
      2: 'utorak',
      3: 'srijeda',
      4: 'četvrtak',
      5: 'petak',
      6: 'subota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HU',
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
  group('testWeekdayTranslation_hr_HU_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HU',
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
  group('testWeekdayTranslation_hr_HU_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sri',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HU',
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
  group('testWeekdayTranslation_hr_HU_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'hr-HU',
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
  group('testWeekdayTranslation_id_ID', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Minggu',
      1: 'Senin',
      2: 'Selasa',
      3: 'Rabu',
      4: 'Kamis',
      5: 'Jumat',
      6: 'Sabtu'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'id-ID',
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
  group('testWeekdayTranslation_id_ID_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Min',
      1: 'Sen',
      2: 'Sel',
      3: 'Rab',
      4: 'Kam',
      5: 'Jum',
      6: 'Sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'id-ID',
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
  group('testWeekdayTranslation_id_ID_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Min',
      1: 'Sen',
      2: 'Sel',
      3: 'Rab',
      4: 'Kam',
      5: 'Jum',
      6: 'Sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'id-ID',
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
  group('testWeekdayTranslation_id_ID_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'M',
      1: 'S',
      2: 'S',
      3: 'R',
      4: 'K',
      5: 'J',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'id-ID',
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
  group('testWeekdayTranslation_is_IS', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sunnudagur',
      1: 'mánudagur',
      2: 'þriðjudagur',
      3: 'miðvikudagur',
      4: 'fimmtudagur',
      5: 'föstudagur',
      6: 'laugardagur'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'is-IS',
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
  group('testWeekdayTranslation_is_IS_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sun.',
      1: 'mán.',
      2: 'þri.',
      3: 'mið.',
      4: 'fim.',
      5: 'fös.',
      6: 'lau.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'is-IS',
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
  group('testWeekdayTranslation_is_IS_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'su.',
      1: 'má.',
      2: 'þr.',
      3: 'mi.',
      4: 'fi.',
      5: 'fö.',
      6: 'la.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'is-IS',
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
  group('testWeekdayTranslation_is_IS_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'Þ',
      3: 'M',
      4: 'F',
      5: 'F',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'is-IS',
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
  group('testWeekdayTranslation_it_CH', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domenica',
      1: 'lunedì',
      2: 'martedì',
      3: 'mercoledì',
      4: 'giovedì',
      5: 'venerdì',
      6: 'sabato'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-CH',
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
  group('testWeekdayTranslation_it_CH_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom',
      1: 'lun',
      2: 'mar',
      3: 'mer',
      4: 'gio',
      5: 'ven',
      6: 'sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-CH',
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
  group('testWeekdayTranslation_it_CH_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom',
      1: 'lun',
      2: 'mar',
      3: 'mer',
      4: 'gio',
      5: 'ven',
      6: 'sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-CH',
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
  group('testWeekdayTranslation_it_CH_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'G',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-CH',
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
  group('testWeekdayTranslation_it_IT', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domenica',
      1: 'lunedì',
      2: 'martedì',
      3: 'mercoledì',
      4: 'giovedì',
      5: 'venerdì',
      6: 'sabato'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-IT',
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
  group('testWeekdayTranslation_it_IT_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom',
      1: 'lun',
      2: 'mar',
      3: 'mer',
      4: 'gio',
      5: 'ven',
      6: 'sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-IT',
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
  group('testWeekdayTranslation_it_IT_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom',
      1: 'lun',
      2: 'mar',
      3: 'mer',
      4: 'gio',
      5: 'ven',
      6: 'sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-IT',
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
  group('testWeekdayTranslation_it_IT_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'G',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'it-IT',
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
  group('testWeekdayTranslation_ja_JP', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日曜日',
      1: '月曜日',
      2: '火曜日',
      3: '水曜日',
      4: '木曜日',
      5: '金曜日',
      6: '土曜日'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ja-JP',
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
  group('testWeekdayTranslation_ja_JP_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '月',
      2: '火',
      3: '水',
      4: '木',
      5: '金',
      6: '土'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ja-JP',
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
  group('testWeekdayTranslation_ja_JP_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '月',
      2: '火',
      3: '水',
      4: '木',
      5: '金',
      6: '土'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ja-JP',
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
  group('testWeekdayTranslation_ja_JP_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '月',
      2: '火',
      3: '水',
      4: '木',
      5: '金',
      6: '土'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ja-JP',
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
  group('testWeekdayTranslation_kk_KZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'жексенбі',
      1: 'дүйсенбі',
      2: 'сейсенбі',
      3: 'сәрсенбі',
      4: 'бейсенбі',
      5: 'жұма',
      6: 'сенбі'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kk-KZ',
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
  group('testWeekdayTranslation_kk_KZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'жс',
      1: 'дс',
      2: 'сс',
      3: 'ср',
      4: 'бс',
      5: 'жм',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kk-KZ',
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
  group('testWeekdayTranslation_kk_KZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'жс',
      1: 'дс',
      2: 'сс',
      3: 'ср',
      4: 'бс',
      5: 'жм',
      6: 'сб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kk-KZ',
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
  group('testWeekdayTranslation_kk_KZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ж',
      1: 'Д',
      2: 'С',
      3: 'С',
      4: 'Б',
      5: 'Ж',
      6: 'С'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kk-KZ',
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
  group('testWeekdayTranslation_kn_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ಭಾನುವಾರ',
      1: 'ಸೋಮವಾರ',
      2: 'ಮಂಗಳವಾರ',
      3: 'ಬುಧವಾರ',
      4: 'ಗುರುವಾರ',
      5: 'ಶುಕ್ರವಾರ',
      6: 'ಶನಿವಾರ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kn-IN',
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
  group('testWeekdayTranslation_kn_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ಭಾನು',
      1: 'ಸೋಮ',
      2: 'ಮಂಗಳ',
      3: 'ಬುಧ',
      4: 'ಗುರು',
      5: 'ಶುಕ್ರ',
      6: 'ಶನಿ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kn-IN',
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
  group('testWeekdayTranslation_kn_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ಭಾನು',
      1: 'ಸೋಮ',
      2: 'ಮಂಗಳ',
      3: 'ಬುಧ',
      4: 'ಗುರು',
      5: 'ಶುಕ್ರ',
      6: 'ಶನಿ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kn-IN',
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
  group('testWeekdayTranslation_kn_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ಭಾ',
      1: 'ಸೋ',
      2: 'ಮಂ',
      3: 'ಬು',
      4: 'ಗು',
      5: 'ಶು',
      6: 'ಶ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'kn-IN',
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
  group('testWeekdayTranslation_ko_KR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '일요일',
      1: '월요일',
      2: '화요일',
      3: '수요일',
      4: '목요일',
      5: '금요일',
      6: '토요일'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ko-KR',
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
  group('testWeekdayTranslation_ko_KR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '일',
      1: '월',
      2: '화',
      3: '수',
      4: '목',
      5: '금',
      6: '토'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ko-KR',
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
  group('testWeekdayTranslation_ko_KR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '일',
      1: '월',
      2: '화',
      3: '수',
      4: '목',
      5: '금',
      6: '토'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ko-KR',
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
  group('testWeekdayTranslation_ko_KR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '일',
      1: '월',
      2: '화',
      3: '수',
      4: '목',
      5: '금',
      6: '토'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ko-KR',
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
  group('testWeekdayTranslation_ku_Arab_IQ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'یەکشەممە',
      1: 'دووشەممە',
      2: 'سێشەممە',
      3: 'چوارشەممە',
      4: 'پێنجشەممە',
      5: 'ھەینی',
      6: 'شەممە'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ku-Arab-IQ',
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
  group('testWeekdayTranslation_ku_Arab_IQ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'یەکشەممە',
      1: 'دووشەممە',
      2: 'سێشەممە',
      3: 'چوارشەممە',
      4: 'پێنجشەممە',
      5: 'ھەینی',
      6: 'شەممە'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ku-Arab-IQ',
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
  group('testWeekdayTranslation_ku_Arab_IQ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '١ش',
      1: '٢ش',
      2: '٣ش',
      3: '٤ش',
      4: '٥ش',
      5: 'ھ',
      6: 'ش'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ku-Arab-IQ',
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
  group('testWeekdayTranslation_ku_Arab_IQ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ی',
      1: 'د',
      2: 'س',
      3: 'چ',
      4: 'پ',
      5: 'ھ',
      6: 'ش'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ku-Arab-IQ',
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
  group('testWeekdayTranslation_lt_LT', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sekmadienis',
      1: 'pirmadienis',
      2: 'antradienis',
      3: 'trečiadienis',
      4: 'ketvirtadienis',
      5: 'penktadienis',
      6: 'šeštadienis'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lt-LT',
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
  group('testWeekdayTranslation_lt_LT_long', () {
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'Sekm.',
          1: 'Pir.',
          2: 'Antr.',
          3: 'Treč.',
          4: 'Ketv.',
          5: 'Penkt.',
          6: 'Šešt.'
        };
      default:
        expectedResult = <int, String>{
          0: 'sk',
          1: 'pr',
          2: 'an',
          3: 'tr',
          4: 'kt',
          5: 'pn',
          6: 'št'
        };
    }

    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lt-LT',
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
  group('testWeekdayTranslation_lt_LT_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sk',
      1: 'Pr',
      2: 'An',
      3: 'Tr',
      4: 'Kt',
      5: 'Pn',
      6: 'Št'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lt-LT',
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
  group('testWeekdayTranslation_lt_LT_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'P',
      2: 'A',
      3: 'T',
      4: 'K',
      5: 'P',
      6: 'Š'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lt-LT',
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
  group('testWeekdayTranslation_lv_LV', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Svētdiena',
      1: 'Pirmdiena',
      2: 'Otrdiena',
      3: 'Trešdiena',
      4: 'Ceturtdiena',
      5: 'Piektdiena',
      6: 'Sestdiena'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lv-LV',
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
  group('testWeekdayTranslation_lv_LV_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Svētd.',
      1: 'Pirmd.',
      2: 'Otrd.',
      3: 'Trešd.',
      4: 'Ceturtd.',
      5: 'Piektd.',
      6: 'Sestd.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lv-LV',
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
  group('testWeekdayTranslation_lv_LV_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sv',
      1: 'Pr',
      2: 'Ot',
      3: 'Tr',
      4: 'Ce',
      5: 'Pk',
      6: 'Se'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lv-LV',
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
  group('testWeekdayTranslation_lv_LV_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'P',
      2: 'O',
      3: 'T',
      4: 'C',
      5: 'P',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'lv-LV',
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
  group('testWeekdayTranslation_mk_MK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'недела',
      1: 'понеделник',
      2: 'вторник',
      3: 'среда',
      4: 'четврток',
      5: 'петок',
      6: 'сабота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mk-MK',
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
  group('testWeekdayTranslation_mk_MK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нед.',
      1: 'пон.',
      2: 'вто.',
      3: 'сре.',
      4: 'чет.',
      5: 'пет.',
      6: 'саб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mk-MK',
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
  group('testWeekdayTranslation_mk_MK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нед.',
      1: 'пон.',
      2: 'вто.',
      3: 'сре.',
      4: 'чет.',
      5: 'пет.',
      6: 'саб.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mk-MK',
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
  group('testWeekdayTranslation_mk_MK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'н',
      1: 'п',
      2: 'в',
      3: 'с',
      4: 'ч',
      5: 'п',
      6: 'с'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mk-MK',
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
  group('testWeekdayTranslation_ml_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ഞായറാഴ്‌ച',
      1: 'തിങ്കളാഴ്‌ച',
      2: 'ചൊവ്വാഴ്‌ച',
      3: 'ബുധനാഴ്‌ച',
      4: 'വ്യാഴാഴ്‌ച',
      5: 'വെള്ളിയാഴ്‌ച',
      6: 'ശനിയാഴ്‌ച'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ml-IN',
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
  group('testWeekdayTranslation_ml_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ഞായർ',
      1: 'തിങ്കൾ',
      2: 'ചൊവ്വ',
      3: 'ബുധൻ',
      4: 'വ്യാഴം',
      5: 'വെള്ളി',
      6: 'ശനി'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ml-IN',
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
  group('testWeekdayTranslation_ml_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ഞാ',
      1: 'തി',
      2: 'ചൊ',
      3: 'ബു',
      4: 'വ്യാ',
      5: 'വെ',
      6: 'ശ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ml-IN',
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
  group('testWeekdayTranslation_ml_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ഞാ',
      1: 'തി',
      2: 'ചൊ',
      3: 'ബു',
      4: 'വ്യാ',
      5: 'വെ',
      6: 'ശ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ml-IN',
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
  group('testWeekdayTranslation_mr_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'रविवार',
      1: 'सोमवार',
      2: 'मंगळवार',
      3: 'बुधवार',
      4: 'गुरुवार',
      5: 'शुक्रवार',
      6: 'शनिवार'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mr-IN',
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
  group('testWeekdayTranslation_mr_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'रवि',
      1: 'सोम',
      2: 'मंगळ',
      3: 'बुध',
      4: 'गुरु',
      5: 'शुक्र',
      6: 'शनि'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mr-IN',
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
  group('testWeekdayTranslation_mr_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'र',
      1: 'सो',
      2: 'मं',
      3: 'बु',
      4: 'गु',
      5: 'शु',
      6: 'श'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mr-IN',
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
  group('testWeekdayTranslation_mr_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'र',
      1: 'सो',
      2: 'मं',
      3: 'बु',
      4: 'गु',
      5: 'शु',
      6: 'श'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mr-IN',
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
  group('testWeekdayTranslation_ms_MY', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ahad',
      1: 'Isnin',
      2: 'Selasa',
      3: 'Rabu',
      4: 'Khamis',
      5: 'Jumaat',
      6: 'Sabtu'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-MY',
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
  group('testWeekdayTranslation_ms_MY_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ahd',
      1: 'Isn',
      2: 'Sel',
      3: 'Rab',
      4: 'Kha',
      5: 'Jum',
      6: 'Sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-MY',
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
  group('testWeekdayTranslation_ms_MY_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ah',
      1: 'Is',
      2: 'Se',
      3: 'Ra',
      4: 'Kh',
      5: 'Ju',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-MY',
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
  group('testWeekdayTranslation_ms_MY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'A',
      1: 'I',
      2: 'S',
      3: 'R',
      4: 'K',
      5: 'J',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-MY',
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
  group('testWeekdayTranslation_nb_NO', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'søndag',
      1: 'mandag',
      2: 'tirsdag',
      3: 'onsdag',
      4: 'torsdag',
      5: 'fredag',
      6: 'lørdag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nb-NO',
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
  group('testWeekdayTranslation_nb_NO_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'søn.',
      1: 'man.',
      2: 'tir.',
      3: 'ons.',
      4: 'tor.',
      5: 'fre.',
      6: 'lør.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nb-NO',
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
  group('testWeekdayTranslation_nb_NO_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sø.',
      1: 'ma.',
      2: 'ti.',
      3: 'on.',
      4: 'to.',
      5: 'fr.',
      6: 'lø.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nb-NO',
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
  group('testWeekdayTranslation_nb_NO_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'O',
      4: 'T',
      5: 'F',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nb-NO',
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
  group('testWeekdayTranslation_nl_BE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'zondag',
      1: 'maandag',
      2: 'dinsdag',
      3: 'woensdag',
      4: 'donderdag',
      5: 'vrijdag',
      6: 'zaterdag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-BE',
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

  group('testWeekdayTranslation_nl_BE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'zo',
      1: 'ma',
      2: 'di',
      3: 'wo',
      4: 'do',
      5: 'vr',
      6: 'za'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-BE',
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
  group('testWeekdayTranslation_nl_BE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'zo',
      1: 'ma',
      2: 'di',
      3: 'wo',
      4: 'do',
      5: 'vr',
      6: 'za'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-BE',
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
  group('testWeekdayTranslation_nl_BE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Z',
      1: 'M',
      2: 'D',
      3: 'W',
      4: 'D',
      5: 'V',
      6: 'Z'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-BE',
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
  group('testWeekdayTranslation_nl_NL', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'zondag',
      1: 'maandag',
      2: 'dinsdag',
      3: 'woensdag',
      4: 'donderdag',
      5: 'vrijdag',
      6: 'zaterdag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-NL',
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
  group('testWeekdayTranslation_nl_NL_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'zo',
      1: 'ma',
      2: 'di',
      3: 'wo',
      4: 'do',
      5: 'vr',
      6: 'za'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-NL',
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
  group('testWeekdayTranslation_nl_NL_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'zo',
      1: 'ma',
      2: 'di',
      3: 'wo',
      4: 'do',
      5: 'vr',
      6: 'za'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-NL',
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
  group('testWeekdayTranslation_nl_NL_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Z',
      1: 'M',
      2: 'D',
      3: 'W',
      4: 'D',
      5: 'V',
      6: 'Z'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'nl-NL',
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
  group('testWeekdayTranslation_pa_Guru_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ਐਤਵਾਰ',
      1: 'ਸੋਮਵਾਰ',
      2: 'ਮੰਗਲਵਾਰ',
      3: 'ਬੁੱਧਵਾਰ',
      4: 'ਵੀਰਵਾਰ',
      5: 'ਸ਼ੁੱਕਰਵਾਰ',
      6: 'ਸ਼ਨਿੱਚਰਵਾਰ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pa-Guru-IN',
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
  group('testWeekdayTranslation_pa_Guru_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ਐਤ',
      1: 'ਸੋਮ',
      2: 'ਮੰਗਲ',
      3: 'ਬੁੱਧ',
      4: 'ਵੀਰ',
      5: 'ਸ਼ੁੱਕਰ',
      6: 'ਸ਼ਨਿੱਚਰ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pa-Guru-IN',
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
  group('testWeekdayTranslation_pa_Guru_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ਐਤ',
      1: 'ਸੋਮ',
      2: 'ਮੰਗ',
      3: 'ਬੁੱਧ',
      4: 'ਵੀਰ',
      5: 'ਸ਼ੁੱਕ',
      6: 'ਸ਼ਨਿੱ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pa-Guru-IN',
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
  group('testWeekdayTranslation_pa_Guru_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ਐ',
      1: 'ਸੋ',
      2: 'ਮੰ',
      3: 'ਬੁੱ',
      4: 'ਵੀ',
      5: 'ਸ਼ੁੱ',
      6: 'ਸ਼'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pa-Guru-IN',
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'Niedziela',
          1: 'Poniedziałek',
          2: 'Wtorek',
          3: 'Środa',
          4: 'Czwartek',
          5: 'Piątek',
          6: 'Sobota'
        };
      default:
        expectedResult = <int, String>{
          0: 'niedziela',
          1: 'poniedziałek',
          2: 'wtorek',
          3: 'środa',
          4: 'czwartek',
          5: 'piątek',
          6: 'sobota'
        };
    }

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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'Niedz.',
          1: 'Pon.',
          2: 'Wt.',
          3: 'Śr.',
          4: 'Czw.',
          5: 'Pt.',
          6: 'Sob.'
        };
      default:
        expectedResult = <int, String>{
          0: 'niedz.',
          1: 'pon.',
          2: 'wt.',
          3: 'śr.',
          4: 'czw.',
          5: 'pt.',
          6: 'sob.'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'Nie',
          1: 'Pon',
          2: 'Wto',
          3: 'Śro',
          4: 'Czw',
          5: 'Pią',
          6: 'Sob'
        };
      default:
        expectedResult = <int, String>{
          0: 'nie',
          1: 'pon',
          2: 'wto',
          3: 'śro',
          4: 'czw',
          5: 'pią',
          6: 'sob'
        };
    }
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
  group('testWeekdayTranslation_pt_BR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'segunda-feira',
      2: 'terça-feira',
      3: 'quarta-feira',
      4: 'quinta-feira',
      5: 'sexta-feira',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-BR',
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
  group('testWeekdayTranslation_pt_BR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom.',
      1: 'seg.',
      2: 'ter.',
      3: 'qua.',
      4: 'qui.',
      5: 'sex.',
      6: 'sáb.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-BR',
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
  group('testWeekdayTranslation_pt_BR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom.',
      1: 'seg.',
      2: 'ter.',
      3: 'qua.',
      4: 'qui.',
      5: 'sex.',
      6: 'sáb.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-BR',
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
  group('testWeekdayTranslation_pt_BR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'S',
      2: 'T',
      3: 'Q',
      4: 'Q',
      5: 'S',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-BR',
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
  group('testWeekdayTranslation_pt_PT', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'segunda-feira',
      2: 'terça-feira',
      3: 'quarta-feira',
      4: 'quinta-feira',
      5: 'sexta-feira',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-PT',
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
  group('testWeekdayTranslation_pt_PT_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'segunda',
      2: 'terça',
      3: 'quarta',
      4: 'quinta',
      5: 'sexta',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-PT',
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
  group('testWeekdayTranslation_pt_PT_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom.',
      1: 'seg.',
      2: 'ter.',
      3: 'qua.',
      4: 'qui.',
      5: 'sex.',
      6: 'sáb.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-PT',
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
  group('testWeekdayTranslation_pt_PT_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'S',
      2: 'T',
      3: 'Q',
      4: 'Q',
      5: 'S',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-PT',
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
  group('testWeekdayTranslation_ro_RO', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'duminică',
      1: 'luni',
      2: 'marți',
      3: 'miercuri',
      4: 'joi',
      5: 'vineri',
      6: 'sâmbătă'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ro-RO',
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
  group('testWeekdayTranslation_ro_RO_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dum.',
      1: 'lun.',
      2: 'mar.',
      3: 'mie.',
      4: 'joi',
      5: 'vin.',
      6: 'sâm.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ro-RO',
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
  group('testWeekdayTranslation_ro_RO_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'du.',
      1: 'lu.',
      2: 'ma.',
      3: 'mi.',
      4: 'joi',
      5: 'vi.',
      6: 'sâ.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ro-RO',
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
  group('testWeekdayTranslation_ro_RO_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'M',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ro-RO',
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
  group('testWeekdayTranslation_sr_Cyrl_RS', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'недеља',
      1: 'понедељак',
      2: 'уторак',
      3: 'среда',
      4: 'четвртак',
      5: 'петак',
      6: 'субота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Cyrl-RS',
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
  group('testWeekdayTranslation_sr_Cyrl_RS_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нед',
      1: 'пон',
      2: 'уто',
      3: 'сре',
      4: 'чет',
      5: 'пет',
      6: 'суб'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Cyrl-RS',
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
  group('testWeekdayTranslation_sr_Cyrl_RS_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'не',
      1: 'по',
      2: 'ут',
      3: 'ср',
      4: 'че',
      5: 'пе',
      6: 'су'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Cyrl-RS',
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
  group('testWeekdayTranslation_sr_Cyrl_RS_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'н',
      1: 'п',
      2: 'у',
      3: 'с',
      4: 'ч',
      5: 'п',
      6: 'с'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Cyrl-RS',
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
  group('testWeekdayTranslation_sr_Latn_RS', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedelja',
      1: 'ponedeljak',
      2: 'utorak',
      3: 'sreda',
      4: 'četvrtak',
      5: 'petak',
      6: 'subota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Latn-RS',
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
  group('testWeekdayTranslation_sr_Latn_RS_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned',
      1: 'pon',
      2: 'uto',
      3: 'sre',
      4: 'čet',
      5: 'pet',
      6: 'sub'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Latn-RS',
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
  group('testWeekdayTranslation_sr_Latn_RS_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ne',
      1: 'po',
      2: 'ut',
      3: 'sr',
      4: 'če',
      5: 'pe',
      6: 'su'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Latn-RS',
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
  group('testWeekdayTranslation_sr_Latn_RS_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sr-Latn-RS',
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'воскр.',
          1: 'понед.',
          2: 'вторн.',
          3: 'среда',
          4: 'четв.',
          5: 'пятн.',
          6: 'субб.'
        };
      default:
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
      default:
        expectedResult = <int, String>{
          0: 'В',
          1: 'П',
          2: 'В',
          3: 'С',
          4: 'Ч',
          5: 'П',
          6: 'С'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'воскр.',
          1: 'понед.',
          2: 'вторн.',
          3: 'среда',
          4: 'четв.',
          5: 'пятн.',
          6: 'субб.'
        };
      default:
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
      default:
        expectedResult = <int, String>{
          0: 'В',
          1: 'П',
          2: 'В',
          3: 'С',
          4: 'Ч',
          5: 'П',
          6: 'С'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'воскр.',
          1: 'понед.',
          2: 'вторн.',
          3: 'среда',
          4: 'четв.',
          5: 'пятн.',
          6: 'субб.'
        };
      default:
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
      default:
        expectedResult = <int, String>{
          0: 'В',
          1: 'П',
          2: 'В',
          3: 'С',
          4: 'Ч',
          5: 'П',
          6: 'С'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'воскр.',
          1: 'понед.',
          2: 'вторн.',
          3: 'среда',
          4: 'четв.',
          5: 'пятн.',
          6: 'субб.'
        };
      default:
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
      default:
        expectedResult = <int, String>{
          0: 'В',
          1: 'П',
          2: 'В',
          3: 'С',
          4: 'Ч',
          5: 'П',
          6: 'С'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'воскр.',
          1: 'понед.',
          2: 'вторн.',
          3: 'среда',
          4: 'четв.',
          5: 'пятн.',
          6: 'субб.'
        };
      default:
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
      default:
        expectedResult = <int, String>{
          0: 'В',
          1: 'П',
          2: 'В',
          3: 'С',
          4: 'Ч',
          5: 'П',
          6: 'С'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'воскр.',
          1: 'понед.',
          2: 'вторн.',
          3: 'среда',
          4: 'четв.',
          5: 'пятн.',
          6: 'субб.'
        };
      default:
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
    }
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
    final String testPlatform = getTestPlatform();
    Map<int, String> expectedResult;
    switch (testPlatform) {
      case 'webOS':
        expectedResult = <int, String>{
          0: 'вс',
          1: 'пн',
          2: 'вт',
          3: 'ср',
          4: 'чт',
          5: 'пт',
          6: 'сб'
        };
      default:
        expectedResult = <int, String>{
          0: 'В',
          1: 'П',
          2: 'В',
          3: 'С',
          4: 'Ч',
          5: 'П',
          6: 'С'
        };
    }
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
  group('testWeekdayTranslation_sk_SK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedeľa',
      1: 'pondelok',
      2: 'utorok',
      3: 'streda',
      4: 'štvrtok',
      5: 'piatok',
      6: 'sobota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sk-SK',
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
  group('testWeekdayTranslation_sk_SK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ne',
      1: 'po',
      2: 'ut',
      3: 'st',
      4: 'št',
      5: 'pi',
      6: 'so'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sk-SK',
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
  group('testWeekdayTranslation_sk_SK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ne',
      1: 'po',
      2: 'ut',
      3: 'st',
      4: 'št',
      5: 'pi',
      6: 'so'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sk-SK',
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
  group('testWeekdayTranslation_sk_SK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 'u',
      3: 's',
      4: 'š',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sk-SK',
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
  group('testWeekdayTranslation_sl_SI', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'nedelja',
      1: 'ponedeljek',
      2: 'torek',
      3: 'sreda',
      4: 'četrtek',
      5: 'petek',
      6: 'sobota'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sl-SI',
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
  group('testWeekdayTranslation_sl_SI_long_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned.',
      1: 'pon.',
      2: 'tor.',
      3: 'sre.',
      4: 'čet.',
      5: 'pet.',
      6: 'sob.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sl-SI',
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
  group('testWeekdayTranslation_sl_SI', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ned.',
      1: 'pon.',
      2: 'tor.',
      3: 'sre.',
      4: 'čet.',
      5: 'pet.',
      6: 'sob.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sl-SI',
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
  group('testWeekdayTranslation_sl_SI_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'n',
      1: 'p',
      2: 't',
      3: 's',
      4: 'č',
      5: 'p',
      6: 's'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sl-SI',
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
  group('testWeekdayTranslation_sq_AL', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'e diel',
      1: 'e hënë',
      2: 'e martë',
      3: 'e mërkurë',
      4: 'e enjte',
      5: 'e premte',
      6: 'e shtunë'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-AL',
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
  group('testWeekdayTranslation_sq_AL_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'die',
      1: 'hën',
      2: 'mar',
      3: 'mër',
      4: 'enj',
      5: 'pre',
      6: 'sht'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-AL',
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
  group('testWeekdayTranslation_sq_AL_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'die',
      1: 'hën',
      2: 'mar',
      3: 'mër',
      4: 'enj',
      5: 'pre',
      6: 'sht'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-AL',
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
  group('testWeekdayTranslation_sq_AL_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'd',
      1: 'h',
      2: 'm',
      3: 'm',
      4: 'e',
      5: 'p',
      6: 'sh'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-AL',
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
  group('testWeekdayTranslation_sq_ME', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'e diel',
      1: 'e hënë',
      2: 'e martë',
      3: 'e mërkurë',
      4: 'e enjte',
      5: 'e premte',
      6: 'e shtunë'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-ME',
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
  group('testWeekdayTranslation_sq_ME_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'die',
      1: 'hën',
      2: 'mar',
      3: 'mër',
      4: 'enj',
      5: 'pre',
      6: 'sht'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-ME',
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
  group('testWeekdayTranslation_sq_ME_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'die',
      1: 'hën',
      2: 'mar',
      3: 'mër',
      4: 'enj',
      5: 'pre',
      6: 'sht'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-ME',
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
  group('testWeekdayTranslation_sq_ME_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'd',
      1: 'h',
      2: 'm',
      3: 'm',
      4: 'e',
      5: 'p',
      6: 'sh'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sq-ME',
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
  group('testWeekdayTranslation_sv_FI', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'söndag',
      1: 'måndag',
      2: 'tisdag',
      3: 'onsdag',
      4: 'torsdag',
      5: 'fredag',
      6: 'lördag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-FI',
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
  group('testWeekdayTranslation_sv_FI_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sön',
      1: 'mån',
      2: 'tis',
      3: 'ons',
      4: 'tors',
      5: 'fre',
      6: 'lör'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-FI',
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
  group('testWeekdayTranslation_sv_FI_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sö',
      1: 'må',
      2: 'ti',
      3: 'on',
      4: 'to',
      5: 'fr',
      6: 'lö'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-FI',
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
  group('testWeekdayTranslation_sv_FI_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'O',
      4: 'T',
      5: 'F',
      6: 'L'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-FI',
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
  group('testWeekdayTranslation_sv_SE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'söndag',
      1: 'måndag',
      2: 'tisdag',
      3: 'onsdag',
      4: 'torsdag',
      5: 'fredag',
      6: 'lördag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-SE',
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
  group('testWeekdayTranslation_sv_SE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sön',
      1: 'mån',
      2: 'tis',
      3: 'ons',
      4: 'tors',
      5: 'fre',
      6: 'lör'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-SE',
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
  group('testWeekdayTranslation_sv_SE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'sö',
      1: 'må',
      2: 'ti',
      3: 'on',
      4: 'to',
      5: 'fr',
      6: 'lö'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-SE',
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
  group('testWeekdayTranslation_sv_SE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'O',
      4: 'T',
      5: 'F',
      6: 'L',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'sv-SE',
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
  group('testWeekdayTranslation_ta_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ஞாயிறு',
      1: 'திங்கள்',
      2: 'செவ்வாய்',
      3: 'புதன்',
      4: 'வியாழன்',
      5: 'வெள்ளி',
      6: 'சனி'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ta-IN',
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
  group('testWeekdayTranslation_ta_IN_long_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ஞாயி.',
      1: 'திங்.',
      2: 'செவ்.',
      3: 'புத.',
      4: 'வியா.',
      5: 'வெள்.',
      6: 'சனி'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ta-IN',
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
  group('testWeekdayTranslation_ta_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ஞா',
      1: 'தி',
      2: 'செ',
      3: 'பு',
      4: 'வி',
      5: 'வெ',
      6: 'ச'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ta-IN',
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
  group('testWeekdayTranslation_ta_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ஞா',
      1: 'தி',
      2: 'செ',
      3: 'பு',
      4: 'வி',
      5: 'வெ',
      6: 'ச'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ta-IN',
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
  group('testWeekdayTranslation_te_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ఆదివారం',
      1: 'సోమవారం',
      2: 'మంగళవారం',
      3: 'బుధవారం',
      4: 'గురువారం',
      5: 'శుక్రవారం',
      6: 'శనివారం'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'te-IN',
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
  group('testWeekdayTranslation_te_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ఆది',
      1: 'సోమ',
      2: 'మంగళ',
      3: 'బుధ',
      4: 'గురు',
      5: 'శుక్ర',
      6: 'శని'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'te-IN',
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
  group('testWeekdayTranslation_te_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ఆది',
      1: 'సోమ',
      2: 'మం',
      3: 'బుధ',
      4: 'గురు',
      5: 'శుక్ర',
      6: 'శని'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'te-IN',
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
  group('testWeekdayTranslation_te_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ఆ',
      1: 'సో',
      2: 'మ',
      3: 'బు',
      4: 'గు',
      5: 'శు',
      6: 'శ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'te-IN',
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
  group('testWeekdayTranslation_th_TH', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'วันอาทิตย์',
      1: 'วันจันทร์',
      2: 'วันอังคาร',
      3: 'วันพุธ',
      4: 'วันพฤหัสบดี',
      5: 'วันศุกร์',
      6: 'วันเสาร์'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'th-TH',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 4, type: 'thaisolar');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_th_TH_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'อา.',
      1: 'จ.',
      2: 'อ.',
      3: 'พ.',
      4: 'พฤ.',
      5: 'ศ.',
      6: 'ส.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'th-TH',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 4, type: 'thaisolar');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_th_TH_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'อา.',
      1: 'จ.',
      2: 'อ.',
      3: 'พ.',
      4: 'พฤ.',
      5: 'ศ.',
      6: 'ส.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'th-TH',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 4, type: 'thaisolar');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_th_TH_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'อา',
      1: 'จ',
      2: 'อ',
      3: 'พ',
      4: 'พฤ',
      5: 'ศ',
      6: 'ส'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'th-TH',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015, month: 8, day: num + 4, type: 'thaisolar');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_tr_AM', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pazar',
      1: 'Pazartesi',
      2: 'Salı',
      3: 'Çarşamba',
      4: 'Perşembe',
      5: 'Cuma',
      6: 'Cumartesi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AM',
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
  group('testWeekdayTranslation_tr_AM_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Paz',
      1: 'Pzt',
      2: 'Sal',
      3: 'Çar',
      4: 'Per',
      5: 'Cum',
      6: 'Cmt'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AM',
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
  group('testWeekdayTranslation_tr_AM_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pa',
      1: 'Pt',
      2: 'Sa',
      3: 'Ça',
      4: 'Pe',
      5: 'Cu',
      6: 'Ct'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AM',
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
  group('testWeekdayTranslation_tr_AM_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'P',
      2: 'S',
      3: 'Ç',
      4: 'P',
      5: 'C',
      6: 'C'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AM',
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
  group('testWeekdayTranslation_tr_AZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pazar',
      1: 'Pazartesi',
      2: 'Salı',
      3: 'Çarşamba',
      4: 'Perşembe',
      5: 'Cuma',
      6: 'Cumartesi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AZ',
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
  group('testWeekdayTranslation_tr_AZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Paz',
      1: 'Pzt',
      2: 'Sal',
      3: 'Çar',
      4: 'Per',
      5: 'Cum',
      6: 'Cmt'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AZ',
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
  group('testWeekdayTranslation_tr_AZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pa',
      1: 'Pt',
      2: 'Sa',
      3: 'Ça',
      4: 'Pe',
      5: 'Cu',
      6: 'Ct'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AZ',
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
  group('testWeekdayTranslation_tr_AZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'P',
      2: 'S',
      3: 'Ç',
      4: 'P',
      5: 'C',
      6: 'C'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-AZ',
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
  group('testWeekdayTranslation_tr_CY', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pazar',
      1: 'Pazartesi',
      2: 'Salı',
      3: 'Çarşamba',
      4: 'Perşembe',
      5: 'Cuma',
      6: 'Cumartesi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-CY',
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
  group('testWeekdayTranslation_tr_CY_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Paz',
      1: 'Pzt',
      2: 'Sal',
      3: 'Çar',
      4: 'Per',
      5: 'Cum',
      6: 'Cmt'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-CY',
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
  group('testWeekdayTranslation_tr_CY_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pa',
      1: 'Pt',
      2: 'Sa',
      3: 'Ça',
      4: 'Pe',
      5: 'Cu',
      6: 'Ct'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-CY',
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
  group('testWeekdayTranslation_tr_CY_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'P',
      2: 'S',
      3: 'Ç',
      4: 'P',
      5: 'C',
      6: 'C'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-CY',
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
  group('testWeekdayTranslation_tr_TR', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pazar',
      1: 'Pazartesi',
      2: 'Salı',
      3: 'Çarşamba',
      4: 'Perşembe',
      5: 'Cuma',
      6: 'Cumartesi'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-TR',
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
  group('testWeekdayTranslation_tr_TR_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Paz',
      1: 'Pzt',
      2: 'Sal',
      3: 'Çar',
      4: 'Per',
      5: 'Cum',
      6: 'Cmt'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-TR',
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
  group('testWeekdayTranslation_tr_TR_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Pa',
      1: 'Pt',
      2: 'Sa',
      3: 'Ça',
      4: 'Pe',
      5: 'Cu',
      6: 'Ct'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-TR',
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
  group('testWeekdayTranslation_tr_TR_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'P',
      1: 'P',
      2: 'S',
      3: 'Ç',
      4: 'P',
      5: 'C',
      6: 'C',
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'tr-TR',
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
  group('testWeekdayTranslation_uk_UA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'неділя',
      1: 'понеділок',
      2: 'вівторок',
      3: 'середа',
      4: 'четвер',
      5: 'пʼятниця',
      6: 'субота'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'uk-UA',
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
  group('testWeekdayTranslation_uk_UA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нд',
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
            locale: 'uk-UA',
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
  group('testWeekdayTranslation_uk_UA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'нд',
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
            locale: 'uk-UA',
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
  group('testWeekdayTranslation_uk_UA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Н',
      1: 'П',
      2: 'В',
      3: 'С',
      4: 'Ч',
      5: 'П',
      6: 'С'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'uk-UA',
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
  group('testWeekdayTranslation_ur_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'اتوار',
      1: 'پیر',
      2: 'منگل',
      3: 'بدھ',
      4: 'جمعرات',
      5: 'جمعہ',
      6: 'ہفتہ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ur-IN',
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
  group('testWeekdayTranslation_ur_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'اتوار',
      1: 'پیر',
      2: 'منگل',
      3: 'بدھ',
      4: 'جمعرات',
      5: 'جمعہ',
      6: 'ہفتہ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ur-IN',
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
  group('testWeekdayTranslation_ur_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'اتوار',
      1: 'پیر',
      2: 'منگل',
      3: 'بدھ',
      4: 'جمعرات',
      5: 'جمعہ',
      6: 'ہفتہ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ur-IN',
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
  group('testWeekdayTranslation_ur_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ur-IN',
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
  group('testWeekdayTranslation_uz_Latn_UZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'yakshanba',
      1: 'dushanba',
      2: 'seshanba',
      3: 'chorshanba',
      4: 'payshanba',
      5: 'juma',
      6: 'shanba'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'uz-Latn-UZ',
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
  group('testWeekdayTranslation_uz_Latn_UZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Yak',
      1: 'Dush',
      2: 'Sesh',
      3: 'Chor',
      4: 'Pay',
      5: 'Jum',
      6: 'Shan'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'uz-Latn-UZ',
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
  group('testWeekdayTranslation_uz_Latn_UZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ya',
      1: 'Du',
      2: 'Se',
      3: 'Ch',
      4: 'Pa',
      5: 'Ju',
      6: 'Sh'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'uz-Latn-UZ',
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
  group('testWeekdayTranslation_uz_Latn_UZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Y',
      1: 'D',
      2: 'S',
      3: 'C',
      4: 'P',
      5: 'J',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'uz-Latn-UZ',
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
  group('testWeekdayTranslation_vi_VN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Chủ Nhật',
      1: 'Thứ Hai',
      2: 'Thứ Ba',
      3: 'Thứ Tư',
      4: 'Thứ Năm',
      5: 'Thứ Sáu',
      6: 'Thứ Bảy'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'vi-VN',
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
  group('testWeekdayTranslation_vi_VN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'CN',
      1: 'Th 2',
      2: 'Th 3',
      3: 'Th 4',
      4: 'Th 5',
      5: 'Th 6',
      6: 'Th 7'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'vi-VN',
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
  group('testWeekdayTranslation_vi_VN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'CN',
      1: 'T2',
      2: 'T3',
      3: 'T4',
      4: 'T5',
      5: 'T6',
      6: 'T7'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'vi-VN',
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
  group('testWeekdayTranslation_vi_VN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'CN',
      1: 'T2',
      2: 'T3',
      3: 'T4',
      4: 'T5',
      5: 'T6',
      6: 'T7'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'vi-VN',
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
  group('testWeekdayTranslation_zh_Hans_CN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '星期日',
      1: '星期一',
      2: '星期二',
      3: '星期三',
      4: '星期四',
      5: '星期五',
      6: '星期六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-CN',
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
  group('testWeekdayTranslation_zh_Hans_CN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '周日',
      1: '周一',
      2: '周二',
      3: '周三',
      4: '周四',
      5: '周五',
      6: '周六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-CN',
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
  group('testWeekdayTranslation_zh_Hans_CN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '周日',
      1: '周一',
      2: '周二',
      3: '周三',
      4: '周四',
      5: '周五',
      6: '周六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-CN',
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
  group('testWeekdayTranslation_zh_Hans_CN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '一',
      2: '二',
      3: '三',
      4: '四',
      5: '五',
      6: '六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-CN',
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
  group('testWeekdayTranslation_zh_Hant_HK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '星期日',
      1: '星期一',
      2: '星期二',
      3: '星期三',
      4: '星期四',
      5: '星期五',
      6: '星期六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-HK',
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
  group('testWeekdayTranslation_zh_Hant_HK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '周日',
      1: '周一',
      2: '周二',
      3: '周三',
      4: '周四',
      5: '周五',
      6: '周六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-HK',
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
  group('testWeekdayTranslation_zh_Hant_HK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '周日',
      1: '周一',
      2: '周二',
      3: '周三',
      4: '周四',
      5: '周五',
      6: '周六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-HK',
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
  group('testWeekdayTranslation_zh_Hant_HK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '一',
      2: '二',
      3: '三',
      4: '四',
      5: '五',
      6: '六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hans-HK',
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
  group('testWeekdayTranslation_zh_Hant_TW', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '星期日',
      1: '星期一',
      2: '星期二',
      3: '星期三',
      4: '星期四',
      5: '星期五',
      6: '星期六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hant-TW',
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
  group('testWeekdayTranslation_zh_Hant_TW_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '週日',
      1: '週一',
      2: '週二',
      3: '週三',
      4: '週四',
      5: '週五',
      6: '週六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hant-TW',
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
  group('testWeekdayTranslation_zh_Hant_TW_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '一',
      2: '二',
      3: '三',
      4: '四',
      5: '五',
      6: '六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hant-TW',
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
  group('testWeekdayTranslation_zh_Hant_TW_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '日',
      1: '一',
      2: '二',
      3: '三',
      4: '四',
      5: '五',
      6: '六'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'zh-Hant-TW',
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
  group('testWeekdayTranslation_en_GE', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GE',
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
  group('testWeekdayTranslation_en_GE_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GE',
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
  group('testWeekdayTranslation_en_GE_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GE',
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
  group('testWeekdayTranslation_en_GE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-GE',
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
  group('testWeekdayTranslation_en_CN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CN',
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
  group('testWeekdayTranslation_en_CN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CN',
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
  group('testWeekdayTranslation_en_CN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CN',
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
  group('testWeekdayTranslation_en_CN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-CN',
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
  group('testWeekdayTranslation_en_MX', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MX',
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
  group('testWeekdayTranslation_en_MX_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MX',
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
  group('testWeekdayTranslation_en_MX_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MX',
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
  group('testWeekdayTranslation_en_MX_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-MX',
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
  group('testWeekdayTranslation_en_TW', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-TW',
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
  group('testWeekdayTranslation_en_TW_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-TW',
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
  group('testWeekdayTranslation_en_TW_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-TW',
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
  group('testWeekdayTranslation_en_TW_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-TW',
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
  group('testWeekdayTranslation_mn_MN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ням',
      1: 'Даваа',
      2: 'Мягмар',
      3: 'Лхагва',
      4: 'Пүрэв',
      5: 'Баасан',
      6: 'Бямба'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mn-MN',
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
  group('testWeekdayTranslation_mn_MN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ня',
      1: 'Да',
      2: 'Мя',
      3: 'Лх',
      4: 'Пү',
      5: 'Ба',
      6: 'Бя'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mn-MN',
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
  group('testWeekdayTranslation_mn_MN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ня',
      1: 'Да',
      2: 'Мя',
      3: 'Лх',
      4: 'Пү',
      5: 'Ба',
      6: 'Бя'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mn-MN',
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
  group('testWeekdayTranslation_mn_MN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ня',
      1: 'Да',
      2: 'Мя',
      3: 'Лх',
      4: 'Пү',
      5: 'Ба',
      6: 'Бя'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'mn-MN',
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
  group('testWeekdayTranslation_es_ES', () {
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
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_ES_long', () {
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
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_ES_medium', () {
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
            locale: 'es-ES',
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
  group('testWeekdayTranslation_es_ES_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'L',
      2: 'M',
      3: 'X',
      4: 'J',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'es-ES',
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
  group('testWeekdayTranslation_af_ZA', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sondag',
      1: 'Maandag',
      2: 'Dinsdag',
      3: 'Woensdag',
      4: 'Donderdag',
      5: 'Vrydag',
      6: 'Saterdag'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'af-ZA',
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
  group('testWeekdayTranslation_af_ZA_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Ma.',
      2: 'Di.',
      3: 'Wo.',
      4: 'Do.',
      5: 'Vr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'af-ZA',
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
  group('testWeekdayTranslation_af_ZA_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'So.',
      1: 'Ma.',
      2: 'Di.',
      3: 'Wo.',
      4: 'Do.',
      5: 'Vr.',
      6: 'Sa.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'af-ZA',
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
  group('testWeekdayTranslation_af_ZA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'D',
      3: 'W',
      4: 'D',
      5: 'V',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'af-ZA',
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
  group('testWeekdayTranslation_am_ET', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'እሑድ',
      1: 'ሰኞ',
      2: 'ማክሰኞ',
      3: 'ረቡዕ',
      4: 'ሐሙስ',
      5: 'ዓርብ',
      6: 'ቅዳሜ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'am-ET',
            date: 'w',
            length: 'full',
            useNative: false,
            timezone: 'Africa/Addis_Ababa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015,
            month: 8,
            day: num + 8,
            hour: 12,
            type: 'ethiopic',
            timezone: 'Africa/Addis_Ababa');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_am_ET_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'እሑድ',
      1: 'ሰኞ',
      2: 'ማክሰ',
      3: 'ረቡዕ',
      4: 'ሐሙስ',
      5: 'ዓርብ',
      6: 'ቅዳሜ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'am-ET',
            date: 'w',
            length: 'long',
            useNative: false,
            timezone: 'Africa/Addis_Ababa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015,
            month: 8,
            day: num + 8,
            hour: 12,
            type: 'ethiopic',
            timezone: 'Africa/Addis_Ababa');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_am_ET_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'እ',
      1: 'ሰ',
      2: 'ማ',
      3: 'ረ',
      4: 'ሐ',
      5: 'ዓ',
      6: 'ቅ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'am-ET',
            date: 'w',
            length: 'medium',
            useNative: false,
            timezone: 'Africa/Addis_Ababa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015,
            month: 8,
            day: num + 8,
            hour: 12,
            type: 'ethiopic',
            timezone: 'Africa/Addis_Ababa');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_am_ET_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'እ',
      1: 'ሰ',
      2: 'ማ',
      3: 'ረ',
      4: 'ሐ',
      5: 'ዓ',
      6: 'ቅ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'am-ET',
            date: 'w',
            length: 'short',
            useNative: false,
            timezone: 'Africa/Addis_Ababa');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions = ILibDateOptions(
            year: 2015,
            month: 8,
            day: num + 8,
            hour: 12,
            type: 'ethiopic',
            timezone: 'Africa/Addis_Ababa');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testWeekdayTranslation_ha_Latn_NG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Lahadi',
      1: 'Litinin',
      2: 'Talata',
      3: 'Laraba',
      4: 'Alhamis',
      5: 'Jummaʼa',
      6: 'Asabar'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ha-Latn-NG',
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
  group('testWeekdayTranslation_ha_Latn_NG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Lah',
      1: 'Lit',
      2: 'Tal',
      3: 'Lar',
      4: 'Alh',
      5: 'Jum',
      6: 'Asa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ha-Latn-NG',
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
  group('testWeekdayTranslation_ha_Latn_NG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Lh',
      1: 'Li',
      2: 'Ta',
      3: 'Lr',
      4: 'Al',
      5: 'Ju',
      6: 'As'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ha-Latn-NG',
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
  group('testWeekdayTranslation_ha_Latn_NG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'L',
      1: 'L',
      2: 'T',
      3: 'L',
      4: 'A',
      5: 'J',
      6: 'A'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ha-Latn-NG',
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
  group('testWeekdayTranslation_or_IN', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ରବିବାର',
      1: 'ସୋମବାର',
      2: 'ମଙ୍ଗଳବାର',
      3: 'ବୁଧବାର',
      4: 'ଗୁରୁବାର',
      5: 'ଶୁକ୍ରବାର',
      6: 'ଶନିବାର'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'or-IN',
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
  group('testWeekdayTranslation_or_IN_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ରବି',
      1: 'ସୋମ',
      2: 'ମଙ୍ଗଳ',
      3: 'ବୁଧ',
      4: 'ଗୁରୁ',
      5: 'ଶୁକ୍ର',
      6: 'ଶନି'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'or-IN',
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
  group('testWeekdayTranslation_or_IN_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ରବି',
      1: 'ସୋମ',
      2: 'ମଙ୍ଗଳ',
      3: 'ବୁଧ',
      4: 'ଗୁରୁ',
      5: 'ଶୁକ୍ର',
      6: 'ଶନି'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'or-IN',
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
  group('testWeekdayTranslation_or_IN_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ର',
      1: 'ସୋ',
      2: 'ମ',
      3: 'ବୁ',
      4: 'ଗୁ',
      5: 'ଶୁ',
      6: 'ଶ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'or-IN',
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
  group('testWeekdayTranslation_az_Latn_AZ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'bazar',
      1: 'bazar ertəsi',
      2: 'çərşənbə axşamı',
      3: 'çərşənbə',
      4: 'cümə axşamı',
      5: 'cümə',
      6: 'şənbə'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'az-Latn-AZ',
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
  group('testWeekdayTranslation_az_Latn_AZ_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'B.',
      1: 'B.E.',
      2: 'Ç.A.',
      3: 'Ç.',
      4: 'C.A.',
      5: 'C.',
      6: 'Ş.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'az-Latn-AZ',
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
  group('testWeekdayTranslation_az_Latn_AZ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'B.',
      1: 'B.E.',
      2: 'Ç.A.',
      3: 'Ç.',
      4: 'C.A.',
      5: 'C.',
      6: 'Ş.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'az-Latn-AZ',
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
  group('testWeekdayTranslation_az_Latn_AZ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: '7',
      1: '1',
      2: '2',
      3: '3',
      4: '4',
      5: '5',
      6: '6'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'az-Latn-AZ',
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
  group('testWeekdayTranslation_km_KH', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'អាទិត្យ',
      1: 'ចន្ទ',
      2: 'អង្គារ',
      3: 'ពុធ',
      4: 'ព្រហស្បតិ៍',
      5: 'សុក្រ',
      6: 'សៅរ៍'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'km-KH',
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
  group('testWeekdayTranslation_km_KH_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'អាទិត្យ',
      1: 'ចន្ទ',
      2: 'អង្គារ',
      3: 'ពុធ',
      4: 'ព្រហ',
      5: 'សុក្រ',
      6: 'សៅរ៍'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'km-KH',
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
  group('testWeekdayTranslation_km_KH_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'អា',
      1: 'ច',
      2: 'អ',
      3: 'ពុ',
      4: 'ព្រ',
      5: 'សុ',
      6: 'ស'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'km-KH',
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
  group('testWeekdayTranslation_km_KH_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'អ',
      1: 'ច',
      2: 'អ',
      3: 'ព',
      4: 'ព',
      5: 'ស',
      6: 'ស'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'km-KH',
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
  group('testWeekdayTranslation_si_LK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ඉරිදා',
      1: 'සඳුදා',
      2: 'අඟහරුවාදා',
      3: 'බදාදා',
      4: 'බ්‍රහස්පතින්දා',
      5: 'සිකුරාදා',
      6: 'සෙනසුරාදා'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'si-LK',
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
  group('testWeekdayTranslation_si_LK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ඉරිදා',
      1: 'සඳුදා',
      2: 'අඟහ',
      3: 'බදාදා',
      4: 'බ්‍රහස්',
      5: 'සිකු',
      6: 'සෙන'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'si-LK',
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
  group('testWeekdayTranslation_si_LK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ඉරි',
      1: 'සඳු',
      2: 'අඟ',
      3: 'බදා',
      4: 'බ්‍රහ',
      5: 'සිකු',
      6: 'සෙන'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'si-LK',
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
  group('testWeekdayTranslation_si_LK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ඉ',
      1: 'ස',
      2: 'අ',
      3: 'බ',
      4: 'බ්‍ර',
      5: 'සි',
      6: 'සෙ'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'si-LK',
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
  group('testWeekdayTranslation_ar_AE', () {
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
            locale: 'ar-AE',
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
  group('testWeekdayTranslation_ar_AE_long', () {
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
            locale: 'ar-AE',
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
  group('testWeekdayTranslation_ar_AE_medium', () {
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
            locale: 'ar-AE',
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
  group('testWeekdayTranslation_ar_AE_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ح',
      1: 'ن',
      2: 'ث',
      3: 'ر',
      4: 'خ',
      5: 'ج',
      6: 'س'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-AE',
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
  group('testWeekdayTranslation_ar_SA', () {
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
            locale: 'ar-SA',
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
  group('testWeekdayTranslation_ar_SA_long', () {
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
            locale: 'ar-SA',
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
  group('testWeekdayTranslation_ar_SA_medium', () {
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
            locale: 'ar-SA',
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
  group('testWeekdayTranslation_ar_SA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'ح',
      1: 'ن',
      2: 'ث',
      3: 'ر',
      4: 'خ',
      5: 'ج',
      6: 'س'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ar-SA',
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
  group('testWeekdayTranslation_en_PK', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sunday',
      1: 'Monday',
      2: 'Tuesday',
      3: 'Wednesday',
      4: 'Thursday',
      5: 'Friday',
      6: 'Saturday'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PK',
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
  group('testWeekdayTranslation_en_PK_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Sun',
      1: 'Mon',
      2: 'Tue',
      3: 'Wed',
      4: 'Thu',
      5: 'Fri',
      6: 'Sat'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PK',
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
  group('testWeekdayTranslation_en_PK_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Su',
      1: 'Mo',
      2: 'Tu',
      3: 'We',
      4: 'Th',
      5: 'Fr',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PK',
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
  group('testWeekdayTranslation_en_PK_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'S',
      1: 'M',
      2: 'T',
      3: 'W',
      4: 'T',
      5: 'F',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'en-PK',
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
  group('testWeekdayTranslation_ms_Latn_SG', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ahad',
      1: 'Isnin',
      2: 'Selasa',
      3: 'Rabu',
      4: 'Khamis',
      5: 'Jumaat',
      6: 'Sabtu'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-Latn-SG',
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
  group('testWeekdayTranslation_ms_Latn_SG_long', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ahd',
      1: 'Isn',
      2: 'Sel',
      3: 'Rab',
      4: 'Kha',
      5: 'Jum',
      6: 'Sab'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-Latn-SG',
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
  group('testWeekdayTranslation_ms_Latn_SG_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'Ah',
      1: 'Is',
      2: 'Se',
      3: 'Ra',
      4: 'Kh',
      5: 'Ju',
      6: 'Sa'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-Latn-SG',
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
  group('testWeekdayTranslation_ms_Latn_SG_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'A',
      1: 'I',
      2: 'S',
      3: 'R',
      4: 'K',
      5: 'J',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ms-Latn-SG',
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
  group('testWeekdayTranslation_pt_AO', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'segunda-feira',
      2: 'terça-feira',
      3: 'quarta-feira',
      4: 'quinta-feira',
      5: 'sexta-feira',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-AO',
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
  group('testWeekdayTranslation_pt_AO_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom.',
      1: 'seg.',
      2: 'ter.',
      3: 'qua.',
      4: 'qui.',
      5: 'sex.',
      6: 'sáb.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-AO',
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
  group('testWeekdayTranslation_pt_AO_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'S',
      2: 'T',
      3: 'Q',
      4: 'Q',
      5: 'S',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-AO',
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
  group('testWeekdayTranslation_pt_GQ', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'segunda-feira',
      2: 'terça-feira',
      3: 'quarta-feira',
      4: 'quinta-feira',
      5: 'sexta-feira',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-GQ',
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
  group('testWeekdayTranslation_pt_GQ_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom.',
      1: 'seg.',
      2: 'ter.',
      3: 'qua.',
      4: 'qui.',
      5: 'sex.',
      6: 'sáb.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-GQ',
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
  group('testWeekdayTranslation_pt_GQ_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'S',
      2: 'T',
      3: 'Q',
      4: 'Q',
      5: 'S',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-GQ',
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
  group('testWeekdayTranslation_pt_CV', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'domingo',
      1: 'segunda-feira',
      2: 'terça-feira',
      3: 'quarta-feira',
      4: 'quinta-feira',
      5: 'sexta-feira',
      6: 'sábado'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-CV',
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
  group('testWeekdayTranslation_pt_CV_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'dom.',
      1: 'seg.',
      2: 'ter.',
      3: 'qua.',
      4: 'qui.',
      5: 'sex.',
      6: 'sáb.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-CV',
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
  group('testWeekdayTranslation_pt_CV_short', () {
    final Map<int, String> expectedResult = <int, String>{
      0: 'D',
      1: 'S',
      2: 'T',
      3: 'Q',
      4: 'Q',
      5: 'S',
      6: 'S'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pt-CV',
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
}
