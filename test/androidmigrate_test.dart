import 'package:flutter_test/flutter_test.dart';
import 'package:androidmigrate/androidmigrate.dart';
import 'package:androidmigrate/androidmigrate_platform_interface.dart';
import 'package:androidmigrate/androidmigrate_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAndroidmigratePlatform
    with MockPlatformInterfaceMixin
    implements AndroidmigratePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AndroidmigratePlatform initialPlatform = AndroidmigratePlatform.instance;

  test('$MethodChannelAndroidmigrate is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAndroidmigrate>());
  });

  test('getPlatformVersion', () async {
    Androidmigrate androidmigratePlugin = Androidmigrate();
    MockAndroidmigratePlatform fakePlatform = MockAndroidmigratePlatform();
    AndroidmigratePlatform.instance = fakePlatform;

    expect(await androidmigratePlugin.getPlatformVersion(), '42');
  });
}
