import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/on_boarding/presentation/mobile.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.klight,
        ),
        home: const MobileOnBoard());
  }
}
