import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;
  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark: ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black45,
    primaryColor: Colors.black12,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: Colors.purple.shade300, opacity: 0.8),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black26,
      ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.black26,
    ),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: Colors.red, opacity: 0.8),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.pink,
      ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.pink,
    ),
  );
}
