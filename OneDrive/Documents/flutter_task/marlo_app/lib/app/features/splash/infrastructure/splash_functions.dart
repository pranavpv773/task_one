// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/routes.dart';

class SplashFunctions {
  static goScreenOne(BuildContext context) async {
    log("----------------reached function----------------");
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoute.loginRoute, (route) => false);
  }
}
