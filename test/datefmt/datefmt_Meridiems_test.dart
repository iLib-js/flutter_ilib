import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [flutter_ilib_datefmt_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });
  group('getMeridiems()', () {
    test('testMeridiem_ar_EG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-EG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-IQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_MA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-MA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_as_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'as-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      } else {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      }
    });
    test('testMeridiem_bg_BG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'bg-BG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'пр.об.');
      expect(meridiems[1].name, 'сл.об.');
    });
    test('testMeridiem_bn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'bn-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_bs_Latn_BA', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-BA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'prijepodne');
        expect(meridiems[1].name, 'poslijepodne');
      } else {
        expect(meridiems[0].name, 'prijepodne');
        expect(meridiems[1].name, 'popodne');
      }
    });
    test('testMeridiem_bs_Latn_ME', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'bs-Latn-ME');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'prijepodne');
        expect(meridiems[1].name, 'poslijepodne');
      } else {
        expect(meridiems[0].name, 'prijepodne');
        expect(meridiems[1].name, 'popodne');
      }
    });
    test('testMeridiem_cs_CZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'cs-CZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'dop.');
      expect(meridiems[1].name, 'odp.');
    });
    test('testMeridiem_da_DK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'da-DK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_de_AT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-AT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_de_CH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-CH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_de_DE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-DE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_de_LU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'de-LU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_el_CY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'el-CY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'π.μ.');
      expect(meridiems[1].name, 'μ.μ.');
    });
    test('testMeridiem_el_GR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'el-GR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'π.μ.');
      expect(meridiems[1].name, 'μ.μ.');
    });
    test('testMeridiem_en_AM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-AM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_AU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-AU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_AZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-AZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_CA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-CA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_en_GB', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GB');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_GH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_HK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-HK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-IE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_en_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_IS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-IS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-JP');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_KE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-KE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-KR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-LK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_MM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_MW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_NG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-NG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_NZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-NZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_PH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-PH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_PR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-PR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_SG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-SG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-US');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_UG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-UG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-ZA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_en_ZM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-ZM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'am');
      expect(meridiems[1].name, 'pm');
    });
    test('testMeridiem_es_AR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-AR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_BO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-BO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_CL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-CL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_CO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-CO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_DO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-DO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_EC', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-EC');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_ES', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-ES');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_GT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-GT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_HN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-HN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-MX');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_es_NI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-NI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_PA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_PE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_PR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_PY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-PY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_SV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-SV');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_US', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-US');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_es_UY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-UY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_es_VE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-VE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_et_EE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'et-EE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_fa_IR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fa-IR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'قبل‌ازظهر');
      expect(meridiems[1].name, 'بعدازظهر');
    });
    test('testMeridiem_fi_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fi-FI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ap.');
      expect(meridiems[1].name, 'ip.');
    });
    test('testMeridiem_fr_BE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-BE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_fr_CA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_fr_CH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-CH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_fr_FR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-FR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_fr_LU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'fr-LU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ga_IE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ga-IE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'r.n.');
      expect(meridiems[1].name, 'i.n.');
    });
    test('testMeridiem_gu_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'gu-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_he_IL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'he-IL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_hi_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hi-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();
      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      } else {
        expect(meridiems[0].name, 'am');
        expect(meridiems[1].name, 'pm');
      }
    });
    test('testMeridiem_hr_HR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hr-HR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_hr_ME', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hr-ME');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_hr_HU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'hr-HU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_id_ID', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'id-ID');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_is_IS', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'is-IS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'f.h.');
      expect(meridiems[1].name, 'e.h.');
    });
    test('testMeridiem_it_CH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'it-CH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_it_IT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'it-IT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ja_JP', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ja-JP');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '午前');
      expect(meridiems[1].name, '午後');
    });
    test('testMeridiem_kk_KZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'kk-KZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_kn_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'kn-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      } else {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      }
    });
    test('testMeridiem_ko_KR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ko-KR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '오전');
      expect(meridiems[1].name, '오후');
    });
    test('testMeridiem_ku_IQ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ku-IQ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ب.ن');
      expect(meridiems[1].name, 'د.ن');
    });
    test('testMeridiem_lt_LT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'lt-LT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'priešpiet');
      expect(meridiems[1].name, 'popiet');
    });
    test('testMeridiem_lv_LV', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'lv-LV');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'priekšpusdienā');
      expect(meridiems[1].name, 'pēcpusdienā');
    });
    test('testMeridiem_mk_MK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'mk-MK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'претпл.');
      expect(meridiems[1].name, 'попл.');
    });
    test('testMeridiem_ml_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ml-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_mr_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'mr-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ms_MY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ms-MY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'PG');
      expect(meridiems[1].name, 'PTG');
    });
    test('testMeridiem_nb_NO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'nb-NO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_nl_BE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'nl-BE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_nl_NL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'nl-NL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_pa_Guru_IN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'pa-Guru-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      } else {
        expect(meridiems[0].name, 'ਪੂ.ਦੁ.');
        expect(meridiems[1].name, 'ਬਾ.ਦੁ.');
      }
    });
    test('testMeridiem_pl_PL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pl-PL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_pt_BR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-BR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_pt_PT', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'pt-PT');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'da manhã');
      expect(meridiems[1].name, 'da tarde');
    });
    test('testMeridiem_ro_RO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ro-RO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a.m.');
      expect(meridiems[1].name, 'p.m.');
    });
    test('testMeridiem_sr_Cyrl_RS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sr-Cyrl-RS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_sr_Latn_RS', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'sr-Latn-RS');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ru_BY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-BY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ru_KG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-KG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ru_KZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-KZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ru_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-GE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ru_RU', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-RU');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_ru_UA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ru-UA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_sk_SK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sk-SK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_sl_SI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sl-SI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'dop.');
      expect(meridiems[1].name, 'pop.');
    });
    test('testMeridiem_sq_AL', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sq-AL');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();
      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'të paradites');
        expect(meridiems[1].name, 'të pasdites');
      } else {
        expect(meridiems[0].name, 'e paradites');
        expect(meridiems[1].name, 'e pasdites');
      }
    });
    test('testMeridiem_sq_ME', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sq-ME');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();
      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'të paradites');
        expect(meridiems[1].name, 'të pasdites');
      } else {
        expect(meridiems[0].name, 'e paradites');
        expect(meridiems[1].name, 'e pasdites');
      }
    });
    test('testMeridiem_sv_FI', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sv-FI');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'fm');
      expect(meridiems[1].name, 'em');
    });
    test('testMeridiem_sv_SE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'sv-SE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'fm');
      expect(meridiems[1].name, 'em');
    });
    test('testMeridiem_ta_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ta-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();
      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      } else {
        expect(meridiems[0].name, 'AM');
        expect(meridiems[1].name, 'PM');
      }
    });
    test('testMeridiem_te_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'te-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_th_TH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'th-TH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ก่อนเที่ยง');
      expect(meridiems[1].name, 'หลังเที่ยง');
    });
    test('testMeridiem_tr_AM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-AM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ÖÖ');
      expect(meridiems[1].name, 'ÖS');
    });
    test('testMeridiem_tr_AZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-AZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ÖÖ');
      expect(meridiems[1].name, 'ÖS');
    });
    test('testMeridiem_tr_CY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-CY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ÖÖ');
      expect(meridiems[1].name, 'ÖS');
    });
    test('testMeridiem_tr_TR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'tr-TR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ÖÖ');
      expect(meridiems[1].name, 'ÖS');
    });
    test('testMeridiem_uk_UA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'uk-UA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'дп');
      expect(meridiems[1].name, 'пп');
    });
    test('testMeridiem_ur_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ur-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_uz_Latn_UZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'uz-Latn-UZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'TO');
      expect(meridiems[1].name, 'TK');
    });
    test('testMeridiem_vi_VN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'vi-VN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'SA');
      expect(meridiems[1].name, 'CH');
    });
    test('testMeridiem_zh_Hans_CN', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-CN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '上午');
      expect(meridiems[1].name, '下午');
    });
    test('testMeridiem_zh_Hant_HK', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-HK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '上午');
      expect(meridiems[1].name, '下午');
    });
    test('testMeridiem_zh_Hant_TW', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hant-TW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '上午');
      expect(meridiems[1].name, '下午');
    });
    test('testMeridiem_en_GE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-GE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_CN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-CN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_MX', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-MX');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_en_TW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'en-TW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_mn_MN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'mn-MN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ү.ө.');
      expect(meridiems[1].name, 'ү.х.');
    });
    test('testMeridiem_es_CA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'es-CA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'a. m.');
      expect(meridiems[1].name, 'p. m.');
    });
    test('testMeridiem_af_ZA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'af-ZA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'vm.');
      expect(meridiems[1].name, 'nm.');
    });
    test('testMeridiem_am_ET', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'am-ET', meridiems: 'ethiopic');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      if (testPlatform == 'webOS') {
        expect(meridiems[0].name, 'ከሌሊቱ');
        expect(meridiems[0].start, '00:00');
        expect(meridiems[0].end, '05:59');

        expect(meridiems[1].name, 'ከጥዋቱ');
        expect(meridiems[1].start, '06:00');
        expect(meridiems[1].end, '06:00');

        expect(meridiems[2].name, 'ቀትር');
        expect(meridiems[2].start, '06:01');
        expect(meridiems[2].end, '11:59');

        expect(meridiems[3].name, 'ከሰዓት');
        expect(meridiems[3].start, '12:00');
        expect(meridiems[3].end, '17:59');

        expect(meridiems[4].name, 'ከምሽቱ');
        expect(meridiems[4].start, '18:00');
        expect(meridiems[4].end, '23:59');
      } else {
        expect(meridiems[0].name, 'ጥዋት');
        expect(meridiems[0].start, '00:00');
        expect(meridiems[0].end, '05:59');

        expect(meridiems[1].name, 'ቀትር');
        expect(meridiems[1].start, '06:00');
        expect(meridiems[1].end, '06:00');

        expect(meridiems[2].name, 'ከሰዓት');
        expect(meridiems[2].start, '06:01');
        expect(meridiems[2].end, '11:59');

        expect(meridiems[3].name, 'ከምሽቱ');
        expect(meridiems[3].start, '12:00');
        expect(meridiems[3].end, '17:59');

        expect(meridiems[4].name, 'ከሌሊቱ');
        expect(meridiems[4].start, '18:00');
        expect(meridiems[4].end, '23:59');
      }
    });
    test('testMeridiem_ha_Latn_NG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'ha-Latn-NG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'Safiya');
      expect(meridiems[1].name, 'Yamma');
    });
    test('testMeridiem_or_IN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'or-IN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_az_Latn_AZ', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'az-Latn-AZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_km_KH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'km-KH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_si_LK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'si-LK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'පෙ.ව.');
      expect(meridiems[1].name, 'ප.ව.');
    });
    test('testMeridiem_ar_AE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-AE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_BH', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-BH');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_DJ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-DJ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_DZ', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-DZ');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_JO', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-JO');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_KW', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-KW');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_LB', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-LB');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_LY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-LY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_MR', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-MR');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_OM', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-OM');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_QA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-QA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_SA', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-SA');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_SD', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-SD');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_SY', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-SY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_TN', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-TN');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ar_YE', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ar-YE');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'ص');
      expect(meridiems[1].name, 'م');
    });
    test('testMeridiem_ms_SG', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ms-SG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'PG');
      expect(meridiems[1].name, 'PTG');
    });
    test('testMeridiem_ur_PK', () {
      final ILibDateFmtOptions fmtOptions = ILibDateFmtOptions(locale: 'ur-PK');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, 'AM');
      expect(meridiems[1].name, 'PM');
    });
    test('testMeridiem_zh_Hans_SG', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-SG');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '上午');
      expect(meridiems[1].name, '下午');
    });
    test('testMeridiem_zh_Hans_MY', () {
      final ILibDateFmtOptions fmtOptions =
          ILibDateFmtOptions(locale: 'zh-Hans-MY');
      final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
      final List<MeridiemsInfo> meridiems = fmt.getMeridiemsRange();

      expect(meridiems[0].name, '上午');
      expect(meridiems[1].name, '下午');
    });
  });
}
