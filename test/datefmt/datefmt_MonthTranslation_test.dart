import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_MonthTranslation_test.dart] file.");
  group('testMonthTranslate_ar_EG', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-EG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_IQ', () {
    Map<int, String> expectedResult = {
      1: "كانون الثاني",
      2: "شباط",
      3: "آذار",
      4: "نيسان",
      5: "أيار",
      6: "حزيران",
      7: "تموز",
      8: "آب",
      9: "أيلول",
      10: "تشرين الأول",
      11: "تشرين الثاني",
      12: "كانون الأول"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-IQ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_MA', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "ماي",
      6: "يونيو",
      7: "يوليوز",
      8: "غشت",
      9: "شتنبر",
      10: "أكتوبر",
      11: "نونبر",
      12: "دجنبر",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-MA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_as_IN', () {
    Map<int, String> expectedResult = {
      1: "জানুৱাৰী",
      2: "ফেব্ৰুৱাৰী",
      3: "মাৰ্চ",
      4: "এপ্ৰিল",
      5: "মে’",
      6: "জুন",
      7: "জুলাই",
      8: "আগষ্ট",
      9: "ছেপ্তেম্বৰ",
      10: "অক্টোবৰ",
      11: "নৱেম্বৰ",
      12: "ডিচেম্বৰ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "as-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bg_BG', () {
    Map<int, String> expectedResult = {
      1: "януари",
      2: "февруари",
      3: "март",
      4: "април",
      5: "май",
      6: "юни",
      7: "юли",
      8: "август",
      9: "септември",
      10: "октомври",
      11: "ноември",
      12: "декември"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bg-BG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bn_IN', () {
    Map<int, String> expectedResult = {
      1: "জানুয়ারী",
      2: "ফেব্রুয়ারী",
      3: "মার্চ",
      4: "এপ্রিল",
      5: "মে",
      6: "জুন",
      7: "জুলাই",
      8: "আগস্ট",
      9: "সেপ্টেম্বর",
      10: "অক্টোবর",
      11: "নভেম্বর",
      12: "ডিসেম্বর"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bn-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bn_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "জানু",
      2: "ফেব",
      3: "মার্চ",
      4: "এপ্রিল",
      5: "মে",
      6: "জুন",
      7: "জুলাই",
      8: "আগস্ট",
      9: "সেপ্টেঃ",
      10: "অক্টোঃ",
      11: "নভেঃ",
      12: "ডিসেঃ",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bn-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bs_Latn_BA', () {
    Map<int, String> expectedResult = {
      1: "januar",
      2: "februar",
      3: "mart",
      4: "april",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "august",
      9: "septembar",
      10: "oktobar",
      11: "novembar",
      12: "decembar",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bs-Latn-BA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bs_Latn_BA_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "feb",
      3: "mar",
      4: "apr",
      5: "maj",
      6: "jun",
      7: "jul",
      8: "aug",
      9: "sep",
      10: "okt",
      11: "nov",
      12: "dec",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bs-Latn-BA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bs_Latn_ME', () {
    Map<int, String> expectedResult = {
      1: "januar",
      2: "februar",
      3: "mart",
      4: "april",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "august",
      9: "septembar",
      10: "oktobar",
      11: "novembar",
      12: "decembar",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bs-Latn-ME",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_bs_Latn_ME_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "feb",
      3: "mar",
      4: "apr",
      5: "maj",
      6: "jun",
      7: "jul",
      8: "aug",
      9: "sep",
      10: "okt",
      11: "nov",
      12: "dec",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "bs-Latn-ME",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_cs_CZ', () {
    Map<int, String> expectedResult = {
      1: "leden",
      2: "únor",
      3: "březen",
      4: "duben",
      5: "květen",
      6: "červen",
      7: "červenec",
      8: "srpen",
      9: "září",
      10: "říjen",
      11: "listopad",
      12: "prosinec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "cs-CZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_da_DK', () {
    Map<int, String> expectedResult = {
      1: "januar",
      2: "februar",
      3: "marts",
      4: "april",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "august",
      9: "september",
      10: "oktober",
      11: "november",
      12: "december",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "da-DK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_da_DK_medium', () {
    Map<int, String> expectedResult = {
      1: "jan.",
      2: "feb.",
      3: "mar.",
      4: "apr.",
      5: "maj",
      6: "jun.",
      7: "jul.",
      8: "aug.",
      9: "sep.",
      10: "okt.",
      11: "nov.",
      12: "dec."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "da-DK",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_de_AT', () {
    Map<int, String> expectedResult = {
      1: "Jänner",
      2: "Februar",
      3: "März",
      4: "April",
      5: "Mai",
      6: "Juni",
      7: "Juli",
      8: "August",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Dezember"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "de-AT",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_de_CH', () {
    Map<int, String> expectedResult = {
      1: "Januar",
      2: "Februar",
      3: "März",
      4: "April",
      5: "Mai",
      6: "Juni",
      7: "Juli",
      8: "August",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Dezember"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "de-CH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_de_DE', () {
    Map<int, String> expectedResult = {
      1: "Januar",
      2: "Februar",
      3: "März",
      4: "April",
      5: "Mai",
      6: "Juni",
      7: "Juli",
      8: "August",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Dezember"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "de-DE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_de_LU', () {
    Map<int, String> expectedResult = {
      1: "Januar",
      2: "Februar",
      3: "März",
      4: "April",
      5: "Mai",
      6: "Juni",
      7: "Juli",
      8: "August",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Dezember"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "de-LU",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_el_CY', () {
    Map<int, String> expectedResult = {
      1: "Ιανουαρίου",
      2: "Φεβρουαρίου",
      3: "Μαρτίου",
      4: "Απριλίου",
      5: "Μαΐου",
      6: "Ιουνίου",
      7: "Ιουλίου",
      8: "Αυγούστου",
      9: "Σεπτεμβρίου",
      10: "Οκτωβρίου",
      11: "Νοεμβρίου",
      12: "Δεκεμβρίου"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "el-CY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_el_CY_medium', () {
    Map<int, String> expectedResult = {
      1: "Ιαν",
      2: "Φεβ",
      3: "Μαρ",
      4: "Απρ",
      5: "Μαΐ",
      6: "Ιουν",
      7: "Ιουλ",
      8: "Αυγ",
      9: "Σεπ",
      10: "Οκτ",
      11: "Νοε",
      12: "Δεκ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "el-CY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_el_GR', () {
    Map<int, String> expectedResult = {
      1: "Ιανουαρίου",
      2: "Φεβρουαρίου",
      3: "Μαρτίου",
      4: "Απριλίου",
      5: "Μαΐου",
      6: "Ιουνίου",
      7: "Ιουλίου",
      8: "Αυγούστου",
      9: "Σεπτεμβρίου",
      10: "Οκτωβρίου",
      11: "Νοεμβρίου",
      12: "Δεκεμβρίου",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "el-GR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_el_GR_medium', () {
    Map<int, String> expectedResult = {
      1: "Ιαν",
      2: "Φεβ",
      3: "Μαρ",
      4: "Απρ",
      5: "Μαΐ",
      6: "Ιουν",
      7: "Ιουλ",
      8: "Αυγ",
      9: "Σεπ",
      10: "Οκτ",
      11: "Νοε",
      12: "Δεκ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "el-GR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_AM', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-AM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_AM_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-AM",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_AU', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-AU",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_AU_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-AU",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_AZ', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-AZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_AZ_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-AZ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_CA', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-CA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_CA_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-CA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_GB', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-GB",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_GB_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-GB",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_GH', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-GH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_GH_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-GH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_HK', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-HK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_HK_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-HK",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_IE', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-IE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_IE_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-IE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_IN', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_IS', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-IS",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_JP', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-JP",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_KE', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-KE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_KE_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-KE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_KR', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-KR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_LK', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-LK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_MM', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-MM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_MW', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-MW",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_MW_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-MW",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_MY', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-MY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_MY_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-MY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_NG', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-NG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_NG_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-NG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_NZ', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-NZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_PH', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-PH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_PH_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-PH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_PR', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-PR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_PR_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec",
    };

    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-PR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_SG', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-SG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_SG_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-SG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_US', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-US",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_US_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sep",
      10: "Oct",
      11: "Nov",
      12: "Dec",
    };

    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-US",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_UG', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-UG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_UG_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-UG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_ZA', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-ZA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_ZA_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-ZA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_ZM', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-ZM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_ZM_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Jun",
      7: "Jul",
      8: "Aug",
      9: "Sept",
      10: "Oct",
      11: "Nov",
      12: "Dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-ZM",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_AR', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-AR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_AR_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-AR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_BO', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-BO",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_BO_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-BO",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_CL', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-CL",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_CO', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };

    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-CO",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_DO', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-DO",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_DO_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-DO",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_EC', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-EC",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_EC_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-EC",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_ES', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-ES",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_ES_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-ES",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_GT', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-GT",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_HN', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-HN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_HN_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-HN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_MX', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-MX",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_MX_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sep",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-MX",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_NI', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-NI",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_NI_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-NI",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PA', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PE', () {
    Map<int, String> expectedResult = {
      1: "Enero",
      2: "Febrero",
      3: "Marzo",
      4: "Abril",
      5: "Mayo",
      6: "Junio",
      7: "Julio",
      8: "Agosto",
      9: "Setiembre",
      10: "Octubre",
      11: "Noviembre",
      12: "Diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PE_medium', () {
    Map<int, String> expectedResult = {
      1: "Ene.",
      2: "Feb.",
      3: "Mar.",
      4: "Abr.",
      5: "May.",
      6: "Jun.",
      7: "Jul.",
      8: "Ago.",
      9: "Set.",
      10: "Oct.",
      11: "Nov.",
      12: "Dic."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PR', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PY', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PY_medium', () {
    Map<int, String> expectedResult = {
      1: "ene.",
      2: "feb.",
      3: "mar.",
      4: "abr.",
      5: "may.",
      6: "jun.",
      7: "jul.",
      8: "ago.",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "dic."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_SV', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-SV",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_SV_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-SV",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_US', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-US",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_US_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-US",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_UY', () {
    Map<int, String> expectedResult = {
      1: "Enero",
      2: "Febrero",
      3: "Marzo",
      4: "Abril",
      5: "Mayo",
      6: "Junio",
      7: "Julio",
      8: "Agosto",
      9: "Setiembre",
      10: "Octubre",
      11: "Noviembre",
      12: "Diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-UY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_UY_medium', () {
    Map<int, String> expectedResult = {
      1: "Ene.",
      2: "Feb.",
      3: "Mar.",
      4: "Abr.",
      5: "May.",
      6: "Jun.",
      7: "Jul.",
      8: "Ago.",
      9: "Set.",
      10: "Oct.",
      11: "Nov.",
      12: "Dic."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-UY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_VE', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-VE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_VE_medium', () {
    Map<int, String> expectedResult = {
      1: "ene.",
      2: "feb.",
      3: "mar.",
      4: "abr.",
      5: "may.",
      6: "jun.",
      7: "jul.",
      8: "ago.",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "dic.",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-VE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_et_EE', () {
    Map<int, String> expectedResult = {
      1: "jaanuar",
      2: "veebruar",
      3: "märts",
      4: "aprill",
      5: "mai",
      6: "juuni",
      7: "juuli",
      8: "august",
      9: "september",
      10: "oktoober",
      11: "november",
      12: "detsember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "et-EE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_et_EE_medium', () {
    Map<int, String> expectedResult = {
      1: "jaan",
      2: "veebr",
      3: "märts",
      4: "apr",
      5: "mai",
      6: "juuni",
      7: "juuli",
      8: "aug",
      9: "sept",
      10: "okt",
      11: "nov",
      12: "dets",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "et-EE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fa_IR', () {
    Map<int, String> expectedResult = {
      1: "فروردین",
      2: "اردیبهشت",
      3: "خرداد",
      4: "تیر",
      5: "مرداد",
      6: "شهریور",
      7: "مهر",
      8: "آبان",
      9: "آذر",
      10: "دی",
      11: "بهمن",
      12: "اسفند",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fa-IR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: "persian");
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fa_IR_medium', () {
    Map<int, String> expectedResult = {
      1: "فروردین",
      2: "اردیبهشت",
      3: "خرداد",
      4: "تیر",
      5: "مرداد",
      6: "شهریور",
      7: "مهر",
      8: "آبان",
      9: "آذر",
      10: "دی",
      11: "بهمن",
      12: "اسفند",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fa-IR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: "persian");
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fi_FI', () {
    Map<int, String> expectedResult = {
      1: "tammikuu",
      2: "helmikuu",
      3: "maaliskuu",
      4: "huhtikuu",
      5: "toukokuu",
      6: "kesäkuu",
      7: "heinäkuu",
      8: "elokuu",
      9: "syyskuu",
      10: "lokakuu",
      11: "marraskuu",
      12: "joulukuu",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fi-FI",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_BE', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-BE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_BE_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc.",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-BE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CA', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CA_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juill.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc.",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CH', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CH_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc.",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_FR', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-FR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_FR_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc.",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-FR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_LU', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-LU",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_LU_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc.",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-LU",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ga_IE', () {
    Map<int, String> expectedResult = {
      1: "Eanáir",
      2: "Feabhra",
      3: "Márta",
      4: "Aibreán",
      5: "Bealtaine",
      6: "Meitheamh",
      7: "Iúil",
      8: "Lúnasa",
      9: "Meán Fómhair",
      10: "Deireadh Fómhair",
      11: "Samhain",
      12: "Nollaig",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ga-IE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ga_IE_medium', () {
    Map<int, String> expectedResult = {
      1: "Ean",
      2: "Feabh",
      3: "Márta",
      4: "Aib",
      5: "Beal",
      6: "Meith",
      7: "Iúil",
      8: "Lún",
      9: "MFómh",
      10: "DFómh",
      11: "Samh",
      12: "Noll",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ga-IE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_gu_IN', () {
    Map<int, String> expectedResult = {
      1: "જાન્યુઆરી",
      2: "ફેબ્રુઆરી",
      3: "માર્ચ",
      4: "એપ્રિલ",
      5: "મે",
      6: "જૂન",
      7: "જુલાઈ",
      8: "ઑગસ્ટ",
      9: "સપ્ટેમ્બર",
      10: "ઑક્ટોબર",
      11: "નવેમ્બર",
      12: "ડિસેમ્બર",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "gu-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_gu_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "જાન્યુ",
      2: "ફેબ્રુ",
      3: "માર્ચ",
      4: "એપ્રિલ",
      5: "મે",
      6: "જૂન",
      7: "જુલાઈ",
      8: "ઑગસ્ટ",
      9: "સપ્ટે",
      10: "ઑક્ટો",
      11: "નવે",
      12: "ડિસે",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "gu-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_he_IL', () {
    Map<int, String> expectedResult = {
      1: "ינואר",
      2: "פברואר",
      3: "מרץ",
      4: "אפריל",
      5: "מאי",
      6: "יוני",
      7: "יולי",
      8: "אוגוסט",
      9: "ספטמבר",
      10: "אוקטובר",
      11: "נובמבר",
      12: "דצמבר",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "he-IL",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_he_IL_medium', () {
    Map<int, String> expectedResult = {
      1: "ינו׳",
      2: "פבר׳",
      3: "מרץ",
      4: "אפר׳",
      5: "מאי",
      6: "יוני",
      7: "יולי",
      8: "אוג׳",
      9: "ספט׳",
      10: "אוק׳",
      11: "נוב׳",
      12: "דצמ׳",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "he-IL",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_hi_IN', () {
    Map<int, String> expectedResult = {
      1: "जनवरी",
      2: "फ़रवरी",
      3: "मार्च",
      4: "अप्रैल",
      5: "मई",
      6: "जून",
      7: "जुलाई",
      8: "अगस्त",
      9: "सितंबर",
      10: "अक्तूबर",
      11: "नवंबर",
      12: "दिसंबर",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "hi-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_hi_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "जन॰",
      2: "फ़र॰",
      3: "मार्च",
      4: "अप्रैल",
      5: "मई",
      6: "जून",
      7: "जुल॰",
      8: "अग॰",
      9: "सित॰",
      10: "अक्तू॰",
      11: "नव॰",
      12: "दिस॰",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "hi-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_hr_HR', () {
    Map<int, String> expectedResult = {
      1: "siječanj",
      2: "veljača",
      3: "ožujak",
      4: "travanj",
      5: "svibanj",
      6: "lipanj",
      7: "srpanj",
      8: "kolovoz",
      9: "rujan",
      10: "listopad",
      11: "studeni",
      12: "prosinac",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "hr-HR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_hr_HR_medium', () {
    Map<int, String> expectedResult = {
      1: "sij",
      2: "velj",
      3: "ožu",
      4: "tra",
      5: "svi",
      6: "lip",
      7: "srp",
      8: "kol",
      9: "ruj",
      10: "lis",
      11: "stu",
      12: "pro"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "hr-HR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_hr_ME', () {
    Map<int, String> expectedResult = {
      1: "siječanj",
      2: "veljača",
      3: "ožujak",
      4: "travanj",
      5: "svibanj",
      6: "lipanj",
      7: "srpanj",
      8: "kolovoz",
      9: "rujan",
      10: "listopad",
      11: "studeni",
      12: "prosinac",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "hr-ME",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_hr_HU', () {
    Map<int, String> expectedResult = {
      1: "siječanj",
      2: "veljača",
      3: "ožujak",
      4: "travanj",
      5: "svibanj",
      6: "lipanj",
      7: "srpanj",
      8: "kolovoz",
      9: "rujan",
      10: "listopad",
      11: "studeni",
      12: "prosinac",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "hr-HU",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_id_ID', () {
    Map<int, String> expectedResult = {
      1: "Januari",
      2: "Februari",
      3: "Maret",
      4: "April",
      5: "Mei",
      6: "Juni",
      7: "Juli",
      8: "Agustus",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Desember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "id-ID",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_id_ID_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mar",
      4: "Apr",
      5: "Mei",
      6: "Jun",
      7: "Jul",
      8: "Agu",
      9: "Sep",
      10: "Okt",
      11: "Nov",
      12: "Des",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "id-ID",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_is_IS', () {
    Map<int, String> expectedResult = {
      1: "janúar",
      2: "febrúar",
      3: "mars",
      4: "apríl",
      5: "maí",
      6: "júní",
      7: "júlí",
      8: "ágúst",
      9: "september",
      10: "október",
      11: "nóvember",
      12: "desember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "is-IS",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_is_IS_medium', () {
    Map<int, String> expectedResult = {
      1: "jan.",
      2: "feb.",
      3: "mar.",
      4: "apr.",
      5: "maí",
      6: "jún.",
      7: "júl.",
      8: "ágú.",
      9: "sep.",
      10: "okt.",
      11: "nóv.",
      12: "des."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "is-IS",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_it_CH', () {
    Map<int, String> expectedResult = {
      1: "gennaio",
      2: "febbraio",
      3: "marzo",
      4: "aprile",
      5: "maggio",
      6: "giugno",
      7: "luglio",
      8: "agosto",
      9: "settembre",
      10: "ottobre",
      11: "novembre",
      12: "dicembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "it-CH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_it_CH_medium', () {
    Map<int, String> expectedResult = {
      1: "gen",
      2: "feb",
      3: "mar",
      4: "apr",
      5: "mag",
      6: "giu",
      7: "lug",
      8: "ago",
      9: "set",
      10: "ott",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "it-CH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_it_IT', () {
    Map<int, String> expectedResult = {
      1: "gennaio",
      2: "febbraio",
      3: "marzo",
      4: "aprile",
      5: "maggio",
      6: "giugno",
      7: "luglio",
      8: "agosto",
      9: "settembre",
      10: "ottobre",
      11: "novembre",
      12: "dicembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "it-IT",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_it_IT_medium', () {
    Map<int, String> expectedResult = {
      1: "gen",
      2: "feb",
      3: "mar",
      4: "apr",
      5: "mag",
      6: "giu",
      7: "lug",
      8: "ago",
      9: "set",
      10: "ott",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "it-IT",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ja_JP', () {
    Map<int, String> expectedResult = {
      1: "1月",
      2: "2月",
      3: "3月",
      4: "4月",
      5: "5月",
      6: "6月",
      7: "7月",
      8: "8月",
      9: "9月",
      10: "10月",
      11: "11月",
      12: "12月"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ja-JP",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_kk_KZ', () {
    Map<int, String> expectedResult = {
      1: "Қаңтар",
      2: "Ақпан",
      3: "Наурыз",
      4: "Сәуір",
      5: "Мамыр",
      6: "Маусым",
      7: "Шілде",
      8: "Тамыз",
      9: "Қыркүйек",
      10: "Қазан",
      11: "Қараша",
      12: "Желтоқсан",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "kk-KZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_kk_KZ_medium', () {
    Map<int, String> expectedResult = {
      1: "қаң.",
      2: "ақп.",
      3: "нау.",
      4: "сәу.",
      5: "мам.",
      6: "мау.",
      7: "шіл.",
      8: "там.",
      9: "қыр.",
      10: "қаз.",
      11: "қар.",
      12: "жел."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "kk-KZ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_kn_IN', () {
    Map<int, String> expectedResult = {
      1: "ಜನವರಿ",
      2: "ಫೆಬ್ರವರಿ",
      3: "ಮಾರ್ಚ್",
      4: "ಏಪ್ರಿಲ್",
      5: "ಮೇ",
      6: "ಜೂನ್",
      7: "ಜುಲೈ",
      8: "ಆಗಸ್ಟ್",
      9: "ಸೆಪ್ಟೆಂಬರ್",
      10: "ಅಕ್ಟೋಬರ್",
      11: "ನವೆಂಬರ್",
      12: "ಡಿಸೆಂಬರ್",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "kn-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_kn_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "ಜನ",
      2: "ಫೆಬ್ರ",
      3: "ಮಾರ್ಚ್",
      4: "ಏಪ್ರಿ",
      5: "ಮೇ",
      6: "ಜೂನ್",
      7: "ಜುಲೈ",
      8: "ಆಗ",
      9: "ಸೆಪ್ಟೆಂ",
      10: "ಅಕ್ಟೋ",
      11: "ನವೆಂ",
      12: "ಡಿಸೆಂ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "kn-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ko_KR', () {
    Map<int, String> expectedResult = {
      1: "1월",
      2: "2월",
      3: "3월",
      4: "4월",
      5: "5월",
      6: "6월",
      7: "7월",
      8: "8월",
      9: "9월",
      10: "10월",
      11: "11월",
      12: "12월"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ko-KR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ku_IQ', () {
    Map<int, String> expectedResult = {
      1: "کانوونی دووەم",
      2: "شوبات",
      3: "ئازار",
      4: "نیسان",
      5: "ئایار",
      6: "حوزەیران",
      7: "تەمووز",
      8: "ئاب",
      9: "ئەیلوول",
      10: "تشرینی یەکەم",
      11: "تشرینی دووەم",
      12: "کانونی یەکەم",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ku-IQ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ku_IQ_medium', () {
    Map<int, String> expectedResult = {
      1: "کانوونی دووەم",
      2: "شوبات",
      3: "ئازار",
      4: "نیسان",
      5: "ئایار",
      6: "حوزەیران",
      7: "تەمووز",
      8: "ئاب",
      9: "ئەیلوول",
      10: "تشرینی یەکەم",
      11: "تشرینی دووەم",
      12: "کانونی یەکەم"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ku-IQ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_lt_LT', () {
    Map<int, String> expectedResult = {
      1: "sausis",
      2: "vasaris",
      3: "kovas",
      4: "balandis",
      5: "gegužė",
      6: "birželis",
      7: "liepa",
      8: "rugpjūtis",
      9: "rugsėjis",
      10: "spalis",
      11: "lapkritis",
      12: "gruodis"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "lt-LT",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_lv_LV', () {
    Map<int, String> expectedResult = {
      1: "janvāris",
      2: "februāris",
      3: "marts",
      4: "aprīlis",
      5: "maijs",
      6: "jūnijs",
      7: "jūlijs",
      8: "augusts",
      9: "septembris",
      10: "oktobris",
      11: "novembris",
      12: "decembris",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "lv-LV",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_lv_LV_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "febr.",
      3: "marts",
      4: "apr.",
      5: "maijs",
      6: "jūn.",
      7: "jūl.",
      8: "aug.",
      9: "sept.",
      10: "okt.",
      11: "nov.",
      12: "dec."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "lv-LV",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_mk_MK', () {
    Map<int, String> expectedResult = {
      1: "јануари",
      2: "февруари",
      3: "март",
      4: "април",
      5: "мај",
      6: "јуни",
      7: "јули",
      8: "август",
      9: "септември",
      10: "октомври",
      11: "ноември",
      12: "декември"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "mk-MK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ml_IN', () {
    Map<int, String> expectedResult = {
      1: "ജനുവരി",
      2: "ഫെബ്രുവരി",
      3: "മാർച്ച്",
      4: "ഏപ്രിൽ",
      5: "മേയ്",
      6: "ജൂൺ",
      7: "ജൂലൈ",
      8: "ഓഗസ്റ്റ്",
      9: "സെപ്റ്റംബർ",
      10: "ഒക്‌ടോബർ",
      11: "നവംബർ",
      12: "ഡിസംബർ",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ml-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ml_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "ജനു",
      2: "ഫെബ്രു",
      3: "മാർ",
      4: "ഏപ്രി",
      5: "മേയ്",
      6: "ജൂൺ",
      7: "ജൂലൈ",
      8: "ഓഗ",
      9: "സെപ്റ്റം",
      10: "ഒക്ടോ",
      11: "നവം",
      12: "ഡിസം"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ml-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_mr_IN', () {
    Map<int, String> expectedResult = {
      1: "जानेवारी",
      2: "फेब्रुवारी",
      3: "मार्च",
      4: "एप्रिल",
      5: "मे",
      6: "जून",
      7: "जुलै",
      8: "ऑगस्ट",
      9: "सप्टेंबर",
      10: "ऑक्टोबर",
      11: "नोव्हेंबर",
      12: "डिसेंबर"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "mr-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ms_MY', () {
    Map<int, String> expectedResult = {
      1: "Januari",
      2: "Februari",
      3: "Mac",
      4: "April",
      5: "Mei",
      6: "Jun",
      7: "Julai",
      8: "Ogos",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Disember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ms-MY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ms_MY_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mac",
      4: "Apr",
      5: "Mei",
      6: "Jun",
      7: "Jul",
      8: "Ogo",
      9: "Sep",
      10: "Okt",
      11: "Nov",
      12: "Dis"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ms-MY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_nb_NO', () {
    Map<int, String> expectedResult = {
      1: "januar",
      2: "februar",
      3: "mars",
      4: "april",
      5: "mai",
      6: "juni",
      7: "juli",
      8: "august",
      9: "september",
      10: "oktober",
      11: "november",
      12: "desember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "nb-NO",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_nb_NO_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "feb",
      3: "mar",
      4: "apr",
      5: "mai",
      6: "jun",
      7: "jul",
      8: "aug",
      9: "sep",
      10: "okt",
      11: "nov",
      12: "des"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "nb-NO",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_nl_BE', () {
    Map<int, String> expectedResult = {
      1: "januari",
      2: "februari",
      3: "maart",
      4: "april",
      5: "mei",
      6: "juni",
      7: "juli",
      8: "augustus",
      9: "september",
      10: "oktober",
      11: "november",
      12: "december",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "nl-BE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_nl_BE_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "feb",
      3: "mrt",
      4: "apr",
      5: "mei",
      6: "jun",
      7: "jul",
      8: "aug",
      9: "sep",
      10: "okt",
      11: "nov",
      12: "dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "nl-BE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_nl_NL', () {
    Map<int, String> expectedResult = {
      1: "januari",
      2: "februari",
      3: "maart",
      4: "april",
      5: "mei",
      6: "juni",
      7: "juli",
      8: "augustus",
      9: "september",
      10: "oktober",
      11: "november",
      12: "december",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "nl-NL",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_nl_NL_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "feb",
      3: "mrt",
      4: "apr",
      5: "mei",
      6: "jun",
      7: "jul",
      8: "aug",
      9: "sep",
      10: "okt",
      11: "nov",
      12: "dec"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "nl-NL",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pa_Guru_IN', () {
    Map<int, String> expectedResult = {
      1: "ਜਨਵਰੀ",
      2: "ਫ਼ਰਵਰੀ",
      3: "ਮਾਰਚ",
      4: "ਅਪ੍ਰੈਲ",
      5: "ਮਈ",
      6: "ਜੂਨ",
      7: "ਜੁਲਾਈ",
      8: "ਅਗਸਤ",
      9: "ਸਤੰਬਰ",
      10: "ਅਕਤੂਬਰ",
      11: "ਨਵੰਬਰ",
      12: "ਦਸੰਬਰ",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pa-Guru-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pa_Guru_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "ਜਨ",
      2: "ਫ਼ਰ",
      3: "ਮਾਰਚ",
      4: "ਅਪ੍ਰੈ",
      5: "ਮਈ",
      6: "ਜੂਨ",
      7: "ਜੁਲਾ",
      8: "ਅਗ",
      9: "ਸਤੰ",
      10: "ਅਕਤੂ",
      11: "ਨਵੰ",
      12: "ਦਸੰ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pa-Guru-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pl_PL', () {
    Map<int, String> expectedResult = {
      1: "styczeń",
      2: "luty",
      3: "marzec",
      4: "kwiecień",
      5: "maj",
      6: "czerwiec",
      7: "lipiec",
      8: "sierpień",
      9: "wrzesień",
      10: "październik",
      11: "listopad",
      12: "grudzień",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pl-PL",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pl_PL_medium', () {
    Map<int, String> expectedResult = {
      1: "sty",
      2: "lut",
      3: "mar",
      4: "kwi",
      5: "maj",
      6: "cze",
      7: "lip",
      8: "sie",
      9: "wrz",
      10: "paź",
      11: "lis",
      12: "gru"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pl-PL",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pt_BR', () {
    Map<int, String> expectedResult = {
      1: "janeiro",
      2: "fevereiro",
      3: "março",
      4: "abril",
      5: "maio",
      6: "junho",
      7: "julho",
      8: "agosto",
      9: "setembro",
      10: "outubro",
      11: "novembro",
      12: "dezembro"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pt-BR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pt_PT', () {
    Map<int, String> expectedResult = {
      1: "janeiro",
      2: "fevereiro",
      3: "março",
      4: "abril",
      5: "maio",
      6: "junho",
      7: "julho",
      8: "agosto",
      9: "setembro",
      10: "outubro",
      11: "novembro",
      12: "dezembro"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pt-PT",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ro_RO', () {
    Map<int, String> expectedResult = {
      1: "ianuarie",
      2: "februarie",
      3: "martie",
      4: "aprilie",
      5: "mai",
      6: "iunie",
      7: "iulie",
      8: "august",
      9: "septembrie",
      10: "octombrie",
      11: "noiembrie",
      12: "decembrie",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ro-RO",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ro_RO_medium', () {
    Map<int, String> expectedResult = {
      1: "ian.",
      2: "feb.",
      3: "mar.",
      4: "apr.",
      5: "mai",
      6: "iun.",
      7: "iul.",
      8: "aug.",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "dec."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ro-RO",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sr_Cyrl_RS', () {
    Map<int, String> expectedResult = {
      1: "јануар",
      2: "фебруар",
      3: "март",
      4: "април",
      5: "мај",
      6: "јун",
      7: "јул",
      8: "август",
      9: "септембар",
      10: "октобар",
      11: "новембар",
      12: "децембар"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sr-Cyrl-RS",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sr_Latn_RS', () {
    Map<int, String> expectedResult = {
      1: "januar",
      2: "februar",
      3: "mart",
      4: "april",
      5: "maj",
      6: "jun",
      7: "jul",
      8: "avgust",
      9: "septembar",
      10: "oktobar",
      11: "novembar",
      12: "decembar"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sr-Latn-RS",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_BY', () {
    Map<int, String> expectedResult = {
      1: "январь",
      2: "февраль",
      3: "март",
      4: "апрель",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "август",
      9: "сентябрь",
      10: "октябрь",
      11: "ноябрь",
      12: "декабрь",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-BY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_BY_medium', () {
    Map<int, String> expectedResult = {
      1: "янв.",
      2: "февр.",
      3: "март",
      4: "апр.",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "авг.",
      9: "сент.",
      10: "окт.",
      11: "нояб.",
      12: "дек."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-BY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_KG', () {
    Map<int, String> expectedResult = {
      1: "январь",
      2: "февраль",
      3: "март",
      4: "апрель",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "август",
      9: "сентябрь",
      10: "октябрь",
      11: "ноябрь",
      12: "декабрь",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-KG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_KG_medium', () {
    Map<int, String> expectedResult = {
      1: "янв.",
      2: "февр.",
      3: "март",
      4: "апр.",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "авг.",
      9: "сент.",
      10: "окт.",
      11: "нояб.",
      12: "дек."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-KG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_KZ', () {
    Map<int, String> expectedResult = {
      1: "январь",
      2: "февраль",
      3: "март",
      4: "апрель",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "август",
      9: "сентябрь",
      10: "октябрь",
      11: "ноябрь",
      12: "декабрь",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-KZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_KZ_medium', () {
    Map<int, String> expectedResult = {
      1: "янв.",
      2: "февр.",
      3: "март",
      4: "апр.",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "авг.",
      9: "сент.",
      10: "окт.",
      11: "нояб.",
      12: "дек."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-KZ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_GE', () {
    Map<int, String> expectedResult = {
      1: "январь",
      2: "февраль",
      3: "март",
      4: "апрель",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "август",
      9: "сентябрь",
      10: "октябрь",
      11: "ноябрь",
      12: "декабрь"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-GE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_RU', () {
    Map<int, String> expectedResult = {
      1: "январь",
      2: "февраль",
      3: "март",
      4: "апрель",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "август",
      9: "сентябрь",
      10: "октябрь",
      11: "ноябрь",
      12: "декабрь",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-RU",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_RU_medium', () {
    Map<int, String> expectedResult = {
      1: "янв.",
      2: "февр.",
      3: "март",
      4: "апр.",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "авг.",
      9: "сент.",
      10: "окт.",
      11: "нояб.",
      12: "дек."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-RU",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_UA', () {
    Map<int, String> expectedResult = {
      1: "январь",
      2: "февраль",
      3: "март",
      4: "апрель",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "август",
      9: "сентябрь",
      10: "октябрь",
      11: "ноябрь",
      12: "декабрь",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-UA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ru_UA_medium', () {
    Map<int, String> expectedResult = {
      1: "янв.",
      2: "февр.",
      3: "март",
      4: "апр.",
      5: "май",
      6: "июнь",
      7: "июль",
      8: "авг.",
      9: "сент.",
      10: "окт.",
      11: "нояб.",
      12: "дек."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ru-UA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sk_SK', () {
    Map<int, String> expectedResult = {
      1: "január",
      2: "február",
      3: "marec",
      4: "apríl",
      5: "máj",
      6: "jún",
      7: "júl",
      8: "august",
      9: "september",
      10: "október",
      11: "november",
      12: "december"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sk-SK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sl_SI', () {
    Map<int, String> expectedResult = {
      1: "januar",
      2: "februar",
      3: "marec",
      4: "april",
      5: "maj",
      6: "junij",
      7: "julij",
      8: "avgust",
      9: "september",
      10: "oktober",
      11: "november",
      12: "december",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sl-SI",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sl_SI_medium', () {
    Map<int, String> expectedResult = {
      1: "jan.",
      2: "feb.",
      3: "mar.",
      4: "apr.",
      5: "maj",
      6: "jun.",
      7: "jul.",
      8: "avg.",
      9: "sep.",
      10: "okt.",
      11: "nov.",
      12: "dec."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sl-SI",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sq_AL', () {
    Map<int, String> expectedResult = {
      1: "janar",
      2: "shkurt",
      3: "mars",
      4: "prill",
      5: "maj",
      6: "qershor",
      7: "korrik",
      8: "gusht",
      9: "shtator",
      10: "tetor",
      11: "nëntor",
      12: "dhjetor",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sq-AL",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sq_AL_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "shk",
      3: "mar",
      4: "pri",
      5: "maj",
      6: "qer",
      7: "korr",
      8: "gush",
      9: "sht",
      10: "tet",
      11: "nën",
      12: "dhj"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sq-AL",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sq_ME', () {
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sq-ME",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    Map<int, String> expectedResult = {
      1: "janar",
      2: "shkurt",
      3: "mars",
      4: "prill",
      5: "maj",
      6: "qershor",
      7: "korrik",
      8: "gusht",
      9: "shtator",
      10: "tetor",
      11: "nëntor",
      12: "dhjetor",
    };
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sq_ME_medium', () {
    Map<int, String> expectedResult = {
      1: "jan",
      2: "shk",
      3: "mar",
      4: "pri",
      5: "maj",
      6: "qer",
      7: "korr",
      8: "gush",
      9: "sht",
      10: "tet",
      11: "nën",
      12: "dhj"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sq-ME",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sv_FI', () {
    Map<int, String> expectedResult = {
      1: "januari",
      2: "februari",
      3: "mars",
      4: "april",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "augusti",
      9: "september",
      10: "oktober",
      11: "november",
      12: "december",
    };

    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sv-FI",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sv_FI_medium', () {
    Map<int, String> expectedResult = {
      1: "jan.",
      2: "feb.",
      3: "mars",
      4: "apr.",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "aug.",
      9: "sep.",
      10: "okt.",
      11: "nov.",
      12: "dec."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sv-FI",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sv_SE', () {
    Map<int, String> expectedResult = {
      1: "januari",
      2: "februari",
      3: "mars",
      4: "april",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "augusti",
      9: "september",
      10: "oktober",
      11: "november",
      12: "december",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sv-SE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_sv_SE_medium', () {
    Map<int, String> expectedResult = {
      1: "jan.",
      2: "feb.",
      3: "mars",
      4: "apr.",
      5: "maj",
      6: "juni",
      7: "juli",
      8: "aug.",
      9: "sep.",
      10: "okt.",
      11: "nov.",
      12: "dec."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "sv-SE",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ta_IN', () {
    Map<int, String> expectedResult = {
      1: "ஜனவரி",
      2: "பிப்ரவரி",
      3: "மார்ச்",
      4: "ஏப்ரல்",
      5: "மே",
      6: "ஜூன்",
      7: "ஜூலை",
      8: "ஆகஸ்ட்",
      9: "செப்டம்பர்",
      10: "அக்டோபர்",
      11: "நவம்பர்",
      12: "டிசம்பர்",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ta-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ta_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "ஜன.",
      2: "பிப்.",
      3: "மார்.",
      4: "ஏப்.",
      5: "மே",
      6: "ஜூன்",
      7: "ஜூலை",
      8: "ஆக.",
      9: "செப்.",
      10: "அக்.",
      11: "நவ.",
      12: "டிச."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ta-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_te_IN', () {
    Map<int, String> expectedResult = {
      1: "జనవరి",
      2: "ఫిబ్రవరి",
      3: "మార్చి",
      4: "ఏప్రిల్",
      5: "మే",
      6: "జూన్",
      7: "జులై",
      8: "ఆగస్టు",
      9: "సెప్టెంబర్",
      10: "అక్టోబర్",
      11: "నవంబర్",
      12: "డిసెంబర్",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "te-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_te_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "జన",
      2: "ఫిబ్ర",
      3: "మార్చి",
      4: "ఏప్రి",
      5: "మే",
      6: "జూన్",
      7: "జులై",
      8: "ఆగ",
      9: "సెప్టెం",
      10: "అక్టో",
      11: "నవం",
      12: "డిసెం"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "te-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_th_TH', () {
    Map<int, String> expectedResult = {
      1: "มกราคม",
      2: "กุมภาพันธ์",
      3: "มีนาคม",
      4: "เมษายน",
      5: "พฤษภาคม",
      6: "มิถุนายน",
      7: "กรกฎาคม",
      8: "สิงหาคม",
      9: "กันยายน",
      10: "ตุลาคม",
      11: "พฤศจิกายน",
      12: "ธันวาคม",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "th-TH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'thaisolar');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_th_TH_medium', () {
    Map<int, String> expectedResult = {
      1: "ม.ค.",
      2: "ก.พ.",
      3: "มี.ค.",
      4: "เม.ย.",
      5: "พ.ค.",
      6: "มิ.ย.",
      7: "ก.ค.",
      8: "ส.ค.",
      9: "ก.ย.",
      10: "ต.ค.",
      11: "พ.ย.",
      12: "ธ.ค."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "th-TH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'thaisolar');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_AM', () {
    Map<int, String> expectedResult = {
      1: "Ocak",
      2: "Şubat",
      3: "Mart",
      4: "Nisan",
      5: "Mayıs",
      6: "Haziran",
      7: "Temmuz",
      8: "Ağustos",
      9: "Eylül",
      10: "Ekim",
      11: "Kasım",
      12: "Aralık",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-AM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_AM_medium', () {
    Map<int, String> expectedResult = {
      1: "Oca",
      2: "Şub",
      3: "Mar",
      4: "Nis",
      5: "May",
      6: "Haz",
      7: "Tem",
      8: "Ağu",
      9: "Eyl",
      10: "Eki",
      11: "Kas",
      12: "Ara"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-AM",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_AZ', () {
    Map<int, String> expectedResult = {
      1: "Ocak",
      2: "Şubat",
      3: "Mart",
      4: "Nisan",
      5: "Mayıs",
      6: "Haziran",
      7: "Temmuz",
      8: "Ağustos",
      9: "Eylül",
      10: "Ekim",
      11: "Kasım",
      12: "Aralık"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-AZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_CY', () {
    Map<int, String> expectedResult = {
      1: "Ocak",
      2: "Şubat",
      3: "Mart",
      4: "Nisan",
      5: "Mayıs",
      6: "Haziran",
      7: "Temmuz",
      8: "Ağustos",
      9: "Eylül",
      10: "Ekim",
      11: "Kasım",
      12: "Aralık",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-CY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_CY_medium', () {
    Map<int, String> expectedResult = {
      1: "Oca",
      2: "Şub",
      3: "Mar",
      4: "Nis",
      5: "May",
      6: "Haz",
      7: "Tem",
      8: "Ağu",
      9: "Eyl",
      10: "Eki",
      11: "Kas",
      12: "Ara"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-CY",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_TR', () {
    Map<int, String> expectedResult = {
      1: "Ocak",
      2: "Şubat",
      3: "Mart",
      4: "Nisan",
      5: "Mayıs",
      6: "Haziran",
      7: "Temmuz",
      8: "Ağustos",
      9: "Eylül",
      10: "Ekim",
      11: "Kasım",
      12: "Aralık",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-TR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_tr_TR_medium', () {
    Map<int, String> expectedResult = {
      1: "Oca",
      2: "Şub",
      3: "Mar",
      4: "Nis",
      5: "May",
      6: "Haz",
      7: "Tem",
      8: "Ağu",
      9: "Eyl",
      10: "Eki",
      11: "Kas",
      12: "Ara"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "tr-TR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_uk_UA', () {
    Map<int, String> expectedResult = {
      1: "січень",
      2: "лютий",
      3: "березень",
      4: "квітень",
      5: "травень",
      6: "червень",
      7: "липень",
      8: "серпень",
      9: "вересень",
      10: "жовтень",
      11: "листопад",
      12: "грудень",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "uk-UA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_uk_UA_medium', () {
    Map<int, String> expectedResult = {
      1: "січ.",
      2: "лют.",
      3: "бер.",
      4: "квіт.",
      5: "трав.",
      6: "черв.",
      7: "лип.",
      8: "серп.",
      9: "вер.",
      10: "жовт.",
      11: "лист.",
      12: "груд."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "uk-UA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ur_IN', () {
    Map<int, String> expectedResult = {
      1: "جنوری",
      2: "فروری",
      3: "مارچ",
      4: "اپریل",
      5: "مئی",
      6: "جون",
      7: "جولائی",
      8: "اگست",
      9: "ستمبر",
      10: "اکتوبر",
      11: "نومبر",
      12: "دسمبر",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ur-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ur_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "جنوری",
      2: "فروری",
      3: "مارچ",
      4: "اپریل",
      5: "مئی",
      6: "جون",
      7: "جولائی",
      8: "اگست",
      9: "ستمبر",
      10: "اکتوبر",
      11: "نومبر",
      12: "دسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ur-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_uz_Latn_UZ', () {
    Map<int, String> expectedResult = {
      1: "Yanvar",
      2: "Fevral",
      3: "Mart",
      4: "Aprel",
      5: "May",
      6: "Iyun",
      7: "Iyul",
      8: "Avgust",
      9: "Sentabr",
      10: "Oktabr",
      11: "Noyabr",
      12: "Dekabr",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "uz-Latn-UZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_uz_Latn_UZ_medium', () {
    Map<int, String> expectedResult = {
      1: "Yan",
      2: "Fev",
      3: "Mar",
      4: "Apr",
      5: "May",
      6: "Iyn",
      7: "Iyl",
      8: "Avg",
      9: "Sen",
      10: "Okt",
      11: "Noy",
      12: "Dek"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "uz-Latn-UZ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_vi_VN', () {
    Map<int, String> expectedResult = {
      1: "Tháng 1",
      2: "Tháng 2",
      3: "Tháng 3",
      4: "Tháng 4",
      5: "Tháng 5",
      6: "Tháng 6",
      7: "Tháng 7",
      8: "Tháng 8",
      9: "Tháng 9",
      10: "Tháng 10",
      11: "Tháng 11",
      12: "Tháng 12",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "vi-VN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_vi_VN_medium', () {
    Map<int, String> expectedResult = {
      1: "Tháng 1",
      2: "Tháng 2",
      3: "Tháng 3",
      4: "Tháng 4",
      5: "Tháng 5",
      6: "Tháng 6",
      7: "Tháng 7",
      8: "Tháng 8",
      9: "Tháng 9",
      10: "Tháng 10",
      11: "Tháng 11",
      12: "Tháng 12"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "vi-VN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_zh_Hans_CN', () {
    Map<int, String> expectedResult = {
      1: "1月",
      2: "2月",
      3: "3月",
      4: "4月",
      5: "5月",
      6: "6月",
      7: "7月",
      8: "8月",
      9: "9月",
      10: "10月",
      11: "11月",
      12: "12月",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "zh-Hans-CN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_zh_Hant_HK', () {
    Map<int, String> expectedResult = {
      1: "1月",
      2: "2月",
      3: "3月",
      4: "4月",
      5: "5月",
      6: "6月",
      7: "7月",
      8: "8月",
      9: "9月",
      10: "10月",
      11: "11月",
      12: "12月"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "zh-Hant-HK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_zh_Hant_TW', () {
    Map<int, String> expectedResult = {
      1: "1月",
      2: "2月",
      3: "3月",
      4: "4月",
      5: "5月",
      6: "6月",
      7: "7月",
      8: "8月",
      9: "9月",
      10: "10月",
      11: "11月",
      12: "12月"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "zh-Hant-TW",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_GE', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-GE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_CN', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-CN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_MX', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-MX",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_TW', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-TW",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_mn_MN', () {
    Map<int, String> expectedResult = {
      1: "1-р сар",
      2: "2-р сар",
      3: "3-р сар",
      4: "4-р сар",
      5: "5-р сар",
      6: "6-р сар",
      7: "7-р сар",
      8: "8-р сар",
      9: "9-р сар",
      10: "10-р сар",
      11: "11-р сар",
      12: "12-р сар"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "mn-MN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_CA', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-CA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_af_ZA', () {
    Map<int, String> expectedResult = {
      1: "Januarie",
      2: "Februarie",
      3: "Maart",
      4: "April",
      5: "Mei",
      6: "Junie",
      7: "Julie",
      8: "Augustus",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Desember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "af-ZA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_af_ZA_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan.",
      2: "Feb.",
      3: "Mrt.",
      4: "Apr.",
      5: "Mei",
      6: "Jun.",
      7: "Jul.",
      8: "Aug.",
      9: "Sep.",
      10: "Okt.",
      11: "Nov.",
      12: "Des."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "af-ZA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_am_ET', () {
    Map<int, String> expectedResult = {
      1: "መስከረም",
      2: "ጥቅምት",
      3: "ኅዳር",
      4: "ታኅሣሥ",
      5: "ጥር",
      6: "የካቲት",
      7: "መጋቢት",
      8: "ሚያዝያ",
      9: "ግንቦት",
      10: "ሰኔ",
      11: "ሐምሌ",
      12: "ነሐሴ",
      13: "ጳጉሜን",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "am-ET",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'ethiopic');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_am_ET_medium', () {
    Map<int, String> expectedResult = {
      1: "መስከረም",
      2: "ጥቅምት",
      3: "ኅዳር",
      4: "ታኅሣሥ",
      5: "ጥር",
      6: "የካቲት",
      7: "መጋቢት",
      8: "ሚያዝያ",
      9: "ግንቦት",
      10: "ሰኔ",
      11: "ሐምሌ",
      12: "ነሐሴ",
      13: "ጳጉሜን"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "am-ET",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'ethiopic');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ha_Latn_NG', () {
    Map<int, String> expectedResult = {
      1: "Janairu",
      2: "Faburairu",
      3: "Maris",
      4: "Afirilu",
      5: "Mayu",
      6: "Yuni",
      7: "Yuli",
      8: "Agusta",
      9: "Satumba",
      10: "Oktoba",
      11: "Nuwamba",
      12: "Disamba",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ha-Latn-NG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ha_Latn_NG_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Fab",
      3: "Mar",
      4: "Afi",
      5: "May",
      6: "Yun",
      7: "Yul",
      8: "Agu",
      9: "Sat",
      10: "Okt",
      11: "Nuw",
      12: "Dis"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ha-Latn-NG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_or_IN', () {
    Map<int, String> expectedResult = {
      1: "ଜାନୁଆରୀ",
      2: "ଫେବୃଆରୀ",
      3: "ମାର୍ଚ୍ଚ",
      4: "ଅପ୍ରେଲ",
      5: "ମଇ",
      6: "ଜୁନ",
      7: "ଜୁଲାଇ",
      8: "ଅଗଷ୍ଟ",
      9: "ସେପ୍ଟେମ୍ବର",
      10: "ଅକ୍ଟୋବର",
      11: "ନଭେମ୍ବର",
      12: "ଡିସେମ୍ବର",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "or-IN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_or_IN_medium', () {
    Map<int, String> expectedResult = {
      1: "ଜାନୁଆରୀ",
      2: "ଫେବୃଆରୀ",
      3: "ମାର୍ଚ୍ଚ",
      4: "ଅପ୍ରେଲ",
      5: "ମଇ",
      6: "ଜୁନ",
      7: "ଜୁଲାଇ",
      8: "ଅଗଷ୍ଟ",
      9: "ସେପ୍ଟେମ୍ବର",
      10: "ଅକ୍ଟୋବର",
      11: "ନଭେମ୍ବର",
      12: "ଡିସେମ୍ବର"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "or-IN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_az_Latn_AZ', () {
    Map<int, String> expectedResult = {
      1: "yanvar",
      2: "fevral",
      3: "mart",
      4: "aprel",
      5: "may",
      6: "iyun",
      7: "iyul",
      8: "avqust",
      9: "sentyabr",
      10: "oktyabr",
      11: "noyabr",
      12: "dekabr"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "az-Latn-AZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_az_Latn_AZ_medium', () {
    Map<int, String> expectedResult = {
      1: "yan",
      2: "fev",
      3: "mar",
      4: "apr",
      5: "may",
      6: "iyn",
      7: "iyl",
      8: "avq",
      9: "sen",
      10: "okt",
      11: "noy",
      12: "dek"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "az-Latn-AZ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_km_KH', () {
    Map<int, String> expectedResult = {
      1: "មករា",
      2: "កុម្ភៈ",
      3: "មីនា",
      4: "មេសា",
      5: "ឧសភា",
      6: "មិថុនា",
      7: "កក្កដា",
      8: "សីហា",
      9: "កញ្ញា",
      10: "តុលា",
      11: "វិច្ឆិកា",
      12: "ធ្នូ",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "km-KH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_km_KH_medium', () {
    Map<int, String> expectedResult = {
      1: "មករា",
      2: "កុម្ភៈ",
      3: "មីនា",
      4: "មេសា",
      5: "ឧសភា",
      6: "មិថុនា",
      7: "កក្កដា",
      8: "សីហា",
      9: "កញ្ញា",
      10: "តុលា",
      11: "វិច្ឆិកា",
      12: "ធ្នូ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "km-KH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_si_LK', () {
    Map<int, String> expectedResult = {
      1: "ජනවාරි",
      2: "පෙබරවාරි",
      3: "මාර්තු",
      4: "අප්‍රේල්",
      5: "මැයි",
      6: "ජූනි",
      7: "ජූලි",
      8: "අගෝස්තු",
      9: "සැප්තැම්බර්",
      10: "ඔක්තෝබර්",
      11: "නොවැම්බර්",
      12: "දෙසැම්බර්",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "si-LK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_si_LK_medium', () {
    Map<int, String> expectedResult = {
      1: "ජන",
      2: "පෙබ",
      3: "මාර්",
      4: "අප්‍රේල්",
      5: "මැයි",
      6: "ජූනි",
      7: "ජූලි",
      8: "අගෝ",
      9: "සැප්",
      10: "ඔක්",
      11: "නොවැ",
      12: "දෙසැ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "si-LK",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_AE', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-AE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_BH', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-BH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_DJ', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-DJ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_KW', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-KW",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_LY', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-LY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_OM', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-OM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_QA', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-QA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_SA', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-SA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_SD', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-SD",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ar_YE', () {
    Map<int, String> expectedResult = {
      1: "يناير",
      2: "فبراير",
      3: "مارس",
      4: "أبريل",
      5: "مايو",
      6: "يونيو",
      7: "يوليو",
      8: "أغسطس",
      9: "سبتمبر",
      10: "أكتوبر",
      11: "نوفمبر",
      12: "ديسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ar-YE",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_GM', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-GM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_LR', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-LR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_PK', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-PK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_RW', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-RW",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_SD', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-SD",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_SL', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-SL",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_en_TZ', () {
    Map<int, String> expectedResult = {
      1: "January",
      2: "February",
      3: "March",
      4: "April",
      5: "May",
      6: "June",
      7: "July",
      8: "August",
      9: "September",
      10: "October",
      11: "November",
      12: "December"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "en-TZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_CR', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-CR",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_CR_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-CR",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_GQ', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-GQ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_GQ_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-GQ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PH', () {
    Map<int, String> expectedResult = {
      1: "enero",
      2: "febrero",
      3: "marzo",
      4: "abril",
      5: "mayo",
      6: "junio",
      7: "julio",
      8: "agosto",
      9: "septiembre",
      10: "octubre",
      11: "noviembre",
      12: "diciembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PH",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_es_PH_medium', () {
    Map<int, String> expectedResult = {
      1: "ene",
      2: "feb",
      3: "mar",
      4: "abr",
      5: "may",
      6: "jun",
      7: "jul",
      8: "ago",
      9: "sept",
      10: "oct",
      11: "nov",
      12: "dic"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "es-PH",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_BF', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-BF",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_BF_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-BF",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_BJ', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-BJ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_BJ_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-BJ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CD', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CD",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CD_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CD",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CF', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CF",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CF_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CF",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CG', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CG_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CI', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CI",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CI_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CI",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CM', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre"
    };

    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CM",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_CM_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-CM",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_GQ', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-GQ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_GQ_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-GQ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_DJ', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-DJ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_DJ_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-DJ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_DZ', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-DZ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_DZ_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-DZ",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_GA', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-GA",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_GA_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-GA",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_GN', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-GN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_GN_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-GN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_LB', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-LB",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_LB_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-LB",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_ML', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-ML",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_ML_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-ML",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_RW', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-RW",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_RW_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-RW",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_SN', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-SN",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_SN_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-SN",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_TG', () {
    Map<int, String> expectedResult = {
      1: "janvier",
      2: "février",
      3: "mars",
      4: "avril",
      5: "mai",
      6: "juin",
      7: "juillet",
      8: "août",
      9: "septembre",
      10: "octobre",
      11: "novembre",
      12: "décembre",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-TG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_fr_TG_medium', () {
    Map<int, String> expectedResult = {
      1: "janv.",
      2: "févr.",
      3: "mars",
      4: "avr.",
      5: "mai",
      6: "juin",
      7: "juil.",
      8: "août",
      9: "sept.",
      10: "oct.",
      11: "nov.",
      12: "déc."
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "fr-TG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ms_Latn_SG', () {
    Map<int, String> expectedResult = {
      1: "Januari",
      2: "Februari",
      3: "Mac",
      4: "April",
      5: "Mei",
      6: "Jun",
      7: "Julai",
      8: "Ogos",
      9: "September",
      10: "Oktober",
      11: "November",
      12: "Disember",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ms-Latn-SG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ms_Latn_SG_medium', () {
    Map<int, String> expectedResult = {
      1: "Jan",
      2: "Feb",
      3: "Mac",
      4: "Apr",
      5: "Mei",
      6: "Jun",
      7: "Jul",
      8: "Ogo",
      9: "Sep",
      10: "Okt",
      11: "Nov",
      12: "Dis"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ms-Latn-SG",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pa_PK', () {
    Map<int, String> expectedResult = {
      1: "ਜਨਵਰੀ",
      2: "ਫ਼ਰਵਰੀ",
      3: "ਮਾਰਚ",
      4: "ਅਪ੍ਰੈਲ",
      5: "ਮਈ",
      6: "ਜੂਨ",
      7: "ਜੁਲਾਈ",
      8: "ਅਗਸਤ",
      9: "ਸਤੰਬਰ",
      10: "ਅਕਤੂਬਰ",
      11: "ਨਵੰਬਰ",
      12: "ਦਸੰਬਰ",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pa-PK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pa_PK_medium', () {
    Map<int, String> expectedResult = {
      1: "ਜਨ",
      2: "ਫ਼ਰ",
      3: "ਮਾਰਚ",
      4: "ਅਪ੍ਰੈ",
      5: "ਮਈ",
      6: "ਜੂਨ",
      7: "ਜੁਲਾ",
      8: "ਅਗ",
      9: "ਸਤੰ",
      10: "ਅਕਤੂ",
      11: "ਨਵੰ",
      12: "ਦਸੰ"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pa-PK",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pt_AO', () {
    Map<int, String> expectedResult = {
      1: "janeiro",
      2: "fevereiro",
      3: "março",
      4: "abril",
      5: "maio",
      6: "junho",
      7: "julho",
      8: "agosto",
      9: "setembro",
      10: "outubro",
      11: "novembro",
      12: "dezembro"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pt-AO",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pt_GQ', () {
    Map<int, String> expectedResult = {
      1: "janeiro",
      2: "fevereiro",
      3: "março",
      4: "abril",
      5: "maio",
      6: "junho",
      7: "julho",
      8: "agosto",
      9: "setembro",
      10: "outubro",
      11: "novembro",
      12: "dezembro"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pt-GQ",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_pt_CV', () {
    Map<int, String> expectedResult = {
      1: "janeiro",
      2: "fevereiro",
      3: "março",
      4: "abril",
      5: "maio",
      6: "junho",
      7: "julho",
      8: "agosto",
      9: "setembro",
      10: "outubro",
      11: "novembro",
      12: "dezembro"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "pt-CV",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ur_PK', () {
    Map<int, String> expectedResult = {
      1: "جنوری",
      2: "فروری",
      3: "مارچ",
      4: "اپریل",
      5: "مئی",
      6: "جون",
      7: "جولائی",
      8: "اگست",
      9: "ستمبر",
      10: "اکتوبر",
      11: "نومبر",
      12: "دسمبر",
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ur-PK",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_ur_PK_medium', () {
    Map<int, String> expectedResult = {
      1: "جنوری",
      2: "فروری",
      3: "مارچ",
      4: "اپریل",
      5: "مئی",
      6: "جون",
      7: "جولائی",
      8: "اگست",
      9: "ستمبر",
      10: "اکتوبر",
      11: "نومبر",
      12: "دسمبر"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "ur-PK",
        date: "m",
        length: "medium",
        useNative: false,
        timezone: "local");

    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_zh_Hans_SG', () {
    Map<int, String> expectedResult = {
      1: "1月",
      2: "2月",
      3: "3月",
      4: "4月",
      5: "5月",
      6: "6月",
      7: "7月",
      8: "8月",
      9: "9月",
      10: "10月",
      11: "11月",
      12: "12月"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "zh-Hans-SG",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
  group('testMonthTranslate_zh_Hans_MY', () {
    Map<int, String> expectedResult = {
      1: "1月",
      2: "2月",
      3: "3月",
      4: "4月",
      5: "5月",
      6: "6月",
      7: "7月",
      8: "8月",
      9: "9月",
      10: "10月",
      11: "11月",
      12: "12月"
    };
    ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
        locale: "zh-Hans-MY",
        date: "m",
        length: "full",
        useNative: false,
        timezone: "local");
    ILibDateFmt fmt = ILibDateFmt(fmtOptions);
    expectedResult.forEach((int num, String expected) {
      ILibDateOptions dateOptions =
          ILibDateOptions(month: num, type: 'gregorian');
      test(num, () async => expect(await fmt.format(dateOptions), expected));
    });
  });
}
