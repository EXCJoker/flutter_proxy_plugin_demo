import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginProxyDemo {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_proxy_demo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
