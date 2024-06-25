import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ilib/flutter_ilib.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  print("Testing [datefmt_ha_Latn_NG_test.dart] file.");
  group('format()', () {
    test('testDateFmtSimpleShort_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "short");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtSimpleMedium_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "medium");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sat, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Jan', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 1,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Janairu, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Feb', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 2,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Faburairu, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Mar', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 3,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Maris, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Apr', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 4,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Afirilu, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_May', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 5,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Mayu, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Jun', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 6,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Yuni, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Jul', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 7,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Yuli, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Aug', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 8,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Agusta, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Sep', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Oct', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 10,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Oktoba, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Nov', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 11,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Nuwamba, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn_Dec', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Disamba, 2011");
    });
    test('testDateFmtSimpleLong_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "long");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba, 2011");
    });
    test('testDateFmtSimpleFull_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", length: "full");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba, 2011");
    });
    test('testDateFmtSimpleTimeShort_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "short",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 1,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "01:45");
    });
    test('testDateFmtSimpleTimeMedium_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "medium",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeLong_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "long",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtSimpleTimeFull_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtDateTimeSimpleShort_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "short",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 13:45");
    });
    test('testDateFmtDateTimeSimpleMedium_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "medium",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Sat, 2011, 13:45");
    });
    test('testDateFmtDateTimeSimpleLong_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "long",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba, 2011 da 13:45");
    });
    test('testDateFmtDateTimeSimpleFull_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba, 2011 da 13:45");
    });

    test('testDateFmtTypeDate_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", type: "date");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtTypeTime_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", type: "time");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtTypeDateTime_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", type: "datetime");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11, 13:45");
    });
    test('testDateFmtShortDateComponentsY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "11");
    });
    test('testDateFmtShortDateComponentsM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9");
    });
    test('testDateFmtShortDateComponentsN_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "S");
    });
    test('testDateFmtShortDateComponentsN_ha_Latn_Mar', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "n");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 3,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "M");
    });
    test('testDateFmtShortDateComponentsD_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtShortDateComponentsDM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9");
    });
    test('testDateFmtShortDateComponentsMY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "9/11");
    });
    test('testDateFmtShortDateComponentsDMY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29/9/11");
    });
    test('testDateFmtShortDateComponentsDMW_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'L 29/9');
    });
    test('testDateFmtShortDateComponentsDMWY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2554,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'L 29/9/54');
    });
    test('testDateFmtFullDateComponentsY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "y");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "2011");
    });
    test('testDateFmtFullDateComponentsM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Satumba");
    });
    test('testDateFmtFullDateComponentsD_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "d");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29");
    });
    test('testDateFmtFullDateComponentsDM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "dm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba");
    });
    test('testDateFmtFullDateComponentsMY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "my");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "Satumba, 2011");
    });
    test('testDateFmtFullDateComponentsDMY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "dmy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "29 Satumba, 2011");
    });
    test('testDateFmtFullDateComponentsDMW_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "dmw");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2015,
          month: 2,
          day: 19,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'Alhamis 19 Faburairu');
    });
    test('testDateFmtFullDateComponentsDMWY_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          length: "full",
          date: "dmwy");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2015,
          month: 2,
          day: 19,
          hour: 13,
          minute: 45,
          second: 0,
          millisecond: 0);
      expect(await fmt.format(dateOptions), 'Alhamis 19 Faburairu, 2015');
    });
    test('testDateFmtShortTimeComponentsS_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", type: "time", time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtShortTimeComponentsM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", type: "time", time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });
    test('testDateFmtShortTimeComponentsH_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG", calendar: "gregorian", type: "time", time: "h");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13");
    });
    test('testDateFmtShortTimeComponentsMS_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });

    test('testDateFmtShortTimeComponentsHMZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WAT");
    });
    test('testDateFmtShortTimeComponentsHMAZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          time: "ahmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WAT");
    });
    test('testDateFmtShortTimeComponentsHMSZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WAT");
    });
    test('testDateFmtShortTimeComponentsHMSAZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          time: "ahmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WAT");
    });
    test('testDateFmtFullTimeComponentsS_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "s");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "37");
    });
    test('testDateFmtFullTimeComponentsM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "m");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45");
    });

    test('testDateFmtFullTimeComponentsMS_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "ms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "45:37");
    });
    test('testDateFmtFullTimeComponentsHM_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hm");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45");
    });
    test('testDateFmtFullTimeComponentsHMS_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hms");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37");
    });

    test('testDateFmtFullTimeComponentsHMZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WAT");
    });
    test('testDateFmtFullTimeComponentsHMAZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45 WAT");
    });

    test('testDateFmtFullTimeComponentsHMSZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WAT");
    });
    test('testDateFmtFullTimeComponentsHMSAZ_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsaz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 9,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WAT");
    });
    test('testDateFmtWithTimeZoneAndNoDST_ha_Latn', () async {
      ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(
          locale: "ha-Latn-NG",
          calendar: "gregorian",
          type: "time",
          length: "full",
          time: "hmsz");
      ILibDateFmt fmt = ILibDateFmt(fmtOptions);

      ILibDateOptions dateOptions = ILibDateOptions(
          locale: "ha-Latn-NG",
          year: 2011,
          month: 12,
          day: 29,
          hour: 13,
          minute: 45,
          second: 37,
          millisecond: 0);
      expect(await fmt.format(dateOptions), "13:45:37 WAT");
    });
  });
}
