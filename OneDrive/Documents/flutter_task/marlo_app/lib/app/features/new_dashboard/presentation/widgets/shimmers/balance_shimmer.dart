import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marlo_app/app/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class BalanceShimmerCard extends StatelessWidget {
  const BalanceShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    //final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Shimmer.fromColors(
            baseColor: Colors.grey[300] as Color,
            highlightColor: Colors.grey[100] as Color,
            child: SizedBox(
              width: width,
              height: 140.h,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: AppColors.secondary),
                        //color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      width: 140.w,
                      height: 140.h,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: AppColors.klight,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.klight,
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                              height: 20,
                              width: double.infinity,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.klight,
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                              height: 20,
                              width: double.infinity,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
