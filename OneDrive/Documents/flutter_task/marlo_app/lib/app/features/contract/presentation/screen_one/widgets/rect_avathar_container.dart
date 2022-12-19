import 'package:flutter/material.dart';
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
      width: width ?? 50,
      height: height ?? 40,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10,
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
