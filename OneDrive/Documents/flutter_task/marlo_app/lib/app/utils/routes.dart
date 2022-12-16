import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/invite.dart';
import 'package:marlo_app/app/features/home/presentation/home.dart';
import 'package:marlo_app/app/features/login/presentation/login_screen.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/country.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/mobile.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/on_boarding.dart';
import 'package:marlo_app/app/features/splash/presentation/splash.dart';

class AppRoute {
//-------Strings-------//

  static String loginRoute = '/login';
  static String splashRoute = '/splash';
  static String homeRoute = '/home';
  static String onBoardRoute = '/onBoard';
  static String onBoardMobRoute = '/onBoardMob';
  static String inviteRoute = '/invite';
  static String onBoardCountryRoute = '/onBoardCountry';

//-------Route Switch case-------//

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case '/onBoard':
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      case '/onBoardCountry':
        return MaterialPageRoute(
          builder: (context) => const OnboardCountry(),
        );
      case '/onBoardMob':
        return MaterialPageRoute(
          builder: (context) => const MobileOnBoard(),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case '/invite':
        return MaterialPageRoute(
          builder: (context) => const InviteScreen(),
        );
      default:
        return errorRoute();
    }
  }

//------------ Error Screen ------------//
  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text("Something went wrong"),
          ),
        );
      },
    );
  }
}
