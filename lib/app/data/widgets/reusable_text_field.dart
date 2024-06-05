import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';

class ReusableTextField extends StatelessWidget {
  final bool isPassword;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String hintText;

  const ReusableTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(0.5.w),
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.circular(15.w),
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.primaryElementText,
          borderRadius: BorderRadius.circular(15.w),
        ),
        child: TextField(
          autocorrect: false,
          undoController: UndoHistoryController(value: UndoHistoryValue.empty),
          obscureText: isPassword ? true : false,
          keyboardType: keyboardType,
          onChanged: onChanged,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
