import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Teams",
        style: AppTextStyle.h1,
      ),
      actions: [
        Icon(
          Icons.search,
          size: 24,
          color: AppColors.secondary,
        )
      ],
    );
  }
}
