import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/bloc/contract_bloc_bloc.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';

class RowTitleWidgets extends StatelessWidget {
  const RowTitleWidgets({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<ContractBloc, ContractState>(
            builder: (context, state) {
              return Text(
                title,
                style: AppTextStyle.h2.copyWith(
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                  color: AppColors.secondary,
                ),
              );
            },
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "See all",
              style: AppTextStyle.h5.copyWith(
                fontFamily: GoogleFonts.notoSans().fontFamily,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}
