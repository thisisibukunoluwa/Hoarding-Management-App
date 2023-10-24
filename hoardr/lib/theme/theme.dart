import 'package:hoardr/theme/border_radius.dart';

import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData light = _themeData(_colorScheme);

  static ThemeData dark = _themeData(_darkColorScheme);

  static _themeData(ColorScheme colorScheme) => ThemeData(
        scaffoldBackgroundColor: colorScheme.background,
        textTheme: _textTheme(colorScheme),
        appBarTheme: _appBarTheme(colorScheme),
        iconTheme: _iconThemeData(colorScheme),
        inputDecorationTheme: _inputDecorationTheme(colorScheme),
        colorScheme: colorScheme,
      );

  static final ColorScheme _colorScheme = const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.primaryLight,
    onPrimary: AppColors.white,
    background: AppColors.backGround,
    onBackground: AppColors.black,
    surface: AppColors.surface,
    surfaceTint: AppColors.surfaceTint,
  );

  static final ColorScheme _darkColorScheme = const ColorScheme.dark().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.primaryLight,
    onPrimary: AppColors.white,
    background: AppColors.darkBackground,
    onBackground: AppColors.white,
    surface: AppColors.darkSurface,
    surfaceTint: AppColors.surfaceTintDark,
  );

  static TextTheme _textTheme(ColorScheme colorScheme) => GoogleFonts.mulishTextTheme().copyWith(
     headlineMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
      color: colorScheme.onBackground,
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: colorScheme.onBackground,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: colorScheme.onBackground,
    ),
    bodyMedium: TextStyle(
      color: colorScheme.onSurface,
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: colorScheme.onPrimary,
    ),
  );


  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        color: colorScheme.background,
        titleTextStyle: _textTheme(colorScheme).titleLarge,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.onBackground),
      );

  static IconThemeData _iconThemeData(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onBackground,
      );

  static InputDecorationTheme _inputDecorationTheme(ColorScheme colorScheme) =>
      InputDecorationTheme(
        enabledBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.c4,
          borderSide: BorderSide(color: AppColors.borderEnabled),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.c4,
          borderSide: BorderSide(color: AppColors.borderFocused),
        ),
        // disabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(8.0),
        //   borderSide: BorderSide(color: AppColors.borderInactive),
        // ),
      );
}
