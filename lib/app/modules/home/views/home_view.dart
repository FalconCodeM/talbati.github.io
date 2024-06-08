import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:talbati/app/data/values/colors.dart';
import 'package:talbati/app/data/values/images.dart';
import 'package:talbati/app/data/values/strings.dart';
import 'package:talbati/app/data/widgets/home_screens/reusable_home_app_bar.dart';
import 'package:talbati/app/data/widgets/resuable_main_background.dart';
import 'package:talbati/app/data/widgets/reusable_green_background.dart';
import 'package:talbati/app/data/widgets/reusable_text_field.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableGreenBackground(
      children: [
        ReusableHomeAppBar(),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
          decoration: BoxDecoration(
            color: AppColors.primaryElementText,
            borderRadius: BorderRadius.circular(25.w),
          ),
          child: ReusableTextField(
            hintText: "Search Your Groceries",
            showIcon: true,
            imageName: AppImages.searchIcon,
          ),
        ),
        SizedBox(height: 10.h),
        ReusableMainBackground(
          topLeft: 0,
          topRight: 0,
          bottomLeft: 0,
          bottomRight: 0,
          horizontal: 0,
          children: [
            // section one
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 320.w,
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      gradient: AppColors.islamicGradient,
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: ReusableTextLato(
                                vertical: 5,
                                text:
                                    "Get 40% discount on your first order from app.",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              width: 100.w,
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                gradient: AppColors.islamicGradient,
                                borderRadius: BorderRadius.circular(25.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primaryElementText
                                        .withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                              child: ReusableTextLato(
                                vertical: 5,
                                text: "shop now",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 130.w,
                          height: 140.h,
                          child:
                              Image(image: AssetImage(AppImages.fruitsBasket)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 320.w,
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      gradient: AppColors.islamicGradient,
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: ReusableTextLato(
                                vertical: 5,
                                text:
                                    "Get 40% discount on your first order from app.",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              width: 100.w,
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                gradient: AppColors.islamicGradient,
                                borderRadius: BorderRadius.circular(25.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primaryElementText
                                        .withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                              child: ReusableTextLato(
                                vertical: 5,
                                text: "shop now",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 130.w,
                          height: 140.h,
                          child:
                              Image(image: AssetImage(AppImages.fruitsBasket)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 320.w,
                    padding: EdgeInsets.all(10.w),
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      gradient: AppColors.islamicGradient,
                      borderRadius: BorderRadius.circular(15.w),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 150.w,
                              child: ReusableTextLato(
                                vertical: 5,
                                text:
                                    "Get 40% discount on your first order from app.",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(height: 10.h),
                            Container(
                              width: 100.w,
                              margin: EdgeInsets.only(bottom: 10.h),
                              decoration: BoxDecoration(
                                gradient: AppColors.islamicGradient,
                                borderRadius: BorderRadius.circular(25.w),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.primaryElementText
                                        .withOpacity(0.5),
                                    blurRadius: 5,
                                    offset: Offset(1, 1),
                                  ),
                                ],
                              ),
                              child: ReusableTextLato(
                                vertical: 5,
                                text: "shop now",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 130.w,
                          height: 140.h,
                          child:
                              Image(image: AssetImage(AppImages.fruitsBasket)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // section two
            Container(),
            // section three
            Container(),
          ],
        ),
      ],
    );
  }
}
