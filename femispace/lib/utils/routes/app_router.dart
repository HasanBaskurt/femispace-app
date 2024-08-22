import 'package:femispace/core/constants/app_route_paths.dart';
import 'package:femispace/feature/error_page/view/error_page_view.dart';
import 'package:femispace/feature/nutritions/view/nutritions_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router=GoRouter(
    initialLocation: AppRoutePaths.NUTRITIONS_VIEW_PATH,
    errorBuilder: (context, state) => const ErrorPageView(),
    routes: <RouteBase>[


      GoRoute
    (
      path: AppRoutePaths.NUTRITIONS_VIEW_PATH,
      builder: (context, state) => const NutritionsView(),
      ),  
  ]);

}