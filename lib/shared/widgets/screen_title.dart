import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  String title;

  ScreenTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        height: 1.2,
        fontWeight: FontWeight.bold,
        color: Colors.black.withOpacity(.7),
      ),
    );
  }
}
