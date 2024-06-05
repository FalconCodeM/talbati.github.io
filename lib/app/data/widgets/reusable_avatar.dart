import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';
import 'package:talbati/app/data/values/images.dart';

class ReusableAvatar extends StatelessWidget {
  final double width;
  final double height;
  final double bottom;
  final String imageName;
  final Function()? onTap;

  const ReusableAvatar({
    super.key,
    this.width = 170,
    this.height = 170,
    this.bottom = 20,
    this.imageName = AppImages.appLogo,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width.w,
        height: height.h,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.only(bottom: bottom.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.w),
          color: AppColors.primaryElementText,
          boxShadow: const [
            BoxShadow(
              color: AppColors.primaryFourthElementText,
              blurRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Image(
          image: AssetImage(imageName),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
