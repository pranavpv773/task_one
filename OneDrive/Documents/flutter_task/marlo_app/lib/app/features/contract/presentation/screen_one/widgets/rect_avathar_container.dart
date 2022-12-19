import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marlo_app/app/utils/app_colors.dart';

class RectContainer extends StatelessWidget {
  const RectContainer({
    Key? key,
    required this.title,
    required this.color,
    this.height,
    this.width,
  }) : super(key: key);
  final String title;
  final Color color;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 32.w,
      height: height ?? 32.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.r,
          ),
        ),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: AppColors.klight,
            fontFamily: GoogleFonts.basic().fontFamily,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
