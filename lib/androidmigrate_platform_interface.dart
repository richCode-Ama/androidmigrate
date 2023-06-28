// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// import 'androidmigrate_method_channel.dart';

// abstract class AndroidmigratePlatform extends PlatformInterface {
//   /// Constructs a AndroidmigratePlatform.
//   AndroidmigratePlatform() : super(token: _token);

//   static final Object _token = Object();

//   static AndroidmigratePlatform _instance = MethodChannelAndroidmigrate();

//   /// The default instance of [AndroidmigratePlatform] to use.
//   ///
//   /// Defaults to [MethodChannelAndroidmigrate].
//   static AndroidmigratePlatform get instance => _instance;

//   /// Platform-specific implementations should set this with their own
//   /// platform-specific class that extends [AndroidmigratePlatform] when
//   /// they register themselves.
//   static set instance(AndroidmigratePlatform instance) {
//     PlatformInterface.verifyToken(instance, _token);
//     _instance = instance;
//   }

//   Future<String?> getPlatformVersion() {
//     throw UnimplementedError('platformVersion() has not been implemented.');
//   }
// }
