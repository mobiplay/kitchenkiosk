import 'package:flutter/material.dart';

class Theme {
  ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.amber,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.amber,
        disabledColor: Colors.grey,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red));

  ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        disabledColor: Colors.grey,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink));
}
