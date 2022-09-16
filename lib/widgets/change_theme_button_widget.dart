import 'package:flutter/cupertino.dart';
import 'package:news_app/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ChangeThemeButtonWidget extends StatelessWidget{
  const ChangeThemeButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
final themeProvider= Provider.of<ThemeProvider>(context);

return Switch.adaptive(
  value: themeProvider.isDarkMode,
  onChanged: (bool value) {
    final darkmode = Provider.of<ThemeProvider>(context,listen:false);
    darkmode.toggleTheme(value);
  },
);
  }
}