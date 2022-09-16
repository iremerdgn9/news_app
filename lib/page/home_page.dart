import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:news_app/darkMode/main.dart';
import 'package:news_app/provider/theme_provider.dart';
import 'package:news_app/widgets/change_theme_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('MyApp.title'),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Provider(),
      extendBody: true,
    );
  }
}
