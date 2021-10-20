import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function changeText;

  TextControl({
    @required this.changeText,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.purpleAccent,
        padding: const EdgeInsets.all(20),
      ),
      onPressed: changeText,
      child: Text(
        'Change the text below',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
