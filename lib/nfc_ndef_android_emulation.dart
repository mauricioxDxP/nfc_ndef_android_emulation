
import 'dart:async';

import 'package:flutter/services.dart';

class NfcNdefAndroidEmulation {
  static const MethodChannel _channel =
      const MethodChannel('nfc_ndef_android_emulation');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<Null> get IniciarNfc async {
     await _channel.invokeMethod('IniciarNfc');
    return null;
  }
}
