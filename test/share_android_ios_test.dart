import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:share_android_ios/share_android_ios.dart';

void main() {
  const MethodChannel channel = MethodChannel('share_android_ios');

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
    expect(await ShareAndroidIos.platformVersion, '42');
  });
}
