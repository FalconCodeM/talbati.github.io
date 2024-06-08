import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';

class ReusableTextField extends StatelessWidget {
  final bool isPassword;
  final bool showPassword;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final String hintText;
  final String imageName;
  final double width;
  final bool showIcon;
  final Color imageColor;

  const ReusableTextField({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.showPassword = false,
    this.showIcon = false,
    this.width = double.infinity,
    this.keyboardType = TextInputType.text,
    this.imageColor = AppColors.islamicGreen,
    this.imageName = "",
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.w)),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 250.w,
                height: 50.h,
                child: TextField(
                  autocorrect: false,
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
              if (showIcon) ...[
                Container(
                  width: 16.w,
                  height: 16.h,
                  margin: EdgeInsets.only(right: 17.w),
                  child: Image(
                    image: AssetImage(imageName),
                    color: imageColor,
                  ),
                ),
              ],
              if (isPassword) ...[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: showPassword
                      ? const Icon(Icons.remove_red_eye_outlined)
                      : const Icon(CupertinoIcons.eye_slash),
                )
              ],
            ],
          ),
        ],
      ),
    );
  }
}
