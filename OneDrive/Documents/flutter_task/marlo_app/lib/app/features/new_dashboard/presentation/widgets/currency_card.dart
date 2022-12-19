import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marlo_app/app/features/new_dashboard/bloc/balance_bloc.dart';
import 'package:marlo_app/app/features/new_dashboard/infrastructure/balance/flag_case.dart';
import 'package:marlo_app/app/features/new_dashboard/presentation/widgets/shimmers/balance_shimmer.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:marlo_app/app/utils/app_styles.dart';
import 'package:flag/flag.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      child: BlocBuilder<BalanceBloc, BalanceState>(
        builder: (context, state) {
          if (state.isError) {
            return Container(
              height: 60,
              child: Image.asset("assets/401.png"),
            );
          }
          if (state.isLoading) {
            return const BalanceShimmerCard();
          }
          return ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: false,
            children: List.generate(
              state.balanceList.length,
              (index) {
                if (state.balanceList.isEmpty) {
                  return const Center(child: Text('No Results'));
                }
                return Card(
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
                    ),
                    height: 140.h,
                    width: 150.w,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 48,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.secondary.withOpacity(0.1),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(42),
                            ),
                            child: Flag.fromCode(
                              SelectFlag().flagsCode(state
                                  .balanceList[index].currencyCodeIso2
                                  .toString())!,
                              height: 48,
                              width: 48,
                              fit: BoxFit.cover,
                              borderRadius: 50,
                            ),
                          ),
                          // SizedBox(),
                          Column(
                            //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${state.balanceList[index].currencySymbolIso2} ${state.balanceList[index].totalAmount}"
                                    .toString(),
                                style: AppTextStyle.h2.copyWith(
                                  // fontWeight: FontWeight.w700,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                state.balanceList[index].currency.toString(),
                                style: AppTextStyle.h4.copyWith(
                                  color: AppColors.secondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
