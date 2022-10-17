import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_uni_plug_platform_interface.dart';

/// An implementation of [FlutterUniPlugPlatform] that uses method channels.
class MethodChannelFlutterUniPlug extends FlutterUniPlugPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_uni_plug');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
