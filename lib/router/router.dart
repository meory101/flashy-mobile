import 'package:flashy/core/navigation/slid_up_builder_route.dart';
import 'package:flashy/core/navigation/slide_down_builder_route.dart';
import 'package:flashy/feature/auth/presentation/screen/login_screen.dart';
import 'package:flashy/feature/auth/presentation/screen/register_screen.dart';
import 'package:flashy/feature/home/presentation/cubit/newest_products_cubit.dart';
import 'package:flashy/feature/main/presentation/screen/main_app_bar_screen.dart';
import 'package:flashy/feature/more/presentation/screen/aboutus_screen.dart';
import 'package:flashy/feature/more/presentation/screen/my_orders_screen.dart';
import 'package:flashy/feature/more/presentation/screen/notifications_screen.dart';
import 'package:flashy/feature/more/presentation/screen/privacy_policy_screen.dart';
import 'package:flashy/feature/more/presentation/screen/wholesale_items_screen.dart';
import 'package:flashy/feature/product/presentation/screen/product_info_screen.dart';
import 'package:flutter/material.dart';
import '../core/navigation/fade_builder_route.dart';
import '../core/widget/page/not_found_page.dart';
import '../core/injection/injection_container.dart' as di;
import '../feature/intro/presentation/screen/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



/// Eng.Nour Othman(meory)*

abstract class RouteNamedScreens {
  static String init = productInfo;
  static const String splash = "/splash";
  static const String register = "/register";
  static const String login = "/login";
  static const String mainAppBar = "/main-app-bar";
  static const String wholesaleItems = "/wholesale-items";
  static const String notifications = "/notifications";
  static const String aboutUs = "/about-us";
  static const String privacyPolicy = "/privacy-policy";
  static const String myOrders = "/my-orders";
  static const String productInfo = "/product-info";

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
      case RouteNamedScreens.wholesaleItems:
        return SlidUpBuilderRoute(page: const WholesaleItemsScreen());
      case RouteNamedScreens.privacyPolicy:
        return SlidUpBuilderRoute(page: const PrivacyPolicyScreen());
      case RouteNamedScreens.aboutUs:
        return SlidUpBuilderRoute(page: const AboutUsScreen());
      case RouteNamedScreens.myOrders:
        return SlidUpBuilderRoute(page: const MyOrdersScreen());
      case RouteNamedScreens.notifications:
        return SlidUpBuilderRoute(page: const NotificationsScreen());
      case RouteNamedScreens.productInfo:
        return SlidUpBuilderRoute(page: const ProductInfoScreen());
      case RouteNamedScreens.mainAppBar:
        return FadeBuilderRoute(
            page: BlocProvider(
          create: (context) =>
              di.sl<NewestProductsCubit>()..getNewestProducts(context: context),
          child: const MainAppBottomAppBar(),
        ));
    }
    return FadeBuilderRoute(page: const NotFoundScreen());
  }
}

abstract class CurrentRoute {
  static String? currentRouteName;

  CurrentRoute({required String currentRouteName});
}
