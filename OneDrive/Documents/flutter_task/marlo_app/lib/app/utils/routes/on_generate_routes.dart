import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/invite.dart';
import 'package:marlo_app/app/features/global/presentation/global_screen.dart';
import 'package:marlo_app/app/features/home/presentation/home.dart';
import 'package:marlo_app/app/features/login/presentation/login_screen.dart';
import 'package:marlo_app/app/features/new_dashboard/presentation/dasboard_new.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/country.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/mobile.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/on_boarding.dart';
import 'package:marlo_app/app/features/splash/presentation/splash.dart';

class OnGenerateRoute {
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
      case '/global':
        return MaterialPageRoute(
          builder: (context) => GlobalScreen(),
        );
      case '/new_dashBoard':
        return MaterialPageRoute(
          builder: (context) => const DashBoardNew(),
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
