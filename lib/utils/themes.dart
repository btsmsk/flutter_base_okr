import 'package:flutter/material.dart';

import 'dimens.dart';

class Themes {
  static final darkTheme = ThemeData.dark().copyWith(
    backgroundColor: Colors.black54,
    buttonColor: Colors.black38,
    primaryColor: const Color(0xff34497e),
    brightness: Brightness.dark,
    tabBarTheme: const TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide:
              BorderSide(width: Dimens.SIZE_2, color: Color(0xff34497e)),
        ),
        labelColor: Colors.white70,
        unselectedLabelColor: Colors.white30),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xff34497e),
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black54,
    ),
  );

  static final lightTheme = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    primaryColor: Colors.blueAccent,
    buttonColor: Colors.blueAccent,
    brightness: Brightness.light,
    tabBarTheme: const TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide:
              BorderSide(width: Dimens.SIZE_2, color: Colors.blueAccent),
        ),
        labelColor: Colors.black87,
        unselectedLabelColor: Colors.black38),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.white,
    ),
  );
}
