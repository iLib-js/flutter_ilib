# flutter_ilib

A wrapper plugin to use iLib conveniently in Flutter apps

## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter development, view the
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## TEST
### Run the Unit Test
On Linux, you need to export an environment variable called LIBQUICKJSC_TEST_PATH pointing to the file `libquickjs_c_bridge_plugin.so` by executing the provided shell script.
```
./test/set_LIBQUICKJSC_TEST_PATH.sh
flutter test test/flutter_ilib_test.dart
```

### Excute the example
```
cd example
flutter build linux --release
flutter run -d linux --release
```