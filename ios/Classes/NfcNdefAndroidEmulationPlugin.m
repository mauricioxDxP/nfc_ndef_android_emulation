#import "NfcNdefAndroidEmulationPlugin.h"

@implementation NfcNdefAndroidEmulationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"nfc_ndef_android_emulation"
            binaryMessenger:[registrar messenger]];
  NfcNdefAndroidEmulationPlugin* instance = [[NfcNdefAndroidEmulationPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
