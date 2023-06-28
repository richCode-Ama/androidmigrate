// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';

// import 'androidmigrate_platform_interface.dart';

// /// An implementation of [AndroidmigratePlatform] that uses method channels.
// class MethodChannelAndroidmigrate extends AndroidmigratePlatform {
//   /// The method channel used to interact with the native platform.
//   @visibleForTesting
//   final methodChannel = const MethodChannel('androidmigrate');

//   @override
//   Future<String?> getPlatformVersion() async {
//     final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
//     return version;
//   }
// }
