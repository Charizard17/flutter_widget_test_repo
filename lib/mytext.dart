import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String showingText;

  MyText({@required this.showingText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        showingText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
