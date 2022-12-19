// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';
import 'package:marlo_app/app/utils/app_theme/app_themes.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyThemeKeys == MyThemeKeys.LIGHT
            ? AppColors.klight
            : AppColors.secondary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5.r),
      ),
      width: 200,
      height: 62.h,
      child: Center(
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: AppColors.cardBackround,
              borderRadius: BorderRadius.circular(10),
            ),
            width: 40.w,
            height: 40.h,
            child: Center(
              child: Iconify(
                MaterialSymbols.arrow_outward_rounded,
                color: AppColors.klight,
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rent",
                style: AppTextStyle.h2.copyWith(
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                ),
              ),
              Text(
                "-\u{0024}850.00",
                style: AppTextStyle.h4.copyWith(
                  fontFamily: GoogleFonts.notoSans().fontFamily,
                ),
              ),
            ],
          ),
          subtitle: Text(
            "Sat • 16-jul • 9.00 pm",
            style: AppTextStyle.h5.copyWith(
              color: AppColors.secondary,
              fontFamily: GoogleFonts.notoSans().fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
