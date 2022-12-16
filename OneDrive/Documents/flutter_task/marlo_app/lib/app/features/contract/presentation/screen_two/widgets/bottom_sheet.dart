import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marlo_app/app/features/contract/infrastructure/screen_two_functions.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_two/bloc/invite_bloc.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.secondary.withOpacity(0.08),
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Team roles",
              style: AppTextStyle.h1.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: InviteFuctions.roles.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        context
                            .read<InviteBloc>()
                            .add(InviteEvent.changeRole(index));
                        Navigator.pop(context);
                      },
                      child: BlocBuilder<InviteBloc, InviteState>(
                        builder: (context, state) {
                          return Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: state.role == InviteFuctions.roles[index]
                                  ? AppColors.primaryShade
                                  : AppColors.klight,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  InviteFuctions.roles[index].toString(),
                                  style: AppTextStyle.h2.copyWith(
                                    color: AppColors.secondary,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
