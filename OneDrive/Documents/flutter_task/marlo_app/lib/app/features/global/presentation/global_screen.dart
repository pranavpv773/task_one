import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/screen_one.dart';
import 'package:marlo_app/app/features/loan/loan_screen.dart';
import 'package:marlo_app/app/features/teams/presentation/teams.dart';

import '../../chart/presentation/chart.dart';
import '../../home/home.dart';
import 'widgets/bottom_nav.dart';

class GlobalScreen extends StatelessWidget {
  GlobalScreen({Key? key}) : super(key: key);
  List pages = [
    const HomeScreen(),
    const LoanScreen(),
    const ContractScreenOne(),
    const TeamScreen(),
    const ContractScreenOne(),
    const ChartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
