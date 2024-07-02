import 'package:copy_to_clipboard_web/copy_to_clipboard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _copyToClipboardPlugin = CopyToClipboard();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
                onPressed: () async {
                  await _copyToClipboardPlugin.copyToClipboard('test');
                },
                child: const Text('Copy to Clipboard')),
          ],
        ),
      ),
    );
  }
}
