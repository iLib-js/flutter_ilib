import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [datefmt_Clock_test.dart] file.');
  late FlutterIlib flutterIlibPlugin;
  setUp(() {
    flutterIlibPlugin = FlutterIlib.instance;
  });
  group('getClock()', () {
    test('testClock_ar_EG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-EG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_IQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-IQ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_MA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-MA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_as_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'as-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_bg_BG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'bg-BG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_bn_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'bn-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_bs_Latn_BA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'bs-Latn-BA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_bs_Latn_ME', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'bs-Latn-ME');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_cs_CZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'cs-CZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_da_DK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'da-DK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_de_AT', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'de-AT');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_de_CH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'de-CH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_de_DE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'de-DE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_de_LU', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'de-LU');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_el_CY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'el-CY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_el_GR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'el-GR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_AM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-AM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_AU', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-AU');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_AZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-AZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_CA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-CA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_GB', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-GB');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_GH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-GH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_HK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-HK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_IE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-IE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_IS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-IS');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_JP', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-JP');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_KE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-KE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_KR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-KR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_LK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-LK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_MM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-MM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_MW', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-MW');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_MY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-MY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_NG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-NG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_NZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-NZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_PH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-PH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_PR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-PR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_SG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-SG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_US', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-US');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_UG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-UG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_ZA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-ZA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_ZM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-ZM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_AR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-AR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_BO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-BO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_CL', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-CL');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_CO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-CO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_DO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-DO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_EC', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-EC');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_ES', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-ES');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_es_GT', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-GT');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_HN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-HN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_MX', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-MX');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_NI', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-NI');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_PA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-PA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_PE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-PE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_PR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-PR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_PY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-PY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_SV', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-SV');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_US', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-US');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_UY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-UY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_VE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-VE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_et_EE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'et-EE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fa_AF', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fa-AF');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fa_IR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fa-IR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fi_FI', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fi-FI');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_BE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-BE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_FR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-FR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_LU', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-LU');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ga_IE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ga-IE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_gu_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'gu-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_he_IL', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'he-IL');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_hi_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'hi-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_hr_HR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'hr-HR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_hr_ME', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'hr-ME');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_hr_HU', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'hr-HU');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_id_ID', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'id-ID');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_is_IS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'is-IS');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_it_CH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'it-CH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_it_IT', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'it-IT');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ja_JP', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ja-JP');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_kk_KZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'kk-KZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_kn_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'kn-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ko_KR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ko-KR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ku_IQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ku-IQ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_lt_LT', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'lt-LT');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_lv_LV', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'lv-LV');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_mk_MK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'mk-MK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ml_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ml-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_mr_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'mr-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ms_MY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ms-MY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_nb_NO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'nb-NO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_nl_BE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'nl-BE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_nl_NL', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'nl-NL');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_pa_Guru_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pa-Guru-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_pl_PL', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pl-PL');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_pt_BR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pt-BR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_pt_PT', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pt-PT');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ro_RO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ro-RO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sr_Cyrl_RS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sr-Cyrl-RS');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sr_Latn_RS', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sr-Latn-RS');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ru_BY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ru-BY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ru_KG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ru-KG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ru_KZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ru-KZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ru_GE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ru-GE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ru_RU', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ru-RU');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ru_UA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ru-UA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sk_SK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sk-SK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sl_SI', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sl-SI');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sq_AL', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sq-AL');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_sq_ME', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sq-ME');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sv_FI', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sv-FI');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_sv_SE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'sv-SE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ta_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ta-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_te_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'te-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_th_TH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'th-TH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_tr_AM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'tr-AM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_tr_AZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'tr-AZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_tr_CY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'tr-CY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_tr_TR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'tr-TR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_uk_UA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'uk-UA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ur_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ur-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_uz_Latn_UZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'uz-Latn-UZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_vi_VN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'vi-VN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_zh_Hans_CN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'zh-Hans-CN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_zh_Hant_HK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'zh-Hant-HK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_zh_Hant_TW', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'zh-Hant-TW');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_GE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-GE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_CN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-CN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_en_MX', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-MX');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_TW', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-TW');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_mn_MN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'mn-MN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_es_CA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-CA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_af_ZA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'af-ZA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_am_ET', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'am-ET');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ha_Latn_NG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ha-Latn-NG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_or_IN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'or-IN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_az_Latn_AZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'az-Latn-AZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_km_KH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'km-KH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_si_LK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'si-LK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ar_AE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-AE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_BH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-BH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_DJ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-DJ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_DZ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-DZ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_JO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-JO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_KW', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-KW');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_LB', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-LB');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_LY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-LY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_MR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-MR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_OM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-OM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_QA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-QA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_SA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-SA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_SD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-SD');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_SY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-SY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_TN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-TN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_ar_YE', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ar-YE');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_ET', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-ET');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_GM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-GM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_LR', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-LR');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_PK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-PK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_SD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-SD');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_en_SL', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'en-SL');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_es_GQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-GQ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_es_PH', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'es-PH');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_fr_BF', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-BF');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_BJ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-BJ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CD', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CD');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CF', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CF');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CI', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CI');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_CM', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-CM');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_GQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-GQ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_GA', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-GA');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_GN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-GN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_ML', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-ML');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_RW', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-RW');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_SN', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-SN');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_fr_TG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'fr-TG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ms_SG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ms-SG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_pa_PK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pa-PK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_pt_AO', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pt-AO');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_pt_GQ', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pt-GQ');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_pt_CV', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'pt-CV');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 24);
      });
    });
    test('testClock_ur_PK', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'ur-PK');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_zh_Hans_SG', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'zh-Hans-SG');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
    test('testClock_zh_Hans_MY', () {
      flutterIlibPlugin.addListener(() {
        final ILibDateFmtOptions fmtOptions =
            ILibDateFmtOptions(locale: 'zh-Hans-MY');
        final ILibDateFmt fmt = ILibDateFmt(fmtOptions);
        expect(fmt.getClock(), 12);
      });
    });
  });
}
