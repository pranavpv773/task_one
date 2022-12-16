import 'package:flutter/material.dart';
import 'package:marlo_app/app/features/login/presentation/provider/login_notifier.dart';
import 'package:marlo_app/app/features/login/presentation/widgets/textformswidget.dart';
import 'package:marlo_app/app/utils/app_styles.dart';
import 'package:marlo_app/app/utils/routes.dart';
import 'package:provider/provider.dart';

import 'widgets/appbar_widget.dart';
import 'widgets/continue_button.dart';
import 'widgets/dont_have_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppbarWidget(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Consumer<LoginNotifier>(builder: (context, val, _) {
              return Form(
                key: val.loginKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Log in to Marlo",
                      style: AppTextStyle.h1,
                    ),
                    const DontHaveButton(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextformFieldWidget(
                        controller: context.read<LoginNotifier>().email,
                        title: "title",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextformFieldWidget(
                        controller: context.read<LoginNotifier>().password,
                        title: "title",
                        icon1: context.watch<LoginNotifier>().obsecure
                            ? const Icon(
                                Icons.close,
                              )
                            : const Icon(
                                Icons.remove_red_eye,
                              ),
                      ),
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot password",
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          context.watch<LoginNotifier>().logLoad == true
              ? const ContinueLoadButton()
              : ContinueButton(
                  fn: () {
                    context.read<LoginNotifier>().onTabLoginFunction(context);
                  },
                  routeName: AppRoute.onBoardRoute,
                ),
        ],
      ),
    );
  }
}
