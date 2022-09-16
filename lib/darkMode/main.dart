import 'package:flutter/material.dart';
import 'package:news_app/page/home_page.dart';
import 'package:news_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = 'Light & Dark Theme';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            title: title,
            themeMode: ThemeMode.system,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            home: HomePage(),
          );
        },
      );
  }
