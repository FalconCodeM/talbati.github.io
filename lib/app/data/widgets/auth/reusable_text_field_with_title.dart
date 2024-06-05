import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';
import 'package:talbati/app/data/widgets/reusable_text_field.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';

class ReusableTextFieldWithTitle extends StatelessWidget {
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String hintText;
  final double vertical;
  final double horizontal;
  final String title;

  const ReusableTextFieldWithTitle({
    super.key,
    required this.title,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.horizontal = 5,
    this.vertical = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding:
          EdgeInsets.symmetric(horizontal: horizontal.w, vertical: vertical.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ReusableTextLato(
            text: title,
            textColor: AppColors.primaryText,
            fontSize: 16,
          ),
          ReusableTextField(
            hintText: hintText,
            isPassword: isPassword,
            onChanged: onChanged,
            keyboardType: keyboardType,
          ),
        ],
      ),
    );
  }
}
