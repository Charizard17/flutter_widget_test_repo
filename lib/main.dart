// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './text_control.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int initialIndex = 0;
  void changeText() {
    setState(() {
      ++initialIndex;
    });
    print('button pressed');
  }

  String get showingText {
    String textttt = initialIndex % 2 == 0
        ? "This is a lorem ipsum text. I will change this text later."
        : "This is the changed text!";
    print(textttt);
    return textttt;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter text changer'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextControl(),
                Text(
                  showingText,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
