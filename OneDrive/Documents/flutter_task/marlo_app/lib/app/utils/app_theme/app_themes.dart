// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

enum MyThemeKeys { LIGHT, DARK }

class MyThemes {
  //-----------------------Light THeme----------------------------//

  static final ThemeData lightTheme = ThemeData(
    iconTheme: IconThemeData(color: AppColors.kDark),
    scaffoldBackgroundColor: AppColors.klight,
    primaryColor: AppColors.klight,
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(color: AppColors.kDark),
      //   color: AppColors.kDark,
      // ),
      elevation: 0,
      color: AppColors.klight,
    ),
    backgroundColor: AppColors.klight,
    brightness: Brightness.light,
    highlightColor: AppColors.kDark,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 10,
      backgroundColor: AppColors.primary,
      focusColor: Colors.blueAccent,
      splashColor: AppColors.primary,
    ),
    textSelectionTheme:
        const TextSelectionThemeData(selectionColor: Colors.black),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white),
  );

  //-----------------------Dark THeme----------------------------//

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.kDark,
    appBarTheme: AppBarTheme(
      color: AppColors.kDark,
      titleTextStyle: TextStyle(color: AppColors.klight),
      elevation: 0,
    ),
    primaryColor: AppColors.kDark,
    brightness: Brightness.dark,
    highlightColor: Colors.white,
    backgroundColor: Colors.black54,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 10,
      backgroundColor: AppColors.primary,
      focusColor: Colors.blueAccent,
      splashColor: AppColors.primary,
    ),
    checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(AppColors.klight),
    ),
    textSelectionTheme:
        const TextSelectionThemeData(selectionColor: Colors.grey),
  );

  //-----------------------Get Theme Function----------------------------//

  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      default:
        return lightTheme;
    }
  }
}
