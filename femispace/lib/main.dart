import 'package:femispace/core/constants/app_constants.dart';
import 'package:femispace/utils/init/app_initialize.dart';
import 'package:femispace/utils/routes/app_router.dart';
import 'package:femispace/utils/theme/app_custom_dark_theme.dart';
import 'package:femispace/utils/theme/app_custom_light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await AppInitialize().create();
  runApp(const FemiSpace());
}

class FemiSpace extends StatelessWidget {
  const FemiSpace({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        // we should add screen height and width for auto screen size control
        designSize: const Size(393, 852),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: AppConstants.APP_TITLE,

            //Theme Settings
            theme: AppCustomLightTheme().themeData,
            darkTheme: AppCustomDarkTheme().themeData,
            themeMode: ThemeMode.light,

            // Routing Settings
            routerConfig: AppRouter.router,

            // When change the device text size , the app text size is same everytime
            builder: (context, child) {
              return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.0)),
                  child: child ?? const SizedBox());
            },
          );
        });
  }
}
