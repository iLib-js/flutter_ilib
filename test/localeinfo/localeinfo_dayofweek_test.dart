import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [localeinfo_dayofweek_test.dart] file.');
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib.instance;
  });
  // 0:sun, 1:mon, 2:tue, 3:wed, 4:thu, 5:fri, 6:sat
  group('dayOFWeek()', () {
    test('testWeekData_null', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('null');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ar_EG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-EG');
        expect(locInfo.getFirstDayOfWeek(), 6);
        expect(locInfo.getWeekEndStart(), 5);
        expect(locInfo.getWeekEndEnd(), 6);
      });
    });
    test('testWeekData_ar_IQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-IQ');
        expect(locInfo.getFirstDayOfWeek(), 6);
        expect(locInfo.getWeekEndStart(), 5);
        expect(locInfo.getWeekEndEnd(), 6);
      });
    });
    test('testWeekData_ar_MA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-MA');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_as_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('as-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_bg_BG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('bg-BG');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_bn_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('bn-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_bs_Latn_BA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('bs-Latn-BA');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_bs_Latn_ME', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('bs-Latn-ME');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_cs_CZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('cs-CZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_da_DK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('da-DK');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_de_AT', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('de-AT');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_de_CH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('de-CH');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_de_DE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('de-DE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_de_LU', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('de-LU');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_el_CY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('el-CY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_el_GR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('el-GR');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_AM', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-AM');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_AU', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-AU');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_AZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-AZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_CA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-CA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_GB', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GB');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_GH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GH');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_HK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-HK');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_IE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-IE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_IS', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-IS');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_JP', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-JP');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_KE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-KE');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_KR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-KR');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_LK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-LK');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_MM', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MM');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_MW', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MW');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_MY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_NG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-NG');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_NZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-NZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_PH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-PH');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_PR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-PR');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_SG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-SG');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_US', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-US');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_UG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-UG');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_ZA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-ZA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_ZM', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-ZM');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_AR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-AR');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_BO', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-BO');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_CL', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CL');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_CO', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CO');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_DO', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-DO');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_EC', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-EC');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-ES');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_GT', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-GT');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_HN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-HN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_MX', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-MX');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_NI', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-NI');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_PA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_PE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PE');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_PR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PR');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_PY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PY');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_SV', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-SV');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_US', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-US');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_UY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-UY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_VE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-VE');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_et_EE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('et-EE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fa_IR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fa-IR');
        expect(locInfo.getFirstDayOfWeek(), 6);
        expect(locInfo.getWeekEndStart(), 5);
        expect(locInfo.getWeekEndEnd(), 5);
      });
    });
    test('testWeekData_fi_FI', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fi-FI');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_BE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-BE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_CA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-CA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_CH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-CH');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_FR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-FR');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_LU', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-LU');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ga_IE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ga-IE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_gu_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('gu-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_he_IL', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('he-IL');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 5);
        expect(locInfo.getWeekEndEnd(), 6);
      });
    });
    test('testWeekData_hi_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('hi-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_hr_HR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('hr-HR');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_hr_ME', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('hr-ME');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_hr_HU', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('hr-HU');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_id_ID', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('id-ID');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_is_IS', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('is-IS');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_it_CH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('it-CH');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_it_IT', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('it-IT');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ja_JP', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ja-JP');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_kk_KZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('kk-KZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_kn_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('kn-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ko_KR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ko-KR');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ku_IQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ku-IQ');
        expect(locInfo.getFirstDayOfWeek(), 6);
        expect(locInfo.getWeekEndStart(), 5);
        expect(locInfo.getWeekEndEnd(), 6);
      });
    });
    test('testWeekData_lt_LT', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('lt-LT');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_lv_LV', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('lv-LV');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_mk_MK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('mk-MK');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ml_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ml-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_mr_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('mr-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ms_MY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ms-MY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_nb_NO', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('nb-NO');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_nl_BE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('nl-BE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_nl_NL', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('nl-NL');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pa_Guru_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pa-Guru-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pl_PL', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pl-PL');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pt_BR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-BR');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pt_PT', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-PT');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ro_RO', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ro-RO');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sr_Cyrl_RS', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sr-Cyrl-RS');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sr_Latn_RS', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sr-Latn-RS');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ru_BY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-BY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ru_KG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-KG');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ru_KZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-KZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ru_GE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-GE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ru_RU', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-RU');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ru_UA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ru-UA');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sk_SK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sk-SK');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sl_SI', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sl-SI');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sq_AL', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sq-AL');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sq_ME', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sq-ME');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sv_FI', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sv-FI');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_sv_SE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('sv-SE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ta_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ta-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_te_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('te-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_th_TH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('th-TH');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_tr_AM', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-AM');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_tr_AZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-AZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_tr_CY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-CY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_tr_TR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('tr-TR');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_uk_UA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('uk-UA');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ur_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ur-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_uz_Latn_UZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('uz-Latn-UZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_vi_VN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('vi-VN');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_zh_Hans_CN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hans-CN');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_zh_Hant_HK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hant-HK');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_zh_Hant_TW', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hant-TW');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_GE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GE');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_CN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-CN');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_MX', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-MX');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_TW', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-TW');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_mn_MN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('mn-MN');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_CA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_af_ZA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('af-ZA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_am_ET', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('am-ET');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ha_Latn_NG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ha-Latn-NG');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_or_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('or-IN');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 0);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_az_Latn_AZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('az-Latn-AZ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_km_KH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('km-KH');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_si_LK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('si-LK');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ar_AE', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-AE');
        expect(locInfo.getFirstDayOfWeek(), 6);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ar_SA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ar-SA');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 5);
        expect(locInfo.getWeekEndEnd(), 6);
      });
    });
    test('testWeekData_en_ET', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-ET');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_GM', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-GM');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_en_SL', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('en-SL');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_CR', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-CR');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_GQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-GQ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_es_PH', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('es-PH');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_BJ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-BJ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_CI', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-CI');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_GQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-GQ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_GA', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-GA');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_GN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-GN');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_LB', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-LB');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_ML', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-ML');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_RW', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-RW');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_SN', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-SN');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_fr_TG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('fr-TG');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ms_SG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ms-SG');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pa_PK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pa-PK');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pt_AO', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-AO');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pt_GQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-GQ');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_pt_CV', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-CV');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_ur_PK', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('ur-PK');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_zh_Hans_SG', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hans-SG');
        expect(locInfo.getFirstDayOfWeek(), 0);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
    test('testWeekData_zh_Hans_MY', () {
      flutterIlibPlugin.addListener(() {
        final ILibLocaleInfo locInfo = ILibLocaleInfo('zh-Hans-MY');
        expect(locInfo.getFirstDayOfWeek(), 1);
        expect(locInfo.getWeekEndStart(), 6);
        expect(locInfo.getWeekEndEnd(), 0);
      });
    });
  });
}
