import 'package:flashy/core/navigation/slid_up_builder_route.dart';
import 'package:flashy/core/navigation/slide_down_builder_route.dart';
import 'package:flashy/feature/auth/presentation/screen/login_screen.dart';
import 'package:flashy/feature/auth/presentation/screen/register_screen.dart';
import 'package:flashy/feature/main/presentation/screen/main_app_bar_screen.dart';
import 'package:flutter/material.dart';
import '../core/navigation/fade_builder_route.dart';
import '../core/widget/page/not_found_page.dart';
import '../core/injection/injection_container.dart' as di;
import '../feature/intro/presentation/screen/splash_screen.dart';

/// Eng.Nour Othman(meory)*

abstract class RouteNamedScreens {
  static String init = splash;
  static const String splash = "/splash";
  static const String register = "/register";
  static const String login = "/login";
  static const String mainAppBar = "/main-app-bar";
}

abstract class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    final argument = settings.arguments;

    switch (settings.name) {
      case RouteNamedScreens.splash:
        return FadeBuilderRoute(page: const SplashScreen());

      case RouteNamedScreens.register:
        return SlidUpBuilderRoute(page: const RegisterScreen());
      case RouteNamedScreens.login:
        return SlidDownBuilderRoute(page: const LoginScreen());

      case RouteNamedScreens.mainAppBar:
        return FadeBuilderRoute(page: const MainAppBottomAppBar());
    }
    return FadeBuilderRoute(page: const NotFoundScreen());
  }
}

abstract class CurrentRoute {
  static String? currentRouteName;

  CurrentRoute({required String currentRouteName});
}
