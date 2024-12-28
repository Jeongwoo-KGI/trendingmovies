import 'package:flutter/material.dart';
//manifesting all the theme data for the application
//font is white, background to be black. 
final ThemeData appTheme = ThemeData(
  colorSchemeSeed: Colors.black,
  appBarTheme: AppBarTheme(
    color: Colors.black,
    titleTextStyle: TextStyle(
      fontSize: 20,
      color: Colors.white,
    ),
  ),
  scaffoldBackgroundColor: Colors.black,
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.only(left: 5),
    hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white10,
      ),
    ),
  ),
  textTheme: TextTheme(
    titleSmall: TextStyle(
      fontSize: 14,
      color: Colors.white,
    ),
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 52,
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: Colors.black,
  ),
);