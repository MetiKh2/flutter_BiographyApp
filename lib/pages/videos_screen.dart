import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideosScreen extends StatefulWidget {
  const VideosScreen({super.key});

  @override
  State<VideosScreen> createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff064635),
        shadowColor: const Color(0xff519259),
        elevation: 15,
        title: const Text(
          'ویدیو های سردار',
          style: TextStyle(
              fontSize: 28, color: Color(0xfff0bb62), fontFamily: 'btir'),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xfff4eea0),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://soleimani.ir/category/videos/',
      ),
    );
  }
}
