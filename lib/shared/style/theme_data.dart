import 'package:flutter/material.dart';

class MyThemeData {
  static ThemeData lightTheme = ThemeData(
      primaryColor: Color(0xff066db1),
      scaffoldBackgroundColor: Colors.grey[100],
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // color: Colors.black,
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black)));
}
