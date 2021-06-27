import 'package:flutter/material.dart';

class Themes {
  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    scaffoldBackgroundColor:Colors.black54,
    backgroundColor: Colors.black54,
    accentIconTheme: const IconThemeData(color: Colors.black),
    dividerColor: Colors.black12,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black,
    ),
  );

  static final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white70,
    accentIconTheme: const IconThemeData(color: Colors.white),
    dividerColor: Colors.white54,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black38,
      backgroundColor: Colors.white,
    ),
  );
}

enum ThemeModes { LIGHT, DARK }
