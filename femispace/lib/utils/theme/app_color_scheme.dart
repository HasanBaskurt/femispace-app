
import 'package:femispace/core/constants/app_theme_colors.dart';
import 'package:flutter/material.dart';

// Project Custom Colors
final class AppColorScheme {
  AppColorScheme._();

  // Light color scheme set
  static ColorScheme lightColorScheme = const ColorScheme(
    brightness: Brightness.light,
    primary: AppThemeColors.primary,
    onPrimary: AppThemeColors.onPrimary,
    primaryContainer: AppThemeColors.primaryContainer,
    onPrimaryContainer: AppThemeColors.onPrimaryContainer,
    secondary: AppThemeColors.secondary,
    onSecondary: AppThemeColors.onSecondary,
    secondaryContainer: AppThemeColors.secondaryContainer,
    onSecondaryContainer: AppThemeColors.onSecondaryContainer,
    tertiary: AppThemeColors.tertiary,
    onTertiary: AppThemeColors.onTertiary,
    tertiaryContainer: AppThemeColors.tertiaryContainer,
    onTertiaryContainer: AppThemeColors.onTertiaryContainer,
    error: AppThemeColors.error,
    onError: AppThemeColors.onError,
    errorContainer: AppThemeColors.errorContainer,
    onErrorContainer: AppThemeColors.onErrorContainer,
    outline: AppThemeColors.outline,
    surface: AppThemeColors.surface,
    onSurface: AppThemeColors.onSurface,
    onSurfaceVariant: AppThemeColors.onSurfaceVariant,
    inverseSurface: AppThemeColors.inverseSurface,
    onInverseSurface: AppThemeColors.onInverseSurface,
    inversePrimary: AppThemeColors.inversePrimary,
    shadow: AppThemeColors.shadow,
    surfaceTint: AppThemeColors.surfaceTint,
    outlineVariant: AppThemeColors.outlineVariant,
    scrim: AppThemeColors.scrim,
  );

  // Dark color scheme set

  static ColorScheme darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    primary: AppThemeColors.darkPrimary,
    onPrimary: AppThemeColors.darkOnPrimary,
    primaryContainer: AppThemeColors.darkPrimaryContainer,
    onPrimaryContainer: AppThemeColors.darkOnPrimaryContainer,
    secondary: AppThemeColors.darkSecondary,
    onSecondary: AppThemeColors.darkOnSecondary,
    secondaryContainer: AppThemeColors.darkSecondaryContainer,
    onSecondaryContainer: AppThemeColors.darkOnSecondaryContainer,
    tertiary: AppThemeColors.darkTertiary,
    onTertiary: AppThemeColors.darkOnTertiary,
    tertiaryContainer: AppThemeColors.darkTertiaryContainer,
    onTertiaryContainer: AppThemeColors.darkOnTertiaryContainer,
    error: AppThemeColors.darkError,
    onError: AppThemeColors.darkOnError,
    errorContainer: AppThemeColors.darkErrorContainer,
    onErrorContainer: AppThemeColors.darkOnErrorContainer,
    outline: AppThemeColors.darkOutline,
    surface: AppThemeColors.darkSurface,
    onSurface: AppThemeColors.darkOnSurface,
    onSurfaceVariant: AppThemeColors.darkOnSurfaceVariant,
    inverseSurface: AppThemeColors.darkInverseSurface,
    onInverseSurface: AppThemeColors.darkOnInverseSurface,
    inversePrimary: AppThemeColors.darkInversePrimary,
    shadow: AppThemeColors.darkShadow,
    surfaceTint: AppThemeColors.darkSurfaceTint,
    outlineVariant: AppThemeColors.darkOutlineVariant,
    scrim: AppThemeColors.darkScrim,
  );
}
