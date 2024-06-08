import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talbati/app/data/values/colors.dart';

class ReusableTextLato extends StatelessWidget {
  final String text;
  final Color textColor;
  final double fontSize;
  final double vertical;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  const ReusableTextLato({
    super.key,
    required this.text,
    this.textColor = AppColors.primaryElementText,
    this.fontSize = 36,
    this.vertical = 20,
    this.fontWeight = FontWeight.bold,
    this.textAlign = TextAlign.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical.h),
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.lato(

          textStyle: TextStyle(
            color: textColor,
            fontSize: fontSize.sp,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
