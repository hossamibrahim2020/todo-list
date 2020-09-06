import 'package:flutter/material.dart';

// class AppThemeLight {
//   static final ThemeData _theme = ThemeData(
//     primaryColor: Colors.teal,
//     accentColor: Colors.tealAccent,
//   );
//   static const Color buttonsColor = Colors.white;
//   static ThemeData get theme => _theme;
// }

class AppThemeDark {
  static final ThemeData _theme = ThemeData.dark().copyWith(
    primaryColor: Color(0xFF121212),
    accentColor: Colors.purple.shade300,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.purple.shade300,
    ),
  );
  static const Color buttonsColor = Colors.white;
  static ThemeData get theme => _theme;
}
