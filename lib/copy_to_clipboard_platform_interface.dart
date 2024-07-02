import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'copy_to_clipboard_method_channel.dart';

abstract class CopyToClipboardPlatform extends PlatformInterface {
  /// Constructs a CopyToClipboardPlatform.
  CopyToClipboardPlatform() : super(token: _token);

  static final Object _token = Object();

  static CopyToClipboardPlatform _instance = MethodChannelCopyToClipboard();

  /// The default instance of [CopyToClipboardPlatform] to use.
  ///
  /// Defaults to [MethodChannelCopyToClipboard].
  static CopyToClipboardPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CopyToClipboardPlatform] when
  /// they register themselves.
  static set instance(CopyToClipboardPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> copyToClipboardWeb(String? text) {
    throw UnimplementedError('copyToClipboard() has not been implemented.');
  }
}
