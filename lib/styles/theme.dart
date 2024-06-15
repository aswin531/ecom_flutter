// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.teal, // Replace with your primary color
    hintColor: Colors.orange, // Replace with your accent color
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontSize: 16.0), // Default text style
      headline6:
          TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold), // Headings
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal, // Button text color
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent, // App bar background color
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blueGrey, // Replace with your dark primary color
    hintColor: Colors.amber, // Replace with your dark accent color
    textTheme: const TextTheme(
      bodyText1: TextStyle(fontSize: 16.0, color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey, // Button text color in dark theme
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor:
          Colors.blueGrey, // App bar background color in dark theme
    ),
  );
}
