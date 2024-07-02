import 'package:copy_to_clipboard_web/copy_to_clipboard.dart';
import 'package:copy_to_clipboard_web/copy_to_clipboard_method_channel.dart';
import 'package:copy_to_clipboard_web/copy_to_clipboard_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCopyToClipboardPlatform
    with MockPlatformInterfaceMixin
    implements CopyToClipboardPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<bool> copyToClipboardWeb(String? text) => Future.value(true);
}

void main() {
  final CopyToClipboardPlatform initialPlatform =
      CopyToClipboardPlatform.instance;

  test('$MethodChannelCopyToClipboard is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCopyToClipboard>());
  });

  test('getPlatformVersion', () async {
    CopyToClipboard copyToClipboardPlugin = CopyToClipboard();
    MockCopyToClipboardPlatform fakePlatform = MockCopyToClipboardPlatform();
    CopyToClipboardPlatform.instance = fakePlatform;

    expect(await copyToClipboardPlugin.getPlatformVersion(), '42');
  });
  test('copyToClipboardWeb', () async {
    CopyToClipboard copyToClipboardPlugin = CopyToClipboard();
    MockCopyToClipboardPlatform fakePlatform = MockCopyToClipboardPlatform();
    CopyToClipboardPlatform.instance = fakePlatform;

    expect(await copyToClipboardPlugin.copyToClipboard('test'), true);
  });
}
