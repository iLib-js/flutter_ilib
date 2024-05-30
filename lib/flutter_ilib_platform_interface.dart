import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ilib_method_channel.dart';

abstract class FlutterIlibPlatform extends PlatformInterface {
  /// Constructs a FlutterIlibPlatform.
  FlutterIlibPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIlibPlatform _instance = MethodChannelFlutterIlib();

  /// The default instance of [FlutterIlibPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIlib].
  static FlutterIlibPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIlibPlatform] when
  /// they register themselves.
  static set instance(FlutterIlibPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
