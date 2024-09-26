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
    onPrimary: AppColors.whiteShade,
    secondary: AppColors.secondaryColor,
    surface: AppColors.backgroudColor,
    onSurface: AppColors.grey2,
    tertiary: AppColors.grey1,
    onSurfaceVariant: AppColors.grey3,
  ),
);
ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: kFontFamily,
  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryColor,
    secondary: Color(0xffFEFEFE),
    surface: AppColors.secondaryColor,
    onSurface: Color(0xffE7E7E7),
    tertiary: Color(0xffE7E7E7),
    onSurfaceVariant: Color(0xffE7E7E7),
  ),
);
