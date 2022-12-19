// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/screen_one.dart';
import 'package:marlo_app/app/features/loan/loan_screen.dart';
import 'package:marlo_app/app/features/new_dashboard/presentation/dasboard_new.dart';
import 'package:marlo_app/app/features/teams/presentation/teams.dart';
import '../../home/presentation/home.dart';
import 'bloc/global_bloc.dart';
import 'widgets/bottom_nav.dart';

class GlobalScreen extends StatelessWidget {
  GlobalScreen({Key? key}) : super(key: key);
  List pages = [
    const DashBoardNew(),
    const LoanScreen(),
    const TeamScreen(),
    const ContractScreenOne(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GlobalBloc, GlobalState>(
        builder: (context, state) {
          return pages[state.currentIndex];
        },
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
