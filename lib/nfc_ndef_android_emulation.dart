
import 'dart:async';

import 'package:flutter/services.dart';

class NfcNdefAndroidEmulation {
  static const MethodChannel _channel =
      const MethodChannel('nfc_ndef_android_emulation');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<Null> IniciarNfc(String msg) async {
    Map<String,dynamic> args = <String,dynamic>{};
    args.putIfAbsent("msg", () => msg);
     await _channel.invokeMethod('IniciarNfc',args);
    return null;
  }
}
