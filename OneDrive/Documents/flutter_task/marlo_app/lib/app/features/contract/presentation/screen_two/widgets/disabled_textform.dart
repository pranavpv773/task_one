// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ri.dart';
import 'package:marlo_app/app/features/contract/infrastructure/screen_two_functions.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/bloc/invite_bloc.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class DisabledTextformFieldWidget extends StatelessWidget {
  const DisabledTextformFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        InviteFuctions().settingModalBottomSheet(context);
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.secondary.withOpacity(0.1),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<InviteBloc, InviteState>(
                  builder: (context, state) {
                    return Text(state.role);
                  },
                ),
                Icon(Icons.arrow_drop_down),
              ],
            )),
      ),
    );
  }
}
