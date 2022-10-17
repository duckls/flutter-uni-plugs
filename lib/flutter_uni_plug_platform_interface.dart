import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_uni_plug_method_channel.dart';

abstract class FlutterUniPlugPlatform extends PlatformInterface {
  /// Constructs a FlutterUniPlugPlatform.
  FlutterUniPlugPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterUniPlugPlatform _instance = MethodChannelFlutterUniPlug();

  /// The default instance of [FlutterUniPlugPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterUniPlug].
  static FlutterUniPlugPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterUniPlugPlatform] when
  /// they register themselves.
  static set instance(FlutterUniPlugPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
