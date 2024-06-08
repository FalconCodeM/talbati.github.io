import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';

class ReusableMainBackground extends StatelessWidget {
  final List<Widget> children;
  final double bottomLeft;
  final double bottomRight;
  final double topRight;
  final double topLeft;
  final double horizontal;

  const ReusableMainBackground({
    super.key,
    required this.children,
    this.horizontal = 10,
    this.topRight = 25,
    this.topLeft = 25,
    this.bottomLeft = 25,
    this.bottomRight = 25,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: horizontal.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
        color: AppColors.primaryElementText,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(topLeft.w),
          topRight: Radius.circular(topRight.w),
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
