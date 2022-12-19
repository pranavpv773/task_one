import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:iconify_flutter/icons/fa6_solid.dart';
import 'package:iconify_flutter/icons/fluent_emoji_high_contrast.dart';
import 'package:iconify_flutter/icons/fluent_mdl2.dart';
import 'package:iconify_flutter/icons/gg.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:marlo_app/app/features/global/presentation/bloc/global_bloc.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_images.dart';
import 'package:marlo_app/app/utils/app_styles.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalBloc, GlobalState>(
      builder: (context, state) {
        return ClipRRect(
          clipBehavior: Clip.hardEdge,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            topLeft: Radius.circular(20.r),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.r),
                topLeft: Radius.circular(20.r),
              ),
            ),
            height: 72.h,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              elevation: 10,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    context.watch<GlobalBloc>().state.currentIndex == 0
                        ? AppImages.homeFilledIcon
                        : AppImages.homeIcon,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    context.watch<GlobalBloc>().state.currentIndex == 1
                        ? AppImages.moneyBagFilledIcon
                        : AppImages.moneBagIcon,
                  ),
                  label: "Loans",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    context.watch<GlobalBloc>().state.currentIndex == 2
                        ? AppImages.contractsFilledIcon
                        : AppImages.contractsIcon,
                  ),
                  label: "Contracts",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    context.watch<GlobalBloc>().state.currentIndex == 3
                        ? AppImages.teamFilledIcon1
                        : AppImages.teamIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                  label: "Teams",
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    context.watch<GlobalBloc>().state.currentIndex == 4
                        ? AppImages.chatFilledIcon
                        : AppImages.chatIcon,
                    width: 24.w,
                    height: 24.h,
                  ),
                  label: "Chat",
                ),
              ],
              iconSize: 24.sp,
              unselectedLabelStyle:
                  AppTextStyle.h5.copyWith(fontSize: 10, height: 1.5),
              selectedLabelStyle:
                  AppTextStyle.h5.copyWith(fontSize: 10, height: 1.5),
              currentIndex: state.currentIndex,
              showUnselectedLabels: true,
              selectedItemColor: AppColors.primary,
              selectedIconTheme: IconThemeData(color: AppColors.primary),
              unselectedIconTheme: IconThemeData(color: AppColors.secondary),
              unselectedItemColor: AppColors.secondary,
              onTap: (value) {
                context.read<GlobalBloc>().add(GlobalEvent.changeIndex(value));
              },
            ),
          ),
        );
      },
    );
  }
}
