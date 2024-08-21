

//Custom Dark Theme For Project Design
import 'package:femispace/utils/theme/app_color_scheme.dart';
import 'package:femispace/utils/theme/app_custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class AppCustomDarkTheme extends AppCustomTheme {
  @override
  ThemeData get themeData => ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.rubik().fontFamily,
      colorScheme: AppColorScheme.darkColorScheme,
      floatingActionButtonTheme: floatingActionButtonThemeData,
      splashFactory: NoSplash.splashFactory);

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
