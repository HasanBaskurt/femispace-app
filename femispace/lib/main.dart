
import 'package:femispace/utils/routes/app_router.dart';
import 'package:femispace/utils/theme/app_custom_dark_theme.dart';
import 'package:femispace/utils/theme/app_custom_light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FemiSpace());
}

class FemiSpace extends StatelessWidget {
  const FemiSpace({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'FemiSpace',

      //Theme Settings
      theme: AppCustomLightTheme().themeData,
      darkTheme: AppCustomDarkTheme().themeData,
      themeMode:ThemeMode.light,

      // Routing Settings 
      routerConfig:AppRouter.router,
    );
  }
}

