import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talbati/app/data/values/colors.dart';
import 'package:talbati/app/data/values/strings.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';

class ReusableHomeAppBar extends StatelessWidget {
  const ReusableHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: AppColors.primaryElementText.withOpacity(0.3),
              borderRadius: BorderRadius.circular(100.w),
            ),
            child: Icon(
              Icons.notifications_none_rounded,
              size: 30.sp,
              color: AppColors.primaryElementText,
            ),
          ),
          Container(
            height: 60.h,
            margin: EdgeInsets.only(top: 10.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 17.sp,
                      color: AppColors.primaryElementText.withOpacity(0.5),
                    ),
                    SizedBox(width: 2.w),
                    ReusableTextLato(
                      vertical: 0,
                      text: AppStrings.location,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      textColor: AppColors.primaryElementText.withOpacity(0.5),
                    )
                  ],
                ),
                Row(
                  children: [
                    ReusableTextLato(
                      vertical: 0,
                      text: "Baridhara,",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                    SizedBox(width: 2.w),
                    ReusableTextLato(
                      vertical: 0,
                      text: "Dhaka",
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(7.w),
            decoration: BoxDecoration(
              color: AppColors.primaryElementText.withOpacity(0.3),
              borderRadius: BorderRadius.circular(100.w),
            ),
            child: Icon(
              Icons.settings,
              size: 26.sp,
              color: AppColors.primaryElementText,
            ),
          ),
        ],
      ),
    );
  }
}
