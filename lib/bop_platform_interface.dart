import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bop_method_channel.dart';

abstract class BopPlatform extends PlatformInterface {
  /// Constructs a BopPlatform.
  BopPlatform() : super(token: _token);

  static final Object _token = Object();

  static BopPlatform _instance = MethodChannelBop();

  /// The default instance of [BopPlatform] to use.
  ///
  /// Defaults to [MethodChannelBop].
  static BopPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BopPlatform] when
  /// they register themselves.
  static set instance(BopPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
