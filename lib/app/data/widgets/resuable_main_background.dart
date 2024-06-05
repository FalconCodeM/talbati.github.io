import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';

class ReusableMainBackground extends StatelessWidget {
  final List<Widget> children;
  final double bottomLeft;
  final double bottomRight;

  const ReusableMainBackground({
    super.key,
    required this.children,
    this.bottomLeft = 25,
    this.bottomRight = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.primaryElementText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.w),
          topRight: Radius.circular(25.w),
          bottomLeft: Radius.circular(bottomLeft.w),
          bottomRight: Radius.circular(bottomRight.w),
        ),
      ),
      child: Column(
        children: children,
      ),
    );
  }
}
