// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web/web.dart' as web;

import 'copy_to_clipboard_platform_interface.dart';

/// A web implementation of the CopyToClipboardPlatform of the CopyToClipboard plugin.
class CopyToClipboardWeb extends CopyToClipboardPlatform {
  /// Constructs a CopyToClipboardWeb
  CopyToClipboardWeb();

  static void registerWith(Registrar registrar) {
    CopyToClipboardPlatform.instance = CopyToClipboardWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = web.window.navigator.userAgent;
    return version;
  }

  /// Copies the given [text] to the clipboard on a web platform.
  ///
  /// Returns a [Future<bool>] that completes with `true` if the text was successfully copied to the clipboard,
  /// and `false` otherwise.
  ///
  /// The [text] parameter is the text to be copied to the clipboard. If it is `null`, an empty string will be copied.
  @override
  Future<bool> copyToClipboardWeb(String? text) async {
    try {
      web.window.navigator.clipboard.writeText(text ?? '');
      return true;
    } catch (e) {
      return false;
    }
  }
}
