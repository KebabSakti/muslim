import 'package:flutter/material.dart';

import 'style.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: surfaceLight,
    dividerColor: const Color(0xFFEBEBEB),
    colorScheme: const ColorScheme.light(
      primary: primaryLight,
      onPrimary: onPrimaryLight,
      primaryContainer: primaryVariantLight,
      onPrimaryContainer: onPrimaryVariantLight,
      secondary: secondaryLight,
      onSecondary: onSecondaryLight,
      secondaryContainer: secondaryVariantLight,
      onSecondaryContainer: onSecondaryVariantLight,
      surface: surfaceLight,
      onSurface: onSurfaceLight,
      surfaceVariant: surfaceVariantLight,
      onSurfaceVariant: onSurfaceVariantLight,
      background: backgroundLight,
      onBackground: onBackgroundLight,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: surfaceDark,
    dividerColor: const Color(0xFF22252F),
    colorScheme: const ColorScheme.dark(
      primary: primaryDark,
      onPrimary: onPrimaryDark,
      primaryContainer: primaryVariantDark,
      onPrimaryContainer: onPrimaryVariantDark,
      secondary: secondaryDark,
      onSecondary: onSecondaryDark,
      secondaryContainer: secondaryVariantDark,
      onSecondaryContainer: onSecondaryVariantDark,
      surface: surfaceDark,
      onSurface: onSurfaceDark,
      surfaceVariant: surfaceVariantDark,
      onSurfaceVariant: onSurfaceVariantDark,
      background: backgroundDark,
      onBackground: onBackgroundDark,
    ),
  );
}
