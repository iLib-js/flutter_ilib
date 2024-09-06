import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_MonthTranslation_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });
  group('testMonthTranslate_custom_pl_PL', () {
    final Map<int, String> expectedResult = <int, String>{
      1: 'Styczeń',
      2: 'Luty',
      3: 'Marzec',
      4: 'Kwiecień',
      5: 'Maj',
      6: 'Czerwiec',
      7: 'Lipiec',
      8: 'Sierpień',
      9: 'Wrzesień',
      10: 'Październik',
      11: 'Listopad',
      12: 'Grudzień'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pl-PL',
            date: 'm',
            length: 'full',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions =
            ILibDateOptions(month: num, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testMonthTranslate_custom_pl_PL_medium', () {
    final Map<int, String> expectedResult = <int, String>{
      1: 'Sty',
      2: 'Lut',
      3: 'Mar',
      4: 'Kwi',
      5: 'Maj',
      6: 'Cze',
      7: 'Lip',
      8: 'Sie',
      9: 'Wrz',
      10: 'Paź',
      11: 'Lis',
      12: 'Gru'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'pl-PL',
            date: 'm',
            length: 'medium',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions =
            ILibDateOptions(month: num, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
  group('testMonthTranslate_custom_ru_UA_short', () {
    final Map<int, String> expectedResult = <int, String>{
      1: 'янв.',
      2: 'февр.',
      3: 'март',
      4: 'апр.',
      5: 'май',
      6: 'июнь',
      7: 'июль',
      8: 'авг.',
      9: 'сент.',
      10: 'окт.',
      11: 'нояб.',
      12: 'дек.'
    };
    expectedResult.forEach((int num, String expected) {
      test(num, () {
        final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
            locale: 'ru-UA',
            date: 'm',
            length: 'short',
            useNative: false,
            timezone: 'local');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        final ILibDateOptions dateOptions =
            ILibDateOptions(month: num, type: 'gregorian');
        expect(fmt.format(dateOptions), expected);
      });
    });
  });
}
