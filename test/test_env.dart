import 'dart:io';

String getTestPlatform() {
  // Resolve the env file relative to the current working directory, which is
  // the repo root for the root package's tests and example/ for the example
  // package's integration tests.
  for (final String path in <String>['test/env', '../test/env']) {
    final File file = File(path);
    if (file.existsSync()) {
      return file.readAsStringSync().split('=')[1].trim();
    }
  }
  return Platform.operatingSystem;
}
