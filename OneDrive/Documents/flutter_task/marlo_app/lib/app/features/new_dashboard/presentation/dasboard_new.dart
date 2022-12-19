import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_app/app/features/contract/presentation/screen_one/widgets/row_title_widget.dart';
import 'package:marlo_app/app/features/new_dashboard/bloc/balance_bloc.dart';
import 'package:marlo_app/app/features/new_dashboard/infrastructure/dashboard_utils.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';
import 'package:marlo_app/app/utils/app_theme/app_themes.dart';

import 'widgets/currency_card.dart';
import 'widgets/heading_section.dart';
import 'widgets/recent_transaction_list.dart';

class DashBoardNew extends StatelessWidget {
  const DashBoardNew({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: HeadingSection(),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const HeadingSection(),
              const CurrencyCard(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "To do • 4",
                  style: AppTextStyle.h2.copyWith(
                    fontFamily: GoogleFonts.notoSans().fontFamily,
                    color: AppColors.secondary,
                  ),
                ),
              ),
              SizedBox(
                height: 140.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: false,
                  children: List.generate(
                    3,
                    (index) => Card(
                      //  color: AppColors.klightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 1,
                      shadowColor: AppColors.kDark,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.center,
                            colors: [
                              MyThemes == MyThemeKeys.LIGHT
                                  ? AppColors.klight.withAlpha(10)
                                  : AppColors.secondary,
                              DashBoardUtils().colorList[index].withAlpha(60),
                            ],
                          ),
                        ),
                        height: 112.h,
                        width: 150.w,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(),
                              CircleAvatar(
                                radius: 30.w,
                                backgroundColor:
                                    AppColors.kPurpleTrans.withAlpha(10),
                                child: Center(
                                  child: Icon(
                                    DashBoardUtils().iconList[index],
                                    color: DashBoardUtils().colorList[index],
                                  ),
                                ),
                              ),
                              Text(
                                "Verify your business documents",
                                textAlign: TextAlign.center,
                                style: AppTextStyle.h5,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const RowTitleWidgets(
                title: "Recent Transactions",
              ),
              const RecentTransactionList(),
            ],
          ),
        ),
      ),
    );
  }
}
