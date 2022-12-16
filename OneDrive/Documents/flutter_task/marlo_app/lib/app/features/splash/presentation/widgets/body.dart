import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kDark,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/marlo_logo.png',
            height: 100,
            width: 60,
          ),
          Text(
            "MARLO",
            style: AppTextStyle.header.copyWith(
              color: AppColors.klight,
            ),
          )
        ],
      ),
    );
  }
}
