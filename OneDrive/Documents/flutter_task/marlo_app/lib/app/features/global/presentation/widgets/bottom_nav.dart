import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/fa6_solid.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:marlo_app/app/features/global/presentation/bloc/global_bloc.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 10,
          items: [
            BottomNavigationBarItem(
              icon: Iconify(
                color: context.watch<GlobalBloc>().state.currentIndex == 0
                    ? AppColors.primary
                    : AppColors.secondary,
                Bx.home_alt,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                FluentEmojiHighContrast.money_bag,
                color: context.watch<GlobalBloc>().state.currentIndex == 1
                    ? AppColors.primary
                    : AppColors.secondary,
              ),
              label: "Loans",
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                Fa6Solid.file_invoice,
                color: context.watch<GlobalBloc>().state.currentIndex == 2
                    ? AppColors.primary
                    : AppColors.secondary,
              ),
              label: "Contracts",
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                Ph.users_three_light,
                color: context.watch<GlobalBloc>().state.currentIndex == 3
                    ? AppColors.primary
                    : AppColors.secondary,
              ),
              label: "Teams",
            ),
            BottomNavigationBarItem(
              icon: Iconify(
                Uil.comment_question,
                color: context.watch<GlobalBloc>().state.currentIndex == 4
                    ? AppColors.primary
                    : AppColors.secondary,
              ),
              label: "Chart",
            ),
          ],
          currentIndex: state.currentIndex,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.primary,
          selectedIconTheme: IconThemeData(color: AppColors.primary),
          unselectedIconTheme: IconThemeData(color: AppColors.secondary),
          unselectedItemColor: AppColors.secondary,
          onTap: (value) {
            context.read<GlobalBloc>().add(GlobalEvent.changeIndex(value));
          },
        );
      },
    );
  }
}
