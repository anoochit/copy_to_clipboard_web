import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'copy_to_clipboard_platform_interface.dart';

/// An implementation of [CopyToClipboardPlatform] that uses method channels.
class MethodChannelCopyToClipboard extends CopyToClipboardPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('copy_to_clipboard');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<bool> copyToClipboardWeb(String? text) async {
    return await methodChannel.invokeMethod<bool>('copy_to_clipboard_web') ??
        false;
  }
}
