import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get workTheme {
    return ThemeData(
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.red,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(15),
          primary: Colors.red,
        ),
      ),
    );
  }

  static ThemeData get restTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(15),
          primary: Colors.green,
        ),
      ),
    );
  }
}
