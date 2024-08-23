import 'package:femispace/core/constants/app_route_paths.dart';
import 'package:femispace/feature/error_page/view/error_page_view.dart';
import 'package:femispace/feature/nutritions/view/nutritions_view.dart';
import 'package:femispace/feature/splash/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
      initialLocation: AppRoutePaths.SPLASH_VIEW_PATH,
      errorBuilder: (context, state) => const ErrorPageView(),
      routes: <RouteBase>[
        GoRoute(
          path: AppRoutePaths.SPLASH_VIEW_PATH,
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
            path: AppRoutePaths.NUTRITIONS_VIEW_PATH,
            pageBuilder: (context, state) => CustomTransitionPage(
                key: state.pageKey,
                child:const  NutritionsView(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                      opacity: CurveTween(curve: Curves.easeInOutCirc)
                          .animate(animation),
                      child: child);
                })),
      ]);
}
