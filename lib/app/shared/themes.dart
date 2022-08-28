import 'package:flutter/material.dart';
import 'package:todo_app/app/shared/color.dart';

ThemeData theme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: primaryColor,
  ),
  scaffoldBackgroundColor: bgColor,
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: whiteColor,
      backgroundColor: primaryColor,
    ),
  ),
);
