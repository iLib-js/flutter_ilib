import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_ilib_platform_interface.dart';

/// An implementation of [FlutterIlibPlatform] that uses method channels.
class MethodChannelFlutterIlib extends FlutterIlibPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_ilib');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
