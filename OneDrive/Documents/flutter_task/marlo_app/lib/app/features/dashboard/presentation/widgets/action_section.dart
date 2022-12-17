import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: AppColors.cardBackround,
          ),
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Action required",
                      style: TextStyle(
                        color: AppColors.klight,
                      ),
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do",
                      style: TextStyle(
                        color: AppColors.klight,
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Complete",
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
