import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:gmail_settings/settings_page.dart';
// import 'register_native_webview.dart'
//     if (dart.library.html) 'register_web_webview.dart';

// import 'webview_platform.dart' show WebViewPlatform;

void main() {
  // registerWebViewWebImplementation();

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Gmail Settings',
      home: Scaffold(
        backgroundColor: Color.fromARGB(143, 233, 234, 237),
        body: SettingsPage(),
      ),
    );
  }
// Build
// flutter build web --web-renderer html

// Run
// flutter run --web-renderer html
}
