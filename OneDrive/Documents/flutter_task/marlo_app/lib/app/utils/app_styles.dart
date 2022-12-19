import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//App TextStyle//
final fontFamily = GoogleFonts.heebo().fontFamily;

class AppTextStyle {
  static TextStyle header = const TextStyle(
    fontSize: 16,
    letterSpacing: 8,
  );
  static TextStyle h1 = TextStyle(
    fontFamily: GoogleFonts.heebo().fontFamily,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w700,
    fontSize: 34,
  );
  static TextStyle h2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
  static TextStyle h4 = TextStyle(
    letterSpacing: 0.1,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
  );
  static TextStyle h5 = TextStyle(
    letterSpacing: 0.1,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
  );
}
