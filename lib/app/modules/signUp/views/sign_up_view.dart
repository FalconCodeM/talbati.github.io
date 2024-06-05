import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:talbati/app/data/values/colors.dart';
import 'package:talbati/app/data/values/strings.dart';
import 'package:talbati/app/data/widgets/auth/reusable_auth_app_bar.dart';
import 'package:talbati/app/data/widgets/auth/reusable_text_field_with_title.dart';
import 'package:talbati/app/data/widgets/resuable_main_background.dart';
import 'package:talbati/app/data/widgets/reusable_button.dart';
import 'package:talbati/app/data/widgets/reusable_green_background.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';
import 'package:talbati/app/routes/app_pages.dart';
import '../controllers/sign_up_controller.dart';


class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableGreenBackground(
      children: [
        const ReusableAuthAppBar(
          title: AppStrings.signUpTitle,
          supTitle: AppStrings.signUpSupTitle,
        ),
        SingleChildScrollView(
          child: ReusableMainBackground(
            children: [
              const ReusableTextFieldWithTitle(
                vertical: 0,
                title: AppStrings.yourName,
                hintText: AppStrings.enterYourName,
              ),
              const ReusableTextFieldWithTitle(
                vertical: 0,
                title: AppStrings.authEmailAddress,
                hintText: AppStrings.enterEmailAddress,
              ),
              const ReusableTextFieldWithTitle(
                vertical: 0,
                title: AppStrings.authPassword,
                hintText: AppStrings.enterPassword,
              ),
              SizedBox(height: 30.h),
              ReusableButton(
                onTap: () => Get.offAllNamed(Routes.HOME),
                text: AppStrings.signUpTitle,
              ),
              SizedBox(height: 30.h),
              Column(
                children: [
                  const ReusableTextLato(
                    vertical: 0,
                    text: AppStrings.otherSignInOptions,
                    fontSize: 16,
                    textColor: AppColors.primaryThirdElementText,
                    fontWeight: FontWeight.w400,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h, bottom: 20.h),
                    padding: EdgeInsets.only(left: 75.w, right: 75.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: 40.w,
                            height: 40.w,
                            child: Image.asset("assets/icons/facebook.png"),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: 40.w,
                            height: 40.w,
                            child: Image.asset("assets/icons/google.png"),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            width: 40.w,
                            height: 40.w,
                            child: Image.asset("assets/icons/apple.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
