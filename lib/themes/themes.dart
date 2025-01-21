import 'package:flutter/material.dart';

class Themes {
  static final lightThemes = ThemeData(
    colorScheme: const ColorScheme.light(),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
    useMaterial3: true,
  );

  static final darkThemes = ThemeData(
    colorScheme: const ColorScheme.dark(),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),
    useMaterial3: true,
  );
}
