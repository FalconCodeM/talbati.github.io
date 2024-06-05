import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:talbati/app/data/widgets/reusable_avatar.dart';
import 'package:talbati/app/data/widgets/reusable_green_background.dart';
import 'package:talbati/app/data/widgets/reusable_text_lato.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return ReusableGreenBackground(
      children: [
        SizedBox(height: 200.h),
        ReusableTextLato(text: controller.appName.value),
        SizedBox(height: 50.h),
        const ReusableAvatar(),
      ],
    );
  }
}
