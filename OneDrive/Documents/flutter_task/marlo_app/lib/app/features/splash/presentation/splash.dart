import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/splash/infrastructure/splash_functions.dart';
import 'widgets/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashFunctions.goScreenOne(context);
    return const Scaffold(
      body: BodyWidget(),
    );
  }
}
