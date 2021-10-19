import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      child: Text(
        'Change the text below',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
