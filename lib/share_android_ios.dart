import 'dart:async';

import 'package:flutter/services.dart';

class ShareAndroidIos {
  static const MethodChannel _channel =
      const MethodChannel('share_android_ios');

  static Future<String> share(String message) async {
    return await _channel.invokeMethod('share', {'message': message});
  }
}
