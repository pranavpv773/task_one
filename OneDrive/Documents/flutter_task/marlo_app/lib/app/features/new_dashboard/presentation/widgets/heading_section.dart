import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/widgets/rect_avathar_container.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class HeadingSection extends StatelessWidget {
  const HeadingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const RectContainer(
            title: "JB",
            color: Colors.amber,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
