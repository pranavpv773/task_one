import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/widgets/rect_avathar_container.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
      child: AppBar(
        leading: const RectContainer(title: "JB", color: Colors.amber),
        actions: [
          Icon(
            Icons.notifications,
            color: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
