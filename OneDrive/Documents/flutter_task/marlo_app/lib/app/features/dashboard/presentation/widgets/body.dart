import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/widgets/row_title_widget.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              5,
              (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: AppColors.kDark,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.klight,
                      borderRadius: BorderRadius.circular(
                        20,
                      ),
                    ),
                    height: 100,
                    width: 120,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.peopleAvathar,
                        ),
                        Column(
                          children: [
                            Text(
                              " 15,265,5645,00",
                              style: TextStyle(color: AppColors.kDark),
                            ),
                            Text(
                              "Main",
                              style: TextStyle(color: AppColors.kDark),
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
        ),
        ActionSection(),
        const RowTitleWidgets(
          title: "Recent Transactions",
        ),
      ],
    );
  }
}

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
          color: AppColors.peopleAvathar,
        ),
        height: 100,
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text(
            "Action required",
            style: TextStyle(color: AppColors.klight),
          ),
          subtitle: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
            style: TextStyle(color: AppColors.klight),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 5,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Complete")),
            ],
          ),
        ),
      ),
    );
  }
}
