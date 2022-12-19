// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashFunctions {
  static goScreenOne(BuildContext context) async {
    log("----------------reached function----------------");
    final sharedPrefference = await SharedPreferences.getInstance();
    final chechLogged = sharedPrefference.getBool("login") ?? false;
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    if (chechLogged) {
      Navigator.pushNamedAndRemoveUntil(
          context, AppRoute.globalRoute, (route) => false);
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, AppRoute.loginRoute, (route) => false);
    }
  }
}
