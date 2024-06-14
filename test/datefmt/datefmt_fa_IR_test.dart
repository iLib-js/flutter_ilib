import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_fa_IR_test.dart] file.");
  group('format()', () {
    test('SimpleShort_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "short"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۰۱۱/۹/۲۹");
    });
    test('SimpleMedium_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "medium"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۹ سپتامبر ۲۰۱۱");
    });
    test('SimpleLong_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "long"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۹ سپتامبر ۲۰۱۱");
    });
    test('SimpleFull_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۹ سپتامبر ۲۰۱۱");
    });
    test('SimpleTimeShort_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "short",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('SimpleTimeMedium_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "medium",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('SimpleTimeLong_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "long",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('SimpleTimeFull_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('DateTimeSimpleShort_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "short",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), '‏۲۰۱۱/۹/۲۹, ‏۱۳:۴۵');
    });
    test('DateTimeSimpleMedium_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "medium",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱، ‏۱۳:۴۵');
    });
    test('DateTimeSimpleLong_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "long",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱ ساعت ‏۱۳:۴۵');
    });
    test('DateTimeSimpleFull_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), '‏۲۹ سپتامبر ۲۰۱۱ ساعت ‏۱۳:۴۵');
    });
    test('TypeDate_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "date"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۰۱۱/۹/۲۹");
    });
    test('TypeTime_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('TypeDateTime_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), '‏۲۰۱۱/۹/۲۹, ‏۱۳:۴۵');
    });
    test('ShortDateComponentsY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "y"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۲۰۱۱");
    });
    test('ShortDateComponentsM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "m"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "س");
    });
    test('ShortDateComponentsD_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "d"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۲۹");
    });
    test('ShortDateComponentsDM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "dm"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۹/۲۹");
    });
    test('ShortDateComponentsMY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "my"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۰۱۱/۹");
    });
    test('ShortDateComponentsDMY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "dmy"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۰۱۱/۹/۲۹");
    });
    test('ShortDateComponentsWDM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "wdm"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "پ ‏۹/۲۹");
    });
    test('ShortDateComponentsWDMY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            date: "wdmy"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "پ ۲۰۱۱/۹/۲۹");
    });
    test('FullDateComponentsY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "y"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۲۰۱۱");
    });
    test('FullDateComponentsM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "m"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "سپتامبر");
    });
    test('FullDateComponentsD_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "d"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۲۹");
    });
    test('FullDateComponentsDM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "dm"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۹ سپتامبر");
    });
    test('FullDateComponentsMY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "my"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "سپتامبر ۲۰۱۱");
    });
    test('FullDateComponentsDMY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "dmy"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۲۹ سپتامبر ۲۰۱۱");
    });
    test('FullDateComponentsWDM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "wdm"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "پنجشنبه ‏۲۹ سپتامبر");
    });
    test('FullDateComponentsWDMY_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            length: "full",
            date: "wdmy"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "پنجشنبه ۲۹ سپتامبر ۲۰۱۱");
    });
    test('ShortTimeComponentsS_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "s"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۳۷");
    });
    test('ShortTimeComponentsM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "m"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۴۵");
    });
    test('ShortTimeComponentsH_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "h"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۱۳");
    });
    test('ShortTimeComponentsMS_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "ms"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۴۵:۳۷");
    });
    test('ShortTimeComponentsHM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hm"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('ShortTimeComponentsHMS_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hms"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷");
    });
    test('ShortTimeComponentsHMA_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hma"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('ShortTimeComponentsHMZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hmz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('ShortTimeComponentsHMAZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hmaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('ShortTimeComponentsHMSA_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hmsa"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷");
    });
    test('ShortTimeComponentsHMSZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hmsz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('ShortTimeComponentsHMSAZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            time: "hmsaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('FullTimeComponentsS_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "s"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۳۷");
    });
    test('FullTimeComponentsM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "m"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۴۵");
    });
    test('FullTimeComponentsH_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "h"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۱۳");
    });
    test('FullTimeComponentsMS_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "ms"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "۴۵:۳۷");
    });
    test('FullTimeComponentsHM_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hm"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('FullTimeComponentsHMS_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hms"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷");
    });
    test('FullTimeComponentsHMA_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hma"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('FullTimeComponentsHMZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hmz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('FullTimeComponentsHMAZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hmaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('FullTimeComponentsHMSA_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hmsa"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷");
    });
    test('FullTimeComponentsHMSZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hmsz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('FullTimeComponentsHMSAZ_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hmsaz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 9,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)");
    });
    test('WithTimeZoneAndNoDST_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            locale: "fa-IR",
            calendar: "gregorian",
            type: "time",
            length: "full",
            time: "hmsz"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 2011,
            month: 12,
            day: 29,
            hour: 13,
            minute:45,
            second:37,
            millisecond: 0,
            calendar: "gregorian"
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵:۳۷ (+۰۳۳۰/+۰۴۳۰)");
    });
    
    /* Now Persian calendar tests */
  
    test('PersSimpleShort_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "short"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), '‏۱۳۹۲/۹/۲۱');
    });
    test('PersSimpleMedium_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "medium"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۲۱ آذر ۱۳۹۲");
    });
    test('PersSimpleLong_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "long"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۲۱ آذر ۱۳۹۲");
    });
    test('PersSimpleFull_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "full"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳۹۲ آذر ۲۱");
    });
    test('PersSimpleTimeShort_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "short",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('PersSimpleTimeMedium_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "medium",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('PersSimpleTimeLong_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "long",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('PersSimpleTimeFull_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "full",
            type: "time"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳:۴۵");
    });
    test('PersDateTimeSimpleShort_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "short",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), '‏۱۳۹۲/۹/۲۱،‏ ‏۱۳:۴۵');
    });
    test('PersDateTimeSimpleMedium_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "medium",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۲۱ آذر ۱۳۹۲،‏ ‏۱۳:۴۵");
    });
    test('PersDateTimeSimpleLong_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "long",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۲۱ آذر ۱۳۹۲، ساعت ‏۱۳:۴۵");
    });
    test('PersDateTimeSimpleFull_fa_IR', () async {
        ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(
            calendar: "persian",
            locale: "fa-IR",
            length: "full",
            type: "datetime"
        );
        ILibDateFmt fmt = ILibDateFmt(fmtOptions);

        ILibDateOptions dateOptions = ILibDateOptions(
            locale: "fa-IR",
            year: 1392,
            month: 9,
            day: 21,
            hour: 13,
            minute:45,
            second: 0,
            millisecond: 0
        );
        expect(await fmt.format(dateOptions), "‏۱۳۹۲ آذر ۲۱، ساعت ‏۱۳:۴۵");
    });
  });
}