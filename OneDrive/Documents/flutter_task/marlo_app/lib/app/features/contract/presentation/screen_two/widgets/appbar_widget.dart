import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        splashRadius: 20,
        splashColor: AppColors.primary,
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
