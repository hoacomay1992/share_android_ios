import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:share_android_ios/share_android_ios.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = "chưa share";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Share!!'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(text),
              ElevatedButton(
                child: Text('Share'),
                onPressed: () async {
                  String t =
                      await ShareAndroidIos.share('hello flutter engage!!!');
                  setState(() {
                    text = t;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
