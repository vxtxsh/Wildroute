import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:wild_route/screens/home_screen.dart';



class Cahc extends StatelessWidget {
  const Cahc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
          leading:
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );
            },
          ),
        
          title: Text('Chat',style: TextStyle(color: Colors.white),),
          backgroundColor:
            const Color.fromARGB(255, 58, 57, 57),
          centerTitle: true,
          
        ),
      body: WebView(
        initialUrl:
            'Chat Bot Url',//http://172.1.9.90:8501
        javascriptMode: JavascriptMode.unrestricted, 
        onWebViewCreated: (WebViewController webViewController) {
          
        },
        onPageStarted: (String url) {
          
        },
        onPageFinished: (String url) {
          
        },
        onWebResourceError: (WebResourceError error) {
          
          print("Web resource error: $error");
        },
      ),
    );
  }
}