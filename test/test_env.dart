import 'dart:io';

String getTestPlatform() {
  String testPlatform = '';
  final File file = File('test/env');

  if (file.existsSync()) {
    testPlatform = file.readAsStringSync().split('=')[1];
  } else {
    testPlatform = Platform.operatingSystem;
  }
  return testPlatform;
}