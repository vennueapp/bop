import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bop_platform_interface.dart';

/// An implementation of [BopPlatform] that uses method channels.
class MethodChannelBop extends BopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bop');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
