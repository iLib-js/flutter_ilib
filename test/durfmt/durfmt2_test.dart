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
      expect(textformatted_1[1], '1 god., 1 mj., 1 sedm., 1 dan');
      expect(textformatted_1[2], '1 god., 1 mj., 1 sedm., 1 d.');
      expect(textformatted_1[3], '1 god., 1 mj., 1 sedm., 1 d.');

      expect(textformatted_4[0], '4 godine, 4 mjeseca, 4 sedmice i 4 dana');
      expect(textformatted_4[1], '4 god., 4 mj., 4 sedm., 4 dana');
      expect(textformatted_4[2], '4 god., 4 mj., 4 sedm., 4 d.');
      expect(textformatted_4[3], '4 god., 4 mj., 4 sedm., 4 d.');

      expect(textformatted_5[0], '5 godina, 5 mjeseci, 5 sedmica i 5 dana');
      expect(textformatted_5[1], '5 god., 5 mj., 5 sedm., 5 dana');
      expect(textformatted_5[2], '5 god., 5 mj., 5 sedm., 5 d.');
      expect(textformatted_5[3], '5 god., 5 mj., 5 sedm., 5 d.');

      expect(clockformatted_1[0], '1 sat, 1 minuta i 1 sekunda');
      expect(clockformatted_1[1], '1 h, 1 min., 1 sek.');
      expect(clockformatted_1[2], '1 h, 1 m, 1 s');
      expect(clockformatted_1[3], '1 h, 1 m, 1 s');

      expect(clockformatted_4[0], '4 sata, 4 minute i 4 sekunde');
      expect(clockformatted_4[1], '4 h, 4 min., 4 sek.');
      expect(clockformatted_4[2], '4 h, 4 m, 4 s');
      expect(clockformatted_4[3], '4 h, 4 m, 4 s');

      expect(clockformatted_5[0], '5 sati, 5 minuta i 5 sekundi');
      expect(clockformatted_5[1], '5 h, 5 min., 5 sek.');
      expect(clockformatted_5[2], '5 h, 5 m, 5 s');
      expect(clockformatted_5[3], '5 h, 5 m, 5 s');
    });

    test('testDurFmt_cs_CZ', () {
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
      expect(textformatted_1[1], '1 J, 1 Mon., 1 Wo., 1 Tg.');
      expect(textformatted_1[2], '1 J, 1 M, 1 W, 1 T');
      expect(textformatted_1[3], '1 J, 1 M, 1 W, 1 T');

      expect(textformatted_2[0], '2 Jahre, 2 Monate, 2 Wochen und 2 Tage');
      expect(textformatted_2[1], '2 J, 2 Mon., 2 Wo., 2 Tg.');
      expect(textformatted_2[2], '2 J, 2 M, 2 W, 2 T');
      expect(textformatted_2[3], '2 J, 2 M, 2 W, 2 T');

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
      expect(textformatted_1[1], '1 J, 1 Mon., 1 Wo., 1 Tg.');
      expect(textformatted_1[2], '1 J, 1 M, 1 W, 1 T');
      expect(textformatted_1[3], '1 J, 1 M, 1 W, 1 T');

      expect(textformatted_2[0], '2 Jahre, 2 Monate, 2 Wochen und 2 Tage');
      expect(textformatted_2[1], '2 J, 2 Mon., 2 Wo., 2 Tg.');
      expect(textformatted_2[2], '2 J, 2 M, 2 W, 2 T');
      expect(textformatted_2[3], '2 J, 2 M, 2 W, 2 T');

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
      expect(textformatted_1[1], '1 J, 1 Mon., 1 Wo., 1 Tg.');
      expect(textformatted_1[2], '1 J, 1 M, 1 W, 1 T');
      expect(textformatted_1[3], '1 J, 1 M, 1 W, 1 T');

      expect(textformatted_16[0], '16 Jahre, 16 Monate, 16 Wochen und 16 Tage');
      expect(textformatted_16[1], '16 J, 16 Mon., 16 Wo., 16 Tg.');
      expect(textformatted_16[2], '16 J, 16 M, 16 W, 16 T');
      expect(textformatted_16[3], '16 J, 16 M, 16 W, 16 T');

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
      expect(textformatted_1[1], '1 J, 1 Mon., 1 Wo., 1 Tg.');
      expect(textformatted_1[2], '1 J, 1 M, 1 W, 1 T');
      expect(textformatted_1[3], '1 J, 1 M, 1 W, 1 T');

      expect(textformatted_17[0], '17 Jahre, 17 Monate, 17 Wochen und 17 Tage');
      expect(textformatted_17[1], '17 J, 17 Mon., 17 Wo., 17 Tg.');
      expect(textformatted_17[2], '17 J, 17 M, 17 W, 17 T');
      expect(textformatted_17[3], '17 J, 17 M, 17 W, 17 T');

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
      expect(textformatted_1[1], '1 έτ., 1 μήν., 1 εβδ., 1 ημέρα');
      expect(textformatted_1[2], '1 έ, 1 μ, 1 ε, 1 η');
      expect(textformatted_1[3], '1 έ 1 μ 1 ε 1 η');

      expect(textformatted_2[0], '2 έτη, 2 μήνες, 2 εβδομάδες, 2 ημέρες');
      expect(textformatted_2[1], '2 έτ., 2 μήν., 2 εβδ., 2 ημέρες');
      expect(textformatted_2[2], '2 έ, 2 μ, 2 ε, 2 η');
      expect(textformatted_2[3], '2 έ 2 μ 2 ε 2 η');

      expect(clockformatted_1[0], '1 ώρα, 1 λεπτό, 1 δευτερόλεπτο');
      expect(clockformatted_1[1], '1 ώ., 1 λ., 1 δευτ.');
      expect(clockformatted_1[2], '1 ώ, 1 λ, 1 δ');
      expect(clockformatted_1[3], '1 ώ 1 λ 1 δ');

      expect(clockformatted_2[0], '2 ώρες, 2 λεπτά, 2 δευτερόλεπτα');
      expect(clockformatted_2[1], '2 ώ., 2 λ., 2 δευτ.');
      expect(clockformatted_2[2], '2 ώ, 2 λ, 2 δ');
      expect(clockformatted_2[3], '2 ώ 2 λ 2 δ');
    });
    test('testDurFmt_el_GR', () {
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
      expect(textformatted_1[1], '1 έτ., 1 μήν., 1 εβδ., 1 ημέρα');
      expect(textformatted_1[2], '1 έ, 1 μ, 1 ε, 1 η');
      expect(textformatted_1[3], '1 έ 1 μ 1 ε 1 η');

      expect(textformatted_17[0], '17 έτη, 17 μήνες, 17 εβδομάδες, 17 ημέρες');
      expect(textformatted_17[1], '17 έτ., 17 μήν., 17 εβδ., 17 ημέρες');
      expect(textformatted_17[2], '17 έ, 17 μ, 17 ε, 17 η');
      expect(textformatted_17[3], '17 έ 17 μ 17 ε 17 η');

      expect(clockformatted_1[0], '1 ώρα, 1 λεπτό, 1 δευτερόλεπτο');
      expect(clockformatted_1[1], '1 ώ., 1 λ., 1 δευτ.');
      expect(clockformatted_1[2], '1 ώ, 1 λ, 1 δ');
      expect(clockformatted_1[3], '1 ώ 1 λ 1 δ');

      expect(clockformatted_17[0], '17 ώρες, 17 λεπτά, 17 δευτερόλεπτα');
      expect(clockformatted_17[1], '17 ώ., 17 λ., 17 δευτ.');
      expect(clockformatted_17[2], '17 ώ, 17 λ, 17 δ');
      expect(clockformatted_17[3], '17 ώ 17 λ 17 δ');
    });

    test('testDurFmt_en_AM', () {
      // 1,2

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
      // 1.16

      var textformatted_1 = [], textformatted_16 = [];
      var clockformatted_1 = [], clockformatted_16 = [];

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
      // 1,17

      var textformatted_1 = [], textformatted_17 = [];
      var clockformatted_1 = [], clockformatted_17 = [];

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      // 1,2

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
      expect(textformatted_1[1], '1 a., 1 mes, 1 sem., 1 día');
      expect(textformatted_1[2], '1 a., 1 mes, 1 sem., 1 día');
      expect(textformatted_1[3], '1 a. 1 mes 1 sem. 1 día');

      expect(textformatted_16[0], '16 años, 16 meses, 16 semanas y 16 días');
      expect(textformatted_16[1], '16 a., 16 meses, 16 sems., 16 días');
      expect(textformatted_16[2], '16 a., 16 meses, 16 sems., 16 días');
      expect(textformatted_16[3], '16 a. 16 meses 16 sems. 16 días');

      expect(clockformatted_1[0], '1 hora, 1 minuto y 1 segundo');
      expect(clockformatted_1[1], '1 h, 1 min, 1 s');
      expect(clockformatted_1[2], '1 h, 1 min, 1 s');
      expect(clockformatted_1[3], '1 h 1 min 1 s');

      expect(clockformatted_16[0], '16 horas, 16 minutos y 16 segundos');
      expect(clockformatted_16[1], '16 h, 16 min, 16 s');
      expect(clockformatted_16[2], '16 h, 16 min, 16 s');
      expect(clockformatted_16[3], '16 h 16 min 16 s');
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
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 seg.');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
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
      final List<String> textformatted_1 = <String>[];
      final List<String> textformatted_17 = <String>[];
      final List<String> clockformatted_1 = <String>[];
      final List<String> clockformatted_17 = <String>[];

      // 1 17
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
      expect(clockformatted_1[2], '1h, 1min, 1s');
      expect(clockformatted_1[3], '1h 1min 1s');

      expect(clockformatted_2[0], '2 horas, 2 minutos y 2 segundos');
      expect(clockformatted_2[1], '2 h, 2 min, 2 seg.');
      expect(clockformatted_2[2], '2h, 2min, 2s');
      expect(clockformatted_2[3], '2h 2min 2s');
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

      var textformatted_1 = [], textformatted_2 = [];
      var clockformatted_1 = [], clockformatted_2 = [];
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

      var textformatted_1 = [], textformatted_2 = [];
      var clockformatted_1 = [], clockformatted_2 = [];
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

      expect(textformatted_1[0], '‏1 سال،‏ 1 ماه،‏ 1 هفته، و 1 روز');
      expect(textformatted_1[1], '‏1 سال،‏ 1 ماه،‏ 1 هفته،‏ 1 روز');
      expect(textformatted_1[2], '‏1 سال 1 ماه 1 هفته 1 روز');
      expect(textformatted_1[3], '‏1 سال 1 ماه 1 هفته 1 روز');

      expect(textformatted_2[0], '‏2 سال،‏ 2 ماه،‏ 2 هفته، و 2 روز');
      expect(textformatted_2[1], '‏2 سال،‏ 2 ماه،‏ 2 هفته،‏ 2 روز');
      expect(textformatted_2[2], '‏2 سال 2 ماه 2 هفته 2 روز');
      expect(textformatted_2[3], '‏2 سال 2 ماه 2 هفته 2 روز');

      expect(clockformatted_1[0], '‏1 ساعت،‏ 1 دقیقه، و 1 ثانیه');
      expect(clockformatted_1[1], '‏1 ساعت،‏ 1 دقیقه،‏ 1 ثانیه');
      expect(clockformatted_1[2], '‏1 ساعت 1 دقیقه 1 ث');
      expect(clockformatted_1[3], '‏1 ساعت 1 دقیقه 1 ث');

      expect(clockformatted_2[0], '‏2 ساعت،‏ 2 دقیقه، و 2 ثانیه');
      expect(clockformatted_2[1], '‏2 ساعت،‏ 2 دقیقه،‏ 2 ثانیه');
      expect(clockformatted_2[2], '‏2 ساعت 2 دقیقه 2 ث');
      expect(clockformatted_2[3], '‏2 ساعت 2 دقیقه 2 ث');
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

      expect(textformatted_1[0], '‏1 سال،‏ 1 ماه،‏ 1 هفته، و 1 روز');
      expect(textformatted_1[1], '‏1 سال،‏ 1 ماه،‏ 1 هفته،‏ 1 روز');
      expect(textformatted_1[2], '‏1 سال 1 ماه 1 هفته 1 روز');
      expect(textformatted_1[3], '‏1 سال 1 ماه 1 هفته 1 روز');

      expect(textformatted_18[0], '‏18 سال،‏ 18 ماه،‏ 18 هفته، و 18 روز');
      expect(textformatted_18[1], '‏18 سال،‏ 18 ماه،‏ 18 هفته،‏ 18 روز');
      expect(textformatted_18[2], '‏18 سال 18 ماه 18 هفته 18 روز');
      expect(textformatted_18[3], '‏18 سال 18 ماه 18 هفته 18 روز');

      expect(clockformatted_1[0], '‏1 ساعت،‏ 1 دقیقه، و 1 ثانیه');
      expect(clockformatted_1[1], '‏1 ساعت،‏ 1 دقیقه،‏ 1 ثانیه');
      expect(clockformatted_1[2], '‏1 ساعت 1 دقیقه 1 ث');
      expect(clockformatted_1[3], '‏1 ساعت 1 دقیقه 1 ث');

      expect(clockformatted_18[0], '‏18 ساعت،‏ 18 دقیقه، و 18 ثانیه');
      expect(clockformatted_18[1], '‏18 ساعت،‏ 18 دقیقه،‏ 18 ثانیه');
      expect(clockformatted_18[2], '‏18 ساعت 18 دقیقه 18 ث');
      expect(clockformatted_18[3], '‏18 ساعت 18 دقیقه 18 ث');
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

      var textformatted_1 = [], textformatted_17 = [];
      var clockformatted_1 = [], clockformatted_17 = [];

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
  });
}
