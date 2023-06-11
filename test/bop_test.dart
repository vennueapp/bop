import 'package:flutter_test/flutter_test.dart';
import 'package:bop/bop_platform_interface.dart';
import 'package:bop/bop_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBopPlatform with MockPlatformInterfaceMixin implements BopPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BopPlatform initialPlatform = BopPlatform.instance;

  test('$MethodChannelBop is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBop>());
  });
}
