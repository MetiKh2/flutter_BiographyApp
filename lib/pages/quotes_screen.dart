import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff064635),
        shadowColor: const Color(0xff519259),
        elevation: 15,
        title: const Text(
          'کلام های سردار',
          style: TextStyle(
              fontSize: 28, color: Color(0xfff0bb62), fontFamily: 'btir'),
        ),
        centerTitle: true,
      ),
      // backgroundColor: const Color(0xfff4eea0),
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://soleimani.ir/category/statements/',
      ),
    );
    ;
  }
}
