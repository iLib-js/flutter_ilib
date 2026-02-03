import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_env.dart';

void main() {
  late String testPlatform;
  final List<String> length = <String>['full', 'long', 'medium', 'short'];
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [durfmt_test.dart] file.');
  setUpAll(() async {
    testPlatform = getTestPlatform();
    final ILibJS ilibjsinstance = ILibJS.instance;
    await ilibjsinstance.loadJS();
    ilibjsinstance.initILib();
    await ilibjsinstance.loadILibLocaleDataAll();
  });

  group('testDurFmt', () {
    test('testDurFmt_ar_EG', () {
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];

      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ar-EG',
          style: 'text',
          length: length[i],
          useNative: false,
        );
        final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      if (testPlatform == 'webOS') {
        expect(textformatted_1[0], '‏سنة، شهر، أسبوع، يوم');
        expect(textformatted_1[1], '‏سنة، شهر، أسبوع، يوم');
        expect(textformatted_1[2], '‏1 سنة وشهر و1 أسبوع و1 يوم');
        expect(textformatted_1[3], '‏1 سنة وشهر و1 أسبوع و1 يوم');

        expect(textformatted_2[0], '‏سنتان، شهران، أسبوعان، يومان');
        expect(textformatted_2[1], '‏سنتان، شهران، أسبوعان، يومان');
        expect(textformatted_2[2], '‏2 سنة وشهران و2 أسبوع و2 يوم');
        expect(textformatted_2[3], '‏2 سنة وشهران و2 أسبوع و2 يوم');

        expect(textformatted_3[0], '‏3 سنوات، 3 أشهر، 3 أسابيع، 3 أيام');
        expect(textformatted_3[1], '‏3 سنة، 3 شهر، 3 أسابيع، 3 أيام');
        expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أسبوع و3 يوم');
        expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أسبوع و3 يوم');

        expect(textformatted_11[0], '‏11 سنة، 11 شهرًا، 11 أسبوعًا، 11 يومًا');
        expect(textformatted_11[1], '‏11 سنة، 11 شهر، 11 أسبوعًا، 11 يومًا');
        expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أسبوع و11 يوم');
        expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أسبوع و11 يوم');

        expect(textformatted_100[0], '‏100 سنة، 100 شهر، 100 أسبوع، 100 يوم');
        expect(textformatted_100[1], '‏100 سنة، 100 شهر، 100 أسبوع، 100 يوم');
        expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أسبوع و100 يوم');
        expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أسبوع و100 يوم');

        expect(clockformatted_1[0], '‏ساعة، دقيقة، ثانية');
        expect(clockformatted_1[1], '‏1 س، 1 د، 1 ث');
        expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
        expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

        expect(clockformatted_2[0], '‏ساعتان، دقيقتان، ثانيتان');
        expect(clockformatted_2[1], '‏2 س، 2 د، 2 ث');
        expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
        expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

        expect(clockformatted_3[0], '‏3 ساعات، 3 دقائق، 3 ثوان');
        expect(clockformatted_3[1], '‏3 س، 3 د، 3 ث');
        expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
        expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

        expect(clockformatted_11[0], '‏11 ساعة، 11 دقيقة، 11 ثانية');
        expect(clockformatted_11[1], '‏11 س، 11 د، 11 ث');
        expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
        expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

        expect(clockformatted_100[0], '‏100 ساعة، 100 دقيقة، 100 ثانية');
        expect(clockformatted_100[1], '‏100 س، 100 د، 100 ث');
        expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
        expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
      } else {
        expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
        expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
        expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
        expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

        expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
        expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
        expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
        expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

        expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
        expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
        expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
        expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

        expect(
            textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
        expect(
            textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
        expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
        expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

        expect(
            textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
        expect(
            textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
        expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
        expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

        expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
        expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
        expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
        expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

        expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
        expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
        expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
        expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

        expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
        expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
        expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
        expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

        expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
        expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
        expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
        expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

        expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
        expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
        expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
        expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
      }
    });
    test('testDurFmt_ar_IQ', () {
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];

      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ar-IQ',
          style: 'text',
          length: length[i],
          useNative: false,
        );
        final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_MA', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];

      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'ar-US',
          style: 'text',
          length: length[i],
          useNative: false,
        );
        final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_as_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmtOptions fmtOptions = ILibDurationFmtOptions(
          locale: 'as-IN',
          style: 'text',
          length: length[i],
          useNative: false,
        );
        final ILibDurationFmt fmt = ILibDurationFmt(fmtOptions);

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 বছৰ, 1 মাহ, 1 সপ্তাহ, 1 দিন');
      expect(textformatted_1[1], '1 বছৰ, 1 মাহ, 1 সপ্তাহ, 1 দিন');
      expect(textformatted_1[2], '1 বছৰ 1 মাহ 1 সপ্তাহ 1 দিন');
      expect(textformatted_1[3], '1 বছৰ 1 মাহ 1 সপ্তাহ 1 দিন');

      expect(textformatted_2[0], '2 বছৰ, 2 মাহ, 2 সপ্তাহ, 2 দিন');
      expect(textformatted_2[1], '2 বছৰ, 2 মাহ, 2 সপ্তাহ, 2 দিন');
      expect(textformatted_2[2], '2 বছৰ 2 মাহ 2 সপ্তাহ 2 দিন');
      expect(textformatted_2[3], '2 বছৰ 2 মাহ 2 সপ্তাহ 2 দিন');

      expect(clockformatted_1[0], '1 ঘণ্টা, 1 মিনিট, 1 ছেকেণ্ড');
      expect(clockformatted_1[1], '1 ঘণ্টা, 1 মিনিট, 1 ছেকেণ্ড');
      expect(clockformatted_1[2], '1 ঘণ্টা 1 মিনিট 1 ছেকেণ্ড');
      expect(clockformatted_1[3], '1 ঘণ্টা 1 মিনিট 1 ছেকেণ্ড');

      expect(clockformatted_2[0], '2 ঘণ্টা, 2 মিনিট, 2 ছেকেণ্ড');
      expect(clockformatted_2[1], '2 ঘণ্টা, 2 মিনিট, 2 ছেকেণ্ড');
      expect(clockformatted_2[2], '2 ঘণ্টা 2 মিনিট 2 ছেকেণ্ড');
      expect(clockformatted_2[3], '2 ঘণ্টা 2 মিনিট 2 ছেকেণ্ড');
    });

    test('testDurFmt_bg_BG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
            locale: 'bg-BG',
            style: 'text',
            length: length[i],
          ),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 година, 1 месец, 1 седмица и 1 ден');
      expect(textformatted_1[1], '1 год., 1 мес., 1 седм., 1 д');
      expect(textformatted_1[2], '1 г., 1 мес., 1 седм., 1 д');
      expect(textformatted_1[3], '1 г., 1 мес., 1 седм., 1 д');

      expect(textformatted_2[0], '2 години, 2 месеца, 2 седмици и 2 дни');
      expect(textformatted_2[1], '2 год., 2 мес., 2 седм., 2 д');
      expect(textformatted_2[2], '2 г., 2 мес., 2 седм., 2 д');
      expect(textformatted_2[3], '2 г., 2 мес., 2 седм., 2 д');

      expect(clockformatted_1[0], '1 час, 1 минута и 1 секунда');
      expect(clockformatted_1[1], '1 ч, 1 мин, 1 сек');
      expect(clockformatted_1[2], '1 ч, 1 мин, 1 с');
      expect(clockformatted_1[3], '1 ч, 1 мин, 1 с');

      expect(clockformatted_2[0], '2 часа, 2 минути и 2 секунди');
      expect(clockformatted_2[1], '2 ч, 2 мин, 2 сек');
      expect(clockformatted_2[2], '2 ч, 2 мин, 2 с');
      expect(clockformatted_2[3], '2 ч, 2 мин, 2 с');
    });

    test('testDurFmt_bn_IN', () {
      // 1 18
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_18 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_18 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
            locale: 'bn-IN',
            style: 'text',
            length: length[i],
            useNative: false,
          ),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_18.add(fmt
            .format(ILibDateOptions(year: 18, month: 18, week: 18, day: 18)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_18
            .add(fmt.format(ILibDateOptions(hour: 18, minute: 18, second: 18)));
      }

      expect(textformatted_1[0], '1 বছর, 1 মাস, 1 সপ্তাহ, 1 দিন');
      expect(textformatted_1[1], '1 বছর, 1 মাস, 1 সপ্তাহ, 1 দিন');
      expect(textformatted_1[2], '1 বছর, 1 মাস, 1 সপ্তাহ, 1 দিন');
      expect(textformatted_1[3], '1 বছর, 1 মাস, 1 সপ্তাহ, 1 দিন');

      expect(textformatted_18[0], '18 বছর, 18 মাস, 18 সপ্তাহ, 18 দিন');
      expect(textformatted_18[1], '18 বছর, 18 মাস, 18 সপ্তাহ, 18 দিন');
      expect(textformatted_18[2], '18 বছর, 18 মাস, 18 সপ্তাহ, 18 দিন');
      expect(textformatted_18[3], '18 বছর, 18 মাস, 18 সপ্তাহ, 18 দিন');

      expect(clockformatted_1[0], '1 ঘন্টা, 1 মিনিট, 1 সেকেন্ড');
      expect(clockformatted_1[1], '1 ঘন্টা, 1 মিনিট, 1 সেকেন্ড');
      expect(clockformatted_1[2], '1 ঘঃ, 1 মিঃ, 1 সেঃ');
      expect(clockformatted_1[3], '1 ঘঃ, 1 মিঃ, 1 সেঃ');

      expect(clockformatted_18[0], '18 ঘন্টা, 18 মিনিট, 18 সেকেন্ড');
      expect(clockformatted_18[1], '18 ঘন্টা, 18 মিনিট, 18 সেকেন্ড');
      expect(clockformatted_18[2], '18 ঘঃ, 18 মিঃ, 18 সেঃ');
      expect(clockformatted_18[3], '18 ঘঃ, 18 মিঃ, 18 সেঃ');
    });

    test('testDurFmt_bs_Latn_BA', () {
      // 1 4 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_4 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_4 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
            locale: 'bs-Latn-BA',
            style: 'text',
            length: length[i],
          ),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_4.add(
            fmt.format(ILibDateOptions(year: 4, month: 4, week: 4, day: 4)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_4
            .add(fmt.format(ILibDateOptions(hour: 4, minute: 4, second: 4)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 godina, 1 mjesec, 1 sedmica i 1 dan');

      String result = (testPlatform == 'webOS')
          ? '1 god., 1 mj., 1 sed., 1 dan'
          : '1 god., 1 mj., 1 sedm., 1 dan';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '1 god., 1 mj., 1 sed., 1 d.'
          : '1 god., 1 mj., 1 sedm., 1 d.';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      expect(textformatted_4[0], '4 godine, 4 mjeseca, 4 sedmice i 4 dana');

      result = (testPlatform == 'webOS')
          ? '4 god., 4 mj., 4 sed., 4 dana'
          : '4 god., 4 mj., 4 sedm., 4 dana';
      expect(textformatted_4[1], result);

      result = (testPlatform == 'webOS')
          ? '4 god., 4 mj., 4 sed., 4 d.'
          : '4 god., 4 mj., 4 sedm., 4 d.';
      expect(textformatted_4[2], result);
      expect(textformatted_4[3], result);

      expect(textformatted_5[0], '5 godina, 5 mjeseci, 5 sedmica i 5 dana');

      result = (testPlatform == 'webOS')
          ? '5 god., 5 mj., 5 sed., 5 dana'
          : '5 god., 5 mj., 5 sedm., 5 dana';
      expect(textformatted_5[1], result);

      result = (testPlatform == 'webOS')
          ? '5 god., 5 mj., 5 sed., 5 d.'
          : '5 god., 5 mj., 5 sedm., 5 d.';
      expect(textformatted_5[2], result);
      expect(textformatted_5[3], result);

      expect(clockformatted_1[0], '1 sat, 1 minuta i 1 sekunda');

      result = (testPlatform == 'webOS')
          ? '1 h, 1 min., 1 s'
          : '1 h, 1 min., 1 sek.';
      expect(clockformatted_1[1], result);

      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h, 1 m, 1 s');

      expect(clockformatted_4[0], '4 sata, 4 minute i 4 sekunde');

      result = (testPlatform == 'webOS')
          ? '4 h, 4 min., 4 s'
          : '4 h, 4 min., 4 sek.';
      expect(clockformatted_4[1], result);

      expect(clockformatted_4[2], '4 h, 4 m, 4 s');
      expect(clockformatted_4[3], '4 h, 4 m, 4 s');

      expect(clockformatted_5[0], '5 sati, 5 minuta i 5 sekundi');

      result = (testPlatform == 'webOS')
          ? '5 h, 5 min., 5 s'
          : '5 h, 5 min., 5 sek.';
      expect(clockformatted_5[1], result);
      expect(clockformatted_5[2], '5 h, 5 m, 5 s');
      expect(clockformatted_5[3], '5 h, 5 m, 5 s');
    });

    test('testDurFmt_cs_CZ', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'cs-CZ', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 rok, 1 měsíc, 1 týden a 1 den');
      expect(textformatted_1[1], '1 rok, 1 měs., 1 týd., 1 den');
      expect(textformatted_1[2], '1 r., 1 m., 1 t., 1 d.');
      expect(textformatted_1[3], '1 r. 1 m. 1 t. 1 d.');

      expect(textformatted_2[0], '2 roky, 2 měsíce, 2 týdny a 2 dny');
      expect(textformatted_2[1], '2 roky, 2 měs., 2 týd., 2 dny');
      expect(textformatted_2[2], '2 r., 2 m., 2 t., 2 d.');
      expect(textformatted_2[3], '2 r. 2 m. 2 t. 2 d.');

      expect(textformatted_5[0], '5 let, 5 měsíců, 5 týdnů a 5 dnů');
      expect(textformatted_5[1], '5 let, 5 měs., 5 týd., 5 dnů');
      expect(textformatted_5[2], '5 l., 5 m., 5 t., 5 d.');
      expect(textformatted_5[3], '5 l. 5 m. 5 t. 5 d.');

      expect(clockformatted_1[0], '1 hodina, 1 minuta a 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h 1 m 1 s');

      expect(clockformatted_2[0], '2 hodiny, 2 minuty a 2 sekundy');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2 h, 2 m, 2 s');
      expect(clockformatted_2[3], '2 h 2 m 2 s');

      expect(clockformatted_5[0], '5 hodin, 5 minut a 5 sekund');
      expect(clockformatted_5[1], '5 h, 5 min, 5 s');
      expect(clockformatted_5[2], '5 h, 5 m, 5 s');
      expect(clockformatted_5[3], '5 h 5 m 5 s');
    });

    test('testDurFmt_da_DK', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'da-DK', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 år, 1 måned, 1 uge og 1 dag');
      expect(textformatted_1[1], '1 år, 1 md., 1 uge, 1 dag');
      expect(textformatted_1[2], '1 år, 1 m, 1 u, 1 d');
      expect(textformatted_1[3], '1 år, 1 m, 1 u, 1 d');

      expect(textformatted_2[0], '2 år, 2 måneder, 2 uger og 2 dage');
      expect(textformatted_2[1], '2 år, 2 mdr., 2 uger, 2 dage');
      expect(textformatted_2[2], '2 år, 2 m, 2 u, 2 d');
      expect(textformatted_2[3], '2 år, 2 m, 2 u, 2 d');

      expect(clockformatted_1[0], '1 time, 1 minut og 1 sekund');
      expect(clockformatted_1[1], '1 t., 1 min., 1 sek.');
      expect(clockformatted_1[2], '1 t, 1 m, 1 s');
      expect(clockformatted_1[3], '1 t, 1 m, 1 s');

      expect(clockformatted_2[0], '2 timer, 2 minutter og 2 sekunder');
      expect(clockformatted_2[1], '2 t., 2 min., 2 sek.');
      expect(clockformatted_2[2], '2 t, 2 m, 2 s');
      expect(clockformatted_2[3], '2 t, 2 m, 2 s');
    });

    test('testDurFmt_de_AT', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'de-AT', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 Jahr, 1 Monat, 1 Woche und 1 Tag');

      String result = (testPlatform == 'webOS')
          ? '1 J., 1 Mon., 1 Wo., 1 Tg.'
          : '1 J, 1 Mon., 1 Wo., 1 Tg.';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '1 J., 1 M., 1 W., 1 T.'
          : '1 J, 1 M, 1 W, 1 T';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      expect(textformatted_2[0], '2 Jahre, 2 Monate, 2 Wochen und 2 Tage');
      result = (testPlatform == 'webOS')
          ? '2 J., 2 Mon., 2 Wo., 2 Tg.'
          : '2 J, 2 Mon., 2 Wo., 2 Tg.';
      expect(textformatted_2[1], result);
      result = (testPlatform == 'webOS')
          ? '2 J., 2 M., 2 W., 2 T.'
          : '2 J, 2 M, 2 W, 2 T';
      expect(textformatted_2[2], result);
      expect(textformatted_2[3], result);

      expect(clockformatted_1[0], '1 Stunde, 1 Minute und 1 Sekunde');
      expect(clockformatted_1[1], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[2], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[3], '1 Std., 1 Min., 1 Sek.');

      expect(clockformatted_2[0], '2 Stunden, 2 Minuten und 2 Sekunden');
      expect(clockformatted_2[1], '2 Std., 2 Min., 2 Sek.');
      expect(clockformatted_2[2], '2 Std., 2 Min., 2 Sek.');
      expect(clockformatted_2[3], '2 Std., 2 Min., 2 Sek.');
    });

    test('testDurFmt_de_CH', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'de-CH', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 Jahr, 1 Monat, 1 Woche und 1 Tag');

      String result = (testPlatform == 'webOS')
          ? '1 J., 1 Mon., 1 Wo., 1 Tg.'
          : '1 J, 1 Mon., 1 Wo., 1 Tg.';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '1 J., 1 M., 1 W., 1 T.'
          : '1 J, 1 M, 1 W, 1 T';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      expect(textformatted_2[0], '2 Jahre, 2 Monate, 2 Wochen und 2 Tage');
      result = (testPlatform == 'webOS')
          ? '2 J., 2 Mon., 2 Wo., 2 Tg.'
          : '2 J, 2 Mon., 2 Wo., 2 Tg.';
      expect(textformatted_2[1], result);
      result = (testPlatform == 'webOS')
          ? '2 J., 2 M., 2 W., 2 T.'
          : '2 J, 2 M, 2 W, 2 T';
      expect(textformatted_2[2], result);
      expect(textformatted_2[3], result);

      expect(clockformatted_1[0], '1 Stunde, 1 Minute und 1 Sekunde');
      expect(clockformatted_1[1], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[2], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[3], '1 Std., 1 Min., 1 Sek.');

      expect(clockformatted_2[0], '2 Stunden, 2 Minuten und 2 Sekunden');
      expect(clockformatted_2[1], '2 Std., 2 Min., 2 Sek.');
      expect(clockformatted_2[2], '2 Std., 2 Min., 2 Sek.');
      expect(clockformatted_2[3], '2 Std., 2 Min., 2 Sek.');
    });
    test('testDurFmt_de_DE', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'de-DE', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 Jahr, 1 Monat, 1 Woche und 1 Tag');

      String result = (testPlatform == 'webOS')
          ? '1 J., 1 Mon., 1 Wo., 1 Tg.'
          : '1 J, 1 Mon., 1 Wo., 1 Tg.';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '1 J., 1 M., 1 W., 1 T.'
          : '1 J, 1 M, 1 W, 1 T';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      expect(textformatted_16[0], '16 Jahre, 16 Monate, 16 Wochen und 16 Tage');
      result = (testPlatform == 'webOS')
          ? '16 J., 16 Mon., 16 Wo., 16 Tg.'
          : '16 J, 16 Mon., 16 Wo., 16 Tg.';
      expect(textformatted_16[1], result);
      result = (testPlatform == 'webOS')
          ? '16 J., 16 M., 16 W., 16 T.'
          : '16 J, 16 M, 16 W, 16 T';
      expect(textformatted_16[2], result);
      expect(textformatted_16[3], result);

      expect(clockformatted_1[0], '1 Stunde, 1 Minute und 1 Sekunde');
      expect(clockformatted_1[1], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[2], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[3], '1 Std., 1 Min., 1 Sek.');

      expect(clockformatted_16[0], '16 Stunden, 16 Minuten und 16 Sekunden');
      expect(clockformatted_16[1], '16 Std., 16 Min., 16 Sek.');
      expect(clockformatted_16[2], '16 Std., 16 Min., 16 Sek.');
      expect(clockformatted_16[3], '16 Std., 16 Min., 16 Sek.');
    });
    test('testDurFmt_de_LU', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'de-LU', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 Jahr, 1 Monat, 1 Woche und 1 Tag');

      String result = (testPlatform == 'webOS')
          ? '1 J., 1 Mon., 1 Wo., 1 Tg.'
          : '1 J, 1 Mon., 1 Wo., 1 Tg.';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '1 J., 1 M., 1 W., 1 T.'
          : '1 J, 1 M, 1 W, 1 T';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      expect(textformatted_17[0], '17 Jahre, 17 Monate, 17 Wochen und 17 Tage');
      result = (testPlatform == 'webOS')
          ? '17 J., 17 Mon., 17 Wo., 17 Tg.'
          : '17 J, 17 Mon., 17 Wo., 17 Tg.';
      expect(textformatted_17[1], result);
      result = (testPlatform == 'webOS')
          ? '17 J., 17 M., 17 W., 17 T.'
          : '17 J, 17 M, 17 W, 17 T';
      expect(textformatted_17[2], result);
      expect(textformatted_17[3], result);

      expect(clockformatted_1[0], '1 Stunde, 1 Minute und 1 Sekunde');
      expect(clockformatted_1[1], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[2], '1 Std., 1 Min., 1 Sek.');
      expect(clockformatted_1[3], '1 Std., 1 Min., 1 Sek.');

      expect(clockformatted_17[0], '17 Stunden, 17 Minuten und 17 Sekunden');
      expect(clockformatted_17[1], '17 Std., 17 Min., 17 Sek.');
      expect(clockformatted_17[2], '17 Std., 17 Min., 17 Sek.');
      expect(clockformatted_17[3], '17 Std., 17 Min., 17 Sek.');
    });
    test('testDurFmt_el_CY', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'el-CY', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 έτος, 1 μήνας, 1 εβδομάδα, 1 ημέρα');

      String result = (testPlatform == 'webOS')
          ? '1 έτ., 1 μήν., 1 εβδ., 1 ημ.'
          : '1 έτ., 1 μήν., 1 εβδ., 1 ημέρα';
      expect(textformatted_1[1], result);

      expect(textformatted_1[2], '1 έ, 1 μ, 1 ε, 1 η');
      expect(textformatted_1[3], '1 έ 1 μ 1 ε 1 η');

      expect(textformatted_2[0], '2 έτη, 2 μήνες, 2 εβδομάδες, 2 ημέρες');

      result = (testPlatform == 'webOS')
          ? '2 έτ., 2 μήν., 2 εβδ., 2 ημ.'
          : '2 έτ., 2 μήν., 2 εβδ., 2 ημέρες';
      expect(textformatted_2[1], result);

      expect(textformatted_2[2], '2 έ, 2 μ, 2 ε, 2 η');
      expect(textformatted_2[3], '2 έ 2 μ 2 ε 2 η');

      expect(clockformatted_1[0], '1 ώρα, 1 λεπτό, 1 δευτερόλεπτο');
      result = (testPlatform == 'webOS')
          ? '1 ώρα, 1 λεπ., 1 δευτ.'
          : '1 ώ., 1 λ., 1 δευτ.';
      expect(clockformatted_1[1], result);
      expect(clockformatted_1[2], '1 ώ, 1 λ, 1 δ');
      expect(clockformatted_1[3], '1 ώ 1 λ 1 δ');

      expect(clockformatted_2[0], '2 ώρες, 2 λεπτά, 2 δευτερόλεπτα');
      result = (testPlatform == 'webOS')
          ? '2 ώρ., 2 λεπ., 2 δευτ.'
          : '2 ώ., 2 λ., 2 δευτ.';
      expect(clockformatted_2[1], result);
      expect(clockformatted_2[2], '2 ώ, 2 λ, 2 δ');
      expect(clockformatted_2[3], '2 ώ 2 λ 2 δ');
    });
    test('testDurFmt_el_GR', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(
          ILibDurationFmtOptions(
              locale: 'el-GR', style: 'text', length: length[i]),
        );

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 έτος, 1 μήνας, 1 εβδομάδα, 1 ημέρα');

      String result = (testPlatform == 'webOS')
          ? '1 έτ., 1 μήν., 1 εβδ., 1 ημ.'
          : '1 έτ., 1 μήν., 1 εβδ., 1 ημέρα';
      expect(textformatted_1[1], result);

      expect(textformatted_1[2], '1 έ, 1 μ, 1 ε, 1 η');
      expect(textformatted_1[3], '1 έ 1 μ 1 ε 1 η');

      expect(textformatted_17[0], '17 έτη, 17 μήνες, 17 εβδομάδες, 17 ημέρες');

      result = (testPlatform == 'webOS')
          ? '17 έτ., 17 μήν., 17 εβδ., 17 ημ.'
          : '17 έτ., 17 μήν., 17 εβδ., 17 ημέρες';
      expect(textformatted_17[1], result);

      expect(textformatted_17[2], '17 έ, 17 μ, 17 ε, 17 η');
      expect(textformatted_17[3], '17 έ 17 μ 17 ε 17 η');

      expect(clockformatted_1[0], '1 ώρα, 1 λεπτό, 1 δευτερόλεπτο');
      result = (testPlatform == 'webOS')
          ? '1 ώρα, 1 λεπ., 1 δευτ.'
          : '1 ώ., 1 λ., 1 δευτ.';
      expect(clockformatted_1[1], result);
      expect(clockformatted_1[2], '1 ώ, 1 λ, 1 δ');
      expect(clockformatted_1[3], '1 ώ 1 λ 1 δ');

      expect(clockformatted_17[0], '17 ώρες, 17 λεπτά, 17 δευτερόλεπτα');
      result = (testPlatform == 'webOS')
          ? '17 ώρ., 17 λεπ., 17 δευτ.'
          : '17 ώ., 17 λ., 17 δευτ.';
      expect(clockformatted_17[1], result);
      expect(clockformatted_17[2], '17 ώ, 17 λ, 17 δ');
      expect(clockformatted_17[3], '17 ώ 17 λ 17 δ');
    });

    test('testDurFmt_en_AM', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-AM', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_AU', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-AU', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_16[0], '16 years, 16 months, 16 weeks, 16 days');
      expect(textformatted_16[1], '16 yrs, 16 mths, 16 wks, 16 days');
      expect(textformatted_16[2], '16y, 16m, 16w, 16d');
      expect(textformatted_16[3], '16y 16m 16w 16d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_16[0], '16 hours, 16 minutes, 16 seconds');
      expect(clockformatted_16[1], '16 hrs, 16 mins, 16 secs');
      expect(clockformatted_16[3], '16h 16m 16s');
      expect(clockformatted_16[3], '16h 16m 16s');
    });
    test('testDurFmt_en_AZ', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-AZ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_17[0], '17 years, 17 months, 17 weeks, 17 days');
      expect(textformatted_17[1], '17 yrs, 17 mths, 17 wks, 17 days');
      expect(textformatted_17[2], '17y, 17m, 17w, 17d');
      expect(textformatted_17[3], '17y 17m 17w 17d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_17[0], '17 hours, 17 minutes, 17 seconds');
      expect(clockformatted_17[1], '17 hr, 17 min, 17 sec');
      expect(clockformatted_17[2], '17h, 17m, 17s');
      expect(clockformatted_17[3], '17h 17m 17s');
    });
    test('testDurFmt_en_CA', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-CA', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mo, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mos, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_en_GB', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-GB', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_GH', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-GH', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_HK', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-HK', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_IE', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-IE', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_IS', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-IS', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_JP', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-JP', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_KE', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-KE', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_KR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-KR', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_LK', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-LK', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_MM', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-MM', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_MW', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-MW', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_MY', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-MY', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_NG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-NG', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_NZ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-NZ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_PH', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-PH', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_PR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-PR', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_SG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-SG', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_US', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-US', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_UG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-UG', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_ZA', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-ZA', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_ZM', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-ZM', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hrs, 2 mins, 2 secs');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });

    test('testDurFmt_es_AR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-AR', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 año, 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 años, 2 mm., 2 sems., 2 dd.');
      expect(textformatted_2[2], '2a., 2mm., 2sems., 2dd.');
      expect(textformatted_2[3], '2a. 2mm. 2sems. 2dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 seg.');
      expect(clockformatted_1[2], '1h, 1min, 1seg.');
      expect(clockformatted_1[3], '1h 1min 1seg.');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 seg.');
      expect(clockformatted_2[2], '2h, 2min, 2seg.');
      expect(clockformatted_2[3], '2h 2min 2seg.');
    });
    test('testDurFmt_es_BO', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-BO', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_16[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_16[1], '2 aa., 2 mm., 2 sems., 2 dd.');
      expect(textformatted_16[2], '2aa., 2mm., 2sems., 2dd.');
      expect(textformatted_16[3], '2aa. 2mm. 2sems. 2dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_16[1], '2 h, 2 min, 2 s');
      expect(clockformatted_16[2], '2h, 2min, 2s');
      expect(clockformatted_16[3], '2h 2min 2s');
    });
    test('testDurFmt_es_CL', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-CL', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 aa., 2 mm., 2 sems., 2 dd.');
      expect(textformatted_2[2], '2aa., 2mm., 2sems., 2dd.');
      expect(textformatted_2[3], '2aa. 2mm. 2sems. 2dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_es_CO', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-CO', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');

      String result = (testPlatform == 'webOS')
          ? '1 año, 1 mes, 1 sem., 1 día'
          : '1 a., 1 mes, 1 sem., 1 día';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '1 año, 1 mes, 1 sem., 1 día'
          : '1 a., 1 mes, 1 sem., 1 día';
      expect(textformatted_1[2], result);

      result = (testPlatform == 'webOS')
          ? '1 año 1 mes 1 sem. 1 día'
          : '1 a. 1 mes 1 sem. 1 día';
      expect(textformatted_1[3], result);

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      result = (testPlatform == 'webOS')
          ? '16 años, 16 meses, 16 sems., 16 días'
          : '16 a., 16 meses, 16 sems., 16 días';
      expect(textformatted_16[1], result);

      result = (testPlatform == 'webOS')
          ? '16 años, 16 meses, 16 sems., 16 días'
          : '16 a., 16 meses, 16 sems., 16 días';
      expect(textformatted_16[2], result);
      result = (testPlatform == 'webOS')
          ? '16 años 16 meses 16 sems. 16 días'
          : '16 a. 16 meses 16 sems. 16 días';
      expect(textformatted_16[3], result);

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');

      result =
          (testPlatform == 'webOS') ? '1 hr, 1 min, 1 seg.' : '1 h, 1 min, 1 s';
      expect(clockformatted_1[1], result);

      result =
          (testPlatform == 'webOS') ? '1 hr, 1 min, 1 seg.' : '1 h, 1 min, 1 s';
      expect(clockformatted_1[2], result);

      result = (testPlatform == 'webOS') ? '1 hr 1 min 1 seg.' : '1 h 1 min 1 s';
      expect(clockformatted_1[3], result);

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      result = (testPlatform == 'webOS')
          ? '16 hrs, 16 min, 16 seg.'
          : '16 h, 16 min, 16 s';
      expect(clockformatted_16[1], result);

      result = (testPlatform == 'webOS')
          ? '16 hrs, 16 min, 16 seg.'
          : '16 h, 16 min, 16 s';
      expect(clockformatted_16[2], result);

      result =
          (testPlatform == 'webOS') ? '16 hrs 16 min 16 seg.' : '16 h 16 min 16 s';
      expect(clockformatted_16[3], result);
    });
    test('testDurFmt_es_DO', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-DO', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 aa., 2 mm., 2 sems., 2 dd.');
      expect(textformatted_2[2], '2aa., 2m., 2sems., 2d.');
      expect(textformatted_2[3], '2aa. 2m. 2sems. 2d.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 seg.');

      String result =
          (testPlatform == 'webOS') ? '1h, 1min, 1seg.' : '1h, 1min, 1s';
      expect(clockformatted_1[2], result);

      result = (testPlatform == 'webOS') ? '1h 1min 1seg.' : '1h 1min 1s';
      expect(clockformatted_1[3], result);

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 seg.');

      result = (testPlatform == 'webOS') ? '2h, 2min, 2seg.' : '2h, 2min, 2s';
      expect(clockformatted_2[2], result);

      result = (testPlatform == 'webOS') ? '2h 2min 2seg.' : '2h 2min 2s';
      expect(clockformatted_2[3], result);
    });
    test('testDurFmt_es_EC', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-EC', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      expect(textformatted_16[1], '16 aa., 16 mm., 16 sems., 16 dd.');
      expect(textformatted_16[2], '16aa., 16mm., 16sems., 16dd.');
      expect(textformatted_16[3], '16aa. 16mm. 16sems. 16dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_es_ES', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-ES', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a, 1 m., 1 sem., 1 d');
      expect(textformatted_1[2], '1a, 1m, 1sem, 1d');
      expect(textformatted_1[3], '1a 1m 1sem 1d');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 a, 2 m., 2 sem., 2 d');
      expect(textformatted_2[2], '2a, 2m, 2sem, 2d');
      expect(textformatted_2[3], '2a 2m 2sem 2d');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_es_GT', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-GT', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      expect(textformatted_16[1], '16 aa., 16 mm., 16 sems., 16 dd.');
      expect(textformatted_16[2], '16aa., 16mm., 16sems., 16dd.');
      expect(textformatted_16[3], '16aa. 16mm. 16sems. 16dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_es_HN', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-HN', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_17[0], '17 años, 17 meses, 17 semanas y 17 días');
      expect(textformatted_17[1], '17 aa., 17 mm., 17 sems., 17 dd.');
      expect(textformatted_17[2], '17aa., 17mm., 17sems., 17dd.');
      expect(textformatted_17[3], '17aa. 17mm. 17sems. 17dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 horas, 17 minutos y 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_es_MX', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-MX', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a, 1 m., 1 sem., 1 día');
      expect(textformatted_1[2], '1a, 1m, 1sem, 1d');
      expect(textformatted_1[3], '1a 1m 1sem 1d');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 a, 2 m, 2 sem, 2 días');
      expect(textformatted_2[2], '2a, 2m, 2sem, 2d');
      expect(textformatted_2[3], '2a 2m 2sem 2d');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_es_NI', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-NI', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      expect(textformatted_16[1], '16 aa., 16 mm., 16 sems., 16 dd.');
      expect(textformatted_16[2], '16aa., 16mm., 16sems., 16dd.');
      expect(textformatted_16[3], '16aa. 16mm. 16sems. 16dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_es_PA', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-PA', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_17[0], '17 años, 17 meses, 17 semanas y 17 días');
      expect(textformatted_17[1], '17 aa., 17 mm., 17 sems., 17 dd.');
      expect(textformatted_17[2], '17aa., 17mm., 17sems., 17dd.');
      expect(textformatted_17[3], '17aa. 17mm. 17sems. 17dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 horas, 17 minutos y 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_es_PE', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-PE', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      expect(textformatted_16[1], '16 aa., 16 mm., 16 sems., 16 dd.');
      expect(textformatted_16[2], '16aa., 16mm., 16sems., 16dd.');
      expect(textformatted_16[3], '16aa. 16mm. 16sems. 16dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_es_PR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-PR', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 aa., 2 mm., 2 sems., 2 dd.');
      expect(textformatted_2[2], '2aa., 2mm., 2sems., 2dd.');
      expect(textformatted_2[3], '2aa. 2mm. 2sems. 2dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_es_PY', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-PY', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 año, 1 mes, 1 sem., 1 día');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 años, 2 meses, 2 sems., 2 días');
      expect(textformatted_2[2], '2aa., 2mm., 2sems., 2dd.');
      expect(textformatted_2[3], '2aa. 2mm. 2sems. 2dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 seg.');

      String result =
          (testPlatform == 'webOS') ? '1h, 1min, 1seg.' : '1h, 1min, 1s';
      expect(clockformatted_1[2], result);

      result = (testPlatform == 'webOS') ? '1h 1min 1seg.' : '1h 1min 1s';
      expect(clockformatted_1[3], result);

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 seg.');

      result = (testPlatform == 'webOS') ? '2h, 2min, 2seg.' : '2h, 2min, 2s';
      expect(clockformatted_2[2], result);

      result = (testPlatform == 'webOS') ? '2h 2min 2seg.' : '2h 2min 2s';
      expect(clockformatted_2[3], result);
    });
    test('testDurFmt_es_SV', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-SV', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_17[0], '17 años, 17 meses, 17 semanas y 17 días');
      expect(textformatted_17[1], '17 aa., 17 mm., 17 sems., 17 dd.');
      expect(textformatted_17[2], '17aa., 17mm., 17sems., 17dd.');
      expect(textformatted_17[3], '17aa. 17mm. 17sems. 17dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 horas, 17 minutos y 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_es_US', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-US', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a, 1 m, 1 sem., 1 día');
      expect(textformatted_1[2], '1a, 1m, 1sem., 1d');
      expect(textformatted_1[3], '1a 1m 1sem. 1d');

      expect(textformatted_17[0], '17 años, 17 meses, 17 semanas y 17 días');
      expect(textformatted_17[1], '17 aa., 17 mm., 17 sems., 17 días');
      expect(textformatted_17[2], '17a, 17m, 17sems., 17d');
      expect(textformatted_17[3], '17a 17m 17sems. 17d');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 horas, 17 minutos y 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_es_UY', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-UY', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 aa., 2 mm., 2 sems., 2 dd.');
      expect(textformatted_2[2], '2aa., 2mm., 2sems., 2dd.');
      expect(textformatted_2[3], '2aa. 2mm. 2sems. 2dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_es_VE', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-VE', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a., 1 m., 1 sem., 1 d.');
      expect(textformatted_1[2], '1a., 1m., 1sem., 1d.');
      expect(textformatted_1[3], '1a. 1m. 1sem. 1d.');

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      expect(textformatted_16[1], '16 aa., 16 mm., 16 sems., 16 dd.');
      expect(textformatted_16[2], '16aa., 16mm., 16sems., 16dd.');
      expect(textformatted_16[3], '16aa. 16mm. 16sems. 16dd.');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });

    test('testDurFmt_et_EE', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'et-EE', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 aasta, 1 kuu, 1 nädal, 1 ööpäev');
      expect(textformatted_1[1], '1 a, 1 kuu, 1 näd, 1 päev');
      expect(textformatted_1[2], '1 a, 1 k, 1 n, 1 p');
      expect(textformatted_1[3], '1 a 1 k 1 n 1 p');

      expect(textformatted_2[0], '2 aastat, 2 kuud, 2 nädalat, 2 ööpäeva');
      expect(textformatted_2[1], '2 a, 2 kuud, 2 näd, 2 päeva');
      expect(textformatted_2[2], '2 a, 2 k, 2 n, 2 p');
      expect(textformatted_2[3], '2 a 2 k 2 n 2 p');

      expect(clockformatted_1[0], '1 tund, 1 minut, 1 sekund');
      expect(clockformatted_1[1], '1 t, 1 min, 1 sek');
      expect(clockformatted_1[2], '1 t, 1 min, 1 s');
      expect(clockformatted_1[3], '1 t 1 min 1 s');

      expect(clockformatted_2[0], '2 tundi, 2 minutit, 2 sekundit');
      expect(clockformatted_2[1], '2 t, 2 min, 2 sek');
      expect(clockformatted_2[2], '2 t, 2 min, 2 s');
      expect(clockformatted_2[3], '2 t 2 min 2 s');
    });
    test('testDurFmt_fa_AF', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fa-AF',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      String result = (testPlatform == 'webOS')
          ? '‏1 سال و 1 ماه و 1 هفته و 1 روز'
          : '‏1 سال،‏ 1 ماه،‏ 1 هفته، و 1 روز';
      expect(textformatted_1[0], result);

      result = (testPlatform == 'webOS')
          ? '‏1 سال و 1 ماه و 1 هفته و 1 روز'
          : '‏1 سال،‏ 1 ماه،‏ 1 هفته،‏ 1 روز';
      expect(textformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '‏1 سال و 1 ماه و 1 هفته و 1 روز'
          : '‏1 سال 1 ماه 1 هفته 1 روز';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      result = (testPlatform == 'webOS')
          ? '‏2 سال و 2 ماه و 2 هفته و 2 روز'
          : '‏2 سال،‏ 2 ماه،‏ 2 هفته، و 2 روز';
      expect(textformatted_2[0], result);

      result = (testPlatform == 'webOS')
          ? '‏2 سال و 2 ماه و 2 هفته و 2 روز'
          : '‏2 سال،‏ 2 ماه،‏ 2 هفته،‏ 2 روز';
      expect(textformatted_2[1], result);

      result = (testPlatform == 'webOS')
          ? '‏2 سال و 2 ماه و 2 هفته و 2 روز'
          : '‏2 سال 2 ماه 2 هفته 2 روز';
      expect(textformatted_2[2], result);
      expect(textformatted_2[3], result);

      result = (testPlatform == 'webOS')
          ? '‏1 ساعت و 1 دقیقه و 1 ثانیه'
          : '‏1 ساعت،‏ 1 دقیقه، و 1 ثانیه';
      expect(clockformatted_1[0], result);

      result = (testPlatform == 'webOS')
          ? '‏1 ساعت و 1 دقیقه و 1 ثانیه'
          : '‏1 ساعت،‏ 1 دقیقه،‏ 1 ثانیه';
      expect(clockformatted_1[1], result);

      result = (testPlatform == 'webOS')
          ? '‏1 ساعت و 1 دقیقه و 1 ثانیه'
          : '‏1 ساعت 1 دقیقه 1 ث';
      expect(clockformatted_1[2], result);
      expect(clockformatted_1[3], result);

      result = (testPlatform == 'webOS')
          ? '‏2 ساعت و 2 دقیقه و 2 ثانیه'
          : '‏2 ساعت،‏ 2 دقیقه، و 2 ثانیه';
      expect(clockformatted_2[0], result);

      result = (testPlatform == 'webOS')
          ? '‏2 ساعت و 2 دقیقه و 2 ثانیه'
          : '‏2 ساعت،‏ 2 دقیقه،‏ 2 ثانیه';
      expect(clockformatted_2[1], result);

      result = (testPlatform == 'webOS')
          ? '‏2 ساعت و 2 دقیقه و 2 ثانیه'
          : '‏2 ساعت 2 دقیقه 2 ث';
      expect(clockformatted_2[2], result);
      expect(clockformatted_2[3], result);
    });
    test('testDurFmt_fa_IR', () {
      // 1 18
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_18 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_18 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fa-IR',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_18.add(fmt
            .format(ILibDateOptions(year: 18, month: 18, week: 18, day: 18)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_18
            .add(fmt.format(ILibDateOptions(hour: 18, minute: 18, second: 18)));
      }

      String result = (testPlatform == 'webOS')
          ? '‏1 سال و 1 ماه و 1 هفته و 1 روز'
          : '‏1 سال،‏ 1 ماه،‏ 1 هفته، و 1 روز';
      expect(textformatted_1[0], result);
      result = (testPlatform == 'webOS')
          ? '‏1 سال و 1 ماه و 1 هفته و 1 روز'
          : '‏1 سال،‏ 1 ماه،‏ 1 هفته،‏ 1 روز';
      expect(textformatted_1[1], result);
      result = (testPlatform == 'webOS')
          ? '‏1 سال و 1 ماه و 1 هفته و 1 روز'
          : '‏1 سال 1 ماه 1 هفته 1 روز';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      result = (testPlatform == 'webOS')
          ? '‏18 سال و 18 ماه و 18 هفته و 18 روز'
          : '‏18 سال،‏ 18 ماه،‏ 18 هفته، و 18 روز';
      expect(textformatted_18[0], result);
      result = (testPlatform == 'webOS')
          ? '‏18 سال و 18 ماه و 18 هفته و 18 روز'
          : '‏18 سال،‏ 18 ماه،‏ 18 هفته،‏ 18 روز';
      expect(textformatted_18[1], result);
      result = (testPlatform == 'webOS')
          ? '‏18 سال و 18 ماه و 18 هفته و 18 روز'
          : '‏18 سال 18 ماه 18 هفته 18 روز';
      expect(textformatted_18[2], result);
      expect(textformatted_18[3], result);

      result = (testPlatform == 'webOS')
          ? '‏1 ساعت و 1 دقیقه و 1 ثانیه'
          : '‏1 ساعت،‏ 1 دقیقه، و 1 ثانیه';
      expect(clockformatted_1[0], result);
      result = (testPlatform == 'webOS')
          ? '‏1 ساعت و 1 دقیقه و 1 ثانیه'
          : '‏1 ساعت،‏ 1 دقیقه،‏ 1 ثانیه';
      expect(clockformatted_1[1], result);
      result = (testPlatform == 'webOS')
          ? '‏1 ساعت و 1 دقیقه و 1 ثانیه'
          : '‏1 ساعت 1 دقیقه 1 ث';
      expect(clockformatted_1[2], result);
      expect(clockformatted_1[3], result);

      result = (testPlatform == 'webOS')
          ? '‏18 ساعت و 18 دقیقه و 18 ثانیه'
          : '‏18 ساعت،‏ 18 دقیقه، و 18 ثانیه';
      expect(clockformatted_18[0], result);
      result = (testPlatform == 'webOS')
          ? '‏18 ساعت و 18 دقیقه و 18 ثانیه'
          : '‏18 ساعت،‏ 18 دقیقه،‏ 18 ثانیه';
      expect(clockformatted_18[1], result);
      result = (testPlatform == 'webOS')
          ? '‏18 ساعت و 18 دقیقه و 18 ثانیه'
          : '‏18 ساعت 18 دقیقه 18 ث';
      expect(clockformatted_18[2], result);
      expect(clockformatted_18[3], result);
    });
    test('testDurFmt_fi_FI', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fi-FI', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 vuosi, 1 kuukausi, 1 viikko ja 1 päivä');
      expect(textformatted_1[1], '1 v, 1 kk, 1 vk, 1 pv');
      expect(textformatted_1[2], '1v, 1kk, 1vk, 1pv');
      expect(textformatted_1[3], '1v 1kk 1vk 1pv');

      expect(textformatted_17[0],
          '17 vuotta, 17 kuukautta, 17 viikkoa ja 17 päivää');
      expect(textformatted_17[1], '17 v, 17 kk, 17 vk, 17 pv');
      expect(textformatted_17[2], '17v, 17kk, 17vk, 17pv');
      expect(textformatted_17[3], '17v 17kk 17vk 17pv');

      expect(clockformatted_1[0], '1 tunti, 1 minuutti ja 1 sekunti');
      expect(clockformatted_1[1], '1 t, 1 min, 1 s');
      expect(clockformatted_1[2], '1t, 1min, 1s');
      expect(clockformatted_1[3], '1t 1min 1s');

      expect(clockformatted_17[0], '17 tuntia, 17 minuuttia ja 17 sekuntia');
      expect(clockformatted_17[1], '17 t, 17 min, 17 s');
      expect(clockformatted_17[2], '17t, 17min, 17s');
      expect(clockformatted_17[3], '17t 17min 17s');
    });
    test('testDurFmt_fr_BE', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-BE', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_fr_CA', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CA', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m, 1sem, 1j');
      expect(textformatted_1[3], '1a 1m 1sem 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m, 17sem, 17j');
      expect(textformatted_17[3], '17a 17m 17sem 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17m, 17s');
      expect(clockformatted_17[3], '17h 17m 17s');
    });
    test('testDurFmt_fr_CH', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CH', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m., 17sem., 17j');
      expect(textformatted_17[3], '17a 17m. 17sem. 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_FR', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-FR', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m., 17sem., 17j');
      expect(textformatted_17[3], '17a 17m. 17sem. 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_LU', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-LU', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });

    test('testDurFmt_ga_IE', () {
      // 1 2 3 7 11
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_7 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_7 = <String>[];
      final List<String> clockformatted_11 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ga-IE', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_7.add(
            fmt.format(ILibDateOptions(year: 7, month: 7, week: 7, day: 7)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_7
            .add(fmt.format(ILibDateOptions(hour: 7, minute: 7, second: 7)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
      }

      expect(textformatted_1[0], '1 bhliain, 1 mhí, 1 scht agus 1 lá');
      expect(textformatted_1[1], '1 bl, 1 mí, 1 scht, 1 lá');
      expect(textformatted_1[2], '1 bl, 1m, 1 scht, 1 lá');
      expect(textformatted_1[3], '1 bl 1m 1 scht 1 lá');

      expect(textformatted_2[0], '2 bhl, 2 mhí, 2 scht agus 2 lá');
      expect(textformatted_2[1], '2 bl, 2 mí, 2 scht, 2 lá');
      expect(textformatted_2[2], '2 bl, 2m, 2 scht, 2 lá');
      expect(textformatted_2[3], '2 bl 2m 2 scht 2 lá');

      expect(textformatted_3[0], '3 bl, 3 mhí, 3 scht agus 3 lá');
      expect(textformatted_3[1], '3 bl, 3 mí, 3 scht, 3 lá');
      expect(textformatted_3[2], '3 bl, 3m, 3 scht, 3 lá');
      expect(textformatted_3[3], '3 bl 3m 3 scht 3 lá');

      expect(textformatted_7[0], '7 mbl, 7 mí, 7 scht agus 7 lá');
      expect(textformatted_7[1], '7 bl, 7 mí, 7 scht, 7 lá');
      expect(textformatted_7[2], '7 bl, 7m, 7 scht, 7 lá');
      expect(textformatted_7[3], '7 bl 7m 7 scht 7 lá');

      expect(textformatted_11[0], '11 bl, 11 mí, 11 scht agus 11 lá');
      expect(textformatted_11[1], '11 bl, 11 m, 11 scht, 11 lá');
      expect(textformatted_11[2], '11 bl, 11 m, 11 scht, 11 lá');
      expect(textformatted_11[3], '11 bl 11 m 11 scht 11 lá');

      expect(clockformatted_1[0], '1 u, 1 nóim agus 1 soic');
      expect(clockformatted_1[1], '1 u, 1 nóim, 1 soic');
      expect(clockformatted_1[2], '1 u, 1 nóim, 1 soic');
      expect(clockformatted_1[3], '1 u 1 nóim 1 soic');

      expect(clockformatted_2[0], '2 u, 2 nóim agus 2 shoic');
      expect(clockformatted_2[1], '2 u, 2 nóim, 2 soic');
      expect(clockformatted_2[2], '2 u, 2 nóim, 2 soic');
      expect(clockformatted_2[3], '2 u 2 nóim 2 soic');

      expect(clockformatted_3[0], '3 u, 3 nóim agus 3 shoic');
      expect(clockformatted_3[1], '3 u, 3 nóim, 3 soic');
      expect(clockformatted_3[2], '3 u, 3 nóim, 3 soic');
      expect(clockformatted_3[3], '3 u 3 nóim 3 soic');

      expect(clockformatted_7[0], '7 u, 7 nóim agus 7 soic');
      expect(clockformatted_7[1], '7 u, 7 nóim, 7 soic');
      expect(clockformatted_7[2], '7 u, 7n, 7 soic');
      expect(clockformatted_7[3], '7 u 7n 7 soic');

      expect(clockformatted_11[0], '11 u, 11 nóim agus 11 soic');
      expect(clockformatted_11[1], '11 u, 11 nóim, 11 soic');
      expect(clockformatted_11[2], '11 u, 11 nóim, 11 soic');
      expect(clockformatted_11[3], '11 u 11 nóim 11 soic');
    });
    test('testDurFmt_gu_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'gu-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 વર્ષ, 1 મહિનો, 1 અઠવાડિયું, 1 દિવસ');
      expect(textformatted_1[1], '1 વર્ષ, 1 મહિનો, 1 અઠ., 1 દિવસ');
      expect(textformatted_1[2], '1 વ, 1 મ, 1 અઠ., 1 દિ');
      expect(textformatted_1[3], '1 વ, 1 મ, 1 અઠ., 1 દિ');

      expect(textformatted_2[0], '2 વર્ષ, 2 મહિના, 2 અઠવાડિયા, 2 દિવસ');
      expect(textformatted_2[1], '2 વર્ષ, 2 મહિના, 2 અઠ., 2 દિવસ');
      expect(textformatted_2[2], '2 વ, 2 મ, 2 અઠ., 2 દિ');
      expect(textformatted_2[3], '2 વ, 2 મ, 2 અઠ., 2 દિ');

      expect(clockformatted_1[0], '1 કલાક, 1 મિનિટ, 1 સેકંડ');
      expect(clockformatted_1[1], '1 કલાક, 1 મિનિટ, 1 સેકંડ');
      expect(clockformatted_1[2], '1 ક, 1 મિ, 1 સે');
      expect(clockformatted_1[3], '1 ક, 1 મિ, 1 સે');

      expect(clockformatted_2[0], '2 કલાક, 2 મિનિટ, 2 સેકંડ');
      expect(clockformatted_2[1], '2 કલાક, 2 મિનિટ, 2 સેકંડ');
      expect(clockformatted_2[2], '2 ક, 2 મિ, 2 સે');
      expect(clockformatted_2[3], '2 ક, 2 મિ, 2 સે');
    });
    test('testDurFmt_he_IL', () {
      // 1 2 20 19
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_20 = <String>[];
      final List<String> textformatted_19 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_20 = <String>[];
      final List<String> clockformatted_19 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'he-IL', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_20.add(fmt
            .format(ILibDateOptions(year: 20, month: 20, week: 20, day: 20)));
        textformatted_19.add(fmt
            .format(ILibDateOptions(year: 19, month: 19, week: 19, day: 19)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_20
            .add(fmt.format(ILibDateOptions(hour: 20, minute: 20, second: 20)));
        clockformatted_19
            .add(fmt.format(ILibDateOptions(hour: 19, minute: 19, second: 19)));
      }

      expect(textformatted_1[0], '‏1 שנה, 1 חודש, 1 שבוע ו-1 יום');
      expect(textformatted_1[1], '‏1 שנה, 1 ח׳, 1 שבוע, 1 יום');
      expect(textformatted_1[2], '‏1 ש′ 1 ח׳ 1 ש′ 1 י׳');
      expect(textformatted_1[3], '‏1 ש′ 1 ח׳ 1 ש′ 1 י׳');

      expect(textformatted_2[0], '‏2 שנים, חודשיים, שבועיים ו-יומיים');
      expect(textformatted_2[1], '‏2 שנים, 2 ח׳, שבועיים, יומיים');
      expect(textformatted_2[2], '‏2 ש′ 2 ח׳ 2 ש′ 2 י׳');
      expect(textformatted_2[3], '‏2 ש′ 2 ח׳ 2 ש′ 2 י׳');

      expect(textformatted_19[0], '‏19 שנים, 19 חודשים, 19 שבועות ו-19 ימים');
      expect(textformatted_19[1], '‏19 שנים, 19 ח׳, 19 שבועות, 19 ימ׳');
      expect(textformatted_19[2], '‏19 ש′ 19 ח׳ 19 ש′ 19 י׳');
      expect(textformatted_19[3], '‏19 ש′ 19 ח׳ 19 ש′ 19 י׳');

      expect(clockformatted_1[0], '‏1 שעה, 1 דקה ו-1 שניה');
      expect(clockformatted_1[1], '‏1 שעה, 1 דק׳, 1 שנ׳');
      expect(clockformatted_1[2], '‏1 שע׳ 1 דק׳ 1 שנ׳');
      expect(clockformatted_1[3], '‏1 שע׳ 1 דק׳ 1 שנ׳');

      expect(clockformatted_2[0], '‏שעתיים, שתי דקות ו-שתי שניות');
      expect(clockformatted_2[1], '‏שעתיים, 2 דק׳, 2 שנ׳');
      expect(clockformatted_2[2], '‏2 שע׳ 2 דק׳ 2 שנ׳');
      expect(clockformatted_2[3], '‏2 שע׳ 2 דק׳ 2 שנ׳');

      expect(clockformatted_19[0], '‏19 שעות, 19 דקות ו-19 שניות');
      expect(clockformatted_19[1], '‏19 שע׳, 19 דק׳, 19 שנ׳');
      expect(clockformatted_19[2], '‏19 שע׳ 19 דק׳ 19 שנ׳');
      expect(clockformatted_19[3], '‏19 שע׳ 19 דק׳ 19 שנ׳');

      expect(textformatted_20[0], '‏20 שנים, 20 חודשים, 20 שבועות ו-20 ימים');
      expect(textformatted_20[2], '‏20 ש′ 20 ח׳ 20 ש′ 20 י׳');
      expect(textformatted_20[3], '‏20 ש′ 20 ח׳ 20 ש′ 20 י׳');
      expect(textformatted_20[1], '‏20 שנים, 20 ח׳, 20 שבועות, 20 ימ׳');

      expect(clockformatted_20[0], '‏20 שעות, 20 דקות ו-20 שניות');
      expect(clockformatted_20[1], '‏20 שע׳, 20 דק׳, 20 שנ׳');
      expect(clockformatted_20[2], '‏20 שע׳ 20 דק׳ 20 שנ׳');
      expect(clockformatted_20[3], '‏20 שע׳ 20 דק׳ 20 שנ׳');
    });

    test('testDurFmt_hi_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'hi-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 वर्ष, 1 महीना, 1 सप्ताह, और 1 दिन');
      expect(textformatted_1[1], '1 वर्ष, 1 माह, 1 सप्ताह, 1 दिन');
      expect(textformatted_1[2], '1 व, 1 माह, 1 सप्ताह, 1 दि');
      expect(textformatted_1[3], '1 व, 1 माह, 1 सप्ताह, 1 दि');

      expect(textformatted_2[0], '2 वर्ष, 2 महीने, 2 सप्ताह, और 2 दिन');
      expect(textformatted_2[1], '2 वर्ष, 2 माह, 2 सप्ताह, 2 दिन');
      expect(textformatted_2[2], '2 व, 2 माह, 2 सप्ताह, 2 दि');
      expect(textformatted_2[3], '2 व, 2 माह, 2 सप्ताह, 2 दि');

      expect(clockformatted_1[0], '1 घंटा, 1 मिनट, और 1 सेकंड');
      expect(clockformatted_1[1], '1 घं॰, 1 मि॰, 1 से॰');
      expect(clockformatted_1[2], '1 घं, 1 मि, 1 से');
      expect(clockformatted_1[3], '1 घं, 1 मि, 1 से');

      expect(clockformatted_2[0], '2 घंटे, 2 मिनट, और 2 सेकंड');
      expect(clockformatted_2[1], '2 घं॰, 2 मि॰, 2 से॰');
      expect(clockformatted_2[2], '2 घं, 2 मि, 2 से');
      expect(clockformatted_2[3], '2 घं, 2 मि, 2 से');
    });
    test('testDurFmt_hr_HR', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'hr-HR', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 godina, 1 mjesec, 1 tjedan i 1 dan');
      expect(textformatted_1[1], '1 g., 1 mj., 1 tj., 1 dan');
      expect(textformatted_1[2], '1 g., 1 mj., 1 tj., 1 d.');
      expect(textformatted_1[3], '1 g. 1 mj. 1 tj. 1 d.');

      expect(textformatted_2[0], '2 godine, 2 mjeseca, 2 tjedna i 2 dana');
      expect(textformatted_2[1], '2 g., 2 mj., 2 tj., 2 dana');
      expect(textformatted_2[2], '2 g., 2 mj., 2 tj., 2 d.');
      expect(textformatted_2[3], '2 g. 2 mj. 2 tj. 2 d.');

      expect(textformatted_5[0], '5 godina, 5 mjeseci, 5 tjedana i 5 dana');
      expect(textformatted_5[1], '5 g., 5 mj., 5 tj., 5 dana');
      expect(textformatted_5[2], '5 g., 5 mj., 5 tj., 5 d.');
      expect(textformatted_5[3], '5 g. 5 mj. 5 tj. 5 d.');

      expect(clockformatted_1[0], '1 sat, 1 minuta i 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h 1 m 1 s');

      expect(clockformatted_2[0], '2 sata, 2 minute i 2 sekunde');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2 h, 2 m, 2 s');
      expect(clockformatted_2[3], '2 h 2 m 2 s');

      expect(clockformatted_5[0], '5 sati, 5 minuta i 5 sekundi');
      expect(clockformatted_5[1], '5 h, 5 min, 5 s');
      expect(clockformatted_5[2], '5 h, 5 m, 5 s');
      expect(clockformatted_5[3], '5 h 5 m 5 s');
    });
    test('testDurFmt_hr_ME', () {
      // 1 4 19
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_4 = <String>[];
      final List<String> textformatted_19 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_4 = <String>[];
      final List<String> clockformatted_19 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'hr-ME', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_4.add(
            fmt.format(ILibDateOptions(year: 4, month: 4, week: 4, day: 4)));
        textformatted_19.add(fmt
            .format(ILibDateOptions(year: 19, month: 19, week: 19, day: 19)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_4
            .add(fmt.format(ILibDateOptions(hour: 4, minute: 4, second: 4)));
        clockformatted_19
            .add(fmt.format(ILibDateOptions(hour: 19, minute: 19, second: 19)));
      }

      expect(textformatted_1[0], '1 godina, 1 mjesec, 1 tjedan i 1 dan');
      expect(textformatted_1[1], '1 g., 1 mj., 1 tj., 1 dan');
      expect(textformatted_1[2], '1 g., 1 mj., 1 tj., 1 d.');
      expect(textformatted_1[3], '1 g. 1 mj. 1 tj. 1 d.');

      expect(textformatted_4[0], '4 godine, 4 mjeseca, 4 tjedna i 4 dana');
      expect(textformatted_4[1], '4 g., 4 mj., 4 tj., 4 dana');
      expect(textformatted_4[2], '4 g., 4 mj., 4 tj., 4 d.');
      expect(textformatted_4[3], '4 g. 4 mj. 4 tj. 4 d.');

      expect(
          textformatted_19[0], '19 godina, 19 mjeseci, 19 tjedana i 19 dana');
      expect(textformatted_19[1], '19 g., 19 mj., 19 tj., 19 dana');
      expect(textformatted_19[2], '19 g., 19 mj., 19 tj., 19 d.');
      expect(textformatted_19[3], '19 g. 19 mj. 19 tj. 19 d.');

      expect(clockformatted_1[0], '1 sat, 1 minuta i 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h 1 m 1 s');

      expect(clockformatted_4[0], '4 sata, 4 minute i 4 sekunde');
      expect(clockformatted_4[1], '4 h, 4 min, 4 s');
      expect(clockformatted_4[2], '4 h, 4 m, 4 s');
      expect(clockformatted_4[3], '4 h 4 m 4 s');

      expect(clockformatted_19[0], '19 sati, 19 minuta i 19 sekundi');
      expect(clockformatted_19[1], '19 h, 19 min, 19 s');
      expect(clockformatted_19[2], '19 h, 19 m, 19 s');
      expect(clockformatted_19[3], '19 h 19 m 19 s');
    });
    test('testDurFmt_hr_HU', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'hr-HU', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 godina, 1 mjesec, 1 tjedan i 1 dan');
      expect(textformatted_1[1], '1 g., 1 mj., 1 tj., 1 dan');
      expect(textformatted_1[2], '1 g., 1 mj., 1 tj., 1 d.');
      expect(textformatted_1[3], '1 g. 1 mj. 1 tj. 1 d.');

      expect(textformatted_2[0], '2 godine, 2 mjeseca, 2 tjedna i 2 dana');
      expect(textformatted_2[1], '2 g., 2 mj., 2 tj., 2 dana');
      expect(textformatted_2[2], '2 g., 2 mj., 2 tj., 2 d.');
      expect(textformatted_2[3], '2 g. 2 mj. 2 tj. 2 d.');

      expect(textformatted_5[0], '5 godina, 5 mjeseci, 5 tjedana i 5 dana');
      expect(textformatted_5[1], '5 g., 5 mj., 5 tj., 5 dana');
      expect(textformatted_5[2], '5 g., 5 mj., 5 tj., 5 d.');
      expect(textformatted_5[3], '5 g. 5 mj. 5 tj. 5 d.');

      expect(clockformatted_1[0], '1 sat, 1 minuta i 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h 1 m 1 s');

      expect(clockformatted_2[0], '2 sata, 2 minute i 2 sekunde');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2 h, 2 m, 2 s');
      expect(clockformatted_2[3], '2 h 2 m 2 s');

      expect(clockformatted_5[0], '5 sati, 5 minuta i 5 sekundi');
      expect(clockformatted_5[1], '5 h, 5 min, 5 s');
      expect(clockformatted_5[2], '5 h, 5 m, 5 s');
      expect(clockformatted_5[3], '5 h 5 m 5 s');
    });
    test('testDurFmt_id_ID', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'id-ID', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 tahun, 1 bulan, 1 minggu, 1 hari');
      expect(textformatted_1[1], '1 thn, 1 bln, 1 mgg, 1 hr');
      expect(textformatted_1[2], '1 thn, 1 bln, 1 mgg, 1 hr');
      expect(textformatted_1[3], '1 thn, 1 bln, 1 mgg, 1 hr');

      expect(textformatted_2[0], '2 tahun, 2 bulan, 2 minggu, 2 hari');
      expect(textformatted_2[1], '2 thn, 2 bln, 2 mgg, 2 hr');
      expect(textformatted_2[2], '2 thn, 2 bln, 2 mgg, 2 hr');
      expect(textformatted_2[3], '2 thn, 2 bln, 2 mgg, 2 hr');

      expect(clockformatted_1[0], '1 jam, 1 menit, 1 detik');
      expect(clockformatted_1[1], '1 j, 1 mnt, 1 dtk');
      expect(clockformatted_1[2], '1 j, 1 mnt, 1 dtk');
      expect(clockformatted_1[3], '1 j, 1 mnt, 1 dtk');

      expect(clockformatted_2[0], '2 jam, 2 menit, 2 detik');
      expect(clockformatted_2[1], '2 j, 2 mnt, 2 dtk');
      expect(clockformatted_2[2], '2 j, 2 mnt, 2 dtk');
      expect(clockformatted_2[3], '2 j, 2 mnt, 2 dtk');
    });
    test('testDurFmt_is_IS', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'is-IS', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 ár, 1 mánuður, 1 vika og 1 dagur');
      expect(textformatted_1[1], '1 ár, 1 mán., 1 vika, 1 dagur');
      expect(textformatted_1[2], '1á, 1 mán., 1 v., 1 d.');
      expect(textformatted_1[3], '1á 1 mán. 1 v. 1 d.');

      expect(textformatted_17[0], '17 ár, 17 mánuðir, 17 vikur og 17 dagar');
      expect(textformatted_17[1], '17 ár, 17 mán., 17 vikur, 17 dagar');
      expect(textformatted_17[2], '17á, 17 mán., 17 v., 17 d.');
      expect(textformatted_17[3], '17á 17 mán. 17 v. 17 d.');

      expect(clockformatted_1[0], '1 klukkustund, 1 mínúta og 1 sekúnda');
      expect(clockformatted_1[1], '1 klst., 1 mín., 1 sek.');
      expect(clockformatted_1[2], '1 klst., 1 mín., 1 sek.');
      expect(clockformatted_1[3], '1 klst. 1 mín. 1 sek.');

      expect(
          clockformatted_17[0], '17 klukkustundir, 17 mínútur og 17 sekúndur');
      expect(clockformatted_17[1], '17 klst., 17 mín., 17 sek.');
      expect(clockformatted_17[2], '17 klst., 17 mín., 17 sek.');
      expect(clockformatted_17[3], '17 klst. 17 mín. 17 sek.');
    });
    test('testDurFmt_it_CH', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'it-CH', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 anno, 1 mese, 1 settimana e 1 giorno');
      expect(textformatted_1[1], '1 anno, 1 mese, 1 sett., 1 giorno');
      expect(textformatted_1[2], '1anno, 1 mese, 1sett., 1g');
      expect(textformatted_1[3], '1anno 1 mese 1sett. 1g');

      expect(textformatted_17[0], '17 anni, 17 mesi, 17 settimane e 17 giorni');
      expect(textformatted_17[1], '17 anni, 17 mesi, 17 sett., 17 giorni');
      expect(textformatted_17[2], '17anni, 17 mesi, 17sett., 17gg');
      expect(textformatted_17[3], '17anni 17 mesi 17sett. 17gg');

      expect(clockformatted_1[0], '1 ora, 1 minuto e 1 secondo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 ore, 17 minuti e 17 secondi');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_it_IT', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'it-IT', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 anno, 1 mese, 1 settimana e 1 giorno');
      expect(textformatted_1[1], '1 anno, 1 mese, 1 sett., 1 giorno');
      expect(textformatted_1[2], '1anno, 1 mese, 1sett., 1g');
      expect(textformatted_1[3], '1anno 1 mese 1sett. 1g');

      expect(textformatted_2[0], '2 anni, 2 mesi, 2 settimane e 2 giorni');
      expect(textformatted_2[1], '2 anni, 2 mesi, 2 sett., 2 giorni');
      expect(textformatted_2[2], '2anni, 2 mesi, 2sett., 2gg');
      expect(textformatted_2[3], '2anni 2 mesi 2sett. 2gg');

      expect(clockformatted_1[0], '1 ora, 1 minuto e 1 secondo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 ore, 2 minuti e 2 secondi');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_ja_JP', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ja-JP', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 年 1 か月 1 週間 1 日');
      expect(textformatted_1[1], '1 年 1 か月 1 週間 1 日');
      expect(textformatted_1[2], '1y1m1w1d');
      expect(textformatted_1[3], '1y1m1w1d');

      expect(textformatted_16[0], '16 年 16 か月 16 週間 16 日');
      expect(textformatted_16[1], '16 年 16 か月 16 週間 16 日');
      expect(textformatted_16[2], '16y16m16w16d');
      expect(textformatted_16[3], '16y16m16w16d');

      expect(clockformatted_1[0], '1 時間 1 分 1 秒');
      expect(clockformatted_1[1], '1 時間 1 分 1 秒');
      expect(clockformatted_1[2], '1h1m1s');
      expect(clockformatted_1[3], '1h1m1s');

      expect(clockformatted_16[0], '16 時間 16 分 16 秒');
      expect(clockformatted_16[1], '16 時間 16 分 16 秒');
      expect(clockformatted_16[2], '16h16m16s');
      expect(clockformatted_16[3], '16h16m16s');
    });
    test('testDurFmt_kk_KZ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'kk-KZ', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 жыл 1 ай 1 апта 1 күн');
      expect(textformatted_1[1], '1 ж. 1 ай 1 ап. 1 күн');
      expect(textformatted_1[2], '1 ж. 1 ай 1 ап. 1 к.');
      expect(textformatted_1[3], '1 ж. 1 ай 1 ап. 1 к.');

      expect(textformatted_2[0], '2 жыл 2 ай 2 апта 2 күн');
      expect(textformatted_2[1], '2 ж. 2 ай 2 ап. 2 күн');
      expect(textformatted_2[2], '2 ж. 2 ай 2 ап. 2 к.');
      expect(textformatted_2[3], '2 ж. 2 ай 2 ап. 2 к.');

      expect(clockformatted_1[0], '1 сағат 1 минут 1 секунд');
      expect(clockformatted_1[1], '1 сағ 1 мин 1 с');
      expect(clockformatted_1[2], '1 сағ 1 мин 1 с');
      expect(clockformatted_1[3], '1 сағ 1 мин 1 с');

      expect(clockformatted_2[0], '2 сағат 2 минут 2 секунд');
      expect(clockformatted_2[1], '2 сағ 2 мин 2 с');
      expect(clockformatted_2[2], '2 сағ 2 мин 2 с');
      expect(clockformatted_2[3], '2 сағ 2 мин 2 с');
    });
    test('testDurFmt_kn_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'kn-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 ವರ್ಷವು, 1 ತಿಂಗಳು, 1 ವಾರವು, 1 ದಿನವು');
      expect(textformatted_1[1], '1 ವರ್ಷ, 1 ತಿಂ., 1 ವಾರ, 1 ದಿನ');
      expect(textformatted_1[2], '1ವ, 1ತಿಂ., 1ವಾ, 1ದಿ');
      expect(textformatted_1[3], '1ವ, 1ತಿಂ., 1ವಾ, 1ದಿ');

      expect(textformatted_2[0], '2 ವರ್ಷಗಳು, 2 ತಿಂಗಳು, 2 ವಾರಗಳು, 2 ದಿನಗಳು');
      expect(textformatted_2[1], '2 ವರ್ಷಗಳು, 2 ತಿಂ.ಗಳು, 2 ವಾರಗಳು, 2 ದಿನಗಳು');
      expect(textformatted_2[2], '2ವ, 2ತಿಂ., 2ವಾ, 2ದಿ');
      expect(textformatted_2[3], '2ವ, 2ತಿಂ., 2ವಾ, 2ದಿ');

      expect(clockformatted_1[0], '1 ಗಂಟೆಯು, 1 ನಿಮಿಷವು, 1 ಸೆಕೆಂಡ್');
      expect(clockformatted_1[1], '1 ಗಂ., 1 ನಿಮಿ, 1 ಸೆಕೆಂ');
      expect(clockformatted_1[2], '1ಗಂ., 1ನಿಮಿ, 1ಸೆಕೆಂ');
      expect(clockformatted_1[3], '1ಗಂ., 1ನಿಮಿ, 1ಸೆಕೆಂ');

      expect(clockformatted_2[0], '2 ಗಂಟೆಗಳು, 2 ನಿಮಿಷಗಳು, 2 ಸೆಕೆಂಡುಗಳು');
      expect(clockformatted_2[1], '2 ಗಂ., 2 ನಿಮಿ, 2 ಸೆಕೆಂ');
      expect(clockformatted_2[2], '2ಗಂ., 2ನಿಮಿ, 2 ಸೆಕೆಂ');
      expect(clockformatted_2[3], '2ಗಂ., 2ನಿಮಿ, 2 ಸೆಕೆಂ');
    });
    test('testDurFmt_ko_KR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ko-KR', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1년 1개월 1주 1일');
      expect(textformatted_1[1], '1년 1개월 1주 1일');
      expect(textformatted_1[2], '1년 1개월 1주 1일');
      expect(textformatted_1[3], '1년 1개월 1주 1일');

      expect(textformatted_2[0], '2년 2개월 2주 2일');
      expect(textformatted_2[1], '2년 2개월 2주 2일');
      expect(textformatted_2[2], '2년 2개월 2주 2일');
      expect(textformatted_2[3], '2년 2개월 2주 2일');

      expect(clockformatted_1[0], '1시간 1분 1초');
      expect(clockformatted_1[1], '1시간 1분 1초');
      expect(clockformatted_1[2], '1시간 1분 1초');
      expect(clockformatted_1[3], '1시간 1분 1초');

      expect(clockformatted_2[0], '2시간 2분 2초');
      expect(clockformatted_2[1], '2시간 2분 2초');
      expect(clockformatted_2[2], '2시간 2분 2초');
      expect(clockformatted_2[3], '2시간 2분 2초');
    });
    test('testDurFmt_ku_IQ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ku-IQ',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '‏1 ساڵ, 1 مانگ, 1 هەفتە,  1 رۆژ');
      expect(textformatted_1[1], '‏1 ساڵ 1 مانگ 1 هەفتە 1 رۆژ');
      expect(textformatted_1[2], '‏1س 1م 1ﻪـ 1ر');
      expect(textformatted_1[3], '‏1س 1م 1ﻪـ 1ر');

      expect(textformatted_2[0], '‏2 ساڵ, 2 مانگ, 2 هەفتە,  2 رۆژ');
      expect(textformatted_2[1], '‏2 ساڵ 2 مانگ 2 هەفتە 2 رۆژ');
      expect(textformatted_2[2], '‏2س 2م 2ﻪـ 2ر');
      expect(textformatted_2[3], '‏2س 2م 2ﻪـ 2ر');

      expect(clockformatted_1[0], '‏1 کاتژمێر, 1 خولەک,  1 چرکە');
      expect(clockformatted_1[1], '‏1 کاتژ 1 خول 1 چرک');
      expect(clockformatted_1[2], '‏1ک 1خ 1چ');
      expect(clockformatted_1[3], '‏1ک 1خ 1چ');

      expect(clockformatted_2[0], '‏2 کاتژمێر, 2 خولەک,  2 چرکە');
      expect(clockformatted_2[1], '‏2 کاتژ 2 خول 2 چرک');
      expect(clockformatted_2[2], '‏2ک 2خ 2چ');
      expect(clockformatted_2[3], '‏2ک 2خ 2چ');
    });
    test('testDurFmt_lt_LT', () {
      // 21 9 11
      final List<String> textformatted_21 = <String>[];
      final List<String> textformatted_9 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> clockformatted_21 = <String>[];
      final List<String> clockformatted_9 = <String>[];
      final List<String> clockformatted_11 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'lt-LT', style: 'text', length: length[i]));

        textformatted_21.add(fmt
            .format(ILibDateOptions(year: 21, month: 21, week: 21, day: 21)));
        textformatted_9.add(
            fmt.format(ILibDateOptions(year: 9, month: 9, week: 9, day: 9)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));

        clockformatted_21
            .add(fmt.format(ILibDateOptions(hour: 21, minute: 21, second: 21)));
        clockformatted_9
            .add(fmt.format(ILibDateOptions(hour: 9, minute: 9, second: 9)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
      }

      expect(textformatted_21[0], '21 metai 21 mėnuo 21 savaitė ir 21 diena');
      expect(textformatted_21[1], '21 m. 21 mėn. 21 sav. 21 d.');
      expect(textformatted_21[2], '21 m. 21 mėn. 21 sav. 21 d.');
      expect(textformatted_21[3], '21 m. 21 mėn. 21 sav. 21 d.');

      expect(textformatted_9[0], '9 metai 9 mėnesiai 9 savaitės ir 9 dienos');
      expect(textformatted_9[1], '9 m. 9 mėn. 9 sav. 9 d.');
      expect(textformatted_9[2], '9 m. 9 mėn. 9 sav. 9 d.');
      expect(textformatted_9[3], '9 m. 9 mėn. 9 sav. 9 d.');

      expect(textformatted_11[0], '11 metų 11 mėnesių 11 savaičių ir 11 dienų');
      expect(textformatted_11[1], '11 m. 11 mėn. 11 sav. 11 d.');
      expect(textformatted_11[2], '11 m. 11 mėn. 11 sav. 11 d.');
      expect(textformatted_11[3], '11 m. 11 mėn. 11 sav. 11 d.');

      expect(clockformatted_21[0], '21 valanda 21 minutė ir 21 sekundė');
      expect(clockformatted_21[1], '21 val. 21 min. 21 sek.');
      expect(clockformatted_21[2], '21 h 21 min. 21 s');
      expect(clockformatted_21[3], '21 h 21 min. 21 s');

      expect(clockformatted_9[0], '9 valandos 9 minutės ir 9 sekundės');
      expect(clockformatted_9[1], '9 val. 9 min. 9 sek.');
      expect(clockformatted_9[2], '9 h 9 min. 9 s');
      expect(clockformatted_9[3], '9 h 9 min. 9 s');

      expect(clockformatted_11[0], '11 valandų 11 minučių ir 11 sekundžių');
      expect(clockformatted_11[1], '11 val. 11 min. 11 sek.');
      expect(clockformatted_11[2], '11 h 11 min. 11 s');
      expect(clockformatted_11[3], '11 h 11 min. 11 s');
    });
    test('testDurFmt_lv_LV', () {
      // 21 9
      final List<String> textformatted_21 = <String>[];
      final List<String> textformatted_9 = <String>[];
      final List<String> clockformatted_21 = <String>[];
      final List<String> clockformatted_9 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'lv-LV', style: 'text', length: length[i]));

        textformatted_21.add(fmt
            .format(ILibDateOptions(year: 21, month: 21, week: 21, day: 21)));
        textformatted_9.add(
            fmt.format(ILibDateOptions(year: 9, month: 9, week: 9, day: 9)));

        clockformatted_21
            .add(fmt.format(ILibDateOptions(hour: 21, minute: 21, second: 21)));
        clockformatted_9
            .add(fmt.format(ILibDateOptions(hour: 9, minute: 9, second: 9)));
      }

      expect(textformatted_21[0], '21 gads, 21 mēnesis, 21 nedēļa un 21 diena');
      expect(textformatted_21[1], '21 g., 21 mēn., 21 ned., 21 d.');
      expect(textformatted_21[2], '21 g., 21 m., 21 n., 21 d.');
      expect(textformatted_21[3], '21 g. 21 m. 21 n. 21 d.');

      expect(textformatted_9[0], '9 gadi, 9 mēneši, 9 nedēļas un 9 dienas');
      expect(textformatted_9[1], '9 g., 9 mēn., 9 ned., 9 d.');
      expect(textformatted_9[2], '9 g., 9 m., 9 n., 9 d.');
      expect(textformatted_9[3], '9 g. 9 m. 9 n. 9 d.');

      expect(clockformatted_21[0], '21 stunda, 21 minūte un 21 sekunde');
      expect(clockformatted_21[1], '21 st., 21 min, 21 sek.');
      expect(clockformatted_21[2], '21 h, 21 min, 21 s');
      expect(clockformatted_21[3], '21 h 21 min 21 s');

      expect(clockformatted_9[0], '9 stundas, 9 minūtes un 9 sekundes');
      expect(clockformatted_9[1], '9 st., 9 min, 9 sek.');
      expect(clockformatted_9[2], '9 h, 9 min, 9 s');
      expect(clockformatted_9[3], '9 h 9 min 9 s');
    });
    test('testDurFmt_mk_MK', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'mk-MK', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 година, 1 месец, 1 седмица и 1 ден');
      expect(textformatted_1[1], '1 год., 1 мес., 1 сед., 1 ден');
      expect(textformatted_1[2], '1 г., 1 м., 1 с., 1 д.');
      expect(textformatted_1[3], '1 г., 1 м., 1 с., 1 д.');

      expect(textformatted_2[0], '2 години, 2 месеци, 2 седмици и 2 дена');
      expect(textformatted_2[1], '2 год., 2 мес., 2 сед., 2 дена');
      expect(textformatted_2[2], '2 г., 2 м., 2 с., 2 д.');
      expect(textformatted_2[3], '2 г., 2 м., 2 с., 2 д.');

      expect(clockformatted_1[0], '1 час, 1 минута и 1 секунда');
      expect(clockformatted_1[1], '1 ч., 1 мин., 1 сек.');
      expect(clockformatted_1[2], '1 ч., 1 м., 1 с.');
      expect(clockformatted_1[3], '1 ч., 1 м., 1 с.');

      expect(clockformatted_2[0], '2 часа, 2 минути и 2 секунди');
      expect(clockformatted_2[1], '2 ч., 2 мин., 2 сек.');
      expect(clockformatted_2[2], '2 ч., 2 м., 2 с.');
      expect(clockformatted_2[3], '2 ч., 2 м., 2 с.');
    });
    test('testDurFmt_ml_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ml-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 വർഷം, 1 മാസം, 1 ആഴ്ച, 1 ദിവസം');
      expect(textformatted_1[1], '1 വ, 1 മാസം, 1 ആ, 1 ദിവസം‌');
      expect(textformatted_1[2], '1 വ 1 മാ 1 ആ 1 ദി');
      expect(textformatted_1[3], '1 വ 1 മാ 1 ആ 1 ദി');

      expect(textformatted_2[0], '2 വർഷം, 2 മാസം, 2 ആഴ്ച, 2 ദിവസം');
      expect(textformatted_2[1], '2 വ, 2 മാസം, 2 ആ, 2 ദിവസം‌');
      expect(textformatted_2[2], '2 വ 2 മാ 2 ആ 2 ദി');
      expect(textformatted_2[3], '2 വ 2 മാ 2 ആ 2 ദി');

      expect(clockformatted_1[0], '1 മണിക്കൂർ, 1 മിനിറ്റ്, 1 സെക്കൻഡ്');
      expect(clockformatted_1[1], '1 മ, 1 മി., 1 സെ.');
      expect(clockformatted_1[2], '1 മ 1 മി. 1 സെ.');
      expect(clockformatted_1[3], '1 മ 1 മി. 1 സെ.');

      expect(clockformatted_2[0], '2 മണിക്കൂർ, 2 മിനിറ്റ്, 2 സെക്കൻഡ്');
      expect(clockformatted_2[1], '2 മ, 2 മി., 2 സെ.');
      expect(clockformatted_2[2], '2 മ 2 മി. 2 സെ.');
      expect(clockformatted_2[3], '2 മ 2 മി. 2 സെ.');
    });
    test('testDurFmt_mr_IN', () {
      // 1 18
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_18 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_18 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'mr-IN',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_18.add(fmt
            .format(ILibDateOptions(year: 18, month: 18, week: 18, day: 18)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_18
            .add(fmt.format(ILibDateOptions(hour: 18, minute: 18, second: 18)));
      }

      expect(textformatted_1[0], '1 वर्ष, 1 महिना, 1 आठवडा, 1 दिवस');
      expect(textformatted_1[1], '1 वर्ष, 1 महिना, 1 आ, 1 दिवस');
      expect(textformatted_1[2], '1व 1म 1आ 1दि');
      expect(textformatted_1[3], '1व 1म 1आ 1दि');

      expect(textformatted_18[0], '18 वर्षे, 18 महिने, 18 आठवडे, 18 दिवस');
      expect(textformatted_18[1], '18 वर्षे, 18 महिने, 18 आ, 18 दिवस');
      expect(textformatted_18[2], '18व 18म 18आ 18दि');
      expect(textformatted_18[3], '18व 18म 18आ 18दि');

      expect(clockformatted_1[0], '1 तास, 1 मिनिट, 1 सेकंद');
      expect(clockformatted_1[1], '1 ता, 1 मिनि, 1 से');
      expect(clockformatted_1[2], '1ता 1मि 1से');
      expect(clockformatted_1[3], '1ता 1मि 1से');

      expect(clockformatted_18[0], '18 तास, 18 मिनिटे, 18 सेकंद');
      expect(clockformatted_18[1], '18 ता, 18 मिनि, 18 से');
      expect(clockformatted_18[2], '18ता 18मि 18से');
      expect(clockformatted_18[3], '18ता 18मि 18से');
    });
    test('testDurFmt_ms_MY', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ms-MY', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 tahun, 1 bulan, 1 minggu, 1 hari');
      expect(textformatted_1[1], '1 thn, 1 bln, 1 mgu, 1 hari');
      expect(textformatted_1[2], '1 thn, 1 bln, 1 mgu, 1 h');
      expect(textformatted_1[3], '1 thn 1 bln 1 mgu 1 h');

      expect(textformatted_2[0], '2 tahun, 2 bulan, 2 minggu, 2 hari');
      expect(textformatted_2[1], '2 thn, 2 bln, 2 mgu, 2 hari');
      expect(textformatted_2[2], '2 thn, 2 bln, 2 mgu, 2 h');
      expect(textformatted_2[3], '2 thn 2 bln 2 mgu 2 h');

      expect(clockformatted_1[0], '1 jam, 1 minit, 1 saat');
      expect(clockformatted_1[1], '1 j, 1 min, 1 saat');
      expect(clockformatted_1[2], '1 j, 1 min, 1 s');
      expect(clockformatted_1[3], '1 j 1 min 1 s');

      expect(clockformatted_2[0], '2 jam, 2 minit, 2 saat');
      expect(clockformatted_2[1], '2 j, 2 min, 2 saat');
      expect(clockformatted_2[2], '2 j, 2 min, 2 s');
      expect(clockformatted_2[3], '2 j 2 min 2 s');
    });
    test('testDurFmt_nb_NO', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'nb-NO', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 år, 1 måned, 1 uke og 1 døgn');
      expect(textformatted_1[1], '1 år, 1 md., 1 u, 1 d');
      expect(textformatted_1[2], '1å, 1 m, 1u, 1d');
      expect(textformatted_1[3], '1å, 1 m, 1u, 1d');

      expect(textformatted_2[0], '2 år, 2 måneder, 2 uker og 2 døgn');
      expect(textformatted_2[1], '2 år, 2 md., 2 u, 2 d');
      expect(textformatted_2[2], '2å, 2 m, 2u, 2d');
      expect(textformatted_2[3], '2å, 2 m, 2u, 2d');

      expect(clockformatted_1[0], '1 time, 1 minutt og 1 sekund');
      expect(clockformatted_1[1], '1 t, 1 min, 1 sek');
      expect(clockformatted_1[2], '1t, 1m, 1s');
      expect(clockformatted_1[3], '1t, 1m, 1s');

      expect(clockformatted_2[0], '2 timer, 2 minutter og 2 sekunder');
      expect(clockformatted_2[1], '2 t, 2 min, 2 sek');
      expect(clockformatted_2[2], '2t, 2m, 2s');
      expect(clockformatted_2[3], '2t, 2m, 2s');
    });
    test('testDurFmt_nl_BE', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'nl-BE', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 jaar, 1 maand, 1 week en 1 dag');
      expect(textformatted_1[1], '1 jr, 1 mnd, 1 wk, 1 dag');
      expect(textformatted_1[2], '1 jr, 1 m, 1 w, 1 d');
      expect(textformatted_1[3], '1 jr, 1 m, 1 w, 1 d');

      expect(textformatted_2[0], '2 jaar, 2 maanden, 2 weken en 2 dagen');
      expect(textformatted_2[1], '2 jr, 2 mnd, 2 wkn, 2 dagen');
      expect(textformatted_2[2], '2 jr, 2 m, 2 w, 2 d');
      expect(textformatted_2[3], '2 jr, 2 m, 2 w, 2 d');

      expect(clockformatted_1[0], '1 uur, 1 minuut en 1 seconde');
      expect(clockformatted_1[1], '1 uur, 1 min, 1 sec');
      expect(clockformatted_1[2], '1 u, 1 m, 1 s');
      expect(clockformatted_1[3], '1 u, 1 m, 1 s');

      expect(clockformatted_2[0], '2 uur, 2 minuten en 2 seconden');
      expect(clockformatted_2[1], '2 uur, 2 min, 2 sec');
      expect(clockformatted_2[2], '2 u, 2 m, 2 s');
      expect(clockformatted_2[3], '2 u, 2 m, 2 s');
    });
    test('testDurFmt_nl_NL', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'nl-NL', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 jaar, 1 maand, 1 week en 1 dag');
      expect(textformatted_1[1], '1 jr, 1 mnd, 1 wk, 1 dag');
      expect(textformatted_1[2], '1 jr, 1 m, 1 w, 1 d');
      expect(textformatted_1[3], '1 jr, 1 m, 1 w, 1 d');

      expect(textformatted_2[0], '2 jaar, 2 maanden, 2 weken en 2 dagen');
      expect(textformatted_2[1], '2 jr, 2 mnd, 2 wkn, 2 dagen');
      expect(textformatted_2[2], '2 jr, 2 m, 2 w, 2 d');
      expect(textformatted_2[3], '2 jr, 2 m, 2 w, 2 d');

      expect(clockformatted_1[0], '1 uur, 1 minuut en 1 seconde');
      expect(clockformatted_1[1], '1 uur, 1 min, 1 sec');
      expect(clockformatted_1[2], '1 u, 1 m, 1 s');
      expect(clockformatted_1[3], '1 u, 1 m, 1 s');

      expect(clockformatted_2[0], '2 uur, 2 minuten en 2 seconden');
      expect(clockformatted_2[1], '2 uur, 2 min, 2 sec');
      expect(clockformatted_2[2], '2 u, 2 m, 2 s');
      expect(clockformatted_2[3], '2 u, 2 m, 2 s');
    });
    test('testDurFmt_pa_Guru_IN', () {
      // 1 2 18
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_18 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_18 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'pa-Guru-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_18.add(fmt
            .format(ILibDateOptions(year: 18, month: 18, week: 18, day: 18)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_18
            .add(fmt.format(ILibDateOptions(hour: 18, minute: 18, second: 18)));
      }

      expect(textformatted_1[0], '1 ਸਾਲ, 1 ਮਹੀਨਾ, 1 ਹਫ਼ਤਾ, 1 ਦਿਨ');
      expect(textformatted_1[1], '1 ਸਾਲ, 1 ਮਹੀਨਾ, 1 ਹਫ਼ਤਾ, 1 ਦਿਨ');
      expect(textformatted_1[2], '1 ਸਾਲ 1 ਮਹੀਨਾ 1 ਹਫ਼ਤਾ 1 ਦਿਨ');
      expect(textformatted_1[3], '1 ਸਾਲ 1 ਮਹੀਨਾ 1 ਹਫ਼ਤਾ 1 ਦਿਨ');

      expect(textformatted_2[0], '2 ਸਾਲ, 2 ਮਹੀਨੇ, 2 ਹਫ਼ਤੇ, 2 ਦਿਨ');
      expect(textformatted_2[1], '2 ਸਾਲ, 2 ਮਹੀਨੇ, 2 ਹਫ਼ਤੇ, 2 ਦਿਨ');
      expect(textformatted_2[2], '2 ਸਾਲ 2 ਮਹੀਨੇ 2 ਹਫ਼ਤੇ 2 ਦਿਨ');
      expect(textformatted_2[3], '2 ਸਾਲ 2 ਮਹੀਨੇ 2 ਹਫ਼ਤੇ 2 ਦਿਨ');

      expect(textformatted_18[0], '18 ਸਾਲ, 18 ਮਹੀਨੇ, 18 ਹਫ਼ਤੇ, 18 ਦਿਨ');
      expect(textformatted_18[1], '18 ਸਾਲ, 18 ਮਹੀਨੇ, 18 ਹਫ਼ਤੇ, 18 ਦਿਨ');
      expect(textformatted_18[2], '18 ਸਾਲ 18 ਮਹੀਨੇ 18 ਹਫ਼ਤੇ 18 ਦਿਨ');
      expect(textformatted_18[3], '18 ਸਾਲ 18 ਮਹੀਨੇ 18 ਹਫ਼ਤੇ 18 ਦਿਨ');

      expect(clockformatted_1[0], '1 ਘੰਟਾ, 1 ਮਿੰਟ, 1 ਸਕਿੰਟ');
      expect(clockformatted_1[1], '1 ਘੰਟਾ, 1 ਮਿੰਟ, 1 ਸਕਿੰਟ');
      expect(clockformatted_1[2], '1 ਘੰਟਾ 1 ਮਿੰਟ 1 ਸਕਿੰਟ');
      expect(clockformatted_1[3], '1 ਘੰਟਾ 1 ਮਿੰਟ 1 ਸਕਿੰਟ');

      expect(clockformatted_2[0], '2 ਘੰਟੇ, 2 ਮਿੰਟ, 2 ਸਕਿੰਟ');
      expect(clockformatted_2[1], '2 ਘੰਟੇ, 2 ਮਿੰਟ, 2 ਸਕਿੰਟ');
      expect(clockformatted_2[2], '2 ਘੰਟੇ 2 ਮਿੰਟ 2 ਸਕਿੰਟ');
      expect(clockformatted_2[3], '2 ਘੰਟੇ 2 ਮਿੰਟ 2 ਸਕਿੰਟ');

      expect(clockformatted_18[0], '18 ਘੰਟੇ, 18 ਮਿੰਟ, 18 ਸਕਿੰਟ');
      expect(clockformatted_18[1], '18 ਘੰਟੇ, 18 ਮਿੰਟ, 18 ਸਕਿੰਟ');
      expect(clockformatted_18[2], '18 ਘੰਟੇ 18 ਮਿੰਟ 18 ਸਕਿੰਟ');
      expect(clockformatted_18[3], '18 ਘੰਟੇ 18 ਮਿੰਟ 18 ਸਕਿੰਟ');
    });
    test('testDurFmt_pl_PL', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'pl-PL', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 rok, 1 miesiąc, 1 tydzień i 1 dzień');
      expect(textformatted_1[1], '1 rok, 1 mies., 1 tydz., 1 dzień');

      String result = (testPlatform == 'webOS')
          ? '1 rok, 1 mi, 1 ty, 1 dz'
          : '1 r., 1 m-c, 1 t., 1 d.';
      expect(textformatted_1[2], result);

      result = (testPlatform == 'webOS')
          ? '1 r., 1 m-c, 1 tydz., 1 d.'
          : '1 r., 1 m-c, 1 t., 1 d.';
      expect(textformatted_1[3], result);

      expect(textformatted_2[0], '2 lata, 2 miesiące, 2 tygodnie i 2 dni');
      expect(textformatted_2[1], '2 lata, 2 mies., 2 tyg., 2 dni');

      result = (testPlatform == 'webOS')
          ? '2 la, 2 mi, 2 ty, 2 dni'
          : '2 l., 2 m-ce, 2 t., 2 d.';
      expect(textformatted_2[2], result);

      result = (testPlatform == 'webOS')
          ? '2 l., 2 m-ce, 2 tyg., 2 dn.'
          : '2 l., 2 m-ce, 2 t., 2 d.';
      expect(textformatted_2[3], result);

      expect(textformatted_5[0], '5 lat, 5 miesięcy, 5 tygodni i 5 dni');
      expect(textformatted_5[1], '5 lat, 5 mies., 5 tyg., 5 dni');

      result = (testPlatform == 'webOS')
          ? '5 lat, 5 mi, 5 ty, 5 dni'
          : '5 l., 5 m-cy, 5 t., 5 d.';
      expect(textformatted_5[2], result);
      result = (testPlatform == 'webOS')
          ? '5 l., 5 m-cy, 5 tyg., 5 dn.'
          : '5 l., 5 m-cy, 5 t., 5 d.';
      expect(textformatted_5[3], result);

      expect(clockformatted_1[0], '1 godzina, 1 minuta i 1 sekunda');
      expect(clockformatted_1[1], '1 godz., 1 min, 1 sek.');

      result =
          (testPlatform == 'webOS') ? '1 go, 1 mi, 1 se' : '1 h, 1 min, 1 s';
      expect(clockformatted_1[2], result);

      result =
          (testPlatform == 'webOS') ? '1 godz., 1 min, 1 s' : '1 h, 1 min, 1 s';
      expect(clockformatted_1[3], result);

      expect(clockformatted_2[0], '2 godziny, 2 minuty i 2 sekundy');
      expect(clockformatted_2[1], '2 godz., 2 min, 2 sek.');

      result =
          (testPlatform == 'webOS') ? '2 go, 2 mi, 2 se' : '2 h, 2 min, 2 s';
      expect(clockformatted_2[2], result);
      result =
          (testPlatform == 'webOS') ? '2 godz., 2 min, 2 s' : '2 h, 2 min, 2 s';
      expect(clockformatted_2[3], result);

      expect(clockformatted_5[0], '5 godzin, 5 minut i 5 sekund');
      expect(clockformatted_5[1], '5 godz., 5 min, 5 sek.');

      result =
          (testPlatform == 'webOS') ? '5 go, 5 mi, 5 se' : '5 h, 5 min, 5 s';
      expect(clockformatted_5[2], result);

      result =
          (testPlatform == 'webOS') ? '5 godz., 5 min, 5 s' : '5 h, 5 min, 5 s';
      expect(clockformatted_5[3], result);
    });
    test('testDurFmt_pt_BR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'pt-BR', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 ano, 1 mês, 1 semana e 1 dia');
      expect(textformatted_1[1], '1 ano, 1 mês, 1 sem., 1 dia');
      expect(textformatted_1[2], '1 ano, 1 mês, 1 sem., 1 dia');
      expect(textformatted_1[3], '1 ano 1 mês 1 sem. 1 dia');

      expect(textformatted_2[0], '2 anos, 2 meses, 2 semanas e 2 dias');
      expect(textformatted_2[1], '2 anos, 2 meses, 2 sem., 2 dias');
      expect(textformatted_2[2], '2 anos, 2 meses, 2 sem., 2 dias');
      expect(textformatted_2[3], '2 anos 2 meses 2 sem. 2 dias');

      expect(clockformatted_1[0], '1 hora, 1 minuto e 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 min, 1 s');
      expect(clockformatted_1[3], '1 h 1 min 1 s');

      expect(clockformatted_2[0], '2 horas, 2 minutos e 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2 h, 2 min, 2 s');
      expect(clockformatted_2[3], '2 h 2 min 2 s');
    });
    test('testDurFmt_pt_PT', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'pt-PT', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 ano, 1 mês, 1 semana e 1 dia');
      expect(textformatted_1[1], '1 ano, 1 mês, 1 sem., 1 dia');
      expect(textformatted_1[2], '1 ano, 1 mês, 1 sem., 1 dia');
      expect(textformatted_1[3], '1 ano, 1 mês, 1 sem., 1 dia');

      expect(textformatted_17[0], '17 anos, 17 meses, 17 semanas e 17 dias');
      expect(textformatted_17[1], '17 anos, 17 meses, 17 sem., 17 dias');
      expect(textformatted_17[2], '17 anos, 17 meses, 17 sem., 17 dias');
      expect(textformatted_17[3], '17 anos, 17 meses, 17 sem., 17 dias');

      expect(clockformatted_1[0], '1 hora, 1 minuto e 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 min, 1 s');
      expect(clockformatted_1[3], '1 h, 1 min, 1 s');

      expect(clockformatted_17[0], '17 horas, 17 minutos e 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17 h, 17 min, 17 s');
      expect(clockformatted_17[3], '17 h, 17 min, 17 s');
    });
    test('testDurFmt_ro_RO', () {
      // 1 2 20
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_20 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_20 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ro-RO', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_20.add(fmt
            .format(ILibDateOptions(year: 20, month: 20, week: 20, day: 20)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_20
            .add(fmt.format(ILibDateOptions(hour: 20, minute: 20, second: 20)));
      }

      expect(textformatted_1[0], '1 an, 1 lună, 1 săptămână, 1 zi');
      expect(textformatted_1[1], '1 an, 1 lună, 1 săpt., 1 zi');
      expect(textformatted_1[2], '1 a, 1 l, 1 săpt., 1 z');
      expect(textformatted_1[3], '1 a, 1 l, 1 săpt., 1 z');

      expect(textformatted_2[0], '2 ani, 2 luni, 2 săptămâni, 2 zile');
      expect(textformatted_2[1], '2 ani, 2 luni, 2 săpt., 2 zile');
      expect(textformatted_2[2], '2 a, 2 l, 2 săpt., 2 z');
      expect(textformatted_2[3], '2 a, 2 l, 2 săpt., 2 z');

      expect(textformatted_20[0],
          '20 de ani, 20 de luni, 20 de săptămâni, 20 de zile');
      expect(textformatted_20[1], '20 ani, 20 luni, 20 săpt., 20 zile');
      expect(textformatted_20[2], '20 a, 20 l, 20 săpt., 20 z');
      expect(textformatted_20[3], '20 a, 20 l, 20 săpt., 20 z');

      expect(clockformatted_1[0], '1 oră, 1 minut, 1 secundă');
      expect(clockformatted_1[1], '1 oră, 1 min., 1 s');
      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h, 1 m, 1 s');

      expect(clockformatted_2[0], '2 ore, 2 minute, 2 secunde');
      expect(clockformatted_2[1], '2 ore, 2 min., 2 s');
      expect(clockformatted_2[2], '2 h, 2 m, 2 s');
      expect(clockformatted_2[3], '2 h, 2 m, 2 s');

      expect(clockformatted_20[0], '20 de ore, 20 de minute, 20 de secunde');
      expect(clockformatted_20[1], '20 ore, 20 min., 20 s');
      expect(clockformatted_20[2], '20 h, 20 m, 20 s');
      expect(clockformatted_20[3], '20 h, 20 m, 20 s');
    });
    test('testDurFmt_sr_Cyrl_RS', () {
      // 1 4 20
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_4 = <String>[];
      final List<String> textformatted_20 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_4 = <String>[];
      final List<String> clockformatted_20 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sr-Cyrl-RS', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_4.add(
            fmt.format(ILibDateOptions(year: 4, month: 4, week: 4, day: 4)));
        textformatted_20.add(fmt
            .format(ILibDateOptions(year: 20, month: 20, week: 20, day: 20)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_4
            .add(fmt.format(ILibDateOptions(hour: 4, minute: 4, second: 4)));
        clockformatted_20
            .add(fmt.format(ILibDateOptions(hour: 20, minute: 20, second: 20)));
      }

      expect(textformatted_1[0], '1 година, 1 месец, 1 недеља и 1 дан');
      expect(textformatted_1[1], '1 год, 1 мес., 1 нед., 1 дан');
      expect(textformatted_1[2], '1 г, 1 м, 1 н, 1 д');
      expect(textformatted_1[3], '1 г, 1 м, 1 н, 1 д');

      expect(textformatted_4[0], '4 године, 4 месеца, 4 недеље и 4 дана');
      expect(textformatted_4[1], '4 год., 4 мес., 4 нед., 4 дана');
      expect(textformatted_4[2], '4 г, 4 м, 4 н, 4 д');
      expect(textformatted_4[3], '4 г, 4 м, 4 н, 4 д');

      expect(textformatted_20[0], '20 година, 20 месеци, 20 недеља и 20 дана');
      expect(textformatted_20[1], '20 год., 20 мес., 20 нед., 20 дана');
      expect(textformatted_20[2], '20 г, 20 м, 20 н, 20 д');
      expect(textformatted_20[3], '20 г, 20 м, 20 н, 20 д');

      expect(clockformatted_1[0], '1 сат, 1 минут и 1 секунда');
      expect(clockformatted_1[1], '1 сат, 1 мин, 1 сек');
      expect(clockformatted_1[2], '1 ч, 1 м, 1 с');
      expect(clockformatted_1[3], '1 ч, 1 м, 1 с');

      expect(clockformatted_4[0], '4 сата, 4 минута и 4 секунде');
      expect(clockformatted_4[1], '4 сата, 4 мин, 4 сек');
      expect(clockformatted_4[2], '4 ч, 4 м, 4 с');
      expect(clockformatted_4[3], '4 ч, 4 м, 4 с');

      expect(clockformatted_20[0], '20 сати, 20 минута и 20 секунди');
      expect(clockformatted_20[1], '20 сати, 20 мин, 20 сек');
      expect(clockformatted_20[2], '20 ч, 20 м, 20 с');
      expect(clockformatted_20[3], '20 ч, 20 м, 20 с');
    });
    test('testDurFmt_sr_Latn_RS', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sr-Latn-RS', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 godina, 1 mesec, 1 nedelja i 1 dan');
      expect(textformatted_1[1], '1 god, 1 mes., 1 ned., 1 dan');
      expect(textformatted_1[2], '1 g, 1 m, 1 n, 1 d');
      expect(textformatted_1[3], '1 g, 1 m, 1 n, 1 d');

      expect(textformatted_2[0], '2 godine, 2 meseca, 2 nedelje i 2 dana');
      expect(textformatted_2[1], '2 god., 2 mes., 2 ned., 2 dana');
      expect(textformatted_2[2], '2 g, 2 m, 2 n, 2 d');
      expect(textformatted_2[3], '2 g, 2 m, 2 n, 2 d');

      expect(textformatted_5[0], '5 godina, 5 meseci, 5 nedelja i 5 dana');
      expect(textformatted_5[1], '5 god., 5 mes., 5 ned., 5 dana');
      expect(textformatted_5[2], '5 g, 5 m, 5 n, 5 d');
      expect(textformatted_5[3], '5 g, 5 m, 5 n, 5 d');

      expect(clockformatted_1[0], '1 sat, 1 minut i 1 sekunda');
      expect(clockformatted_1[1], '1 sat, 1 min, 1 sek');
      expect(clockformatted_1[2], '1 č, 1 m, 1 s');
      expect(clockformatted_1[3], '1 č, 1 m, 1 s');

      expect(clockformatted_2[0], '2 sata, 2 minuta i 2 sekunde');
      expect(clockformatted_2[1], '2 sata, 2 min, 2 sek');
      expect(clockformatted_2[2], '2 č, 2 m, 2 s');
      expect(clockformatted_2[3], '2 č, 2 m, 2 s');

      expect(clockformatted_5[0], '5 sati, 5 minuta i 5 sekundi');
      expect(clockformatted_5[1], '5 sati, 5 min, 5 sek');
      expect(clockformatted_5[2], '5 č, 5 m, 5 s');
      expect(clockformatted_5[3], '5 č, 5 m, 5 s');
    });
    test('testDurFmt_ru_BY', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ru-BY', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 год 1 месяц 1 неделя 1 день');
      expect(textformatted_1[1], '1 г. 1 мес. 1 нед. 1 дн.');
      expect(textformatted_1[2], '1 г. 1 м. 1 н. 1 д.');
      expect(textformatted_1[3], '1 г. 1 м. 1 н. 1 д.');

      expect(textformatted_2[0], '2 года 2 месяца 2 недели 2 дня');
      expect(textformatted_2[1], '2 г. 2 мес. 2 нед. 2 дн.');
      expect(textformatted_2[2], '2 г. 2 м. 2 н. 2 д.');
      expect(textformatted_2[3], '2 г. 2 м. 2 н. 2 д.');

      expect(textformatted_5[0], '5 лет 5 месяцев 5 недель 5 дней');
      expect(textformatted_5[1], '5 л. 5 мес. 5 нед. 5 дн.');
      expect(textformatted_5[2], '5 л. 5 м. 5 н. 5 д.');
      expect(textformatted_5[3], '5 л. 5 м. 5 н. 5 д.');

      expect(clockformatted_1[0], '1 час 1 минута 1 секунда');
      expect(clockformatted_1[1], '1 ч 1 мин 1 с');
      expect(clockformatted_1[2], '1 ч 1 мин 1 с');
      expect(clockformatted_1[3], '1 ч 1 мин 1 с');

      expect(clockformatted_2[0], '2 часа 2 минуты 2 секунды');
      expect(clockformatted_2[1], '2 ч 2 мин 2 с');
      expect(clockformatted_2[2], '2 ч 2 мин 2 с');
      expect(clockformatted_2[3], '2 ч 2 мин 2 с');

      expect(clockformatted_5[0], '5 часов 5 минут 5 секунд');
      expect(clockformatted_5[1], '5 ч 5 мин 5 с');
      expect(clockformatted_5[2], '5 ч 5 мин 5 с');
      expect(clockformatted_5[3], '5 ч 5 мин 5 с');
    });
    test('testDurFmt_ru_KG', () {
      // 41 24 25
      final List<String> textformatted_41 = <String>[];
      final List<String> textformatted_24 = <String>[];
      final List<String> textformatted_25 = <String>[];
      final List<String> clockformatted_41 = <String>[];
      final List<String> clockformatted_24 = <String>[];
      final List<String> clockformatted_25 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ru-KG', style: 'text', length: length[i]));

        textformatted_41.add(fmt
            .format(ILibDateOptions(year: 41, month: 41, week: 41, day: 41)));
        textformatted_24.add(fmt
            .format(ILibDateOptions(year: 24, month: 24, week: 24, day: 24)));
        textformatted_25.add(fmt
            .format(ILibDateOptions(year: 25, month: 25, week: 25, day: 25)));

        clockformatted_41
            .add(fmt.format(ILibDateOptions(hour: 41, minute: 41, second: 41)));
        clockformatted_24
            .add(fmt.format(ILibDateOptions(hour: 24, minute: 24, second: 24)));
        clockformatted_25
            .add(fmt.format(ILibDateOptions(hour: 25, minute: 25, second: 25)));
      }

      expect(textformatted_41[0], '41 год 41 месяц 41 неделя 41 день');
      expect(textformatted_41[1], '41 г. 41 мес. 41 нед. 41 дн.');
      expect(textformatted_41[2], '41 г. 41 м. 41 н. 41 д.');
      expect(textformatted_41[3], '41 г. 41 м. 41 н. 41 д.');

      expect(textformatted_24[0], '24 года 24 месяца 24 недели 24 дня');
      expect(textformatted_24[1], '24 г. 24 мес. 24 нед. 24 дн.');
      expect(textformatted_24[2], '24 г. 24 м. 24 н. 24 д.');
      expect(textformatted_24[3], '24 г. 24 м. 24 н. 24 д.');

      expect(textformatted_25[0], '25 лет 25 месяцев 25 недель 25 дней');
      expect(textformatted_25[1], '25 л. 25 мес. 25 нед. 25 дн.');
      expect(textformatted_25[2], '25 л. 25 м. 25 н. 25 д.');
      expect(textformatted_25[3], '25 л. 25 м. 25 н. 25 д.');

      expect(clockformatted_41[0], '41 час 41 минута 41 секунда');
      expect(clockformatted_41[1], '41 ч 41 мин 41 с');
      expect(clockformatted_41[2], '41 ч 41 мин 41 с');
      expect(clockformatted_41[3], '41 ч 41 мин 41 с');

      expect(clockformatted_24[0], '24 часа 24 минуты 24 секунды');
      expect(clockformatted_24[1], '24 ч 24 мин 24 с');
      expect(clockformatted_24[2], '24 ч 24 мин 24 с');
      expect(clockformatted_24[3], '24 ч 24 мин 24 с');

      expect(clockformatted_25[0], '25 часов 25 минут 25 секунд');
      expect(clockformatted_25[1], '25 ч 25 мин 25 с');
      expect(clockformatted_25[2], '25 ч 25 мин 25 с');
      expect(clockformatted_25[3], '25 ч 25 мин 25 с');
    });
    test('testDurFmt_ru_KZ', () {
      // 31 22 20
      final List<String> textformatted_31 = <String>[];
      final List<String> textformatted_22 = <String>[];
      final List<String> textformatted_20 = <String>[];
      final List<String> clockformatted_31 = <String>[];
      final List<String> clockformatted_22 = <String>[];
      final List<String> clockformatted_20 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ru-KZ', style: 'text', length: length[i]));

        textformatted_31.add(fmt
            .format(ILibDateOptions(year: 31, month: 31, week: 31, day: 31)));
        textformatted_22.add(fmt
            .format(ILibDateOptions(year: 22, month: 22, week: 22, day: 22)));
        textformatted_20.add(fmt
            .format(ILibDateOptions(year: 20, month: 20, week: 20, day: 20)));

        clockformatted_31
            .add(fmt.format(ILibDateOptions(hour: 31, minute: 31, second: 31)));
        clockformatted_22
            .add(fmt.format(ILibDateOptions(hour: 22, minute: 22, second: 22)));
        clockformatted_20
            .add(fmt.format(ILibDateOptions(hour: 20, minute: 20, second: 20)));
      }

      expect(textformatted_31[0], '31 год 31 месяц 31 неделя 31 день');
      expect(textformatted_31[1], '31 г. 31 мес. 31 нед. 31 дн.');
      expect(textformatted_31[2], '31 г. 31 м. 31 н. 31 д.');
      expect(textformatted_31[3], '31 г. 31 м. 31 н. 31 д.');

      expect(textformatted_22[0], '22 года 22 месяца 22 недели 22 дня');
      expect(textformatted_22[1], '22 г. 22 мес. 22 нед. 22 дн.');
      expect(textformatted_22[2], '22 г. 22 м. 22 н. 22 д.');
      expect(textformatted_22[3], '22 г. 22 м. 22 н. 22 д.');

      expect(textformatted_20[0], '20 лет 20 месяцев 20 недель 20 дней');
      expect(textformatted_20[1], '20 л. 20 мес. 20 нед. 20 дн.');
      expect(textformatted_20[2], '20 л. 20 м. 20 н. 20 д.');
      expect(textformatted_20[3], '20 л. 20 м. 20 н. 20 д.');

      expect(clockformatted_31[0], '31 час 31 минута 31 секунда');
      expect(clockformatted_31[1], '31 ч 31 мин 31 с');
      expect(clockformatted_31[2], '31 ч 31 мин 31 с');
      expect(clockformatted_31[3], '31 ч 31 мин 31 с');

      expect(clockformatted_22[0], '22 часа 22 минуты 22 секунды');
      expect(clockformatted_22[1], '22 ч 22 мин 22 с');
      expect(clockformatted_22[2], '22 ч 22 мин 22 с');
      expect(clockformatted_22[3], '22 ч 22 мин 22 с');

      expect(clockformatted_20[0], '20 часов 20 минут 20 секунд');
      expect(clockformatted_20[1], '20 ч 20 мин 20 с');
      expect(clockformatted_20[2], '20 ч 20 мин 20 с');
      expect(clockformatted_20[3], '20 ч 20 мин 20 с');
    });
    test('testDurFmt_ru_GE', () {
      // 21 4 19
      final List<String> textformatted_21 = <String>[];
      final List<String> textformatted_4 = <String>[];
      final List<String> textformatted_19 = <String>[];
      final List<String> clockformatted_21 = <String>[];
      final List<String> clockformatted_4 = <String>[];
      final List<String> clockformatted_19 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ru-GE', style: 'text', length: length[i]));

        textformatted_21.add(fmt
            .format(ILibDateOptions(year: 21, month: 21, week: 21, day: 21)));
        textformatted_4.add(
            fmt.format(ILibDateOptions(year: 4, month: 4, week: 4, day: 4)));
        textformatted_19.add(fmt
            .format(ILibDateOptions(year: 19, month: 19, week: 19, day: 19)));

        clockformatted_21
            .add(fmt.format(ILibDateOptions(hour: 21, minute: 21, second: 21)));
        clockformatted_4
            .add(fmt.format(ILibDateOptions(hour: 4, minute: 4, second: 4)));
        clockformatted_19
            .add(fmt.format(ILibDateOptions(hour: 19, minute: 19, second: 19)));
      }

      expect(textformatted_21[0], '21 год 21 месяц 21 неделя 21 день');
      expect(textformatted_21[1], '21 г. 21 мес. 21 нед. 21 дн.');
      expect(textformatted_21[2], '21 г. 21 м. 21 н. 21 д.');
      expect(textformatted_21[3], '21 г. 21 м. 21 н. 21 д.');

      expect(textformatted_4[0], '4 года 4 месяца 4 недели 4 дня');
      expect(textformatted_4[1], '4 г. 4 мес. 4 нед. 4 дн.');
      expect(textformatted_4[2], '4 г. 4 м. 4 н. 4 д.');
      expect(textformatted_4[3], '4 г. 4 м. 4 н. 4 д.');

      expect(textformatted_19[0], '19 лет 19 месяцев 19 недель 19 дней');
      expect(textformatted_19[1], '19 л. 19 мес. 19 нед. 19 дн.');
      expect(textformatted_19[2], '19 л. 19 м. 19 н. 19 д.');
      expect(textformatted_19[3], '19 л. 19 м. 19 н. 19 д.');

      expect(clockformatted_21[0], '21 час 21 минута 21 секунда');
      expect(clockformatted_21[1], '21 ч 21 мин 21 с');
      expect(clockformatted_21[2], '21 ч 21 мин 21 с');
      expect(clockformatted_21[3], '21 ч 21 мин 21 с');

      expect(clockformatted_4[0], '4 часа 4 минуты 4 секунды');
      expect(clockformatted_4[1], '4 ч 4 мин 4 с');
      expect(clockformatted_4[2], '4 ч 4 мин 4 с');
      expect(clockformatted_4[3], '4 ч 4 мин 4 с');

      expect(clockformatted_19[0], '19 часов 19 минут 19 секунд');
      expect(clockformatted_19[1], '19 ч 19 мин 19 с');
      expect(clockformatted_19[2], '19 ч 19 мин 19 с');
      expect(clockformatted_19[3], '19 ч 19 мин 19 с');
    });
    test('testDurFmt_ru_RU', () {
      // 31 32 19
      final List<String> textformatted_31 = <String>[];
      final List<String> textformatted_32 = <String>[];
      final List<String> textformatted_19 = <String>[];
      final List<String> clockformatted_31 = <String>[];
      final List<String> clockformatted_32 = <String>[];
      final List<String> clockformatted_19 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ru-RU', style: 'text', length: length[i]));

        textformatted_31.add(fmt
            .format(ILibDateOptions(year: 31, month: 31, week: 31, day: 31)));
        textformatted_32.add(fmt
            .format(ILibDateOptions(year: 32, month: 32, week: 32, day: 32)));
        textformatted_19.add(fmt
            .format(ILibDateOptions(year: 19, month: 19, week: 19, day: 19)));

        clockformatted_31
            .add(fmt.format(ILibDateOptions(hour: 31, minute: 31, second: 31)));
        clockformatted_32
            .add(fmt.format(ILibDateOptions(hour: 32, minute: 32, second: 32)));
        clockformatted_19
            .add(fmt.format(ILibDateOptions(hour: 19, minute: 19, second: 19)));
      }

      expect(textformatted_31[0], '31 год 31 месяц 31 неделя 31 день');
      expect(textformatted_31[1], '31 г. 31 мес. 31 нед. 31 дн.');
      expect(textformatted_31[2], '31 г. 31 м. 31 н. 31 д.');
      expect(textformatted_31[3], '31 г. 31 м. 31 н. 31 д.');

      expect(textformatted_32[0], '32 года 32 месяца 32 недели 32 дня');
      expect(textformatted_32[1], '32 г. 32 мес. 32 нед. 32 дн.');
      expect(textformatted_32[2], '32 г. 32 м. 32 н. 32 д.');
      expect(textformatted_32[3], '32 г. 32 м. 32 н. 32 д.');

      expect(textformatted_19[0], '19 лет 19 месяцев 19 недель 19 дней');
      expect(textformatted_19[1], '19 л. 19 мес. 19 нед. 19 дн.');
      expect(textformatted_19[2], '19 л. 19 м. 19 н. 19 д.');
      expect(textformatted_19[3], '19 л. 19 м. 19 н. 19 д.');

      expect(clockformatted_31[0], '31 час 31 минута 31 секунда');
      expect(clockformatted_31[1], '31 ч 31 мин 31 с');
      expect(clockformatted_31[2], '31 ч 31 мин 31 с');
      expect(clockformatted_31[3], '31 ч 31 мин 31 с');

      expect(clockformatted_32[0], '32 часа 32 минуты 32 секунды');
      expect(clockformatted_32[1], '32 ч 32 мин 32 с');
      expect(clockformatted_32[2], '32 ч 32 мин 32 с');
      expect(clockformatted_32[3], '32 ч 32 мин 32 с');

      expect(clockformatted_19[0], '19 часов 19 минут 19 секунд');
      expect(clockformatted_19[1], '19 ч 19 мин 19 с');
      expect(clockformatted_19[2], '19 ч 19 мин 19 с');
      expect(clockformatted_19[3], '19 ч 19 мин 19 с');
    });
    test('testDurFmt_ru_UA', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ru-UA', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 год 1 месяц 1 неделя 1 день');
      expect(textformatted_1[1], '1 г. 1 мес. 1 нед. 1 дн.');
      expect(textformatted_1[2], '1 г. 1 м. 1 н. 1 д.');
      expect(textformatted_1[3], '1 г. 1 м. 1 н. 1 д.');

      expect(textformatted_2[0], '2 года 2 месяца 2 недели 2 дня');
      expect(textformatted_2[1], '2 г. 2 мес. 2 нед. 2 дн.');
      expect(textformatted_2[2], '2 г. 2 м. 2 н. 2 д.');
      expect(textformatted_2[3], '2 г. 2 м. 2 н. 2 д.');

      expect(textformatted_5[0], '5 лет 5 месяцев 5 недель 5 дней');
      expect(textformatted_5[1], '5 л. 5 мес. 5 нед. 5 дн.');
      expect(textformatted_5[2], '5 л. 5 м. 5 н. 5 д.');
      expect(textformatted_5[3], '5 л. 5 м. 5 н. 5 д.');

      expect(clockformatted_1[0], '1 час 1 минута 1 секунда');
      expect(clockformatted_1[1], '1 ч 1 мин 1 с');
      expect(clockformatted_1[2], '1 ч 1 мин 1 с');
      expect(clockformatted_1[3], '1 ч 1 мин 1 с');

      expect(clockformatted_2[0], '2 часа 2 минуты 2 секунды');
      expect(clockformatted_2[1], '2 ч 2 мин 2 с');
      expect(clockformatted_2[2], '2 ч 2 мин 2 с');
      expect(clockformatted_2[3], '2 ч 2 мин 2 с');

      expect(clockformatted_5[0], '5 часов 5 минут 5 секунд');
      expect(clockformatted_5[1], '5 ч 5 мин 5 с');
      expect(clockformatted_5[2], '5 ч 5 мин 5 с');
      expect(clockformatted_5[3], '5 ч 5 мин 5 с');
    });
    test('testDurFmt_sk_SK', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sk-SK', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 rok, 1 mesiac, 1 týždeň, 1 deň');
      expect(textformatted_1[1], '1 r., 1 mes., 1 týž., 1 deň');
      expect(textformatted_1[2], '1 r., 1 m., 1 t., 1 d.');
      expect(textformatted_1[3], '1 r., 1 m., 1 t., 1 d.');

      expect(textformatted_2[0], '2 roky, 2 mesiace, 2 týždne, 2 dni');
      expect(textformatted_2[1], '2 r., 2 mes., 2 týž., 2 dni');
      expect(textformatted_2[2], '2 r., 2 m., 2 t., 2 d.');
      expect(textformatted_2[3], '2 r., 2 m., 2 t., 2 d.');

      expect(textformatted_5[0], '5 rokov, 5 mesiacov, 5 týždňov, 5 dní');
      expect(textformatted_5[1], '5 r., 5 mes., 5 týž., 5 dní');
      expect(textformatted_5[2], '5 r., 5 m., 5 t., 5 d.');
      expect(textformatted_5[3], '5 r., 5 m., 5 t., 5 d.');

      expect(clockformatted_1[0], '1 hodina, 1 minúta, 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 min, 1 s');
      expect(clockformatted_1[3], '1 h, 1 min, 1 s');

      expect(clockformatted_2[0], '2 hodiny, 2 minúty, 2 sekundy');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2 h, 2 min, 2 s');
      expect(clockformatted_2[3], '2 h, 2 min, 2 s');

      expect(clockformatted_5[0], '5 hodín, 5 minút, 5 sekúnd');
      expect(clockformatted_5[1], '5 h, 5 min, 5 s');
      expect(clockformatted_5[2], '5 h, 5 min, 5 s');
      expect(clockformatted_5[3], '5 h, 5 min, 5 s');
    });
    test('testDurFmt_sl_SI', () {
      // 1 2 3 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sl-SI', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 leto, 1 mesec, 1 teden in 1 dan');
      expect(textformatted_1[1], '1 l, 1 m, 1 t, 1 d');
      expect(textformatted_1[2], '1 l, 1 m, 1 t, 1 d');
      expect(textformatted_1[3], '1 l, 1 m, 1 t, 1 d');

      expect(textformatted_2[0], '2 leti, 2 meseca, 2 tedna in 2 dneva');
      expect(textformatted_2[1], '2 l, 2 m, 2 t, 2 d');
      expect(textformatted_2[2], '2 l, 2 m, 2 t, 2 d');
      expect(textformatted_2[3], '2 l, 2 m, 2 t, 2 d');

      expect(textformatted_3[0], '3 let, 3 meseci, 3 tedni in 3 dni');
      expect(textformatted_3[1], '3 l, 3 m, 3 t, 3 d');
      expect(textformatted_3[2], '3 l, 3 m, 3 t, 3 d');
      expect(textformatted_3[3], '3 l, 3 m, 3 t, 3 d');

      expect(textformatted_5[0], '5 let, 5 mesecev, 5 tednov in 5 dni');
      expect(textformatted_5[1], '5 l, 5 m, 5 t, 5 d');
      expect(textformatted_5[2], '5 l, 5 m, 5 t, 5 d');
      expect(textformatted_5[3], '5 l, 5 m, 5 t, 5 d');

      expect(clockformatted_1[0], '1 ura, 1 minuta in 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min, 1 sek.');
      expect(clockformatted_1[2], '1 h, 1 min, 1 s');
      expect(clockformatted_1[3], '1 h, 1 min, 1 s');

      expect(clockformatted_2[0], '2 uri, 2 minuti in 2 sekundi');
      expect(clockformatted_2[1], '2 h, 2 min, 2 sek.');
      expect(clockformatted_2[2], '2 h, 2 min, 2 s');
      expect(clockformatted_2[3], '2 h, 2 min, 2 s');

      expect(clockformatted_3[0], '3 ure, 3 minute in 3 sekunde');
      expect(clockformatted_3[1], '3 h, 3 min, 3 sek.');
      expect(clockformatted_3[2], '3 h, 3 min, 3 s');
      expect(clockformatted_3[3], '3 h, 3 min, 3 s');

      expect(clockformatted_5[0], '5 ur, 5 minut in 5 sekund');
      expect(clockformatted_5[1], '5 h, 5 min, 5 sek.');
      expect(clockformatted_5[2], '5 h, 5 min, 5 s');
      expect(clockformatted_5[3], '5 h, 5 min, 5 s');
    });
    test('testDurFmt_sq_AL', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sq-AL', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 vit, 1 muaj, 1 javë e 1 ditë');
      expect(textformatted_1[1], '1 vit, 1 muaj, 1 javë, 1 ditë');
      expect(textformatted_1[2], '1 vit, 1 muaj, 1 javë, 1 ditë');
      expect(textformatted_1[3], '1 vit, 1 muaj, 1 javë, 1 ditë');

      expect(textformatted_16[0], '16 vjet, 16 muaj, 16 javë e 16 ditë');
      expect(textformatted_16[1], '16 vjet, 16 muaj, 16 javë, 16 ditë');
      expect(textformatted_16[2], '16 vjet, 16 muaj, 16 javë, 16 ditë');
      expect(textformatted_16[3], '16 vjet, 16 muaj, 16 javë, 16 ditë');

      expect(clockformatted_1[0], '1 orë, 1 minutë e 1 sekondë');
      expect(clockformatted_1[1], '1 orë, 1 min., 1 sek.');
      expect(clockformatted_1[2], '1 orë, 1 min., 1 sek.');
      expect(clockformatted_1[3], '1 orë, 1 min., 1 sek.');

      expect(clockformatted_16[0], '16 orë, 16 minuta e 16 sekonda');
      expect(clockformatted_16[1], '16 orë, 16 min., 16 sek.');
      expect(clockformatted_16[2], '16 orë, 16 min., 16 sek.');
      expect(clockformatted_16[3], '16 orë, 16 min., 16 sek.');
    });
    test('testDurFmt_sq_ME', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sq-ME', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 vit, 1 muaj, 1 javë e 1 ditë');
      expect(textformatted_1[1], '1 vit, 1 muaj, 1 javë, 1 ditë');
      expect(textformatted_1[2], '1 vit, 1 muaj, 1 javë, 1 ditë');
      expect(textformatted_1[3], '1 vit, 1 muaj, 1 javë, 1 ditë');

      expect(textformatted_17[0], '17 vjet, 17 muaj, 17 javë e 17 ditë');
      expect(textformatted_17[1], '17 vjet, 17 muaj, 17 javë, 17 ditë');
      expect(textformatted_17[2], '17 vjet, 17 muaj, 17 javë, 17 ditë');
      expect(textformatted_17[3], '17 vjet, 17 muaj, 17 javë, 17 ditë');

      expect(clockformatted_1[0], '1 orë, 1 minutë e 1 sekondë');
      expect(clockformatted_1[1], '1 orë, 1 min., 1 sek.');
      expect(clockformatted_1[2], '1 orë, 1 min., 1 sek.');
      expect(clockformatted_1[3], '1 orë, 1 min., 1 sek.');

      expect(clockformatted_17[0], '17 orë, 17 minuta e 17 sekonda');
      expect(clockformatted_17[1], '17 orë, 17 min., 17 sek.');
      expect(clockformatted_17[2], '17 orë, 17 min., 17 sek.');
      expect(clockformatted_17[3], '17 orë, 17 min., 17 sek.');
    });
    test('testDurFmt_sv_FI', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sv-FI', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 år, 1 månad, 1 vecka, 1 dygn');
      expect(textformatted_1[1], '1 år, 1 mån, 1 v, 1 d');
      expect(textformatted_1[2], '1å, 1m, 1v, 1d');
      expect(textformatted_1[3], '1å 1m 1v 1d');

      expect(textformatted_2[0], '2 år, 2 månader, 2 veckor, 2 dygn');
      expect(textformatted_2[1], '2 år, 2 mån, 2 v, 2 d');
      expect(textformatted_2[2], '2å, 2m, 2v, 2d');
      expect(textformatted_2[3], '2å 2m 2v 2d');

      expect(clockformatted_1[0], '1 timme, 1 minut, 1 sekund');
      expect(clockformatted_1[1], '1 tim, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 timmar, 2 minuter, 2 sekunder');
      expect(clockformatted_2[1], '2 tim, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_sv_SE', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'sv-SE', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 år, 1 månad, 1 vecka, 1 dygn');
      expect(textformatted_1[1], '1 år, 1 mån, 1 v, 1 d');
      expect(textformatted_1[2], '1å, 1m, 1v, 1d');
      expect(textformatted_1[3], '1å 1m 1v 1d');

      expect(textformatted_17[0], '17 år, 17 månader, 17 veckor, 17 dygn');
      expect(textformatted_17[1], '17 år, 17 mån, 17 v, 17 d');
      expect(textformatted_17[2], '17å, 17m, 17v, 17d');
      expect(textformatted_17[3], '17å 17m 17v 17d');

      expect(clockformatted_1[0], '1 timme, 1 minut, 1 sekund');
      expect(clockformatted_1[1], '1 tim, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_17[0], '17 timmar, 17 minuter, 17 sekunder');
      expect(clockformatted_17[1], '17 tim, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17m, 17s');
      expect(clockformatted_17[3], '17h 17m 17s');
    });
    test('testDurFmt_ta_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ta-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 ஆண்டு, 1 மாதம், 1 வாரம், 1 நாள்');
      expect(textformatted_1[1], '1 ஆண்டு, 1 மாதம், 1 வாரம், 1 நாள்');
      expect(textformatted_1[2], '1 ஆ 1 மா 1 வா 1 நா');
      expect(textformatted_1[3], '1 ஆ 1 மா 1 வா 1 நா');

      expect(
          textformatted_2[0], '2 ஆண்டுகள், 2 மாதங்கள், 2 வாரங்கள், 2 நாட்கள்');
      expect(textformatted_2[1], '2 ஆண்டு., 2 மாத., 2 வார., 2 நாட்கள்');
      expect(textformatted_2[2], '2 ஆ 2 மா 2 வா 2 நா');
      expect(textformatted_2[3], '2 ஆ 2 மா 2 வா 2 நா');

      expect(clockformatted_1[0], '1 மணிநேரம், 1 நிமிடம், 1 விநாடி');
      expect(clockformatted_1[1], '1 மணிநேரம், 1 நிமிடம், 1 விநாடி');
      expect(clockformatted_1[2], '1 ம.நே. 1 நிமி. 1 வி.');
      expect(clockformatted_1[3], '1 ம.நே. 1 நிமி. 1 வி.');

      expect(clockformatted_2[0], '2 மணிநேரங்கள், 2 நிமிடங்கள், 2 விநாடிகள்');
      expect(clockformatted_2[1], '2 மணிநேரம், 2 நிமிட, 2 விநாடி');
      expect(clockformatted_2[2], '2 ம.நே. 2 நிமி. 2 வி.');
      expect(clockformatted_2[3], '2 ம.நே. 2 நிமி. 2 வி.');
    });
    test('testDurFmt_te_IN', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'te-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 సంవత్సరం, 1 నెల, 1 వారం, 1 రోజు');
      expect(textformatted_1[1], '1 సం., 1 నె., 1 వా., 1 రోజు');
      expect(textformatted_1[2], '1సం, 1నె, 1వా, 1రో');
      expect(textformatted_1[3], '1సం, 1నె, 1వా, 1రో');

      expect(
          textformatted_16[0], '16 సంవత్సరాలు, 16 నెలలు, 16 వారాలు, 16 రోజులు');
      expect(textformatted_16[1], '16 సం., 16 నె., 16 వా., 16 రోజులు');
      expect(textformatted_16[2], '16సం, 16నె, 16వా, 16రో');
      expect(textformatted_16[3], '16సం, 16నె, 16వా, 16రో');

      expect(clockformatted_1[0], '1 గంట, 1 నిమిషం, 1 సెకను');
      expect(clockformatted_1[1], '1 గం., 1 నిమి., 1 సె.');
      expect(clockformatted_1[2], '1గం, 1ని, 1సె');
      expect(clockformatted_1[3], '1గం, 1ని, 1సె');

      expect(clockformatted_16[0], '16 గంటలు, 16 నిమిషాలు, 16 సెకన్లు');
      expect(clockformatted_16[1], '16 గం., 16 నిమి., 16 సెక.');
      expect(clockformatted_16[2], '16గం, 16ని, 16సె');
      expect(clockformatted_16[3], '16గం, 16ని, 16సె');
    });
    test('testDurFmt_th_TH', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'th-TH', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 ปี 1 เดือน 1 สัปดาห์ และ 1 วัน');
      expect(textformatted_1[1], '1 ปี 1 เดือน 1 สัปดาห์ 1 วัน');
      expect(textformatted_1[2], '1ปี 1เดือน 1สัปดาห์ 1วัน');
      expect(textformatted_1[3], '1ปี 1เดือน 1สัปดาห์ 1วัน');

      expect(textformatted_16[0], '16 ปี 16 เดือน 16 สัปดาห์ และ 16 วัน');
      expect(textformatted_16[1], '16 ปี 16 เดือน 16 สัปดาห์ 16 วัน');
      expect(textformatted_16[2], '16ปี 16เดือน 16สัปดาห์ 16วัน');
      expect(textformatted_16[3], '16ปี 16เดือน 16สัปดาห์ 16วัน');

      expect(clockformatted_1[0], '1 ชั่วโมง 1 นาที และ 1 วินาที');
      expect(clockformatted_1[1], '1 ชม. 1 นาที 1 วิ');
      expect(clockformatted_1[2], '1ชม. 1นาที 1วิ');
      expect(clockformatted_1[3], '1ชม. 1นาที 1วิ');

      expect(clockformatted_16[0], '16 ชั่วโมง 16 นาที และ 16 วินาที');
      expect(clockformatted_16[1], '16 ชม. 16 นาที 16 วิ');
      expect(clockformatted_16[2], '16ชม. 16นาที 16วิ');
      expect(clockformatted_16[3], '16ชม. 16นาที 16วิ');
    });
    test('testDurFmt_tr_AM', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'tr-AM', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 yıl 1 ay 1 hafta 1 gün');
      expect(textformatted_1[1], '1 yıl 1 ay 1 hf. 1 gün');
      expect(textformatted_1[2], '1y 1a 1h 1g');
      expect(textformatted_1[3], '1y 1a 1h 1g');

      expect(textformatted_2[0], '2 yıl 2 ay 2 hafta 2 gün');
      expect(textformatted_2[1], '2 yıl 2 ay 2 hf. 2 gün');
      expect(textformatted_2[2], '2y 2a 2h 2g');
      expect(textformatted_2[3], '2y 2a 2h 2g');

      expect(clockformatted_1[0], '1 saat 1 dakika 1 saniye');
      expect(clockformatted_1[1], '1 sa. 1 dk. 1 sn.');
      expect(clockformatted_1[2], '1 sa 1d 1sn');
      expect(clockformatted_1[3], '1 sa 1d 1sn');

      expect(clockformatted_2[0], '2 saat 2 dakika 2 saniye');
      expect(clockformatted_2[1], '2 sa. 2 dk. 2 sn.');
      expect(clockformatted_2[2], '2s 2d 2sn');
      expect(clockformatted_2[3], '2s 2d 2sn');
    });
    test('testDurFmt_tr_AZ', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'tr-AZ', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 yıl 1 ay 1 hafta 1 gün');
      expect(textformatted_1[1], '1 yıl 1 ay 1 hf. 1 gün');
      expect(textformatted_1[2], '1y 1a 1h 1g');
      expect(textformatted_1[3], '1y 1a 1h 1g');

      expect(textformatted_16[0], '16 yıl 16 ay 16 hafta 16 gün');
      expect(textformatted_16[1], '16 yıl 16 ay 16 hf. 16 gün');
      expect(textformatted_16[2], '16y 16a 16h 16g');
      expect(textformatted_16[3], '16y 16a 16h 16g');

      expect(clockformatted_1[0], '1 saat 1 dakika 1 saniye');
      expect(clockformatted_1[1], '1 sa. 1 dk. 1 sn.');
      expect(clockformatted_1[2], '1 sa 1d 1sn');
      expect(clockformatted_1[3], '1 sa 1d 1sn');

      expect(clockformatted_16[0], '16 saat 16 dakika 16 saniye');
      expect(clockformatted_16[1], '16 sa. 16 dk. 16 sn.');
      expect(clockformatted_16[2], '16s 16d 16sn');
      expect(clockformatted_16[3], '16s 16d 16sn');
    });
    test('testDurFmt_tr_CY', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'tr-CY', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 yıl 1 ay 1 hafta 1 gün');
      expect(textformatted_1[1], '1 yıl 1 ay 1 hf. 1 gün');
      expect(textformatted_1[2], '1y 1a 1h 1g');
      expect(textformatted_1[3], '1y 1a 1h 1g');

      expect(textformatted_17[0], '17 yıl 17 ay 17 hafta 17 gün');
      expect(textformatted_17[1], '17 yıl 17 ay 17 hf. 17 gün');
      expect(textformatted_17[2], '17y 17a 17h 17g');
      expect(textformatted_17[3], '17y 17a 17h 17g');

      expect(clockformatted_1[0], '1 saat 1 dakika 1 saniye');
      expect(clockformatted_1[1], '1 sa. 1 dk. 1 sn.');
      expect(clockformatted_1[2], '1 sa 1d 1sn');
      expect(clockformatted_1[3], '1 sa 1d 1sn');

      expect(clockformatted_17[0], '17 saat 17 dakika 17 saniye');
      expect(clockformatted_17[1], '17 sa. 17 dk. 17 sn.');
      expect(clockformatted_17[2], '17s 17d 17sn');
      expect(clockformatted_17[3], '17s 17d 17sn');
    });
    test('testDurFmt_tr_TR', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'tr-TR', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 yıl 1 ay 1 hafta 1 gün');
      expect(textformatted_1[1], '1 yıl 1 ay 1 hf. 1 gün');
      expect(textformatted_1[2], '1y 1a 1h 1g');
      expect(textformatted_1[3], '1y 1a 1h 1g');

      expect(textformatted_2[0], '2 yıl 2 ay 2 hafta 2 gün');
      expect(textformatted_2[1], '2 yıl 2 ay 2 hf. 2 gün');
      expect(textformatted_2[2], '2y 2a 2h 2g');
      expect(textformatted_2[3], '2y 2a 2h 2g');

      expect(clockformatted_1[0], '1 saat 1 dakika 1 saniye');
      expect(clockformatted_1[1], '1 sa. 1 dk. 1 sn.');
      expect(clockformatted_1[2], '1 sa 1d 1sn');
      expect(clockformatted_1[3], '1 sa 1d 1sn');

      expect(clockformatted_2[0], '2 saat 2 dakika 2 saniye');
      expect(clockformatted_2[1], '2 sa. 2 dk. 2 sn.');
      expect(clockformatted_2[2], '2s 2d 2sn');
      expect(clockformatted_2[3], '2s 2d 2sn');
    });
    test('testDurFmt_uk_UA', () {
      // 1 2 5
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_5 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_5 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'uk-UA', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_5.add(
            fmt.format(ILibDateOptions(year: 5, month: 5, week: 5, day: 5)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_5
            .add(fmt.format(ILibDateOptions(hour: 5, minute: 5, second: 5)));
      }

      expect(textformatted_1[0], '1 рік, 1 місяць, 1 тиждень і 1 день');
      expect(textformatted_1[1], '1 р., 1 міс., 1 тиж., 1 дн.');
      expect(textformatted_1[2], '1р, 1м, 1т, 1д');
      expect(textformatted_1[3], '1р, 1м, 1т, 1д');

      expect(textformatted_2[0], '2 роки, 2 місяці, 2 тижні і 2 дні');
      expect(textformatted_2[1], '2 р., 2 міс., 2 тиж., 2 дн.');
      expect(textformatted_2[2], '2р, 2м, 2т, 2д');
      expect(textformatted_2[3], '2р, 2м, 2т, 2д');

      expect(textformatted_5[0], '5 років, 5 місяців, 5 тижнів і 5 днів');
      expect(textformatted_5[1], '5 р., 5 міс., 5 тиж., 5 дн.');
      expect(textformatted_5[2], '5р, 5м, 5т, 5д');
      expect(textformatted_5[3], '5р, 5м, 5т, 5д');

      expect(clockformatted_1[0], '1 година, 1 хвилина і 1 секунда');
      expect(clockformatted_1[1], '1 год, 1 хв, 1 с');
      expect(clockformatted_1[2], '1г, 1х, 1с');
      expect(clockformatted_1[3], '1г, 1х, 1с');

      expect(clockformatted_2[0], '2 години, 2 хвилини і 2 секунди');
      expect(clockformatted_2[1], '2 год, 2 хв, 2 с');
      expect(clockformatted_2[2], '2г, 2х, 2с');
      expect(clockformatted_2[3], '2г, 2х, 2с');

      expect(clockformatted_5[0], '5 годин, 5 хвилин і 5 секунд');
      expect(clockformatted_5[1], '5 год, 5 хв, 5 с');
      expect(clockformatted_5[2], '5г, 5х, 5с');
      expect(clockformatted_5[3], '5г, 5х, 5с');
    });
    test('testDurFmt_ur_IN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ur-IN',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '‏1 سال, 1 مہینہ, 1 ہفتہ، اور 1 دن');
      expect(textformatted_1[1], '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن');
      expect(textformatted_1[2], '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن');
      expect(textformatted_1[3], '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن');

      expect(textformatted_2[0], '‏2 سال, 2 مہینے, 2 ہفتے، اور 2 دن');
      expect(textformatted_2[1], '‏2 سال، 2 مہینے، 2 ہفتے، 2 دن');
      expect(textformatted_2[2], '‏2 سال، 2 مہینے، 2 ہفتے، 2 دن');
      expect(textformatted_2[3], '‏2 سال، 2 مہینے، 2 ہفتے، 2 دن');

      expect(clockformatted_1[0], '‏1 گھنٹہ, 1 منٹ، اور 1 سیکنڈ');
      expect(clockformatted_1[1], '‏1 گھنٹہ، 1 منٹ، 1 سیکنڈ');
      expect(clockformatted_1[2], '‏1 گھنٹہ، 1 منٹ، 1 سیکنڈ');
      expect(clockformatted_1[3], '‏1 گھنٹہ، 1 منٹ، 1 سیکنڈ');

      expect(clockformatted_2[0], '‏2 گھنٹے, 2 منٹ، اور 2 سیکنڈ');
      expect(clockformatted_2[1], '‏2 گھنٹے، 2 منٹ، 2 سیکنڈ');
      expect(clockformatted_2[2], '‏2 گھنٹے، 2 منٹ، 2 سیکنڈ');
      expect(clockformatted_2[3], '‏2 گھنٹے، 2 منٹ، 2 سیکنڈ');
    });
    test('testDurFmt_uz_Latn_UZ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'uz-Latn-UZ', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 yil 1 oy 1 hafta 1 kun');
      expect(textformatted_1[1], '1 yil 1 oy 1 hafta 1 kun');
      expect(textformatted_1[2], '1 yil 1 oy 1 hafta 1 kun');
      expect(textformatted_1[3], '1 yil 1 oy 1 hafta 1 kun');

      expect(textformatted_2[0], '2 yil 2 oy 2 hafta 2 kun');
      expect(textformatted_2[1], '2 yil 2 oy 2 hafta 2 kun');
      expect(textformatted_2[2], '2 yil 2 oy 2 hafta 2 kun');
      expect(textformatted_2[3], '2 yil 2 oy 2 hafta 2 kun');

      expect(clockformatted_1[0], '1 soat 1 daqiqa 1 soniya');
      expect(clockformatted_1[1], '1 soat 1 daq. 1 son.');
      expect(clockformatted_1[2], '1 soat 1 daq. 1 s');
      expect(clockformatted_1[3], '1 soat 1 daq. 1 s');

      expect(clockformatted_2[0], '2 soat 2 daqiqa 2 soniya');
      expect(clockformatted_2[1], '2 soat 2 daq. 2 son.');
      expect(clockformatted_2[2], '2 soat 2 daq. 2 s');
      expect(clockformatted_2[3], '2 soat 2 daq. 2 s');
    });
    test('testDurFmt_testDurFmt_vi_VN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'vi-VN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 năm, 1 tháng, 1 tuần, 1 ngày');
      expect(textformatted_1[1], '1 năm, 1 tháng, 1 tuần, 1 ngày');
      expect(textformatted_1[2], '1 năm, 1 tháng, 1 tuần, 1 ngày');
      expect(textformatted_1[3], '1 năm 1 tháng 1 tuần 1 ngày');

      expect(textformatted_2[0], '2 năm, 2 tháng, 2 tuần, 2 ngày');
      expect(textformatted_2[1], '2 năm, 2 tháng, 2 tuần, 2 ngày');
      expect(textformatted_2[2], '2 năm, 2 tháng, 2 tuần, 2 ngày');
      expect(textformatted_2[3], '2 năm 2 tháng 2 tuần 2 ngày');

      expect(clockformatted_1[0], '1 giờ, 1 phút, 1 giây');
      expect(clockformatted_1[1], '1 giờ, 1 phút, 1 giây');
      expect(clockformatted_1[2], '1 giờ, 1 phút, 1 giây');
      expect(clockformatted_1[3], '1 giờ 1 phút 1 giây');

      expect(clockformatted_2[0], '2 giờ, 2 phút, 2 giây');
      expect(clockformatted_2[1], '2 giờ, 2 phút, 2 giây');
      expect(clockformatted_2[2], '2 giờ, 2 phút, 2 giây');
      expect(clockformatted_2[3], '2 giờ 2 phút 2 giây');
    });
    test('testDurFmt_zh_Hans_CN', () {
      // 1
      final List<String> textformatted_1 = <String>[];
      final List<String> clockformatted_1 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'zh-Hans-CN', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
      }

      expect(textformatted_1[0], '1年1个月1周1天');
      expect(textformatted_1[1], '1年1个月1周1天');
      expect(textformatted_1[2], '1年1个月1周1天');
      expect(textformatted_1[3], '1年1个月1周1天');

      expect(clockformatted_1[0], '1小时1分钟1秒钟');
      String result = (testPlatform == 'webOS') ? '1小时1分1秒' : '1小时1分钟1秒';
      expect(clockformatted_1[1], result);
      result = (testPlatform == 'webOS') ? '1小时1分1秒' : '1小时1分钟1秒';
      expect(clockformatted_1[2], result);
      result = (testPlatform == 'webOS') ? '1小时1分1秒' : '1小时1分钟1秒';
      expect(clockformatted_1[3], result);
    });
    test('testDurFmt_zh_Hant_HK', () {
      // 2
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'zh-Hant-HK', style: 'text', length: length[i]));

        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_2[0], '2 年 2 個月 2 星期 2 日');
      expect(textformatted_2[1], '2 年 2 個月 2 星期 2 日');
      expect(textformatted_2[2], '2年2個月2週2日');
      expect(textformatted_2[3], '2年2個月2週2日');

      expect(clockformatted_2[0], '2 小時 2 分鐘 2 秒');
      expect(clockformatted_2[1], '2 小時 2 分鐘 2 秒');
      expect(clockformatted_2[2], '2小時2分2秒');
      expect(clockformatted_2[3], '2小時2分2秒');
    });
    test('testDurFmt_zh_Hant_TW', () {
      // 1
      final List<String> textformatted_1 = <String>[];
      final List<String> clockformatted_1 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'zh-Hant-TW', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
      }

      expect(textformatted_1[0], '1 年 1 個月 1 週 1 天');
      expect(textformatted_1[1], '1 年 1 個月 1 週 1 天');
      expect(textformatted_1[2], '1 年1 個月1 週1 天');
      expect(textformatted_1[3], '1 年1 個月1 週1 天');

      expect(clockformatted_1[0], '1 小時 1 分鐘 1 秒');
      expect(clockformatted_1[1], '1 小時 1 分鐘 1 秒');
      expect(clockformatted_1[2], '1 小時1 分鐘1 秒');
      expect(clockformatted_1[3], '1 小時1 分鐘1 秒');
    });
    test('testDurFmt_en_GE', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-GE', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_CN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-CN', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_MX', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-MX', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_en_TW', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-TW', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_mn_MN', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'mn-MN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 жил 1 сар 1 долоо хоног 1 хоног');
      expect(textformatted_1[1], '1 жил 1 сар 1 д.х 1 хоног');
      expect(textformatted_1[2], '1ж 1с 1 д.х 1 хоног');
      expect(textformatted_1[3], '1ж 1с 1 д.х 1 хоног');

      expect(textformatted_2[0], '2 жил 2 сар 2 долоо хоног 2 хоног');
      expect(textformatted_2[1], '2 жил 2 сар 2 д.х 2 хоног');
      expect(textformatted_2[2], '2ж 2с 2 д.х 2 хоног');
      expect(textformatted_2[3], '2ж 2с 2 д.х 2 хоног');

      expect(clockformatted_1[0], '1 цаг 1 минут 1 секунд');
      expect(clockformatted_1[1], '1 цаг 1 мин 1 сек');
      expect(clockformatted_1[2], '1 ц 1 мин 1 сек');
      expect(clockformatted_1[3], '1 ц 1 мин 1 сек');

      expect(clockformatted_2[0], '2 цаг 2 минут 2 секунд');
      expect(clockformatted_2[1], '2 цаг 2 мин 2 сек');
      expect(clockformatted_2[2], '2 ц 2 мин 2 сек');
      expect(clockformatted_2[3], '2 ц 2 мин 2 сек');
    });
    test('testDurFmt_es_CA', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-CA', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a, 1 m., 1 sem., 1 d');
      expect(textformatted_1[2], '1a, 1m, 1sem, 1d');
      expect(textformatted_1[3], '1a 1m 1sem 1d');

      expect(textformatted_17[0], '17 años, 17 meses, 17 semanas y 17 días');
      expect(textformatted_17[1], '17 a, 17 m., 17 sem., 17 d');
      expect(textformatted_17[2], '17a, 17m, 17sem, 17d');
      expect(textformatted_17[3], '17a 17m 17sem 17d');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 horas, 17 minutos y 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_af_ZA', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'af-ZA', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 jaar, 1 maand, 1 week, 1 dag');
      expect(textformatted_1[1], '1 j., 1 md., 1 w., 1 dag');
      expect(textformatted_1[2], '1 j., 1 md., 1 w., 1 d.');
      expect(textformatted_1[3], '1 j. 1 md. 1 w. 1 d.');

      expect(textformatted_2[0], '2 jaar, 2 maande, 2 weke, 2 dae');
      expect(textformatted_2[1], '2 j., 2 md., 2 w., 2 dae');
      expect(textformatted_2[2], '2 j., 2 md., 2 w., 2 d.');
      expect(textformatted_2[3], '2 j. 2 md. 2 w. 2 d.');

      expect(clockformatted_1[0], '1 uur, 1 minuut, 1 sekonde');
      expect(clockformatted_1[1], '1 u., 1 min., 1 s.');
      expect(clockformatted_1[2], '1 u., 1 min., 1 s.');
      expect(clockformatted_1[3], '1 u. 1 min. 1 s.');

      expect(clockformatted_2[0], '2 uur, 2 minute, 2 sekondes');
      expect(clockformatted_2[1], '2 u., 2 min., 2 s.');
      expect(clockformatted_2[2], '2 u., 2 min., 2 s.');
      expect(clockformatted_2[3], '2 u. 2 min. 2 s.');
    });
    test('testDurFmt_am_ET', () {
      // 1 18
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_18 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_18 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'am-ET', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_18.add(fmt
            .format(ILibDateOptions(year: 18, month: 18, week: 18, day: 18)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_18
            .add(fmt.format(ILibDateOptions(hour: 18, minute: 18, second: 18)));
      }

      String result = (testPlatform == 'webOS')
          ? '1 ዓመት፣ 1 ወር፣ 1 ሳምንት እና 1 ቀን'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት እና 1 ቀናት';
      expect(textformatted_1[0], result);
      result = (testPlatform == 'webOS')
          ? '1 ዓመ፣ 1 ወር፣ 1 ሳም፣ 1 ቀናት'
          : '1 ዓመት፣ 1 ወራት፣ 1 ሳምንት፣ 1 ቀናት';
      expect(textformatted_1[1], result);
      result = (testPlatform == 'webOS')
          ? '1 ዓ፣ 1 ወ፣ 1 ሳ፣ 1 ቀ'
          : '1 ዓመት፣ 1 ወር፣ 1 ሳምንት፣ 1 ቀ';
      expect(textformatted_1[2], result);
      expect(textformatted_1[3], result);

      expect(textformatted_18[0], '18 ዓመታት፣ 18 ወራት፣ 18 ሳምንታት እና 18 ቀናት');
      result = (testPlatform == 'webOS')
          ? '18 ዓመ፣ 18 ወራ፣ 18 ሳም፣ 18 ቀናት'
          : '18 ዓመታት፣ 18 ወራት፣ 18 ሳምንታት፣ 18 ቀናት';
      expect(textformatted_18[1], result);

      result = (testPlatform == 'webOS')
          ? '18 ዓ፣ 18 ወ፣ 18 ሳ፣ 18 ቀ'
          : '18 ዓ፣ 18 ወር፣ 18 ሳምንት፣ 18 ቀ';
      expect(textformatted_18[2], result);
      expect(textformatted_18[3], result);

      expect(clockformatted_1[0], '1 ሰዓት፣ 1 ደቂቃ እና 1 ሰከንድ');
      expect(clockformatted_1[1], '1 ሰዓ፣ 1 ደቂ፣ 1 ሰከ');
      expect(clockformatted_1[2], '1 ሰ፣ 1 ደ፣ 1 ሰ');
      expect(clockformatted_1[3], '1 ሰ፣ 1 ደ፣ 1 ሰ');

      result = (testPlatform == 'webOS')
          ? '18 ሰዓት፣ 18 ደቂቃ እና 18 ሰከንድ'
          : '18 ሰዓቶች፣ 18 ደቂቃዎች እና 18 ሰከንዶች';
      expect(clockformatted_18[0], result);

      result = (testPlatform == 'webOS')
          ? '18 ሰዓ፣ 18 ደቂ፣ 18 ሰከ'
          : '18 ሰዓ፣ 18 ደቂቃ፣ 18 ሰከ';
      expect(clockformatted_18[1], result);

      expect(clockformatted_18[2], '18 ሰ፣ 18 ደ፣ 18 ሰ');
      expect(clockformatted_18[3], '18 ሰ፣ 18 ደ፣ 18 ሰ');
    });
    test('testDurFmt_ha_Latn_NG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ha-Latn-NG', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], 'shekara 1, wata 1, mako 1, rana 1');
      expect(textformatted_1[1], 'shkr 1, wat 1, mk 1, rana 1');
      expect(textformatted_1[2], 'shkr 1, w1, m1, r1');
      expect(textformatted_1[3], 'shkr 1, w1, m1, r1');

      expect(textformatted_2[0], 'shekaru 2, watanni 2, makonni 2, ranaku 2');
      expect(textformatted_2[1], 'shkru 2, wtnn 2, mkn 2, Rnk. 2');
      expect(textformatted_2[2], 's2, w2, m2, r2');
      expect(textformatted_2[3], 's2, w2, m2, r2');

      expect(clockformatted_1[0], 'sa′a 1, minti 1, daƙiƙa 1');
      expect(clockformatted_1[1], 's 1, mnt 1, d 1');
      expect(clockformatted_1[2], 's1, minti1, d 1');
      expect(clockformatted_1[3], 's1, minti1, d 1');

      expect(clockformatted_2[0], 'sa′o′i 2, mintoci 2, daƙiƙoƙi 2');
      expect(clockformatted_2[1], 's 2, mnt 2, d 2');
      expect(clockformatted_2[2], 's2, minti 2, d 2');
      expect(clockformatted_2[3], 's2, minti 2, d 2');
    });
    test('testDurFmt_or_IN', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'or-IN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 ବର୍ଷ, 1 ମାସ, 1 ସପ୍ତାହ, 1 ଦିନ');
      expect(textformatted_1[1], '1 ବର୍ଷ, 1 ମାସ, 1 ସପ୍ତାହ, 1 ଦିନ');
      expect(textformatted_1[2], '1ବର୍ଷ 1ମାସ 1ସପ୍ 1ଦିନ');
      expect(textformatted_1[3], '1ବର୍ଷ 1ମାସ 1ସପ୍ 1ଦିନ');

      expect(textformatted_17[0], '17 ବର୍ଷ, 17 ମାସ, 17 ସପ୍ତାହ, 17 ଦିନ');
      expect(textformatted_17[1], '17 ବର୍ଷ, 17 ମାସ, 17 ସପ୍ତାହ, 17 ଦିନ');
      expect(textformatted_17[2], '17ବର୍ଷ 17ମାସ 17 ସପ୍ 17ଦିନ');
      expect(textformatted_17[3], '17ବର୍ଷ 17ମାସ 17 ସପ୍ 17ଦିନ');

      expect(clockformatted_1[0], '1 ଘଣ୍ଟା, 1 ମିନିଟ୍‌, 1 ସେକେଣ୍ଡ');
      expect(clockformatted_1[1], '1 ଘଣ୍ଟା, 1 ମିନିଟ୍‌, 1 ସେକେଣ୍ଡ');
      expect(clockformatted_1[2], '1ଘଣ୍ଟା 1ମିନିଟ୍‌ 1ସେକ୍');
      expect(clockformatted_1[3], '1ଘଣ୍ଟା 1ମିନିଟ୍‌ 1ସେକ୍');

      expect(clockformatted_17[0], '17 ଘଣ୍ଟା, 17 ମିନିଟ୍, 17 ସେକେଣ୍ଡ');
      expect(clockformatted_17[1], '17 ଘଣ୍ଟା, 17 ମିନିଟ୍‌, 17 ସେକେଣ୍ଡ');
      expect(clockformatted_17[2], '17ଘଣ୍ଟା 17ମିନିଟ୍‌ 17ସେକ୍');
      expect(clockformatted_17[3], '17ଘଣ୍ଟା 17ମିନିଟ୍‌ 17ସେକ୍');
    });
    test('testDurFmt_az_Latn_AZ', () {
      // 1 19
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_19 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_19 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'az-Latn-AZ', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_19.add(fmt
            .format(ILibDateOptions(year: 19, month: 19, week: 19, day: 19)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_19
            .add(fmt.format(ILibDateOptions(hour: 19, minute: 19, second: 19)));
      }

      expect(textformatted_1[0], '1 il, 1 ay, 1 həftə, 1 gün');
      expect(textformatted_1[1], '1 il, 1 ay, 1 hft, 1 gün');
      expect(textformatted_1[2], '1 il, 1 ay, 1 hft, 1 gün');
      expect(textformatted_1[3], '1 il, 1 ay, 1 hft, 1 gün');

      expect(textformatted_19[0], '19 il, 19 ay, 19 həftə, 19 gün');
      expect(textformatted_19[1], '19 il, 19 ay, 19 hft, 19 gün');
      expect(textformatted_19[2], '19 il, 19 ay, 19 hft, 19 gün');
      expect(textformatted_19[3], '19 il, 19 ay, 19 hft, 19 gün');

      expect(clockformatted_1[0], '1 saat, 1 dəqiqə, 1 saniyə');
      expect(clockformatted_1[1], '1 saat, 1 dəq, 1 san');
      expect(clockformatted_1[2], '1 saat, 1 dəq, 1 san');
      expect(clockformatted_1[3], '1 saat, 1 dəq, 1 san');

      expect(clockformatted_19[0], '19 saat, 19 dəqiqə, 19 saniyə');
      expect(clockformatted_19[1], '19 saat, 19 dəq, 19 san');
      expect(clockformatted_19[2], '19 saat, 19 dəq, 19 san');
      expect(clockformatted_19[3], '19 saat, 19 dəq, 19 san');
    });
    test('testDurFmt_km_KH', () {
      // 1 23
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_23 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_23 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'km-KH', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_23.add(fmt
            .format(ILibDateOptions(year: 23, month: 23, week: 23, day: 23)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_23
            .add(fmt.format(ILibDateOptions(hour: 23, minute: 23, second: 23)));
      }

      expect(textformatted_1[0], '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ');
      expect(textformatted_1[1], '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ');
      expect(textformatted_1[2], '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ');
      expect(textformatted_1[3], '1 ឆ្នាំ 1 ខែ 1 សប្ដាហ៍ 1 ថ្ងៃ');

      expect(textformatted_23[0], '23 ឆ្នាំ 23 ខែ 23 សប្ដាហ៍ 23 ថ្ងៃ');
      expect(textformatted_23[1], '23 ឆ្នាំ 23 ខែ 23 សប្ដាហ៍ 23 ថ្ងៃ');
      expect(textformatted_23[2], '23 ឆ្នាំ 23 ខែ 23 សប្ដាហ៍ 23 ថ្ងៃ');
      expect(textformatted_23[3], '23 ឆ្នាំ 23 ខែ 23 សប្ដាហ៍ 23 ថ្ងៃ');

      expect(clockformatted_1[0], '1 ម៉ោង 1 នាទី 1 វិនាទី');
      expect(clockformatted_1[1], '1 ម៉ោង 1 នាទី 1 វិនាទី');
      expect(clockformatted_1[2], '1 ម៉ោង 1 នាទី 1 វិនាទី');
      expect(clockformatted_1[3], '1 ម៉ោង 1 នាទី 1 វិនាទី');

      expect(clockformatted_23[0], '23 ម៉ោង 23 នាទី 23 វិនាទី');
      expect(clockformatted_23[1], '23 ម៉ោង 23 នាទី 23 វិនាទី');
      expect(clockformatted_23[2], '23 ម៉ោង 23 នាទី 23 វិនាទី');
      expect(clockformatted_23[3], '23 ម៉ោង 23 នាទី 23 វិនាទី');
    });
    test('testDurFmt_si_LK', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'si-LK', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], 'වසර 1, මාස 1, සති 1, සහ දින 1');
      expect(textformatted_1[1], 'වසර 1, මාස 1, සති 1, දින 1');
      expect(textformatted_1[2], 'ව 1, මා 1, ස 1, දි 1');
      expect(textformatted_1[3], 'ව 1, මා 1, ස 1, දි 1');

      expect(textformatted_2[0], 'වසර 2, මාස 2, සති 2, සහ දින 2');
      expect(textformatted_2[1], 'වසර 2, මාස 2, සති 2, දින 2');
      expect(textformatted_2[2], 'ව 2, මා 2, ස 2, දි 2');
      expect(textformatted_2[3], 'ව 2, මා 2, ස 2, දි 2');

      expect(clockformatted_1[0], 'පැය 1, මිනිත්තු 1, සහ තත්පර 1');
      expect(clockformatted_1[1], 'පැය 1, මිනි 1, තත් 1');
      expect(clockformatted_1[2], 'පැය 1, මි 1, ත 1');
      expect(clockformatted_1[3], 'පැය 1, මි 1, ත 1');

      expect(clockformatted_2[0], 'පැය 2, මිනිත්තු 2, සහ තත්පර 2');
      expect(clockformatted_2[1], 'පැය 2, මිනි 2, තත් 2');
      expect(clockformatted_2[2], 'පැය 2, මි 2, ත 2');
      expect(clockformatted_2[3], 'පැය 2, මි 2, ත 2');
    });
    test('testDurFmt_ar_AE', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-AE',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_BH', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-BH',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });

    test('testDurFmt_ar_DJ', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-DJ',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_DZ', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-DZ', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_JO', () {
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-JO',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_KW', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-KW',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_LB', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-LB',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_LY', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-LY', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_MR', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-MR',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_OM', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-OM',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_QA', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-QA',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_SA', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-SA',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏سنتان وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏سنتان وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنوات و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنوات و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوانٍ');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_SD', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-SD',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_SY', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-SY',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_TN', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-TN', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_ar_YE', () {
      // 1 2 3 11 100
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> textformatted_3 = <String>[];
      final List<String> textformatted_11 = <String>[];
      final List<String> textformatted_100 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];
      final List<String> clockformatted_3 = <String>[];
      final List<String> clockformatted_11 = <String>[];
      final List<String> clockformatted_100 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ar-YE',
            style: 'text',
            length: length[i],
            useNative: false));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));
        textformatted_3.add(
            fmt.format(ILibDateOptions(year: 3, month: 3, week: 3, day: 3)));
        textformatted_11.add(fmt
            .format(ILibDateOptions(year: 11, month: 11, week: 11, day: 11)));
        textformatted_100.add(fmt.format(
            ILibDateOptions(year: 100, month: 100, week: 100, day: 100)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
        clockformatted_3
            .add(fmt.format(ILibDateOptions(hour: 3, minute: 3, second: 3)));
        clockformatted_11
            .add(fmt.format(ILibDateOptions(hour: 11, minute: 11, second: 11)));
        clockformatted_100.add(
            fmt.format(ILibDateOptions(hour: 100, minute: 100, second: 100)));
      }

      expect(textformatted_1[0], '‏سنة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[1], '‏سنة واحدة، وشهر، وأسبوع، ويوم');
      expect(textformatted_1[2], '‏1 سنة وشهر و1 أ و1 ي');
      expect(textformatted_1[3], '‏1 سنة وشهر و1 أ و1 ي');

      expect(textformatted_2[0], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[1], '‏سنتان، وشهران، وأسبوعان، ويومان');
      expect(textformatted_2[2], '‏2 سنة وشهران و2 أ و2 ي');
      expect(textformatted_2[3], '‏2 سنة وشهران و2 أ و2 ي');

      expect(textformatted_3[0], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[1], '‏3 سنوات، و3 أشهر، و3 أسابيع، و3 أيام');
      expect(textformatted_3[2], '‏3 سنة و3 أشهر و3 أ و3 ي');
      expect(textformatted_3[3], '‏3 سنة و3 أشهر و3 أ و3 ي');

      expect(textformatted_11[0], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[1], '‏11 سنة، و11 شهرًا، و11 أسبوعًا، و11 يومًا');
      expect(textformatted_11[2], '‏11 سنة و11 شهرًا و11 أ و11 ي');
      expect(textformatted_11[3], '‏11 سنة و11 شهرًا و11 أ و11 ي');

      expect(textformatted_100[0], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[1], '‏100 سنة، و100 شهر، و100 أسبوع، و100 يوم');
      expect(textformatted_100[2], '‏100 سنة و100 شهر و100 أ و100 ي');
      expect(textformatted_100[3], '‏100 سنة و100 شهر و100 أ و100 ي');

      expect(clockformatted_1[0], '‏ساعة، ودقيقة، وثانية');
      expect(clockformatted_1[1], '‏1 س، و1 د، و1 ث');
      expect(clockformatted_1[2], '‏1 س و1 د و1 ث');
      expect(clockformatted_1[3], '‏1 س و1 د و1 ث');

      expect(clockformatted_2[0], '‏ساعتان، ودقيقتان، وثانيتان');
      expect(clockformatted_2[1], '‏2 س، و2 د، و2 ث');
      expect(clockformatted_2[2], '‏2 س و2 د و2 ث');
      expect(clockformatted_2[3], '‏2 س و2 د و2 ث');

      expect(clockformatted_3[0], '‏3 ساعات، و3 دقائق، و3 ثوان');
      expect(clockformatted_3[1], '‏3 س، و3 د، و3 ث');
      expect(clockformatted_3[2], '‏3 س و3 د و3 ث');
      expect(clockformatted_3[3], '‏3 س و3 د و3 ث');

      expect(clockformatted_11[0], '‏11 ساعة، و11 دقيقة، و11 ثانية');
      expect(clockformatted_11[1], '‏11 س، و11 د، و11 ث');
      expect(clockformatted_11[2], '‏11 س و11 د و11 ث');
      expect(clockformatted_11[3], '‏11 س و11 د و11 ث');

      expect(clockformatted_100[0], '‏100 ساعة، و100 دقيقة، و100 ثانية');
      expect(clockformatted_100[1], '‏100 س، و100 د، و100 ث');
      expect(clockformatted_100[2], '‏100 س و100 د و100 ث');
      expect(clockformatted_100[3], '‏100 س و100 د و100 ث');
    });
    test('testDurFmt_en_ET', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'en-ET', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 year, 1 month, 1 week, 1 day');
      expect(textformatted_1[1], '1 yr, 1 mth, 1 wk, 1 day');
      expect(textformatted_1[2], '1y, 1m, 1w, 1d');
      expect(textformatted_1[3], '1y 1m 1w 1d');

      expect(textformatted_2[0], '2 years, 2 months, 2 weeks, 2 days');
      expect(textformatted_2[1], '2 yrs, 2 mths, 2 wks, 2 days');
      expect(textformatted_2[2], '2y, 2m, 2w, 2d');
      expect(textformatted_2[3], '2y 2m 2w 2d');

      expect(clockformatted_1[0], '1 hour, 1 minute, 1 second');
      expect(clockformatted_1[1], '1 hr, 1 min, 1 sec');
      expect(clockformatted_1[2], '1h, 1m, 1s');
      expect(clockformatted_1[3], '1h 1m 1s');

      expect(clockformatted_2[0], '2 hours, 2 minutes, 2 seconds');
      expect(clockformatted_2[1], '2 hr, 2 min, 2 sec');
      expect(clockformatted_2[2], '2h, 2m, 2s');
      expect(clockformatted_2[3], '2h 2m 2s');
    });
    test('testDurFmt_es_GQ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-GQ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a, 1 m., 1 sem., 1 d');
      expect(textformatted_1[2], '1a, 1m, 1sem, 1d');
      expect(textformatted_1[3], '1a 1m 1sem 1d');

      expect(textformatted_2[0], '2 años, 2 meses, 2 semanas y 2 días');
      expect(textformatted_2[1], '2 a, 2 m., 2 sem., 2 d');
      expect(textformatted_2[2], '2a, 2m, 2sem, 2d');
      expect(textformatted_2[3], '2a 2m 2sem 2d');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_es_PH', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'es-PH', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 año, 1 mes, 1 semana y 1 día');
      expect(textformatted_1[1], '1 a, 1 m., 1 sem., 1 d');
      expect(textformatted_1[2], '1a, 1m, 1sem, 1d');
      expect(textformatted_1[3], '1a 1m 1sem 1d');

      expect(textformatted_17[0], '17 años, 17 meses, 17 semanas y 17 días');
      expect(textformatted_17[1], '17 a, 17 m., 17 sem., 17 d');
      expect(textformatted_17[2], '17a, 17m, 17sem, 17d');
      expect(textformatted_17[3], '17a 17m 17sem 17d');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 horas, 17 minutos y 17 segundos');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_BF', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-BF', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_BJ', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-BJ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m., 17sem., 17j');
      expect(textformatted_17[3], '17a 17m. 17sem. 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_CD', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CD', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m., 17sem., 17j');
      expect(textformatted_17[3], '17a 17m. 17sem. 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_CF', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CF', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_CG', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CG', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_fr_CI', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CI', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m., 17sem., 17j');
      expect(textformatted_17[3], '17a 17m. 17sem. 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_CM', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-CM', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_fr_GQ', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-GQ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_fr_DJ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-DJ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_DZ', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-DZ', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_GA', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-GA', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_GN', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-GN', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_fr_LB', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-LB', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_ML', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-ML', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_17[0], '17 ans, 17 mois, 17 semaines et 17 jours');
      expect(textformatted_17[1], '17 ans, 17 m., 17 sem., 17 j');
      expect(textformatted_17[2], '17a, 17m., 17sem., 17j');
      expect(textformatted_17[3], '17a 17m. 17sem. 17j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_17[0], '17 heures, 17 minutes et 17 secondes');
      expect(clockformatted_17[1], '17 h, 17 min, 17 s');
      expect(clockformatted_17[2], '17h, 17min, 17s');
      expect(clockformatted_17[3], '17h 17min 17s');
    });
    test('testDurFmt_fr_RW', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-RW', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_fr_SN', () {
      // 1 16
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_16 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_16 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-SN', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_16.add(fmt
            .format(ILibDateOptions(year: 16, month: 16, week: 16, day: 16)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_16
            .add(fmt.format(ILibDateOptions(hour: 16, minute: 16, second: 16)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_16[0], '16 ans, 16 mois, 16 semaines et 16 jours');
      expect(textformatted_16[1], '16 ans, 16 m., 16 sem., 16 j');
      expect(textformatted_16[2], '16a, 16m., 16sem., 16j');
      expect(textformatted_16[3], '16a 16m. 16sem. 16j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_16[0], '16 heures, 16 minutes et 16 secondes');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16h, 16min, 16s');
      expect(clockformatted_16[3], '16h 16min 16s');
    });
    test('testDurFmt_fr_TG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'fr-TG', style: 'text', length: length[i]));
        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 an, 1 mois, 1 semaine et 1 jour');
      expect(textformatted_1[1], '1 an, 1 m., 1 sem., 1 j');
      expect(textformatted_1[2], '1a, 1m., 1sem., 1j');
      expect(textformatted_1[3], '1a 1m. 1sem. 1j');

      expect(textformatted_2[0], '2 ans, 2 mois, 2 semaines et 2 jours');
      expect(textformatted_2[1], '2 ans, 2 m., 2 sem., 2 j');
      expect(textformatted_2[2], '2a, 2m., 2sem., 2j');
      expect(textformatted_2[3], '2a 2m. 2sem. 2j');

      expect(clockformatted_1[0], '1 heure, 1 minute et 1 seconde');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 heures, 2 minutes et 2 secondes');
      expect(clockformatted_2[1], '2 h, 2 min, 2 s');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
    });
    test('testDurFmt_ms_SG', () {
      // 1 2
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_2 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_2 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ms-SG', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_2.add(
            fmt.format(ILibDateOptions(year: 2, month: 2, week: 2, day: 2)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_2
            .add(fmt.format(ILibDateOptions(hour: 2, minute: 2, second: 2)));
      }

      expect(textformatted_1[0], '1 tahun, 1 bulan, 1 minggu, 1 hari');
      expect(textformatted_1[1], '1 thn, 1 bln, 1 mgu, 1 hari');
      expect(textformatted_1[2], '1 thn, 1 bln, 1 mgu, 1 h');
      expect(textformatted_1[3], '1 thn 1 bln 1 mgu 1 h');

      expect(textformatted_2[0], '2 tahun, 2 bulan, 2 minggu, 2 hari');
      expect(textformatted_2[1], '2 thn, 2 bln, 2 mgu, 2 hari');
      expect(textformatted_2[2], '2 thn, 2 bln, 2 mgu, 2 h');
      expect(textformatted_2[3], '2 thn 2 bln 2 mgu 2 h');

      expect(clockformatted_1[0], '1 jam, 1 minit, 1 saat');
      expect(clockformatted_1[1], '1 j, 1 min, 1 saat');
      expect(clockformatted_1[2], '1 j, 1 min, 1 s');
      expect(clockformatted_1[3], '1 j 1 min 1 s');

      expect(clockformatted_2[0], '2 jam, 2 minit, 2 saat');
      expect(clockformatted_2[1], '2 j, 2 min, 2 saat');
      expect(clockformatted_2[2], '2 j, 2 min, 2 s');
      expect(clockformatted_2[3], '2 j 2 min 2 s');
    });

    test('testDurFmt_ur_PK', () {
      // 1 17
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'ur-PK', style: 'text', length: length[i]));

        textformatted_1.add(
            fmt.format(ILibDateOptions(year: 1, month: 1, week: 1, day: 1)));
        textformatted_17.add(fmt
            .format(ILibDateOptions(year: 17, month: 17, week: 17, day: 17)));

        clockformatted_1
            .add(fmt.format(ILibDateOptions(hour: 1, minute: 1, second: 1)));
        clockformatted_17
            .add(fmt.format(ILibDateOptions(hour: 17, minute: 17, second: 17)));
      }

      expect(textformatted_1[0], '‏1 سال, 1 مہینہ, 1 ہفتہ، اور 1 دن');
      expect(textformatted_1[1], '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن');
      expect(textformatted_1[2], '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن');
      expect(textformatted_1[3], '‏1 سال، 1 مہینہ، 1 ہفتہ، 1 دن');

      expect(textformatted_17[0], '‏17 سال, 17 مہینے, 17 ہفتے، اور 17 دن');
      expect(textformatted_17[1], '‏17 سال، 17 مہینے، 17 ہفتے، 17 دن');
      expect(textformatted_17[2], '‏17 سال، 17 مہینے، 17 ہفتے، 17 دن');
      expect(textformatted_17[3], '‏17 سال، 17 مہینے، 17 ہفتے، 17 دن');

      expect(clockformatted_1[0], '‏1 گھنٹہ, 1 منٹ، اور 1 سیکنڈ');
      expect(clockformatted_1[1], '‏1 گھنٹہ، 1 منٹ، 1 سیکنڈ');
      expect(clockformatted_1[2], '‏1 گھنٹہ، 1 منٹ، 1 سیکنڈ');
      expect(clockformatted_1[3], '‏1 گھنٹہ، 1 منٹ، 1 سیکنڈ');

      expect(clockformatted_17[0], '‏17 گھنٹے, 17 منٹ، اور 17 سیکنڈ');
      expect(clockformatted_17[1], '‏17 گھنٹے، 17 منٹ، 17 سیکنڈ');
      expect(clockformatted_17[2], '‏17 گھنٹے، 17 منٹ، 17 سیکنڈ');
      expect(clockformatted_17[3], '‏17 گھنٹے، 17 منٹ، 17 سیکنڈ');
    });

    test('testDurFmt_zh_Hans_MY', () {
      // 15

      final List<String> textformatted_15 = <String>[];
      final List<String> clockformatted_15 = <String>[];

      for (int i = 0; i < 4; i++) {
        final ILibDurationFmt fmt = ILibDurationFmt(ILibDurationFmtOptions(
            locale: 'zh-Hans-MY', style: 'text', length: length[i]));

        textformatted_15.add(fmt
            .format(ILibDateOptions(year: 15, month: 15, week: 15, day: 15)));
        clockformatted_15
            .add(fmt.format(ILibDateOptions(hour: 15, minute: 15, second: 15)));
      }

      expect(textformatted_15[0], '15年15个月15周15天');
      expect(textformatted_15[1], '15年15个月15周15天');
      expect(textformatted_15[2], '15年15个月15周15天');
      expect(textformatted_15[3], '15年15个月15周15天');

      expect(clockformatted_15[0], '15小时15分钟15秒钟');
      expect(clockformatted_15[1], '15小时15分钟15秒');
      expect(clockformatted_15[2], '15小时15分钟15秒');
      expect(clockformatted_15[3], '15小时15分钟15秒');
    });
  });
}
