import 'copy_to_clipboard_platform_interface.dart';

class CopyToClipboard {
  Future<String?> getPlatformVersion() {
    return CopyToClipboardPlatform.instance.getPlatformVersion();
  }

  Future<bool> copyToClipboard(String? text) async {
    return CopyToClipboardPlatform.instance.copyToClipboardWeb(text);
  }
}
