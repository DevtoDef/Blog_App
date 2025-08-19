import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 3),
      borderRadius: BorderRadius.circular(10),
    );
  }

  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(backgroundColor: AppPallete.backgroundColor),
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: _border(),
      focusedBorder: _border(AppPallete.gradient2),
      contentPadding: const EdgeInsets.all(27),
      hintStyle: TextStyle(color: AppPallete.greyColor, fontSize: 18),
    ),
  );
}
