
import 'package:flutter/services.dart';

import 'androidmigrate_platform_interface.dart';

class Androidmigrate {
  static const MethodChannel methodChannel =  MethodChannel('androidmigrate');
  Future<String?> getPlatformVersion() async{
     final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  Future<String?> getSerialnumber() async{
     final version = await methodChannel.invokeMethod<String>('getserialNumber');
    return version;
  }


   Future<void> preventScreenCapture({bool enable = false}) {
    return methodChannel.invokeMethod<void>('preventScreenCapture', {
      'enable': enable,
    });
  }

}
