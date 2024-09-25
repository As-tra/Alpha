import 'package:alpha/constants.dart';
import 'package:alpha/utils/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: kFontFamily,
  colorScheme: const ColorScheme.light(
    primary: AppColors.primaryColor,
    secondary: AppColors.secondaryColor,
    surface: AppColors.backgroudColor,
    onSurface: AppColors.grey2,
    tertiary: AppColors.grey1,
    onSurfaceVariant: AppColors.grey3,
  ),
);
