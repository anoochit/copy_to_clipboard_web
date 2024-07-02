# WebCopyClipboard

WebCopyClipboard is a plugin for copy text to clipboard.

As everyone know Dart does not support copy to clipboard on web platform and this package solve developers problem for copy text on web

## Features

- Copy Texts on Web platform

## Getting Started

Follow the steps below to get started with `copy_to_code_web` Flutter SDK:

#### STEP 1. Register the plugin

To use this plugin in your Flutter project, add `copy_to_code_web` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/):

```
dependencies:
  copy_to_code_web: ^0.0.1

```

#### STEP 2. Import the `copy_to_clipboard_web`:

```
import 'package:copy_to_clipboard_web/copy_to_clipboard.dart';
```

STEP 3. Use and Enjoy It :

```
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

```

## License

Copyright 20 The Flutter Authors. All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above
  copyright notice, this list of conditions and the following
  disclaimer in the documentation and/or other materials provided
  with the distribution.
* Neither the name of Google Inc. nor the names of its
  contributors may be used to endorse or promote products derived
  from this software without specific prior written permission.
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
  (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
  ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

## Credits

- [Amir Abasi](https://AmirAbasi.top)
