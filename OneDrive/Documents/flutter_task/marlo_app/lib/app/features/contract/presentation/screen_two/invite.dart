import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/widgets/disabled_textform.dart';
import 'package:marlo_app/app/features/login/presentation/widgets/continue_button.dart';
import 'package:marlo_app/app/features/login/presentation/widgets/textformswidget.dart';
import 'package:marlo_app/app/utils/app_styles.dart';
import 'package:marlo_app/app/utils/routes/routes.dart';

import 'widgets/appbar_widget.dart';

class InviteScreen extends StatelessWidget {
  const InviteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBarWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          //  key: context.read<InviteNotifier>().formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Invite",
                    style: AppTextStyle.h1,
                  ),
                  const TextformFieldWidget(
                    title: "Bussiness email",
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: DisabledTextformFieldWidget(),
                  )
                ],
              ),
              ContinueButton(
                routeName: AppRoute.onBoardMobRoute,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
