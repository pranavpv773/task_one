import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({Key? key, required this.routeName, this.fn})
      : super(key: key);
  final String routeName;
  final VoidCallback? fn;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        left: 8,
        bottom: 20,
      ),
      child: SizedBox(
        width: 500,
        height: 40,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(AppColors.primary),
          ),
          onPressed: fn ??
              () {
                Navigator.pushNamed(context, routeName);
              },
          child: const Text(
            "Continue",
          ),
        ),
      ),
    );
  }
}

class ContinueLoadButton extends StatelessWidget {
  const ContinueLoadButton({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        left: 8,
        bottom: 20,
      ),
      child: SizedBox(
        width: 500,
        height: 40,
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(10),
            backgroundColor: MaterialStateProperty.all(AppColors.primary),
          ),
          onPressed: () {},
          child: const Center(
            child: CupertinoActivityIndicator(),
          ),
        ),
      ),
    );
  }
}
