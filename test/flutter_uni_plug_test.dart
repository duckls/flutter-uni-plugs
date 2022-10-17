import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_uni_plug/flutter_uni_plug.dart';
import 'package:flutter_uni_plug/flutter_uni_plug_platform_interface.dart';
import 'package:flutter_uni_plug/flutter_uni_plug_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterUniPlugPlatform
    with MockPlatformInterfaceMixin
    implements FlutterUniPlugPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterUniPlugPlatform initialPlatform = FlutterUniPlugPlatform.instance;

  test('$MethodChannelFlutterUniPlug is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterUniPlug>());
  });

  test('getPlatformVersion', () async {
    FlutterUniPlug flutterUniPlugPlugin = FlutterUniPlug();
    MockFlutterUniPlugPlatform fakePlatform = MockFlutterUniPlugPlatform();
    FlutterUniPlugPlatform.instance = fakePlatform;

    expect(await flutterUniPlugPlugin.getPlatformVersion(), '42');
  });
}
