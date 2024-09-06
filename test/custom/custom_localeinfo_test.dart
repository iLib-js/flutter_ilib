import 'package:flutter/material.dart';
import 'package:flutter_ilib/flutter_ilib.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  debugPrint('Testing [custom/custom_localeinfo_test.dart] file.');
  setUpAll(() async {
    await ILibJS.instance.loadJSwithPath('../../assets/js/ilib-all.js');
    ILibJS.instance.initILib();
  });
  group('format()', () {
    test('testWeekData_pt_PT', () {
      final ILibLocaleInfo locInfo = ILibLocaleInfo('pt-PT');
      expect(locInfo.getFirstDayOfWeek(), 1);
      expect(locInfo.getWeekEndStart(), 6);
      expect(locInfo.getWeekEndEnd(), 0);
    });
  });
}
