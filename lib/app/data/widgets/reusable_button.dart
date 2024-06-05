import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';

class ReusableButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const ReusableButton({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
          color: AppColors.colorsGreen,
          borderRadius: BorderRadius.circular(15.w),
        ),
        child: ReusableTextLato(
          text: text,
          fontSize: 18,
          vertical: 8,
        ),
      ),
    );
  }
}
