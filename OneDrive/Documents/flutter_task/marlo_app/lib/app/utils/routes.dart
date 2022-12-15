import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/login/presentation/login_screen.dart';
import 'package:marlo_app/app/features/splash/presentation/splash.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return const Scaffold();
    });
  }
}
