
import 'flutter_uni_plug_platform_interface.dart';

class FlutterUniPlug {
  Future<String?> getPlatformVersion() {
    return FlutterUniPlugPlatform.instance.getPlatformVersion();
  }
}
