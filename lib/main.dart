import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWebviewPage(),
    );
  }
}

class MyWebviewPage extends StatelessWidget {
  final String initialUrl = 'https://www.larchsoft.com/';

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: initialUrl,
      withZoom: true,
      initialChild: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
