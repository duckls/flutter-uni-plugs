import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_uni_plug/flutter_uni_plug_method_channel.dart';

void main() {
  MethodChannelFlutterUniPlug platform = MethodChannelFlutterUniPlug();
  const MethodChannel channel = MethodChannel('flutter_uni_plug');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
