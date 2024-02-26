import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:webview/pushnotificationscreen.dart';
import 'package:webview/webviewcontroller.dart';

void main() {
  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => WebViewExample(),
      '/webViewContainer' : (context) =>webViewContainer()
    },
  ), // MaterialApp
);

}

class WebViewExample extends StatefulWidget {
  const WebViewExample({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WebViewExampleState();
  }
}

class _WebViewExampleState extends State<WebViewExample>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Center(
          child : Text("Web view demo"),
      )),
      body: content(context),
    );
  }
}
Widget content(BuildContext context) {
  return Center(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/webViewContainer');
        },
        child: Text("Open Webview"),
      ),
      SizedBox(height: 20), // Add some spacing between the buttons
      ElevatedButton(
        onPressed: () {
          // Navigate to the push notification screen
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => PushNotificationScreen()));
        },
        child: Text("Push Notification"),
      ),
    ],
  ),);
}
