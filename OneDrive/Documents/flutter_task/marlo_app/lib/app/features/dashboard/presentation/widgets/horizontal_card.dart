import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class HorizontalCardBuilder extends StatelessWidget {
  const HorizontalCardBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: false,
        children: List.generate(
          5,
          (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(20),
              shadowColor: AppColors.kDark,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                height: 100,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        "https://w7.pngwing.com/pngs/622/746/png-transparent-flag-of-the-united-kingdom-flag-of-great-britain-flag-of-england-united-kingdom-flag-united-kingdom-flag-of-the-united-states.png",
                      ),
                    ),
                    Column(
                      children: const [
                        Text(
                          "\u{0024}15,265,560.00",
                        ),
                        Text(
                          "Main",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
