import 'package:flutter/material.dart';
import '../core/navigation/fade_builder_route.dart';
import '../core/widget/page/not_found_page.dart';
import '../core/injection/injection_container.dart' as di;
import '../feature/intro/presentation/screen/splash_screen.dart';

/// Eng.Nour Othman(meory)*

abstract class RouteNamedScreens {
  static String init = splash;
  static const String splash = "/splash";

}

abstract class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case  RouteNamedScreens.splash:
        return FadeBuilderRoute(
            page: const SplashScreen());
    }
    return FadeBuilderRoute(page: const NotFoundScreen());
  }
}

abstract class CurrentRoute {
  static String? currentRouteName;

  CurrentRoute({required String currentRouteName});
}
